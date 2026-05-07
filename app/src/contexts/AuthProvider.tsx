import { useEffect, useState } from "react";
import { supabase } from "../supabaseClient";
import { AuthContext } from './AuthContext';
import type { Session } from "@supabase/supabase-js";

type Props = {
    children: React.ReactNode;
};

export function AuthProvider({ children }: Props) {
    const [session, setSession] = useState<Session | null>(null);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        let mounted = true;

        async function loadSession() {
            const { data: { session } } = await supabase.auth.getSession();
            if (!mounted) return;

            if (!session) {
                setSession(null);
                setLoading(false);
                return;
            }

            // validate session with supabase
            const { data: { user }, error } = await supabase.auth.getUser();

            if (!mounted) return;

            if (error || !user) {
                // session exists locally but user no longer exists
                await supabase.auth.signOut();
                setSession(null);
            } else {
                setSession(session);
            }

            setLoading(false);
        }

        loadSession();

        const { data: {subscription} } = supabase.auth.onAuthStateChange(
            (_event, session) => {
                if (!mounted) return;
                setSession(session);
            }
        );

        return () => {
            mounted=false;
            subscription.unsubscribe()
        };
    }, []);

    const value = {
        session,
        user: session?.user ?? null,
        loading,
    };

    return (
        <AuthContext.Provider value={value}>
            {children}
        </AuthContext.Provider>
    );
}
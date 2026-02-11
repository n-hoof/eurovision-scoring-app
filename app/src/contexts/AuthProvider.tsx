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

        supabase.auth.getSession().then(({ data }) => {
            if (!mounted) return;
            setSession(data.session);
            setLoading(false);
        });

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
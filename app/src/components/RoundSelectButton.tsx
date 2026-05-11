import styles from "../styles/ScoresNeon.module.css";

type Round = 1 | 2 | 3;

type Props = {
    round: Round;
    onChange: (val: Round) => void;
    disableFinal?: boolean;
}

export function RoundSelectButton({round, onChange, disableFinal = false}: Props) {
    const rounds: { value: Round; label: string}[] = [
        {value: 1, label: "Semi-final 1"},
        {value: 2, label: "Semi-final 2"},
        {value: 3, label: "Grand final"},
    ];

    return (
        <div className={styles.roundSelect}>
            {rounds.map((r) => (
                <button
                    key={r.value}
                    onClick={() => r.value < 3 || !disableFinal ? onChange(r.value) : null}
                    disabled={disableFinal && r.value === 3}
                    className={r.value === round ? styles.selected : ""}
                >
                    {r.label}
                </button>
            ))}
        </div>
    )
}
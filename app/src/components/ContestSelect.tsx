import styles from "../styles/ContestSelect.module.css";

type Props = {
  contest: "esc" | "pze";
  onChange: (val: "esc" | "pze") => void;
};

export function ContestSelect({ contest, onChange }: Props) {
  return (
    <div className={styles.wrapper}>
      <div className={styles.toggleButtons}>
        <button
          className={`${styles.toggleButton} ${contest === "esc" ? styles.active : ""}`}
          onClick={() => onChange("esc")}
        >
          ESC
        </button>
        <button
          className={`${styles.toggleButton} ${contest === "pze" ? styles.active : ""}`}
          onClick={() => onChange("pze")}
        >
          PZE
        </button>
      </div>
    </div>
  );
}

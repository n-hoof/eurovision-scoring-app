import { ESC_YEARS, PZE_YEARS } from "../constants/years";
import styles from "../styles/YearSelect.module.css";

type Props = {
  contest: "esc" | "pze";
  val: string;
  onChange: (year: string) => void;
};

export function YearSelect({ contest, val, onChange }: Props) {
  const years = contest === "esc" ? ESC_YEARS : PZE_YEARS;

  return (
    <div className={styles.wrapper}>
      <select className={styles.select} value={val} onChange={(e) => onChange(e.target.value)}>
        <option value="" hidden></option>
        {years.map((year) => (
          <option key={year} value={year}>
            {year}
          </option>
        ))}
      </select>
    </div>
  );
}

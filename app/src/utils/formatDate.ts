export function formatDate(dateString: string) {
  const date = new Date(dateString);
  const dateNow = new Date();
  const isCurrYear = date.getFullYear() === dateNow.getFullYear();

  return new Intl.DateTimeFormat(undefined, {
    day: "numeric",
    month: "short",
    ...(isCurrYear ? {} : { year: "numeric" }),
    hour: "numeric",
    minute: "2-digit",
    hour12: false,
  }).format(date).replace(",", " @");
}

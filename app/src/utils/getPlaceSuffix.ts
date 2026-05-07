export function getPlaceSuffix(place: number) {
    if (place >= 11 && place <= 13) return "th";

    const lastDigit = place % 10;

    switch (lastDigit) {
        case 1:
            return "st";
        case 2:
            return "nd";
        case 3:
            return "rd";
        default:
            return "th";
    }
}
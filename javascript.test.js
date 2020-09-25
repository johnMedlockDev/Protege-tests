/**
 * Make a function which calculates the angle between the hands of a clock
 * The function takes two arguments, hours, and minutes. These will be integers between 1 - 12 and 0 - 59 respectively.
 * The hour hand is assumed to move continuously (not incrementally).
 * So that means the the position of the hour hand is affected by the minute hand.
 * The result of the function should be the angle between the hands. The result of the function should always be >= 0 and <= 180.
 * Good luck
 */

function calculateClockAngle(hours, minutes) {

    if (hours > 12 || hours < 1 || minutes > 59 || minutes < 0) {
        return "Try again";
    }

    // 360 / 12 = 60
    let hour_angle = 60;

    // 360 / 60 = 6
    let minute_angle = 6;

    let mod = 1/60 * minutes;

    hour_angle *= hours;
    hour_angle += mod;

    minute_angle *= minutes;

    let hour_mag = Math.sqrt(hour_angle ^ 2);
    let minute_mag = Math.sqrt(minute_angle ^ 2);

    return Math.abs(Math.cos((hour_angle * minute_angle) / (hour_mag * minute_mag)) * 180 / Math.PI);

}

//Using these examples should help
console.log(calculateClockAngle(1, 15));
console.log(calculateClockAngle(3, 37));
console.log(calculateClockAngle(12, 0));
console.log(calculateClockAngle(8, 8));

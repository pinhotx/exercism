pub fn production_rate_per_hour(speed: u8) -> f64 {
    let production_rate = speed as f64 * 221.0;
    match speed {
        1..=4 => production_rate,
        5..=8 => production_rate * 0.9,
        9..=u8::MAX => production_rate * 0.77,
        _ => 0.0,
    }
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    production_rate_per_hour(speed) as u32 / 60
}

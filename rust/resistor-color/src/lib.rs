use enum_iterator::{all, Sequence};
use int_enum::IntEnum;

#[repr(u32)]
#[derive(Clone, Copy, Debug, Eq, IntEnum, Sequence, PartialEq)]
pub enum ResistorColor {
    Black = 0,
    Blue = 6,
    Brown = 1,
    Green = 5,
    Grey = 8,
    Orange = 3,
    Red = 2,
    Violet = 7,
    White = 9,
    Yellow = 4,
}

pub fn color_to_value(color: ResistorColor) -> u32 {
    color.int_value() as u32
}

pub fn value_to_color_string(value: u32) -> String {
    match ResistorColor::from_int(value) {
        Ok(c) => format!("{:?}", c),
        Err(_) => "value out of range".to_string(),
    }
         
}

pub fn colors() -> Vec<ResistorColor> {
   all::<ResistorColor>().collect()
}

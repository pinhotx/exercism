#[derive(Debug, PartialEq, Eq)]
pub enum ResistorColor {
    Black,
    Brown,
    Red,
    Orange,
    Yellow,
    Green,
    Blue,
    Violet,
    Grey,
    White,
}

pub fn color_to_value(color: ResistorColor) -> u32 {
    match color {
        ResistorColor::Black => 0
        ResistorColor::Brown => 1
        ResistorColor::Red => 2
        ResistorColor::Orange => 3
        ResistorColor::Yellow => 4
        ResistorColor::Green => 5
        ResistorColor::Blue => 6
        ResistorColor::Violet => 7
        ResistorColor::Grey => 8
        ResistorColor::White => 9
    }
}

pub fn value_to_color_string(value: u32) -> String {
    match value{
        0 => ResistorColor::Black
        1 => ResistorColor::Brown
        2 => ResistorColor::Red
        3 => ResistorColor::Orange 
        4 => ResistorColor::Yellow 
        5 => ResistorColor::Green
        6 => ResistorColor::Blue 
        7 => ResistorColor::Violet 
        8 => ResistorColor::Grey 
        9 => ResistorColor::White
    }
         
}

pub fn colors() -> Vec<ResistorColor> {
   vec![
    ResistorColor::Black,
    ResistorColor::Brown,
    ResistorColor::Red,
    ResistorColor::Orange,
    ResistorColor::Yellow,
    ResistorColor::Green,
    ResistorColor::Blue,
    ResistorColor::Violet,
    ResistorColor::Grey,
    ResistorColor::White,
   ]
}

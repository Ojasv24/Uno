enum Enum$Color { RED, BLUE, YELLOW, GREEN, BLACK, $unknown }

String toJson$Enum$Color(Enum$Color e) {
  switch (e) {
    case Enum$Color.RED:
      return r'RED';
    case Enum$Color.BLUE:
      return r'BLUE';
    case Enum$Color.YELLOW:
      return r'YELLOW';
    case Enum$Color.GREEN:
      return r'GREEN';
    case Enum$Color.BLACK:
      return r'BLACK';
    case Enum$Color.$unknown:
      return r'$unknown';
  }
}

Enum$Color fromJson$Enum$Color(String value) {
  switch (value) {
    case r'RED':
      return Enum$Color.RED;
    case r'BLUE':
      return Enum$Color.BLUE;
    case r'YELLOW':
      return Enum$Color.YELLOW;
    case r'GREEN':
      return Enum$Color.GREEN;
    case r'BLACK':
      return Enum$Color.BLACK;
    default:
      return Enum$Color.$unknown;
  }
}

enum Enum$CardType {
  NUMBER_CARD,
  REVERSE_CARD,
  SKIP_CARD,
  DRAW_TWO_CARD,
  WILD_CARD,
  WILD_DRAW_FOUR_CARD,
  CHOOSE_COLOR,
  $unknown
}

String toJson$Enum$CardType(Enum$CardType e) {
  switch (e) {
    case Enum$CardType.NUMBER_CARD:
      return r'NUMBER_CARD';
    case Enum$CardType.REVERSE_CARD:
      return r'REVERSE_CARD';
    case Enum$CardType.SKIP_CARD:
      return r'SKIP_CARD';
    case Enum$CardType.DRAW_TWO_CARD:
      return r'DRAW_TWO_CARD';
    case Enum$CardType.WILD_CARD:
      return r'WILD_CARD';
    case Enum$CardType.WILD_DRAW_FOUR_CARD:
      return r'WILD_DRAW_FOUR_CARD';
    case Enum$CardType.CHOOSE_COLOR:
      return r'CHOOSE_COLOR';
    case Enum$CardType.$unknown:
      return r'$unknown';
  }
}

Enum$CardType fromJson$Enum$CardType(String value) {
  switch (value) {
    case r'NUMBER_CARD':
      return Enum$CardType.NUMBER_CARD;
    case r'REVERSE_CARD':
      return Enum$CardType.REVERSE_CARD;
    case r'SKIP_CARD':
      return Enum$CardType.SKIP_CARD;
    case r'DRAW_TWO_CARD':
      return Enum$CardType.DRAW_TWO_CARD;
    case r'WILD_CARD':
      return Enum$CardType.WILD_CARD;
    case r'WILD_DRAW_FOUR_CARD':
      return Enum$CardType.WILD_DRAW_FOUR_CARD;
    case r'CHOOSE_COLOR':
      return Enum$CardType.CHOOSE_COLOR;
    default:
      return Enum$CardType.$unknown;
  }
}

enum Enum$Direction { FORWARD, BACKWARD, $unknown }

String toJson$Enum$Direction(Enum$Direction e) {
  switch (e) {
    case Enum$Direction.FORWARD:
      return r'FORWARD';
    case Enum$Direction.BACKWARD:
      return r'BACKWARD';
    case Enum$Direction.$unknown:
      return r'$unknown';
  }
}

Enum$Direction fromJson$Enum$Direction(String value) {
  switch (value) {
    case r'FORWARD':
      return Enum$Direction.FORWARD;
    case r'BACKWARD':
      return Enum$Direction.BACKWARD;
    default:
      return Enum$Direction.$unknown;
  }
}

const possibleTypesMap = {};

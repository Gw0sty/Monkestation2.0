import { BooleanLike } from 'common/react';
import { sendAct } from '../../backend';
import { Gender } from './preferences/gender';

export enum Food {
  Alcohol = 'ALCOHOL',
  Breakfast = 'BREAKFAST',
  Bugs = 'BUGS',
  Cloth = 'CLOTH',
  Dairy = 'DAIRY',
  Fried = 'FRIED',
  Fruit = 'FRUIT',
  Gore = 'GORE',
  Grain = 'GRAIN',
  Gross = 'GROSS',
  Junkfood = 'JUNKFOOD',
  Meat = 'MEAT',
  Nuts = 'NUTS',
  Oranges = 'ORANGES',
  Pineapple = 'PINEAPPLE',
  Raw = 'RAW',
  Seafood = 'SEAFOOD',
  Sugar = 'SUGAR',
  Toxic = 'TOXIC',
  Vegetables = 'VEGETABLES',
}

export enum JobPriority {
  Low = 1,
  Medium = 2,
  High = 3,
}

export type Name = {
  can_randomize: BooleanLike;
  explanation: string;
  group: string;
};

export type Species = {
  name: string;
  desc: string;
  lore: string[];
  icon: string;

  use_skintones: BooleanLike;
  sexes: BooleanLike;

  enabled_features: string[];

  perks: {
    positive: Perk[];
    negative: Perk[];
    neutral: Perk[];
  };

  diet?: {
    liked_food: Food[];
    disliked_food: Food[];
    toxic_food: Food[];
  };
};

export type Perk = {
  ui_icon: string;
  name: string;
  description: string;
};

export type Department = {
  head?: string;
};

export type Job = {
  description: string;
  department: string;
  alt_titles?: string[];
};

export type Quirk = {
  description: string;
  icon: string;
  name: string;
  value: number;
};

export type QuirkInfo = {
  max_positive_quirks: number;
  quirk_info: Record<string, Quirk>;
  quirk_blacklist: string[][];
};

export type LoadoutInfo = {
  user_is_donator: BooleanLike;
  selected_loadout: string[];
  selected_unusuals: string[];
};

export enum RandomSetting {
  AntagOnly = 1,
  Disabled = 2,
  Enabled = 3,
}

export enum JoblessRole {
  BeOverflow = 1,
  BeRandomJob = 2,
  ReturnToLobby = 3,
}

export enum GamePreferencesSelectedPage {
  Settings,
  Keybindings,
}

export const createSetPreference =
  (act: typeof sendAct, preference: string) => (value: unknown) => {
    act('set_preference', {
      preference,
      value,
    });
  };

export enum Window {
  Character = 0,
  Game = 1,
  Keybindings = 2,
}

export type PreferencesMenuData = {
  character_preview_view: string;
  character_profiles: (string | null)[];

  character_preferences: {
    clothing: Record<string, string>;
    features: Record<string, string>;
    game_preferences: Record<string, unknown>;
    non_contextual: {
      random_body: RandomSetting;
      [otherKey: string]: unknown;
    };
    secondary_features: Record<string, unknown>;
    supplemental_features: Record<string, unknown>;

    names: Record<string, string>;

    misc: {
      gender: Gender;
      joblessrole: JoblessRole;
      species: string;
    };

    randomization: Record<string, RandomSetting>;
  };

  content_unlocked: BooleanLike;

  job_bans?: string[];
  job_days_left?: Record<string, number>;
  job_alt_titles: Record<string, string>;
  job_required_experience?: Record<
    string,
    {
      experience_type: string;
      required_playtime: number;
    }
  >;
  job_preferences: Record<string, JobPriority>;

  keybindings: Record<string, string[]>;
  overflow_role: string;
  selected_quirks: string[];
  species_disallowed_quirks: string[];

  antag_bans?: string[];
  antag_days_left?: Record<string, number>;
  selected_antags: string[];

  active_slot: number;
  name_to_use: string;

  user_is_donator: BooleanLike;
  selected_loadout: string[];
  selected_unusuals: string[];
  total_coins: number;
  loadout_tabs: LoadoutData[];
  window: Window;
  owned_items: string[];
};

type LoadoutData = {
  name: string;
  title: string;
  contents: LoadoutItem[];
};
type LoadoutItem = {
  name: string;
  icon: string;
  icon_state?: string;
  desc: string;
  cost: number;
  item_path: string;
  path: string;
  unusual_placement: number;
  is_greyscale: boolean;
  is_renamable: boolean;
  is_job_restricted: boolean;
  is_donator_only: boolean;
  is_ckey_whitelisted: boolean;
  tooltip_text: string;
  unusual_spawning_requirements: boolean;
};
export type ServerData = {
  jobs: {
    departments: Record<string, Department>;
    jobs: Record<string, Job>;
  };
  names: {
    types: Record<string, Name>;
  };
  quirks: QuirkInfo;
  loadout: LoadoutInfo;
  random: {
    randomizable: string[];
  };
  species: Record<string, Species>;
  [otheyKey: string]: unknown;
};

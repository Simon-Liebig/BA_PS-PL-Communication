int stim_buf[MAX_FFT_LENGTH] = 
{
    0,     201,     402,     603,     803,     1003,     1202,     1401,     1598,     1795,     1990,     2185,     2378,     2570,     2760,     2948, 
    3135,     3320,     3503,     3683,     3862,     4038,     4212,     4383,     4551,     4717,     4880,     5040,     5197,     5351,     5501,     5649, 
    5793,     5933,     6070,     6203,     6333,     6458,     6580,     6698,     6811,     6921,     7027,     7128,     7225,     7317,     7405,     7489, 
    7568,     7643,     7713,     7779,     7839,     7895,     7946,     7993,     8035,     8071,     8103,     8130,     8153,     8170,     8182,     8190, 
    8192,     8190,     8182,     8170,     8153,     8130,     8103,     8071,     8035,     7993,     7946,     7895,     7839,     7779,     7713,     7643, 
    7568,     7489,     7405,     7317,     7225,     7128,     7027,     6921,     6811,     6698,     6580,     6458,     6333,     6203,     6070,     5933, 
    5793,     5649,     5501,     5351,     5197,     5040,     4880,     4717,     4551,     4383,     4212,     4038,     3862,     3683,     3503,     3320, 
    3135,     2948,     2760,     2570,     2378,     2185,     1990,     1795,     1598,     1401,     1202,     1003,     803,     603,     402,     201, 
    0,     -201,     -402,     -603,     -803,     -1003,     -1202,     -1401,     -1598,     -1795,     -1990,     -2185,     -2378,     -2570,     -2760,     -2948, 
    -3135,     -3320,     -3503,     -3683,     -3862,     -4038,     -4212,     -4383,     -4551,     -4717,     -4880,     -5040,     -5197,     -5351,     -5501,     -5649, 
    -5793,     -5933,     -6070,     -6203,     -6333,     -6458,     -6580,     -6698,     -6811,     -6921,     -7027,     -7128,     -7225,     -7317,     -7405,     -7489, 
    -7568,     -7643,     -7713,     -7779,     -7839,     -7895,     -7946,     -7993,     -8035,     -8071,     -8103,     -8130,     -8153,     -8170,     -8182,     -8190, 
    -8192,     -8190,     -8182,     -8170,     -8153,     -8130,     -8103,     -8071,     -8035,     -7993,     -7946,     -7895,     -7839,     -7779,     -7713,     -7643, 
    -7568,     -7489,     -7405,     -7317,     -7225,     -7128,     -7027,     -6921,     -6811,     -6698,     -6580,     -6458,     -6333,     -6203,     -6070,     -5933, 
    -5793,     -5649,     -5501,     -5351,     -5197,     -5040,     -4880,     -4717,     -4551,     -4383,     -4212,     -4038,     -3862,     -3683,     -3503,     -3320, 
    -3135,     -2948,     -2760,     -2570,     -2378,     -2185,     -1990,     -1795,     -1598,     -1401,     -1202,     -1003,     -803,     -603,     -402,     -201, 
    0,     201,     402,     603,     803,     1003,     1202,     1401,     1598,     1795,     1990,     2185,     2378,     2570,     2760,     2948, 
    3135,     3320,     3503,     3683,     3862,     4038,     4212,     4383,     4551,     4717,     4880,     5040,     5197,     5351,     5501,     5649, 
    5793,     5933,     6070,     6203,     6333,     6458,     6580,     6698,     6811,     6921,     7027,     7128,     7225,     7317,     7405,     7489, 
    7568,     7643,     7713,     7779,     7839,     7895,     7946,     7993,     8035,     8071,     8103,     8130,     8153,     8170,     8182,     8190, 
    8192,     8190,     8182,     8170,     8153,     8130,     8103,     8071,     8035,     7993,     7946,     7895,     7839,     7779,     7713,     7643, 
    7568,     7489,     7405,     7317,     7225,     7128,     7027,     6921,     6811,     6698,     6580,     6458,     6333,     6203,     6070,     5933, 
    5793,     5649,     5501,     5351,     5197,     5040,     4880,     4717,     4551,     4383,     4212,     4038,     3862,     3683,     3503,     3320, 
    3135,     2948,     2760,     2570,     2378,     2185,     1990,     1795,     1598,     1401,     1202,     1003,     803,     603,     402,     201, 
    0,     -201,     -402,     -603,     -803,     -1003,     -1202,     -1401,     -1598,     -1795,     -1990,     -2185,     -2378,     -2570,     -2760,     -2948, 
    -3135,     -3320,     -3503,     -3683,     -3862,     -4038,     -4212,     -4383,     -4551,     -4717,     -4880,     -5040,     -5197,     -5351,     -5501,     -5649, 
    -5793,     -5933,     -6070,     -6203,     -6333,     -6458,     -6580,     -6698,     -6811,     -6921,     -7027,     -7128,     -7225,     -7317,     -7405,     -7489, 
    -7568,     -7643,     -7713,     -7779,     -7839,     -7895,     -7946,     -7993,     -8035,     -8071,     -8103,     -8130,     -8153,     -8170,     -8182,     -8190, 
    -8192,     -8190,     -8182,     -8170,     -8153,     -8130,     -8103,     -8071,     -8035,     -7993,     -7946,     -7895,     -7839,     -7779,     -7713,     -7643, 
    -7568,     -7489,     -7405,     -7317,     -7225,     -7128,     -7027,     -6921,     -6811,     -6698,     -6580,     -6458,     -6333,     -6203,     -6070,     -5933, 
    -5793,     -5649,     -5501,     -5351,     -5197,     -5040,     -4880,     -4717,     -4551,     -4383,     -4212,     -4038,     -3862,     -3683,     -3503,     -3320, 
    -3135,     -2948,     -2760,     -2570,     -2378,     -2185,     -1990,     -1795,     -1598,     -1401,     -1202,     -1003,     -803,     -603,     -402,     -201, 
    0,     201,     402,     603,     803,     1003,     1202,     1401,     1598,     1795,     1990,     2185,     2378,     2570,     2760,     2948, 
    3135,     3320,     3503,     3683,     3862,     4038,     4212,     4383,     4551,     4717,     4880,     5040,     5197,     5351,     5501,     5649, 
    5793,     5933,     6070,     6203,     6333,     6458,     6580,     6698,     6811,     6921,     7027,     7128,     7225,     7317,     7405,     7489, 
    7568,     7643,     7713,     7779,     7839,     7895,     7946,     7993,     8035,     8071,     8103,     8130,     8153,     8170,     8182,     8190, 
    8192,     8190,     8182,     8170,     8153,     8130,     8103,     8071,     8035,     7993,     7946,     7895,     7839,     7779,     7713,     7643, 
    7568,     7489,     7405,     7317,     7225,     7128,     7027,     6921,     6811,     6698,     6580,     6458,     6333,     6203,     6070,     5933, 
    5793,     5649,     5501,     5351,     5197,     5040,     4880,     4717,     4551,     4383,     4212,     4038,     3862,     3683,     3503,     3320, 
    3135,     2948,     2760,     2570,     2378,     2185,     1990,     1795,     1598,     1401,     1202,     1003,     803,     603,     402,     201, 
    0,     -201,     -402,     -603,     -803,     -1003,     -1202,     -1401,     -1598,     -1795,     -1990,     -2185,     -2378,     -2570,     -2760,     -2948, 
    -3135,     -3320,     -3503,     -3683,     -3862,     -4038,     -4212,     -4383,     -4551,     -4717,     -4880,     -5040,     -5197,     -5351,     -5501,     -5649, 
    -5793,     -5933,     -6070,     -6203,     -6333,     -6458,     -6580,     -6698,     -6811,     -6921,     -7027,     -7128,     -7225,     -7317,     -7405,     -7489, 
    -7568,     -7643,     -7713,     -7779,     -7839,     -7895,     -7946,     -7993,     -8035,     -8071,     -8103,     -8130,     -8153,     -8170,     -8182,     -8190, 
    -8192,     -8190,     -8182,     -8170,     -8153,     -8130,     -8103,     -8071,     -8035,     -7993,     -7946,     -7895,     -7839,     -7779,     -7713,     -7643, 
    -7568,     -7489,     -7405,     -7317,     -7225,     -7128,     -7027,     -6921,     -6811,     -6698,     -6580,     -6458,     -6333,     -6203,     -6070,     -5933, 
    -5793,     -5649,     -5501,     -5351,     -5197,     -5040,     -4880,     -4717,     -4551,     -4383,     -4212,     -4038,     -3862,     -3683,     -3503,     -3320, 
    -3135,     -2948,     -2760,     -2570,     -2378,     -2185,     -1990,     -1795,     -1598,     -1401,     -1202,     -1003,     -803,     -603,     -402,     -201, 
    0,     201,     402,     603,     803,     1003,     1202,     1401,     1598,     1795,     1990,     2185,     2378,     2570,     2760,     2948, 
    3135,     3320,     3503,     3683,     3862,     4038,     4212,     4383,     4551,     4717,     4880,     5040,     5197,     5351,     5501,     5649, 
    5793,     5933,     6070,     6203,     6333,     6458,     6580,     6698,     6811,     6921,     7027,     7128,     7225,     7317,     7405,     7489, 
    7568,     7643,     7713,     7779,     7839,     7895,     7946,     7993,     8035,     8071,     8103,     8130,     8153,     8170,     8182,     8190, 
    8192,     8190,     8182,     8170,     8153,     8130,     8103,     8071,     8035,     7993,     7946,     7895,     7839,     7779,     7713,     7643, 
    7568,     7489,     7405,     7317,     7225,     7128,     7027,     6921,     6811,     6698,     6580,     6458,     6333,     6203,     6070,     5933, 
    5793,     5649,     5501,     5351,     5197,     5040,     4880,     4717,     4551,     4383,     4212,     4038,     3862,     3683,     3503,     3320, 
    3135,     2948,     2760,     2570,     2378,     2185,     1990,     1795,     1598,     1401,     1202,     1003,     803,     603,     402,     201, 
    0,     -201,     -402,     -603,     -803,     -1003,     -1202,     -1401,     -1598,     -1795,     -1990,     -2185,     -2378,     -2570,     -2760,     -2948, 
    -3135,     -3320,     -3503,     -3683,     -3862,     -4038,     -4212,     -4383,     -4551,     -4717,     -4880,     -5040,     -5197,     -5351,     -5501,     -5649, 
    -5793,     -5933,     -6070,     -6203,     -6333,     -6458,     -6580,     -6698,     -6811,     -6921,     -7027,     -7128,     -7225,     -7317,     -7405,     -7489, 
    -7568,     -7643,     -7713,     -7779,     -7839,     -7895,     -7946,     -7993,     -8035,     -8071,     -8103,     -8130,     -8153,     -8170,     -8182,     -8190, 
    -8192,     -8190,     -8182,     -8170,     -8153,     -8130,     -8103,     -8071,     -8035,     -7993,     -7946,     -7895,     -7839,     -7779,     -7713,     -7643, 
    -7568,     -7489,     -7405,     -7317,     -7225,     -7128,     -7027,     -6921,     -6811,     -6698,     -6580,     -6458,     -6333,     -6203,     -6070,     -5933, 
    -5793,     -5649,     -5501,     -5351,     -5197,     -5040,     -4880,     -4717,     -4551,     -4383,     -4212,     -4038,     -3862,     -3683,     -3503,     -3320, 
    -3135,     -2948,     -2760,     -2570,     -2378,     -2185,     -1990,     -1795,     -1598,     -1401,     -1202,     -1003,     -803,     -603,     -402,     -402
};

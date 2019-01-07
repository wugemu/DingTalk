.class final Liyg;
.super Ljava/lang/Object;
.source "Inflate.java"


# static fields
.field private static i:[B


# instance fields
.field a:I

.field b:I

.field c:[J

.field d:J

.field e:I

.field f:I

.field g:I

.field h:Liyd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Liyg;->i:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [J

    iput-object v0, p0, Liyg;->c:[J

    return-void
.end method

.method static b(Liyl;I)I
    .locals 34
    .param p0, "z"    # Liyl;
    .param p1, "f"    # I

    .prologue
    .line 144
    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->a:[B

    if-nez v4, :cond_2

    .line 145
    :cond_0
    const/16 v27, -0x2

    .line 285
    :cond_1
    :goto_0
    return v27

    .line 146
    :cond_2
    const/4 v4, 0x4

    move/from16 v0, p1

    if-ne v0, v4, :cond_3

    const/16 p1, -0x5

    .line 147
    :goto_1
    const/16 v27, -0x5

    .line 150
    .local v27, "r":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    iget v4, v4, Liyg;->a:I

    packed-switch v4, :pswitch_data_0

    .line 285
    const/16 v27, -0x2

    goto :goto_0

    .line 146
    .end local v27    # "r":I
    :cond_3
    const/16 p1, 0x0

    goto :goto_1

    .line 153
    .restart local v27    # "r":I
    :pswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    if-eqz v4, :cond_1

    move/from16 v27, p1

    .line 155
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    move-object/from16 v0, p0

    iget-object v5, v0, Liyl;->a:[B

    move-object/from16 v0, p0

    iget v6, v0, Liyl;->b:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    aget-byte v5, v5, v6

    iput v5, v4, Liyg;->b:I

    and-int/lit8 v4, v5, 0xf

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/16 v5, 0xd

    iput v5, v4, Liyg;->a:I

    .line 158
    const-string/jumbo v4, "unknown compression method"

    move-object/from16 v0, p0

    iput-object v4, v0, Liyl;->i:Ljava/lang/String;

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/4 v5, 0x5

    iput v5, v4, Liyg;->e:I

    goto :goto_2

    .line 162
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    iget v4, v4, Liyg;->b:I

    shr-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    iget-object v5, v0, Liyl;->k:Liyg;

    iget v5, v5, Liyg;->g:I

    if-le v4, v5, :cond_5

    .line 163
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/16 v5, 0xd

    iput v5, v4, Liyg;->a:I

    .line 164
    const-string/jumbo v4, "invalid window size"

    move-object/from16 v0, p0

    iput-object v4, v0, Liyl;->i:Ljava/lang/String;

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/4 v5, 0x5

    iput v5, v4, Liyg;->e:I

    goto/16 :goto_2

    .line 168
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/4 v5, 0x1

    iput v5, v4, Liyg;->a:I

    .line 171
    :pswitch_1
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    if-eqz v4, :cond_1

    move/from16 v27, p1

    .line 173
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->a:[B

    move-object/from16 v0, p0

    iget v5, v0, Liyl;->b:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Liyl;->b:I

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    move/from16 v26, v0

    .line 176
    .local v26, "b":I
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    iget v4, v4, Liyg;->b:I

    shl-int/lit8 v4, v4, 0x8

    add-int v4, v4, v26

    rem-int/lit8 v4, v4, 0x1f

    if-eqz v4, :cond_6

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/16 v5, 0xd

    iput v5, v4, Liyg;->a:I

    .line 178
    const-string/jumbo v4, "incorrect header check"

    move-object/from16 v0, p0

    iput-object v4, v0, Liyl;->i:Ljava/lang/String;

    .line 179
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/4 v5, 0x5

    iput v5, v4, Liyg;->e:I

    goto/16 :goto_2

    .line 183
    :cond_6
    and-int/lit8 v4, v26, 0x20

    if-nez v4, :cond_7

    .line 184
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/4 v5, 0x7

    iput v5, v4, Liyg;->a:I

    goto/16 :goto_2

    .line 187
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/4 v5, 0x2

    iput v5, v4, Liyg;->a:I

    .line 190
    .end local v26    # "b":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    if-eqz v4, :cond_1

    move/from16 v27, p1

    .line 192
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    move-object/from16 v0, p0

    iget-object v5, v0, Liyl;->a:[B

    move-object/from16 v0, p0

    iget v6, v0, Liyl;->b:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    int-to-long v6, v5

    const-wide v8, 0xff000000L

    and-long/2addr v6, v8

    iput-wide v6, v4, Liyg;->d:J

    .line 194
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/4 v5, 0x3

    iput v5, v4, Liyg;->a:I

    .line 197
    :pswitch_3
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    if-eqz v4, :cond_1

    move/from16 v27, p1

    .line 199
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    .line 200
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    iget-wide v6, v4, Liyg;->d:J

    move-object/from16 v0, p0

    iget-object v5, v0, Liyl;->a:[B

    move-object/from16 v0, p0

    iget v8, v0, Liyl;->b:I

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Liyl;->b:I

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    int-to-long v8, v5

    const-wide/32 v10, 0xff0000

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v4, Liyg;->d:J

    .line 201
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/4 v5, 0x4

    iput v5, v4, Liyg;->a:I

    .line 204
    :pswitch_4
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    if-eqz v4, :cond_1

    move/from16 v27, p1

    .line 206
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    .line 207
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    iget-wide v6, v4, Liyg;->d:J

    move-object/from16 v0, p0

    iget-object v5, v0, Liyl;->a:[B

    move-object/from16 v0, p0

    iget v8, v0, Liyl;->b:I

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Liyl;->b:I

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    int-to-long v8, v5

    const-wide/32 v10, 0xff00

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v4, Liyg;->d:J

    .line 208
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/4 v5, 0x5

    iput v5, v4, Liyg;->a:I

    .line 211
    :pswitch_5
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    if-eqz v4, :cond_1

    .line 213
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    iget-wide v6, v4, Liyg;->d:J

    move-object/from16 v0, p0

    iget-object v5, v0, Liyl;->a:[B

    move-object/from16 v0, p0

    iget v8, v0, Liyl;->b:I

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Liyl;->b:I

    aget-byte v5, v5, v8

    int-to-long v8, v5

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v4, Liyg;->d:J

    .line 215
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    iget-wide v4, v4, Liyg;->d:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->m:J

    .line 216
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/4 v5, 0x6

    iput v5, v4, Liyg;->a:I

    .line 217
    const/16 v27, 0x2

    goto/16 :goto_0

    .line 219
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/16 v5, 0xd

    iput v5, v4, Liyg;->a:I

    .line 220
    const-string/jumbo v4, "need dictionary"

    move-object/from16 v0, p0

    iput-object v4, v0, Liyl;->i:Ljava/lang/String;

    .line 221
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/4 v5, 0x0

    iput v5, v4, Liyg;->e:I

    .line 222
    const/16 v27, -0x2

    goto/16 :goto_0

    .line 225
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    iget-object v0, v4, Liyg;->h:Liyd;

    move-object/from16 v33, v0

    .line 2136
    move-object/from16 v0, p0

    iget v7, v0, Liyl;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Liyl;->c:I

    move-object/from16 v0, v33

    iget v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iget v8, v0, Liyd;->l:I

    .line 2137
    move-object/from16 v0, v33

    iget v5, v0, Liyd;->r:I

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    if-ge v5, v4, :cond_8

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    :goto_3
    move v11, v4

    move/from16 v28, v5

    move v4, v6

    move v5, v7

    .line 2141
    .end local v27    # "r":I
    :goto_4
    move-object/from16 v0, v33

    iget v6, v0, Liyd;->c:I

    packed-switch v6, :pswitch_data_1

    .line 2527
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 2528
    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v5, v0, Liyl;->b:I

    .line 2529
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2530
    const/4 v4, -0x2

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v27

    .line 226
    .restart local v27    # "r":I
    :goto_5
    const/4 v4, -0x3

    move/from16 v0, v27

    if-ne v0, v4, :cond_64

    .line 227
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/16 v5, 0xd

    iput v5, v4, Liyg;->a:I

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/4 v5, 0x0

    iput v5, v4, Liyg;->e:I

    goto/16 :goto_2

    .line 2137
    :cond_8
    move-object/from16 v0, v33

    iget v4, v0, Liyd;->p:I

    sub-int/2addr v4, v5

    goto :goto_3

    .line 2144
    .end local v27    # "r":I
    :goto_6
    const/4 v4, 0x3

    if-ge v14, v4, :cond_a

    .line 2145
    if-eqz v12, :cond_9

    .line 2146
    const/16 v27, 0x0

    .line 2155
    add-int/lit8 v12, v12, -0x1

    .line 2156
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->a:[B

    add-int/lit8 v5, v13, 0x1

    aget-byte v4, v4, v13

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v14

    or-int/2addr v15, v4

    .line 2157
    add-int/lit8 v14, v14, 0x8

    move v13, v5

    goto :goto_6

    .line 2149
    :cond_9
    move-object/from16 v0, v33

    iput v15, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v14, v0, Liyd;->l:I

    .line 2150
    move-object/from16 v0, p0

    iput v12, v0, Liyl;->c:I

    .line 2151
    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v6, v0, Liyl;->b:I

    sub-int v6, v13, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v13, v0, Liyl;->b:I

    .line 2152
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2153
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v27

    goto :goto_5

    .line 2159
    :cond_a
    and-int/lit8 v4, v15, 0x7

    .line 2160
    and-int/lit8 v5, v4, 0x1

    move-object/from16 v0, v33

    iput v5, v0, Liyd;->k:I

    .line 2162
    ushr-int/lit8 v4, v4, 0x1

    packed-switch v4, :pswitch_data_2

    move v4, v12

    move v5, v13

    move v8, v14

    move v9, v15

    .line 2203
    goto/16 :goto_4

    .line 2164
    :pswitch_8
    ushr-int/lit8 v4, v15, 0x3

    add-int/lit8 v5, v14, -0x3

    .line 2165
    and-int/lit8 v7, v5, 0x7

    .line 2167
    ushr-int v6, v4, v7

    sub-int v4, v5, v7

    .line 2168
    const/4 v5, 0x1

    move-object/from16 v0, v33

    iput v5, v0, Liyd;->c:I

    move v5, v13

    move v8, v4

    move v9, v6

    move v4, v12

    .line 2169
    goto/16 :goto_4

    .line 2172
    :pswitch_9
    const/4 v4, 0x1

    new-array v5, v4, [I

    .line 2173
    const/4 v4, 0x1

    new-array v6, v4, [I

    .line 2174
    const/4 v4, 0x1

    new-array v7, v4, [[I

    .line 2175
    const/4 v4, 0x1

    new-array v9, v4, [[I

    .line 2177
    invoke-static {v5, v6, v7, v9}, Liyf;->a([I[I[[I[[I)I

    .line 2178
    move-object/from16 v0, v33

    iget-object v4, v0, Liyd;->j:Liye;

    const/4 v8, 0x0

    aget v5, v5, v8

    const/4 v8, 0x0

    aget v6, v6, v8

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Liye;->a(II[II[II)V

    .line 2181
    ushr-int/lit8 v6, v15, 0x3

    add-int/lit8 v4, v14, -0x3

    .line 2183
    const/4 v5, 0x6

    move-object/from16 v0, v33

    iput v5, v0, Liyd;->c:I

    move v5, v13

    move v8, v4

    move v9, v6

    move v4, v12

    .line 2184
    goto/16 :goto_4

    .line 2187
    :pswitch_a
    ushr-int/lit8 v6, v15, 0x3

    add-int/lit8 v4, v14, -0x3

    .line 2189
    const/4 v5, 0x3

    move-object/from16 v0, v33

    iput v5, v0, Liyd;->c:I

    move v5, v13

    move v8, v4

    move v9, v6

    move v4, v12

    .line 2190
    goto/16 :goto_4

    .line 2193
    :pswitch_b
    ushr-int/lit8 v4, v15, 0x3

    add-int/lit8 v5, v14, -0x3

    .line 2194
    const/16 v6, 0x9

    move-object/from16 v0, v33

    iput v6, v0, Liyd;->c:I

    .line 2195
    const-string/jumbo v6, "invalid block type"

    move-object/from16 v0, p0

    iput-object v6, v0, Liyl;->i:Ljava/lang/String;

    .line 2198
    move-object/from16 v0, v33

    iput v4, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v5, v0, Liyd;->l:I

    .line 2199
    move-object/from16 v0, p0

    iput v12, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v6, v0, Liyl;->b:I

    sub-int v6, v13, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v13, v0, Liyl;->b:I

    .line 2200
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2201
    const/4 v4, -0x3

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 2206
    :goto_7
    :pswitch_c
    const/16 v6, 0x20

    if-ge v8, v6, :cond_c

    .line 2207
    if-eqz v4, :cond_b

    .line 2208
    const/16 v27, 0x0

    .line 2217
    add-int/lit8 v4, v4, -0x1

    .line 2218
    move-object/from16 v0, p0

    iget-object v7, v0, Liyl;->a:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v9, v5

    .line 2219
    add-int/lit8 v8, v8, 0x8

    move v5, v6

    goto :goto_7

    .line 2211
    :cond_b
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 2212
    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    .line 2213
    move-object/from16 v0, p0

    iget-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v5, v0, Liyl;->b:I

    .line 2214
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2215
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 2222
    :cond_c
    xor-int/lit8 v6, v9, -0x1

    ushr-int/lit8 v6, v6, 0x10

    const v7, 0xffff

    and-int/2addr v6, v7

    const v7, 0xffff

    and-int/2addr v7, v9

    if-eq v6, v7, :cond_d

    .line 2223
    const/16 v6, 0x9

    move-object/from16 v0, v33

    iput v6, v0, Liyd;->c:I

    .line 2224
    const-string/jumbo v6, "invalid stored block lengths"

    move-object/from16 v0, p0

    iput-object v6, v0, Liyl;->i:Ljava/lang/String;

    .line 2227
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 2228
    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v5, v0, Liyl;->b:I

    .line 2229
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2230
    const/4 v4, -0x3

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 2232
    :cond_d
    const v6, 0xffff

    and-int/2addr v6, v9

    move-object/from16 v0, v33

    iput v6, v0, Liyd;->d:I

    .line 2233
    const/4 v6, 0x0

    .line 2234
    move-object/from16 v0, v33

    iget v7, v0, Liyd;->d:I

    if-eqz v7, :cond_e

    const/4 v7, 0x2

    :goto_8
    move-object/from16 v0, v33

    iput v7, v0, Liyd;->c:I

    move v8, v6

    move v9, v6

    .line 2235
    goto/16 :goto_4

    .line 2234
    :cond_e
    move-object/from16 v0, v33

    iget v7, v0, Liyd;->k:I

    if-eqz v7, :cond_f

    const/4 v7, 0x7

    goto :goto_8

    :cond_f
    const/4 v7, 0x0

    goto :goto_8

    .line 2237
    :pswitch_d
    if-nez v4, :cond_10

    .line 2238
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 2239
    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v5, v0, Liyl;->b:I

    .line 2240
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2241
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 2244
    :cond_10
    if-nez v11, :cond_15

    .line 2245
    move-object/from16 v0, v33

    iget v6, v0, Liyd;->p:I

    move/from16 v0, v28

    if-ne v0, v6, :cond_11

    move-object/from16 v0, v33

    iget v6, v0, Liyd;->q:I

    if-eqz v6, :cond_11

    .line 2246
    const/16 v28, 0x0

    move-object/from16 v0, v33

    iget v6, v0, Liyd;->q:I

    if-lez v6, :cond_12

    move-object/from16 v0, v33

    iget v6, v0, Liyd;->q:I

    add-int/lit8 v6, v6, 0x0

    add-int/lit8 v6, v6, -0x1

    :goto_9
    move v11, v6

    .line 2248
    :cond_11
    if-nez v11, :cond_15

    .line 2249
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2250
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v7

    .line 2251
    move-object/from16 v0, v33

    iget v0, v0, Liyd;->r:I

    move/from16 v28, v0

    move-object/from16 v0, v33

    iget v6, v0, Liyd;->q:I

    move/from16 v0, v28

    if-ge v0, v6, :cond_13

    move-object/from16 v0, v33

    iget v6, v0, Liyd;->q:I

    sub-int v6, v6, v28

    add-int/lit8 v6, v6, -0x1

    .line 2252
    :goto_a
    move-object/from16 v0, v33

    iget v10, v0, Liyd;->p:I

    move/from16 v0, v28

    if-ne v0, v10, :cond_6d

    move-object/from16 v0, v33

    iget v10, v0, Liyd;->q:I

    if-eqz v10, :cond_6d

    .line 2253
    const/16 v28, 0x0

    move-object/from16 v0, v33

    iget v6, v0, Liyd;->q:I

    if-lez v6, :cond_14

    move-object/from16 v0, v33

    iget v6, v0, Liyd;->q:I

    add-int/lit8 v6, v6, 0x0

    add-int/lit8 v6, v6, -0x1

    :goto_b
    move v11, v6

    .line 2255
    :goto_c
    if-nez v11, :cond_15

    .line 2256
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 2257
    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v5, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v5, v0, Liyl;->b:I

    .line 2258
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2259
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 2246
    :cond_12
    move-object/from16 v0, v33

    iget v6, v0, Liyd;->p:I

    add-int/lit8 v6, v6, 0x0

    goto/16 :goto_9

    .line 2251
    :cond_13
    move-object/from16 v0, v33

    iget v6, v0, Liyd;->p:I

    sub-int v6, v6, v28

    goto :goto_a

    .line 2253
    :cond_14
    move-object/from16 v0, v33

    iget v6, v0, Liyd;->p:I

    add-int/lit8 v6, v6, 0x0

    goto :goto_b

    .line 2263
    :cond_15
    const/16 v27, 0x0

    .line 2265
    move-object/from16 v0, v33

    iget v6, v0, Liyd;->d:I

    .line 2266
    if-le v6, v4, :cond_16

    move v6, v4

    .line 2267
    :cond_16
    if-le v6, v11, :cond_6c

    move v10, v11

    .line 2268
    :goto_d
    move-object/from16 v0, p0

    iget-object v6, v0, Liyl;->a:[B

    move-object/from16 v0, v33

    iget-object v7, v0, Liyd;->o:[B

    move/from16 v0, v28

    invoke-static {v6, v5, v7, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2269
    add-int v7, v5, v10

    sub-int v6, v4, v10

    .line 2270
    add-int v5, v28, v10

    sub-int v4, v11, v10

    .line 2271
    move-object/from16 v0, v33

    iget v11, v0, Liyd;->d:I

    sub-int v10, v11, v10

    move-object/from16 v0, v33

    iput v10, v0, Liyd;->d:I

    if-nez v10, :cond_6b

    .line 2273
    move-object/from16 v0, v33

    iget v10, v0, Liyd;->k:I

    if-eqz v10, :cond_17

    const/4 v10, 0x7

    :goto_e
    move-object/from16 v0, v33

    iput v10, v0, Liyd;->c:I

    move v11, v4

    move/from16 v28, v5

    move v4, v6

    move v5, v7

    .line 2274
    goto/16 :goto_4

    .line 2273
    :cond_17
    const/4 v10, 0x0

    goto :goto_e

    .line 2277
    :goto_f
    :pswitch_e
    const/16 v6, 0xe

    if-ge v8, v6, :cond_19

    .line 2278
    if-eqz v4, :cond_18

    .line 2279
    const/16 v27, 0x0

    .line 2288
    add-int/lit8 v4, v4, -0x1

    .line 2289
    move-object/from16 v0, p0

    iget-object v7, v0, Liyl;->a:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v8

    or-int/2addr v9, v5

    .line 2290
    add-int/lit8 v8, v8, 0x8

    move v5, v6

    goto :goto_f

    .line 2282
    :cond_18
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 2283
    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    .line 2284
    move-object/from16 v0, p0

    iget-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v5, v0, Liyl;->b:I

    .line 2285
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2286
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 2293
    :cond_19
    and-int/lit16 v6, v9, 0x3fff

    move-object/from16 v0, v33

    iput v6, v0, Liyd;->e:I

    .line 2294
    and-int/lit8 v7, v6, 0x1f

    const/16 v10, 0x1d

    if-gt v7, v10, :cond_1a

    shr-int/lit8 v7, v6, 0x5

    and-int/lit8 v7, v7, 0x1f

    const/16 v10, 0x1d

    if-le v7, v10, :cond_1b

    .line 2296
    :cond_1a
    const/16 v6, 0x9

    move-object/from16 v0, v33

    iput v6, v0, Liyd;->c:I

    .line 2297
    const-string/jumbo v6, "too many length or distance symbols"

    move-object/from16 v0, p0

    iput-object v6, v0, Liyl;->i:Ljava/lang/String;

    .line 2300
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 2301
    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v5, v0, Liyl;->b:I

    .line 2302
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2303
    const/4 v4, -0x3

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 2305
    :cond_1b
    and-int/lit8 v7, v6, 0x1f

    add-int/lit16 v7, v7, 0x102

    shr-int/lit8 v6, v6, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/2addr v7, v6

    .line 2306
    move-object/from16 v0, v33

    iget-object v6, v0, Liyd;->g:[I

    if-eqz v6, :cond_1c

    move-object/from16 v0, v33

    iget-object v6, v0, Liyd;->g:[I

    array-length v6, v6

    if-ge v6, v7, :cond_1e

    .line 2307
    :cond_1c
    new-array v6, v7, [I

    move-object/from16 v0, v33

    iput-object v6, v0, Liyd;->g:[I

    .line 2313
    :cond_1d
    ushr-int/lit8 v9, v9, 0xe

    add-int/lit8 v8, v8, -0xe

    .line 2315
    const/4 v6, 0x0

    move-object/from16 v0, v33

    iput v6, v0, Liyd;->f:I

    .line 2316
    const/4 v6, 0x4

    move-object/from16 v0, v33

    iput v6, v0, Liyd;->c:I

    :pswitch_f
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v8

    move/from16 v19, v9

    .line 2318
    :goto_10
    move-object/from16 v0, v33

    iget v4, v0, Liyd;->f:I

    move-object/from16 v0, v33

    iget v5, v0, Liyd;->e:I

    ushr-int/lit8 v5, v5, 0xa

    add-int/lit8 v5, v5, 0x4

    if-ge v4, v5, :cond_21

    move/from16 v4, v16

    move/from16 v5, v17

    .line 2319
    :goto_11
    const/4 v6, 0x3

    move/from16 v0, v18

    if-ge v0, v6, :cond_20

    .line 2320
    if-eqz v4, :cond_1f

    .line 2321
    const/16 v27, 0x0

    .line 2330
    add-int/lit8 v4, v4, -0x1

    .line 2331
    move-object/from16 v0, p0

    iget-object v6, v0, Liyl;->a:[B

    add-int/lit8 v17, v5, 0x1

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    shl-int v5, v5, v18

    or-int v19, v19, v5

    .line 2332
    add-int/lit8 v18, v18, 0x8

    move/from16 v5, v17

    goto :goto_11

    .line 2310
    :cond_1e
    const/4 v6, 0x0

    :goto_12
    if-ge v6, v7, :cond_1d

    move-object/from16 v0, v33

    iget-object v10, v0, Liyd;->g:[I

    const/4 v11, 0x0

    aput v11, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 2324
    :cond_1f
    move/from16 v0, v19

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->m:I

    move/from16 v0, v18

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->l:I

    .line 2325
    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    .line 2326
    move-object/from16 v0, p0

    iget-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v5, v0, Liyl;->b:I

    .line 2327
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2328
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 2335
    :cond_20
    move-object/from16 v0, v33

    iget-object v6, v0, Liyd;->g:[I

    sget-object v7, Liyd;->b:[I

    move-object/from16 v0, v33

    iget v8, v0, Liyd;->f:I

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, v33

    iput v9, v0, Liyd;->f:I

    aget v7, v7, v8

    and-int/lit8 v8, v19, 0x7

    aput v8, v6, v7

    .line 2337
    ushr-int/lit8 v9, v19, 0x3

    add-int/lit8 v8, v18, -0x3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v8

    move/from16 v19, v9

    goto/16 :goto_10

    .line 2340
    :cond_21
    :goto_13
    move-object/from16 v0, v33

    iget v4, v0, Liyd;->f:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_22

    .line 2341
    move-object/from16 v0, v33

    iget-object v4, v0, Liyd;->g:[I

    sget-object v5, Liyd;->b:[I

    move-object/from16 v0, v33

    iget v6, v0, Liyd;->f:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, v33

    iput v7, v0, Liyd;->f:I

    aget v5, v5, v6

    const/4 v6, 0x0

    aput v6, v4, v5

    goto :goto_13

    .line 2344
    :cond_22
    move-object/from16 v0, v33

    iget-object v4, v0, Liyd;->h:[I

    const/4 v5, 0x0

    const/4 v6, 0x7

    aput v6, v4, v5

    .line 2345
    move-object/from16 v0, v33

    iget-object v4, v0, Liyd;->u:Liyf;

    move-object/from16 v0, v33

    iget-object v5, v0, Liyd;->g:[I

    move-object/from16 v0, v33

    iget-object v12, v0, Liyd;->h:[I

    move-object/from16 v0, v33

    iget-object v11, v0, Liyd;->i:[I

    move-object/from16 v0, v33

    iget-object v13, v0, Liyd;->n:[I

    .line 3426
    const/16 v6, 0x13

    invoke-virtual {v4, v6}, Liyf;->a(I)V

    .line 3427
    iget-object v6, v4, Liyf;->g:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    .line 3428
    const/4 v6, 0x0

    const/16 v7, 0x13

    const/16 v8, 0x13

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v14, v4, Liyf;->g:[I

    iget-object v15, v4, Liyf;->h:[I

    invoke-virtual/range {v4 .. v15}, Liyf;->a([IIII[I[I[I[I[I[I[I)I

    move-result v4

    .line 3430
    const/4 v5, -0x3

    if-ne v4, v5, :cond_25

    .line 3431
    const-string/jumbo v5, "oversubscribed dynamic bit lengths tree"

    move-object/from16 v0, p0

    iput-object v5, v0, Liyl;->i:Ljava/lang/String;

    .line 2346
    :cond_23
    :goto_14
    if-eqz v4, :cond_27

    .line 2348
    const/4 v5, -0x3

    if-ne v4, v5, :cond_24

    .line 2349
    const/4 v5, 0x0

    move-object/from16 v0, v33

    iput-object v5, v0, Liyd;->g:[I

    .line 2350
    const/16 v5, 0x9

    move-object/from16 v0, v33

    iput v5, v0, Liyd;->c:I

    .line 2353
    :cond_24
    move/from16 v0, v19

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->m:I

    move/from16 v0, v18

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->l:I

    .line 2354
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v5, v0, Liyl;->b:I

    sub-int v5, v17, v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Liyl;->d:J

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Liyl;->b:I

    .line 2355
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2356
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 3433
    :cond_25
    const/4 v5, -0x5

    if-eq v4, v5, :cond_26

    const/4 v5, 0x0

    aget v5, v12, v5

    if-nez v5, :cond_23

    .line 3434
    :cond_26
    const-string/jumbo v4, "incomplete dynamic bit lengths tree"

    move-object/from16 v0, p0

    iput-object v4, v0, Liyl;->i:Ljava/lang/String;

    .line 3435
    const/4 v4, -0x3

    goto :goto_14

    .line 2359
    :cond_27
    const/4 v4, 0x0

    move-object/from16 v0, v33

    iput v4, v0, Liyd;->f:I

    .line 2360
    const/4 v4, 0x5

    move-object/from16 v0, v33

    iput v4, v0, Liyd;->c:I

    move/from16 v29, v16

    move/from16 v30, v17

    move/from16 v31, v18

    move/from16 v32, v19

    .line 2363
    :goto_15
    move-object/from16 v0, v33

    iget v4, v0, Liyd;->e:I

    .line 2364
    move-object/from16 v0, v33

    iget v5, v0, Liyd;->f:I

    and-int/lit8 v6, v4, 0x1f

    add-int/lit16 v6, v6, 0x102

    shr-int/lit8 v4, v4, 0x5

    and-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v6

    if-ge v5, v4, :cond_32

    .line 2371
    move-object/from16 v0, v33

    iget-object v4, v0, Liyd;->h:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move/from16 v16, v29

    move/from16 v17, v30

    move/from16 v5, v31

    move/from16 v6, v32

    .line 2373
    :goto_16
    if-ge v5, v4, :cond_29

    .line 2374
    if-eqz v16, :cond_28

    .line 2375
    const/16 v27, 0x0

    .line 2384
    add-int/lit8 v16, v16, -0x1

    .line 2385
    move-object/from16 v0, p0

    iget-object v7, v0, Liyl;->a:[B

    add-int/lit8 v30, v17, 0x1

    aget-byte v7, v7, v17

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v5

    or-int/2addr v6, v7

    .line 2386
    add-int/lit8 v5, v5, 0x8

    move/from16 v17, v30

    goto :goto_16

    .line 2378
    :cond_28
    move-object/from16 v0, v33

    iput v6, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v5, v0, Liyd;->l:I

    .line 2379
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Liyl;->c:I

    .line 2380
    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v6, v0, Liyl;->b:I

    sub-int v6, v17, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Liyl;->b:I

    .line 2381
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2382
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 2393
    :cond_29
    move-object/from16 v0, v33

    iget-object v7, v0, Liyd;->n:[I

    move-object/from16 v0, v33

    iget-object v8, v0, Liyd;->i:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    sget-object v9, Liyd;->a:[I

    aget v4, v9, v4

    and-int/2addr v4, v6

    add-int/2addr v4, v8

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v9, v7, v4

    .line 2394
    move-object/from16 v0, v33

    iget-object v4, v0, Liyd;->n:[I

    move-object/from16 v0, v33

    iget-object v7, v0, Liyd;->i:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    sget-object v8, Liyd;->a:[I

    aget v8, v8, v9

    and-int/2addr v8, v6

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x2

    aget v10, v4, v7

    .line 2396
    const/16 v4, 0x10

    if-ge v10, v4, :cond_2a

    .line 2397
    ushr-int v19, v6, v9

    sub-int v18, v5, v9

    .line 2398
    move-object/from16 v0, v33

    iget-object v4, v0, Liyd;->g:[I

    move-object/from16 v0, v33

    iget v5, v0, Liyd;->f:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, v33

    iput v6, v0, Liyd;->f:I

    aput v10, v4, v5

    move/from16 v29, v16

    move/from16 v30, v17

    move/from16 v31, v18

    move/from16 v32, v19

    goto/16 :goto_15

    .line 2401
    :cond_2a
    const/16 v4, 0x12

    if-ne v10, v4, :cond_2b

    const/4 v4, 0x7

    move v8, v4

    .line 2402
    :goto_17
    const/16 v4, 0x12

    if-ne v10, v4, :cond_2c

    const/16 v4, 0xb

    :goto_18
    move v7, v6

    move v6, v5

    .line 2404
    :goto_19
    add-int v5, v9, v8

    if-ge v6, v5, :cond_2e

    .line 2405
    if-eqz v16, :cond_2d

    .line 2406
    const/16 v27, 0x0

    .line 2415
    add-int/lit8 v16, v16, -0x1

    .line 2416
    move-object/from16 v0, p0

    iget-object v11, v0, Liyl;->a:[B

    add-int/lit8 v5, v17, 0x1

    aget-byte v11, v11, v17

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v6

    or-int/2addr v7, v11

    .line 2417
    add-int/lit8 v6, v6, 0x8

    move/from16 v17, v5

    goto :goto_19

    .line 2401
    :cond_2b
    add-int/lit8 v4, v10, -0xe

    move v8, v4

    goto :goto_17

    .line 2402
    :cond_2c
    const/4 v4, 0x3

    goto :goto_18

    .line 2409
    :cond_2d
    move-object/from16 v0, v33

    iput v7, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v6, v0, Liyd;->l:I

    .line 2410
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Liyl;->c:I

    .line 2411
    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v6, v0, Liyl;->b:I

    sub-int v6, v17, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Liyl;->b:I

    .line 2412
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2413
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 2420
    :cond_2e
    ushr-int/2addr v7, v9

    sub-int/2addr v6, v9

    .line 2422
    sget-object v5, Liyd;->a:[I

    aget v5, v5, v8

    and-int/2addr v5, v7

    add-int/2addr v5, v4

    .line 2424
    ushr-int v19, v7, v8

    sub-int v18, v6, v8

    .line 2426
    move-object/from16 v0, v33

    iget v6, v0, Liyd;->f:I

    .line 2427
    move-object/from16 v0, v33

    iget v4, v0, Liyd;->e:I

    .line 2428
    add-int v7, v6, v5

    and-int/lit8 v8, v4, 0x1f

    add-int/lit16 v8, v8, 0x102

    shr-int/lit8 v4, v4, 0x5

    and-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v8

    if-gt v7, v4, :cond_2f

    const/16 v4, 0x10

    if-ne v10, v4, :cond_30

    if-gtz v6, :cond_30

    .line 2430
    :cond_2f
    const/4 v4, 0x0

    move-object/from16 v0, v33

    iput-object v4, v0, Liyd;->g:[I

    .line 2431
    const/16 v4, 0x9

    move-object/from16 v0, v33

    iput v4, v0, Liyd;->c:I

    .line 2432
    const-string/jumbo v4, "invalid bit length repeat"

    move-object/from16 v0, p0

    iput-object v4, v0, Liyl;->i:Ljava/lang/String;

    .line 2435
    move/from16 v0, v19

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->m:I

    move/from16 v0, v18

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->l:I

    .line 2436
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v6, v0, Liyl;->b:I

    sub-int v6, v17, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Liyl;->b:I

    .line 2437
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2438
    const/4 v4, -0x3

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 2441
    :cond_30
    const/16 v4, 0x10

    if-ne v10, v4, :cond_31

    move-object/from16 v0, v33

    iget-object v4, v0, Liyd;->g:[I

    add-int/lit8 v7, v6, -0x1

    aget v4, v4, v7

    .line 2443
    :goto_1a
    move-object/from16 v0, v33

    iget-object v8, v0, Liyd;->g:[I

    add-int/lit8 v7, v6, 0x1

    aput v4, v8, v6

    .line 2445
    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_6a

    .line 2446
    move-object/from16 v0, v33

    iput v7, v0, Liyd;->f:I

    move/from16 v29, v16

    move/from16 v30, v17

    move/from16 v31, v18

    move/from16 v32, v19

    .line 2448
    goto/16 :goto_15

    .line 2441
    :cond_31
    const/4 v4, 0x0

    goto :goto_1a

    .line 2450
    :cond_32
    move-object/from16 v0, v33

    iget-object v4, v0, Liyd;->i:[I

    const/4 v5, 0x0

    const/4 v6, -0x1

    aput v6, v4, v5

    .line 2452
    const/4 v4, 0x1

    new-array v12, v4, [I

    .line 2453
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v22, v0

    .line 2454
    const/4 v4, 0x1

    new-array v11, v4, [I

    .line 2455
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v21, v0

    .line 2456
    const/4 v4, 0x0

    const/16 v5, 0x9

    aput v5, v12, v4

    .line 2457
    const/4 v4, 0x0

    const/4 v5, 0x6

    aput v5, v22, v4

    .line 2459
    move-object/from16 v0, v33

    iget v5, v0, Liyd;->e:I

    .line 2460
    move-object/from16 v0, v33

    iget-object v4, v0, Liyd;->u:Liyf;

    and-int/lit8 v6, v5, 0x1f

    add-int/lit16 v7, v6, 0x101

    shr-int/lit8 v5, v5, 0x5

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v17, v5, 0x1

    move-object/from16 v0, v33

    iget-object v5, v0, Liyd;->g:[I

    move-object/from16 v0, v33

    iget-object v13, v0, Liyd;->n:[I

    .line 3453
    const/16 v6, 0x120

    invoke-virtual {v4, v6}, Liyf;->a(I)V

    .line 3454
    iget-object v6, v4, Liyf;->g:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v6, v8

    .line 3455
    const/4 v6, 0x0

    const/16 v8, 0x101

    sget-object v9, Liyf;->c:[I

    sget-object v10, Liyf;->d:[I

    iget-object v14, v4, Liyf;->g:[I

    iget-object v15, v4, Liyf;->h:[I

    invoke-virtual/range {v4 .. v15}, Liyf;->a([IIII[I[I[I[I[I[I[I)I

    move-result v6

    .line 3456
    if-nez v6, :cond_33

    const/4 v8, 0x0

    aget v8, v12, v8

    if-nez v8, :cond_37

    .line 3457
    :cond_33
    const/4 v4, -0x3

    if-ne v6, v4, :cond_36

    .line 3458
    const-string/jumbo v4, "oversubscribed literal/length tree"

    move-object/from16 v0, p0

    iput-object v4, v0, Liyl;->i:Ljava/lang/String;

    move v4, v6

    .line 2464
    :cond_34
    :goto_1b
    if-eqz v4, :cond_3c

    .line 2465
    const/4 v5, -0x3

    if-ne v4, v5, :cond_35

    .line 2466
    const/4 v5, 0x0

    move-object/from16 v0, v33

    iput-object v5, v0, Liyd;->g:[I

    .line 2467
    const/16 v5, 0x9

    move-object/from16 v0, v33

    iput v5, v0, Liyd;->c:I

    .line 2471
    :cond_35
    move/from16 v0, v32

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->m:I

    move/from16 v0, v31

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->l:I

    .line 2472
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v5, v0, Liyl;->b:I

    sub-int v5, v30, v5

    int-to-long v8, v5

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Liyl;->d:J

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Liyl;->b:I

    .line 2473
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2474
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 3460
    :cond_36
    const/4 v4, -0x4

    if-eq v6, v4, :cond_69

    .line 3461
    const-string/jumbo v4, "incomplete literal/length tree"

    move-object/from16 v0, p0

    iput-object v4, v0, Liyl;->i:Ljava/lang/String;

    .line 3462
    const/4 v4, -0x3

    goto :goto_1b

    .line 3468
    :cond_37
    const/16 v6, 0x120

    invoke-virtual {v4, v6}, Liyf;->a(I)V

    .line 3469
    const/16 v18, 0x0

    sget-object v19, Liyf;->e:[I

    sget-object v20, Liyf;->f:[I

    iget-object v0, v4, Liyf;->g:[I

    move-object/from16 v24, v0

    iget-object v0, v4, Liyf;->h:[I

    move-object/from16 v25, v0

    move-object v14, v4

    move-object v15, v5

    move/from16 v16, v7

    move-object/from16 v23, v13

    invoke-virtual/range {v14 .. v25}, Liyf;->a([IIII[I[I[I[I[I[I[I)I

    move-result v4

    .line 3471
    if-nez v4, :cond_38

    const/4 v5, 0x0

    aget v5, v22, v5

    if-nez v5, :cond_3b

    const/16 v5, 0x101

    if-le v7, v5, :cond_3b

    .line 3472
    :cond_38
    const/4 v5, -0x3

    if-ne v4, v5, :cond_39

    .line 3473
    const-string/jumbo v5, "oversubscribed distance tree"

    move-object/from16 v0, p0

    iput-object v5, v0, Liyl;->i:Ljava/lang/String;

    goto/16 :goto_1b

    .line 3475
    :cond_39
    const/4 v5, -0x5

    if-ne v4, v5, :cond_3a

    .line 3476
    const-string/jumbo v4, "incomplete distance tree"

    move-object/from16 v0, p0

    iput-object v4, v0, Liyl;->i:Ljava/lang/String;

    .line 3477
    const/4 v4, -0x3

    goto/16 :goto_1b

    .line 3479
    :cond_3a
    const/4 v5, -0x4

    if-eq v4, v5, :cond_34

    .line 3480
    const-string/jumbo v4, "empty distance tree with lengths"

    move-object/from16 v0, p0

    iput-object v4, v0, Liyl;->i:Ljava/lang/String;

    .line 3481
    const/4 v4, -0x3

    goto/16 :goto_1b

    .line 3486
    :cond_3b
    const/4 v4, 0x0

    goto/16 :goto_1b

    .line 2476
    :cond_3c
    move-object/from16 v0, v33

    iget-object v4, v0, Liyd;->j:Liye;

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x0

    aget v6, v22, v6

    move-object/from16 v0, v33

    iget-object v7, v0, Liyd;->n:[I

    const/4 v8, 0x0

    aget v8, v11, v8

    move-object/from16 v0, v33

    iget-object v9, v0, Liyd;->n:[I

    const/4 v10, 0x0

    aget v10, v21, v10

    invoke-virtual/range {v4 .. v10}, Liye;->a(II[II[II)V

    .line 2478
    const/4 v4, 0x6

    move-object/from16 v0, v33

    iput v4, v0, Liyd;->c:I

    .line 2480
    :goto_1c
    move/from16 v0, v32

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->m:I

    move/from16 v0, v31

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->l:I

    .line 2481
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v6, v0, Liyl;->b:I

    sub-int v6, v30, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Liyl;->b:I

    .line 2482
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2484
    move-object/from16 v0, v33

    iget-object v13, v0, Liyd;->j:Liye;

    .line 4121
    move-object/from16 v0, p0

    iget v7, v0, Liyl;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Liyl;->c:I

    move-object/from16 v0, v33

    iget v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iget v8, v0, Liyd;->l:I

    .line 4122
    move-object/from16 v0, v33

    iget v5, v0, Liyd;->r:I

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    if-ge v5, v4, :cond_3d

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .line 4126
    :goto_1d
    iget v10, v13, Liye;->b:I

    packed-switch v10, :pswitch_data_3

    .line 4384
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 4385
    move-object/from16 v0, p0

    iput v6, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v7, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    .line 4386
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    .line 4387
    const/4 v4, -0x2

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v4

    .line 2484
    :goto_1e
    const/4 v5, 0x1

    if-eq v4, v5, :cond_60

    .line 2485
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 4122
    :cond_3d
    move-object/from16 v0, v33

    iget v4, v0, Liyd;->p:I

    sub-int/2addr v4, v5

    goto :goto_1d

    .line 4129
    :pswitch_10
    const/16 v10, 0x102

    if-lt v4, v10, :cond_40

    const/16 v10, 0xa

    if-lt v6, v10, :cond_40

    .line 4131
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 4132
    move-object/from16 v0, p0

    iput v6, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v7, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    .line 4133
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    .line 4134
    iget-byte v4, v13, Liye;->j:B

    iget-byte v5, v13, Liye;->k:B

    iget-object v6, v13, Liye;->l:[I

    iget v7, v13, Liye;->m:I

    iget-object v8, v13, Liye;->n:[I

    iget v9, v13, Liye;->o:I

    move-object/from16 v10, v33

    move-object/from16 v11, p0

    invoke-static/range {v4 .. v11}, Liye;->a(II[II[IILiyd;Liyl;)I

    move-result v27

    .line 4139
    move-object/from16 v0, p0

    iget v7, v0, Liyl;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Liyl;->c:I

    move-object/from16 v0, v33

    iget v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iget v8, v0, Liyd;->l:I

    .line 4140
    move-object/from16 v0, v33

    iget v5, v0, Liyd;->r:I

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    if-ge v5, v4, :cond_3e

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .line 4142
    :goto_1f
    if-eqz v27, :cond_40

    .line 4143
    const/4 v10, 0x1

    move/from16 v0, v27

    if-ne v0, v10, :cond_3f

    const/4 v10, 0x7

    :goto_20
    iput v10, v13, Liye;->b:I

    goto/16 :goto_1d

    .line 4140
    :cond_3e
    move-object/from16 v0, v33

    iget v4, v0, Liyd;->p:I

    sub-int/2addr v4, v5

    goto :goto_1f

    .line 4143
    :cond_3f
    const/16 v10, 0x9

    goto :goto_20

    .line 4147
    :cond_40
    iget-byte v10, v13, Liye;->j:B

    iput v10, v13, Liye;->f:I

    .line 4148
    iget-object v10, v13, Liye;->l:[I

    iput-object v10, v13, Liye;->d:[I

    .line 4149
    iget v10, v13, Liye;->m:I

    iput v10, v13, Liye;->e:I

    .line 4151
    const/4 v10, 0x1

    iput v10, v13, Liye;->b:I

    .line 4153
    :pswitch_11
    iget v11, v13, Liye;->f:I

    move v10, v8

    .line 4155
    :goto_21
    if-ge v10, v11, :cond_42

    .line 4156
    if-eqz v6, :cond_41

    const/16 v27, 0x0

    .line 4164
    add-int/lit8 v6, v6, -0x1

    .line 4165
    move-object/from16 v0, p0

    iget-object v12, v0, Liyl;->a:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v12, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v10

    or-int/2addr v9, v7

    .line 4166
    add-int/lit8 v7, v10, 0x8

    move v10, v7

    move v7, v8

    goto :goto_21

    .line 4159
    :cond_41
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v10, v0, Liyd;->l:I

    .line 4160
    move-object/from16 v0, p0

    iput v6, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v7, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    .line 4161
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    .line 4162
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v4

    goto/16 :goto_1e

    .line 4169
    :cond_42
    iget v8, v13, Liye;->e:I

    sget-object v12, Liye;->a:[I

    aget v11, v12, v11

    and-int/2addr v11, v9

    add-int/2addr v8, v11

    mul-int/lit8 v11, v8, 0x3

    .line 4171
    iget-object v8, v13, Liye;->d:[I

    add-int/lit8 v12, v11, 0x1

    aget v8, v8, v12

    ushr-int/2addr v9, v8

    .line 4172
    iget-object v8, v13, Liye;->d:[I

    add-int/lit8 v12, v11, 0x1

    aget v8, v8, v12

    sub-int v8, v10, v8

    .line 4174
    iget-object v10, v13, Liye;->d:[I

    aget v10, v10, v11

    .line 4176
    if-nez v10, :cond_43

    .line 4177
    iget-object v10, v13, Liye;->d:[I

    add-int/lit8 v11, v11, 0x2

    aget v10, v10, v11

    iput v10, v13, Liye;->g:I

    .line 4178
    const/4 v10, 0x6

    iput v10, v13, Liye;->b:I

    goto/16 :goto_1d

    .line 4181
    :cond_43
    and-int/lit8 v12, v10, 0x10

    if-eqz v12, :cond_44

    .line 4182
    and-int/lit8 v10, v10, 0xf

    iput v10, v13, Liye;->h:I

    .line 4183
    iget-object v10, v13, Liye;->d:[I

    add-int/lit8 v11, v11, 0x2

    aget v10, v10, v11

    iput v10, v13, Liye;->c:I

    .line 4184
    const/4 v10, 0x2

    iput v10, v13, Liye;->b:I

    goto/16 :goto_1d

    .line 4187
    :cond_44
    and-int/lit8 v12, v10, 0x40

    if-nez v12, :cond_45

    .line 4188
    iput v10, v13, Liye;->f:I

    .line 4189
    div-int/lit8 v10, v11, 0x3

    iget-object v12, v13, Liye;->d:[I

    add-int/lit8 v11, v11, 0x2

    aget v11, v12, v11

    add-int/2addr v10, v11

    iput v10, v13, Liye;->e:I

    goto/16 :goto_1d

    .line 4192
    :cond_45
    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_46

    .line 4193
    const/4 v10, 0x7

    iput v10, v13, Liye;->b:I

    goto/16 :goto_1d

    .line 4196
    :cond_46
    const/16 v4, 0x9

    iput v4, v13, Liye;->b:I

    .line 4197
    const-string/jumbo v4, "invalid literal/length code"

    move-object/from16 v0, p0

    iput-object v4, v0, Liyl;->i:Ljava/lang/String;

    .line 4200
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 4201
    move-object/from16 v0, p0

    iput v6, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v7, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    .line 4202
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    .line 4203
    const/4 v4, -0x3

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v4

    goto/16 :goto_1e

    .line 4206
    :pswitch_12
    iget v11, v13, Liye;->h:I

    move v10, v8

    .line 4208
    :goto_22
    if-ge v10, v11, :cond_48

    .line 4209
    if-eqz v6, :cond_47

    const/16 v27, 0x0

    .line 4217
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Liyl;->a:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v12, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v10

    or-int/2addr v9, v7

    .line 4218
    add-int/lit8 v7, v10, 0x8

    move v10, v7

    move v7, v8

    goto :goto_22

    .line 4212
    :cond_47
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v10, v0, Liyd;->l:I

    .line 4213
    move-object/from16 v0, p0

    iput v6, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v7, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    .line 4214
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    .line 4215
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v4

    goto/16 :goto_1e

    .line 4221
    :cond_48
    iget v8, v13, Liye;->c:I

    sget-object v12, Liye;->a:[I

    aget v12, v12, v11

    and-int/2addr v12, v9

    add-int/2addr v8, v12

    iput v8, v13, Liye;->c:I

    .line 4223
    shr-int/2addr v9, v11

    .line 4224
    sub-int v8, v10, v11

    .line 4226
    iget-byte v10, v13, Liye;->k:B

    iput v10, v13, Liye;->f:I

    .line 4227
    iget-object v10, v13, Liye;->n:[I

    iput-object v10, v13, Liye;->d:[I

    .line 4228
    iget v10, v13, Liye;->o:I

    iput v10, v13, Liye;->e:I

    .line 4229
    const/4 v10, 0x3

    iput v10, v13, Liye;->b:I

    .line 4231
    :pswitch_13
    iget v11, v13, Liye;->f:I

    move v10, v8

    .line 4233
    :goto_23
    if-ge v10, v11, :cond_4a

    .line 4234
    if-eqz v6, :cond_49

    const/16 v27, 0x0

    .line 4242
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Liyl;->a:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v12, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v10

    or-int/2addr v9, v7

    .line 4243
    add-int/lit8 v7, v10, 0x8

    move v10, v7

    move v7, v8

    goto :goto_23

    .line 4237
    :cond_49
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v10, v0, Liyd;->l:I

    .line 4238
    move-object/from16 v0, p0

    iput v6, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v7, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    .line 4239
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    .line 4240
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v4

    goto/16 :goto_1e

    .line 4246
    :cond_4a
    iget v8, v13, Liye;->e:I

    sget-object v12, Liye;->a:[I

    aget v11, v12, v11

    and-int/2addr v11, v9

    add-int/2addr v8, v11

    mul-int/lit8 v11, v8, 0x3

    .line 4248
    iget-object v8, v13, Liye;->d:[I

    add-int/lit8 v12, v11, 0x1

    aget v8, v8, v12

    shr-int/2addr v9, v8

    .line 4249
    iget-object v8, v13, Liye;->d:[I

    add-int/lit8 v12, v11, 0x1

    aget v8, v8, v12

    sub-int v8, v10, v8

    .line 4251
    iget-object v10, v13, Liye;->d:[I

    aget v10, v10, v11

    .line 4252
    and-int/lit8 v12, v10, 0x10

    if-eqz v12, :cond_4b

    .line 4253
    and-int/lit8 v10, v10, 0xf

    iput v10, v13, Liye;->h:I

    .line 4254
    iget-object v10, v13, Liye;->d:[I

    add-int/lit8 v11, v11, 0x2

    aget v10, v10, v11

    iput v10, v13, Liye;->i:I

    .line 4255
    const/4 v10, 0x4

    iput v10, v13, Liye;->b:I

    goto/16 :goto_1d

    .line 4258
    :cond_4b
    and-int/lit8 v12, v10, 0x40

    if-nez v12, :cond_4c

    .line 4259
    iput v10, v13, Liye;->f:I

    .line 4260
    div-int/lit8 v10, v11, 0x3

    iget-object v12, v13, Liye;->d:[I

    add-int/lit8 v11, v11, 0x2

    aget v11, v12, v11

    add-int/2addr v10, v11

    iput v10, v13, Liye;->e:I

    goto/16 :goto_1d

    .line 4263
    :cond_4c
    const/16 v4, 0x9

    iput v4, v13, Liye;->b:I

    .line 4264
    const-string/jumbo v4, "invalid distance code"

    move-object/from16 v0, p0

    iput-object v4, v0, Liyl;->i:Ljava/lang/String;

    .line 4267
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 4268
    move-object/from16 v0, p0

    iput v6, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v7, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    .line 4269
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    .line 4270
    const/4 v4, -0x3

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v4

    goto/16 :goto_1e

    .line 4273
    :pswitch_14
    iget v11, v13, Liye;->h:I

    move v10, v8

    .line 4275
    :goto_24
    if-ge v10, v11, :cond_4e

    .line 4276
    if-eqz v6, :cond_4d

    const/16 v27, 0x0

    .line 4284
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Liyl;->a:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v12, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v10

    or-int/2addr v9, v7

    .line 4285
    add-int/lit8 v7, v10, 0x8

    move v10, v7

    move v7, v8

    goto :goto_24

    .line 4279
    :cond_4d
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v10, v0, Liyd;->l:I

    .line 4280
    move-object/from16 v0, p0

    iput v6, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v7, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    .line 4281
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    .line 4282
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v4

    goto/16 :goto_1e

    .line 4288
    :cond_4e
    iget v8, v13, Liye;->i:I

    sget-object v12, Liye;->a:[I

    aget v12, v12, v11

    and-int/2addr v12, v9

    add-int/2addr v8, v12

    iput v8, v13, Liye;->i:I

    .line 4290
    shr-int/2addr v9, v11

    .line 4291
    sub-int v8, v10, v11

    .line 4293
    const/4 v10, 0x5

    iput v10, v13, Liye;->b:I

    .line 4295
    :pswitch_15
    iget v10, v13, Liye;->i:I

    sub-int v10, v5, v10

    .line 4296
    :goto_25
    if-gez v10, :cond_50

    .line 4297
    move-object/from16 v0, v33

    iget v11, v0, Liyd;->p:I

    add-int/2addr v10, v11

    goto :goto_25

    .line 4318
    :cond_4f
    move-object/from16 v0, v33

    iget-object v14, v0, Liyd;->o:[B

    add-int/lit8 v11, v5, 0x1

    move-object/from16 v0, v33

    iget-object v15, v0, Liyd;->o:[B

    add-int/lit8 v12, v10, 0x1

    aget-byte v10, v15, v10

    aput-byte v10, v14, v5

    add-int/lit8 v5, v4, -0x1

    .line 4320
    move-object/from16 v0, v33

    iget v4, v0, Liyd;->p:I

    if-ne v12, v4, :cond_68

    .line 4321
    const/4 v4, 0x0

    .line 4322
    :goto_26
    iget v10, v13, Liye;->c:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v13, Liye;->c:I

    move v10, v4

    move v4, v5

    move v5, v11

    .line 4299
    :cond_50
    iget v11, v13, Liye;->c:I

    if-eqz v11, :cond_56

    .line 4301
    if-nez v4, :cond_4f

    .line 4302
    move-object/from16 v0, v33

    iget v11, v0, Liyd;->p:I

    if-ne v5, v11, :cond_51

    move-object/from16 v0, v33

    iget v11, v0, Liyd;->q:I

    if-eqz v11, :cond_51

    const/4 v5, 0x0

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    if-lez v4, :cond_53

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    add-int/lit8 v4, v4, 0x0

    add-int/lit8 v4, v4, -0x1

    .line 4303
    :cond_51
    :goto_27
    if-nez v4, :cond_4f

    .line 4304
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v27

    .line 4305
    move-object/from16 v0, v33

    iget v5, v0, Liyd;->r:I

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    if-ge v5, v4, :cond_54

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .line 4307
    :goto_28
    move-object/from16 v0, v33

    iget v11, v0, Liyd;->p:I

    if-ne v5, v11, :cond_52

    move-object/from16 v0, v33

    iget v11, v0, Liyd;->q:I

    if-eqz v11, :cond_52

    const/4 v5, 0x0

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    if-lez v4, :cond_55

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    add-int/lit8 v4, v4, 0x0

    add-int/lit8 v4, v4, -0x1

    .line 4309
    :cond_52
    :goto_29
    if-nez v4, :cond_4f

    .line 4310
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 4311
    move-object/from16 v0, p0

    iput v6, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v7, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    .line 4312
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    .line 4313
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v4

    goto/16 :goto_1e

    .line 4302
    :cond_53
    move-object/from16 v0, v33

    iget v4, v0, Liyd;->p:I

    add-int/lit8 v4, v4, 0x0

    goto :goto_27

    .line 4305
    :cond_54
    move-object/from16 v0, v33

    iget v4, v0, Liyd;->p:I

    sub-int/2addr v4, v5

    goto :goto_28

    .line 4307
    :cond_55
    move-object/from16 v0, v33

    iget v4, v0, Liyd;->p:I

    add-int/lit8 v4, v4, 0x0

    goto :goto_29

    .line 4324
    :cond_56
    const/4 v10, 0x0

    iput v10, v13, Liye;->b:I

    goto/16 :goto_1d

    .line 4327
    :pswitch_16
    if-nez v4, :cond_5c

    .line 4328
    move-object/from16 v0, v33

    iget v10, v0, Liyd;->p:I

    if-ne v5, v10, :cond_57

    move-object/from16 v0, v33

    iget v10, v0, Liyd;->q:I

    if-eqz v10, :cond_57

    const/4 v5, 0x0

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    if-lez v4, :cond_59

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    add-int/lit8 v4, v4, 0x0

    add-int/lit8 v4, v4, -0x1

    .line 4329
    :cond_57
    :goto_2a
    if-nez v4, :cond_5c

    .line 4330
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v10

    .line 4331
    move-object/from16 v0, v33

    iget v5, v0, Liyd;->r:I

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    if-ge v5, v4, :cond_5a

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .line 4333
    :goto_2b
    move-object/from16 v0, v33

    iget v11, v0, Liyd;->p:I

    if-ne v5, v11, :cond_58

    move-object/from16 v0, v33

    iget v11, v0, Liyd;->q:I

    if-eqz v11, :cond_58

    const/4 v5, 0x0

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    if-lez v4, :cond_5b

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    add-int/lit8 v4, v4, 0x0

    add-int/lit8 v4, v4, -0x1

    .line 4334
    :cond_58
    :goto_2c
    if-nez v4, :cond_5c

    .line 4335
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 4336
    move-object/from16 v0, p0

    iput v6, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v7, v4

    int-to-long v12, v4

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iput-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    .line 4337
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    .line 4338
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v10}, Liyd;->a(Liyl;I)I

    move-result v4

    goto/16 :goto_1e

    .line 4328
    :cond_59
    move-object/from16 v0, v33

    iget v4, v0, Liyd;->p:I

    add-int/lit8 v4, v4, 0x0

    goto :goto_2a

    .line 4331
    :cond_5a
    move-object/from16 v0, v33

    iget v4, v0, Liyd;->p:I

    sub-int/2addr v4, v5

    goto :goto_2b

    .line 4333
    :cond_5b
    move-object/from16 v0, v33

    iget v4, v0, Liyd;->p:I

    add-int/lit8 v4, v4, 0x0

    goto :goto_2c

    :cond_5c
    move v10, v5

    .line 4342
    const/16 v27, 0x0

    .line 4344
    move-object/from16 v0, v33

    iget-object v11, v0, Liyd;->o:[B

    add-int/lit8 v5, v10, 0x1

    iget v12, v13, Liye;->g:I

    int-to-byte v12, v12

    aput-byte v12, v11, v10

    add-int/lit8 v4, v4, -0x1

    .line 4346
    const/4 v10, 0x0

    iput v10, v13, Liye;->b:I

    goto/16 :goto_1d

    .line 4349
    :pswitch_17
    const/4 v4, 0x7

    if-le v8, v4, :cond_5d

    .line 4350
    add-int/lit8 v8, v8, -0x8

    .line 4351
    add-int/lit8 v6, v6, 0x1

    .line 4352
    add-int/lit8 v7, v7, -0x1

    .line 4355
    :cond_5d
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v4

    .line 4356
    move-object/from16 v0, v33

    iget v5, v0, Liyd;->r:I

    move-object/from16 v0, v33

    iget v10, v0, Liyd;->q:I

    if-ge v5, v10, :cond_5e

    move-object/from16 v0, v33

    iget v10, v0, Liyd;->q:I

    .line 4358
    :goto_2d
    move-object/from16 v0, v33

    iget v10, v0, Liyd;->q:I

    move-object/from16 v0, v33

    iget v11, v0, Liyd;->r:I

    if-eq v10, v11, :cond_5f

    .line 4359
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 4360
    move-object/from16 v0, p0

    iput v6, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v6, v0, Liyl;->b:I

    sub-int v6, v7, v6

    int-to-long v10, v6

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    .line 4361
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    .line 4362
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v4

    goto/16 :goto_1e

    .line 4356
    :cond_5e
    move-object/from16 v0, v33

    iget v10, v0, Liyd;->p:I

    goto :goto_2d

    .line 4364
    :cond_5f
    const/16 v4, 0x8

    iput v4, v13, Liye;->b:I

    .line 4367
    :pswitch_18
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 4368
    move-object/from16 v0, p0

    iput v6, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v7, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    .line 4369
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    .line 4370
    const/4 v4, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v4

    goto/16 :goto_1e

    .line 4376
    :pswitch_19
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 4377
    move-object/from16 v0, p0

    iput v6, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v7, v4

    int-to-long v10, v4

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    .line 4378
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    .line 4379
    const/4 v4, -0x3

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v4

    goto/16 :goto_1e

    .line 2487
    :cond_60
    const/16 v27, 0x0

    .line 2488
    invoke-static {}, Liye;->a()V

    .line 2490
    move-object/from16 v0, p0

    iget v7, v0, Liyl;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Liyl;->c:I

    move-object/from16 v0, v33

    iget v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iget v8, v0, Liyd;->l:I

    .line 2491
    move-object/from16 v0, v33

    iget v5, v0, Liyd;->r:I

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    if-ge v5, v4, :cond_61

    move-object/from16 v0, v33

    iget v4, v0, Liyd;->q:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .line 2493
    :goto_2e
    move-object/from16 v0, v33

    iget v10, v0, Liyd;->k:I

    if-nez v10, :cond_62

    .line 2494
    const/4 v10, 0x0

    move-object/from16 v0, v33

    iput v10, v0, Liyd;->c:I

    move v11, v4

    move/from16 v28, v5

    move v4, v6

    move v5, v7

    .line 2495
    goto/16 :goto_4

    .line 2491
    :cond_61
    move-object/from16 v0, v33

    iget v4, v0, Liyd;->p:I

    sub-int/2addr v4, v5

    goto :goto_2e

    .line 2497
    :cond_62
    const/4 v4, 0x7

    move-object/from16 v0, v33

    iput v4, v0, Liyd;->c:I

    .line 2499
    :goto_2f
    move-object/from16 v0, v33

    iput v5, v0, Liyd;->r:I

    .line 2500
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Liyd;->a(Liyl;I)I

    move-result v4

    .line 2501
    move-object/from16 v0, v33

    iget v0, v0, Liyd;->r:I

    move/from16 v28, v0

    .line 2502
    move-object/from16 v0, v33

    iget v5, v0, Liyd;->q:I

    move-object/from16 v0, v33

    iget v10, v0, Liyd;->r:I

    if-eq v5, v10, :cond_63

    .line 2503
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 2504
    move-object/from16 v0, p0

    iput v6, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v5, v0, Liyl;->b:I

    sub-int v5, v7, v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    .line 2505
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2506
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 2508
    :cond_63
    const/16 v4, 0x8

    move-object/from16 v0, v33

    iput v4, v0, Liyd;->c:I

    .line 2512
    :goto_30
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 2513
    move-object/from16 v0, p0

    iput v6, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v6, v0, Liyl;->b:I

    sub-int v6, v7, v6

    int-to-long v8, v6

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    .line 2514
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2515
    const/4 v4, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 2519
    :pswitch_1a
    move-object/from16 v0, v33

    iput v9, v0, Liyd;->m:I

    move-object/from16 v0, v33

    iput v8, v0, Liyd;->l:I

    .line 2520
    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iget v4, v0, Liyl;->b:I

    sub-int v4, v5, v4

    int-to-long v8, v4

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Liyl;->d:J

    move-object/from16 v0, p0

    iput v5, v0, Liyl;->b:I

    .line 2521
    move/from16 v0, v28

    move-object/from16 v1, v33

    iput v0, v1, Liyd;->r:I

    .line 2522
    const/4 v4, -0x3

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Liyd;->a(Liyl;I)I

    move-result v27

    goto/16 :goto_5

    .line 231
    .restart local v27    # "r":I
    :cond_64
    if-nez v27, :cond_65

    .line 232
    move/from16 v27, p1

    .line 234
    :cond_65
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_1

    .line 237
    move/from16 v27, p1

    .line 238
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    iget-object v4, v4, Liyg;->h:Liyd;

    move-object/from16 v0, p0

    iget-object v5, v0, Liyl;->k:Liyg;

    iget-object v5, v5, Liyg;->c:[J

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5}, Liyd;->a(Liyl;[J)V

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    iget v4, v4, Liyg;->f:I

    if-eqz v4, :cond_66

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/16 v5, 0xc

    iput v5, v4, Liyg;->a:I

    goto/16 :goto_2

    .line 243
    :cond_66
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/16 v5, 0x8

    iput v5, v4, Liyg;->a:I

    .line 246
    :pswitch_1b
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    if-eqz v4, :cond_1

    move/from16 v27, p1

    .line 248
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    move-object/from16 v0, p0

    iget-object v5, v0, Liyl;->a:[B

    move-object/from16 v0, p0

    iget v6, v0, Liyl;->b:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Liyl;->b:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    int-to-long v6, v5

    const-wide v8, 0xff000000L

    and-long/2addr v6, v8

    iput-wide v6, v4, Liyg;->d:J

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/16 v5, 0x9

    iput v5, v4, Liyg;->a:I

    .line 253
    :pswitch_1c
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    if-eqz v4, :cond_1

    move/from16 v27, p1

    .line 255
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    iget-wide v6, v4, Liyg;->d:J

    move-object/from16 v0, p0

    iget-object v5, v0, Liyl;->a:[B

    move-object/from16 v0, p0

    iget v8, v0, Liyl;->b:I

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Liyl;->b:I

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    int-to-long v8, v5

    const-wide/32 v10, 0xff0000

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v4, Liyg;->d:J

    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/16 v5, 0xa

    iput v5, v4, Liyg;->a:I

    .line 260
    :pswitch_1d
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    if-eqz v4, :cond_1

    move/from16 v27, p1

    .line 262
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    .line 263
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    iget-wide v6, v4, Liyg;->d:J

    move-object/from16 v0, p0

    iget-object v5, v0, Liyl;->a:[B

    move-object/from16 v0, p0

    iget v8, v0, Liyl;->b:I

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Liyl;->b:I

    aget-byte v5, v5, v8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    int-to-long v8, v5

    const-wide/32 v10, 0xff00

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v4, Liyg;->d:J

    .line 264
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/16 v5, 0xb

    iput v5, v4, Liyg;->a:I

    .line 267
    :pswitch_1e
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    if-eqz v4, :cond_1

    move/from16 v27, p1

    .line 269
    move-object/from16 v0, p0

    iget v4, v0, Liyl;->c:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Liyl;->c:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Liyl;->d:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Liyl;->d:J

    .line 270
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    iget-wide v6, v4, Liyg;->d:J

    move-object/from16 v0, p0

    iget-object v5, v0, Liyl;->a:[B

    move-object/from16 v0, p0

    iget v8, v0, Liyl;->b:I

    add-int/lit8 v9, v8, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Liyl;->b:I

    aget-byte v5, v5, v8

    int-to-long v8, v5

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v4, Liyg;->d:J

    .line 272
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    iget-object v4, v4, Liyg;->c:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    long-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Liyl;->k:Liyg;

    iget-wide v6, v5, Liyg;->d:J

    long-to-int v5, v6

    if-eq v4, v5, :cond_67

    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/16 v5, 0xd

    iput v5, v4, Liyg;->a:I

    .line 274
    const-string/jumbo v4, "incorrect data check"

    move-object/from16 v0, p0

    iput-object v4, v0, Liyl;->i:Ljava/lang/String;

    .line 275
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/4 v5, 0x5

    iput v5, v4, Liyg;->e:I

    goto/16 :goto_2

    .line 279
    :cond_67
    move-object/from16 v0, p0

    iget-object v4, v0, Liyl;->k:Liyg;

    const/16 v5, 0xc

    iput v5, v4, Liyg;->a:I

    .line 281
    :pswitch_1f
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 283
    :pswitch_20
    const/16 v27, -0x3

    goto/16 :goto_0

    .end local v27    # "r":I
    :cond_68
    move v4, v12

    goto/16 :goto_26

    :cond_69
    move v4, v6

    goto/16 :goto_1b

    :cond_6a
    move v6, v7

    goto/16 :goto_1a

    :cond_6b
    move v11, v4

    move/from16 v28, v5

    move v4, v6

    move v5, v7

    goto/16 :goto_4

    :cond_6c
    move v10, v6

    goto/16 :goto_d

    :cond_6d
    move v11, v6

    goto/16 :goto_c

    :pswitch_21
    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, v8

    move/from16 v32, v9

    goto/16 :goto_15

    :pswitch_22
    move/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, v8

    move/from16 v32, v9

    goto/16 :goto_1c

    :pswitch_23
    move v6, v4

    move v7, v5

    move/from16 v5, v28

    goto/16 :goto_2f

    :pswitch_24
    move v6, v4

    move v7, v5

    goto/16 :goto_30

    :pswitch_25
    move v12, v4

    move v13, v5

    move v14, v8

    move v15, v9

    goto/16 :goto_6

    .line 150
    .line 2141
    .line 2162
    .line 4126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_25
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_1a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method final a(Liyl;)I
    .locals 2
    .param p1, "z"    # Liyl;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Liyg;->h:Liyd;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Liyg;->h:Liyd;

    .line 1536
    invoke-virtual {v0, p1, v1}, Liyd;->a(Liyl;[J)V

    .line 1537
    iput-object v1, v0, Liyd;->o:[B

    .line 1538
    iput-object v1, v0, Liyd;->n:[I

    .line 108
    :cond_0
    iput-object v1, p0, Liyg;->h:Liyd;

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method final a(Liyl;I)I
    .locals 6
    .param p1, "z"    # Liyl;
    .param p2, "w"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 114
    iput-object v0, p1, Liyl;->i:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Liyg;->h:Liyd;

    .line 118
    iput v2, p0, Liyg;->f:I

    .line 119
    if-gez p2, :cond_0

    .line 120
    neg-int p2, p2

    .line 121
    iput v5, p0, Liyg;->f:I

    .line 125
    :cond_0
    const/16 v1, 0x8

    if-lt p2, v1, :cond_1

    const/16 v1, 0xf

    if-le p2, v1, :cond_3

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Liyg;->a(Liyl;)I

    .line 127
    const/4 v2, -0x2

    .line 137
    .end local p0    # "this":Liyg;
    :cond_2
    :goto_0
    return v2

    .line 129
    .restart local p0    # "this":Liyg;
    :cond_3
    iput p2, p0, Liyg;->g:I

    .line 131
    iget-object v1, p1, Liyl;->k:Liyg;

    new-instance v3, Liyd;

    iget-object v4, p1, Liyl;->k:Liyg;

    iget v4, v4, Liyg;->f:I

    if-eqz v4, :cond_4

    move-object p0, v0

    .end local p0    # "this":Liyg;
    :cond_4
    shl-int v4, v5, p2

    invoke-direct {v3, p1, p0, v4}, Liyd;-><init>(Liyl;Ljava/lang/Object;I)V

    iput-object v3, v1, Liyg;->h:Liyd;

    .line 2096
    if-eqz p1, :cond_2

    iget-object v1, p1, Liyl;->k:Liyg;

    if-eqz v1, :cond_2

    .line 2098
    const-wide/16 v4, 0x0

    iput-wide v4, p1, Liyl;->h:J

    iput-wide v4, p1, Liyl;->d:J

    .line 2099
    iput-object v0, p1, Liyl;->i:Ljava/lang/String;

    .line 2100
    iget-object v3, p1, Liyl;->k:Liyg;

    iget-object v1, p1, Liyl;->k:Liyg;

    iget v1, v1, Liyg;->f:I

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    :goto_1
    iput v1, v3, Liyg;->a:I

    .line 2101
    iget-object v1, p1, Liyl;->k:Liyg;

    iget-object v1, v1, Liyg;->h:Liyd;

    invoke-virtual {v1, p1, v0}, Liyd;->a(Liyl;[J)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 2100
    goto :goto_1
.end method

.class public final Lkqu;
.super Lkqp;
.source "DateTimeFieldImpl.java"

# interfaces
.implements Lkqj;


# static fields
.field static final c:Lkqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkqx",
            "<",
            "Lkqu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Z

.field private e:Ljava/util/Date;

.field private f:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lkqu$1;

    invoke-direct {v0}, Lkqu$1;-><init>()V

    sput-object v0, Lkqu;->c:Lkqx;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lksy;Lkqa;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "raw"    # Lksy;
    .param p4, "monitor"    # Lkqa;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lkqp;-><init>(Ljava/lang/String;Ljava/lang/String;Lksy;Lkqa;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkqu;->d:Z

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 48
    iget-boolean v3, p0, Lkqu;->d:Z

    if-nez v3, :cond_0

    .line 2075
    iget-object v3, p0, Lkqp;->a:Ljava/lang/String;

    .line 1069
    :try_start_0
    new-instance v9, Lkrw;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4}, Lkrw;-><init>(Ljava/io/Reader;)V

    .line 2142
    iget v3, v9, Lkrw;->e:I

    if-ne v3, v0, :cond_1

    invoke-virtual {v9}, Lkrw;->a()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 2154
    iget-object v3, v9, Lkrw;->g:[I

    const/4 v4, 0x1

    iget v5, v9, Lkrw;->f:I

    aput v5, v3, v4

    .line 2214
    :goto_1
    const/16 v3, 0x2e

    invoke-virtual {v9, v3}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v3

    .line 2215
    invoke-static {v3}, Lkrw;->a(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v4

    .line 2220
    iget v3, v9, Lkrw;->e:I

    if-ne v3, v0, :cond_3

    invoke-virtual {v9}, Lkrw;->a()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_1

    .line 2270
    iget-object v0, v9, Lkrw;->g:[I

    const/4 v1, 0x3

    iget v2, v9, Lkrw;->f:I

    aput v2, v0, v1

    .line 2271
    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2272
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v0
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    iput-object v0, p0, Lkqu;->f:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    .line 1077
    :goto_3
    iput-boolean v8, p0, Lkqu;->d:Z

    .line 51
    :cond_0
    iget-object v0, p0, Lkqu;->e:Ljava/util/Date;

    return-object v0

    .line 2142
    :cond_1
    :try_start_1
    iget v3, v9, Lkrw;->e:I

    goto :goto_0

    .line 2172
    :pswitch_0
    iget v3, v9, Lkrw;->e:I

    if-ne v3, v0, :cond_2

    invoke-virtual {v9}, Lkrw;->a()I

    move-result v3

    :goto_4
    packed-switch v3, :pswitch_data_2

    .line 2195
    iget-object v0, v9, Lkrw;->g:[I

    const/4 v1, 0x2

    iget v2, v9, Lkrw;->f:I

    aput v2, v0, v1

    .line 2196
    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2197
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v0
    :try_end_1
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_1 .. :try_end_1} :catch_1

    .line 1073
    :catch_1
    move-exception v0

    .line 1074
    new-instance v1, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lkqu;->f:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    goto :goto_3

    .line 2172
    :cond_2
    :try_start_2
    iget v3, v9, Lkrw;->e:I

    goto :goto_4

    .line 2174
    :pswitch_1
    const/4 v3, 0x4

    invoke-virtual {v9, v3}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2199
    :goto_5
    iget-object v3, v9, Lkrw;->c:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iget-object v3, v3, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 2151
    const/4 v3, 0x3

    invoke-virtual {v9, v3}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_1

    .line 2177
    :pswitch_2
    const/4 v3, 0x5

    invoke-virtual {v9, v3}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_5

    .line 2180
    :pswitch_3
    const/4 v3, 0x6

    invoke-virtual {v9, v3}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_5

    .line 2183
    :pswitch_4
    const/4 v3, 0x7

    invoke-virtual {v9, v3}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_5

    .line 2186
    :pswitch_5
    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_5

    .line 2189
    :pswitch_6
    const/16 v3, 0x9

    invoke-virtual {v9, v3}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_5

    .line 2192
    :pswitch_7
    const/16 v3, 0xa

    invoke-virtual {v9, v3}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_5

    .line 2220
    :cond_3
    iget v3, v9, Lkrw;->e:I

    goto/16 :goto_2

    .line 2222
    :pswitch_8
    const/16 v2, 0xb

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move v2, v8

    .line 2279
    :goto_6
    const/16 v3, 0x2e

    invoke-virtual {v9, v3}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v3

    .line 2280
    iget-object v3, v3, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    .line 2208
    new-instance v5, Lkrw$a;

    invoke-direct {v5, v3, v2, v4}, Lkrw$a;-><init>(Ljava/lang/String;II)V

    .line 2305
    const/16 v2, 0x2e

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v2

    .line 2306
    invoke-static {v2}, Lkrw;->a(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v4

    .line 2287
    const/16 v2, 0x17

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2312
    const/16 v2, 0x2e

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v2

    .line 2313
    invoke-static {v2}, Lkrw;->a(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v6

    .line 2289
    iget v2, v9, Lkrw;->e:I

    if-ne v2, v0, :cond_4

    invoke-virtual {v9}, Lkrw;->a()I

    move-result v2

    :goto_7
    packed-switch v2, :pswitch_data_3

    .line 2295
    iget-object v2, v9, Lkrw;->g:[I

    const/4 v3, 0x4

    iget v7, v9, Lkrw;->f:I

    aput v7, v2, v3

    move v3, v1

    .line 2326
    :goto_8
    iget v2, v9, Lkrw;->e:I

    if-ne v2, v0, :cond_5

    invoke-virtual {v9}, Lkrw;->a()I

    move-result v2

    :goto_9
    packed-switch v2, :pswitch_data_4

    .line 2346
    iget-object v0, v9, Lkrw;->g:[I

    const/4 v1, 0x5

    iget v2, v9, Lkrw;->f:I

    aput v2, v0, v1

    .line 2347
    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2348
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v0

    .line 2226
    :pswitch_9
    const/16 v2, 0xc

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2227
    const/4 v2, 0x2

    goto :goto_6

    .line 2230
    :pswitch_a
    const/16 v3, 0xd

    invoke-virtual {v9, v3}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_6

    .line 2234
    :pswitch_b
    const/16 v2, 0xe

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2235
    const/4 v2, 0x4

    goto :goto_6

    .line 2238
    :pswitch_c
    const/16 v2, 0xf

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2239
    const/4 v2, 0x5

    goto :goto_6

    .line 2242
    :pswitch_d
    const/16 v2, 0x10

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2243
    const/4 v2, 0x6

    goto :goto_6

    .line 2246
    :pswitch_e
    const/16 v2, 0x11

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2247
    const/4 v2, 0x7

    goto/16 :goto_6

    .line 2250
    :pswitch_f
    const/16 v2, 0x12

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2251
    const/16 v2, 0x8

    goto/16 :goto_6

    .line 2254
    :pswitch_10
    const/16 v2, 0x13

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2255
    const/16 v2, 0x9

    goto/16 :goto_6

    .line 2258
    :pswitch_11
    const/16 v2, 0x14

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2259
    const/16 v2, 0xa

    goto/16 :goto_6

    .line 2262
    :pswitch_12
    const/16 v2, 0x15

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2263
    const/16 v2, 0xb

    goto/16 :goto_6

    .line 2266
    :pswitch_13
    const/16 v2, 0x16

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2267
    const/16 v2, 0xc

    goto/16 :goto_6

    .line 2289
    :cond_4
    iget v2, v9, Lkrw;->e:I

    goto/16 :goto_7

    .line 2291
    :pswitch_14
    const/16 v2, 0x17

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2319
    const/16 v2, 0x2e

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v2

    .line 2320
    invoke-static {v2}, Lkrw;->a(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v2

    move v3, v2

    .line 2293
    goto/16 :goto_8

    .line 2326
    :cond_5
    iget v2, v9, Lkrw;->e:I

    goto/16 :goto_9

    .line 2328
    :pswitch_15
    const/16 v1, 0x18

    invoke-virtual {v9, v1}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    .line 2329
    const/16 v2, 0x2e

    invoke-virtual {v9, v2}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v2

    .line 2330
    invoke-static {v2}, Lkrw;->a(Lorg/apache/james/mime4j/field/datetime/parser/Token;)I

    move-result v2

    iget-object v1, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    const-string/jumbo v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_a
    mul-int/2addr v0, v2

    .line 2299
    :goto_b
    new-instance v7, Lkrw$b;

    invoke-direct {v7, v4, v6, v3, v0}, Lkrw$b;-><init>(IIII)V

    .line 2159
    new-instance v0, Lkqe;

    .line 3111
    iget-object v1, v5, Lkrw$a;->a:Ljava/lang/String;

    .line 3112
    iget v2, v5, Lkrw$a;->b:I

    .line 3113
    iget v3, v5, Lkrw$a;->c:I

    .line 4094
    iget v4, v7, Lkrw$b;->a:I

    .line 4095
    iget v5, v7, Lkrw$b;->b:I

    .line 4096
    iget v6, v7, Lkrw$b;->c:I

    .line 4097
    iget v7, v7, Lkrw$b;->d:I

    .line 2166
    invoke-direct/range {v0 .. v7}, Lkqe;-><init>(Ljava/lang/String;IIIIII)V

    .line 2135
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 5080
    iget-object v0, v0, Lkqe;->a:Ljava/util/Date;

    .line 1070
    iput-object v0, p0, Lkqu;->e:Ljava/util/Date;

    goto/16 :goto_3

    :cond_6
    move v0, v8

    .line 2330
    goto :goto_a

    .line 2356
    :pswitch_16
    iget v2, v9, Lkrw;->e:I

    if-ne v2, v0, :cond_7

    invoke-virtual {v9}, Lkrw;->a()I

    move-result v0

    :goto_c
    packed-switch v0, :pswitch_data_5

    .line 2402
    iget-object v0, v9, Lkrw;->g:[I

    const/4 v1, 0x6

    iget v2, v9, Lkrw;->f:I

    aput v2, v0, v1

    .line 2403
    const/4 v0, -0x1

    invoke-virtual {v9, v0}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2404
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>()V

    throw v0

    .line 2356
    :cond_7
    iget v0, v9, Lkrw;->e:I

    goto :goto_c

    .line 2358
    :pswitch_17
    const/16 v0, 0x19

    invoke-virtual {v9, v0}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move v0, v1

    .line 2406
    :goto_d
    mul-int/lit8 v0, v0, 0x64

    .line 2344
    goto :goto_b

    .line 2362
    :pswitch_18
    const/16 v0, 0x1a

    invoke-virtual {v9, v0}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move v0, v1

    .line 2364
    goto :goto_d

    .line 2366
    :pswitch_19
    const/16 v0, 0x1b

    invoke-virtual {v9, v0}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2367
    const/4 v0, -0x5

    .line 2368
    goto :goto_d

    .line 2370
    :pswitch_1a
    const/16 v0, 0x1c

    invoke-virtual {v9, v0}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2371
    const/4 v0, -0x4

    .line 2372
    goto :goto_d

    .line 2374
    :pswitch_1b
    const/16 v0, 0x1d

    invoke-virtual {v9, v0}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2375
    const/4 v0, -0x6

    .line 2376
    goto :goto_d

    .line 2378
    :pswitch_1c
    const/16 v0, 0x1e

    invoke-virtual {v9, v0}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2379
    const/4 v0, -0x5

    .line 2380
    goto :goto_d

    .line 2382
    :pswitch_1d
    const/16 v0, 0x1f

    invoke-virtual {v9, v0}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2383
    const/4 v0, -0x7

    .line 2384
    goto :goto_d

    .line 2386
    :pswitch_1e
    const/16 v0, 0x20

    invoke-virtual {v9, v0}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2387
    const/4 v0, -0x6

    .line 2388
    goto :goto_d

    .line 2390
    :pswitch_1f
    const/16 v0, 0x21

    invoke-virtual {v9, v0}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2391
    const/4 v0, -0x8

    .line 2392
    goto :goto_d

    .line 2394
    :pswitch_20
    const/16 v0, 0x22

    invoke-virtual {v9, v0}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    .line 2395
    const/4 v0, -0x7

    .line 2396
    goto :goto_d

    .line 2398
    :pswitch_21
    const/16 v0, 0x23

    invoke-virtual {v9, v0}, Lkrw;->a(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    .line 2399
    iget-object v0, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_2
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    .line 2400
    goto :goto_d

    .line 2142
    .line 2220
    .line 2172
    .line 2289
    .line 2326
    .line 2356
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x17
        :pswitch_14
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x18
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x19
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

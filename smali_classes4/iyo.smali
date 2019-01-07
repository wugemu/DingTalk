.class public final Liyo;
.super Ljava/lang/Object;
.source "MessageReader.java"


# instance fields
.field private final a:Lizj;


# direct methods
.method public constructor <init>(Lizj;)V
    .locals 0
    .param p1, "in"    # Lizj;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Liyo;->a:Lizj;

    .line 17
    return-void
.end method

.method private a(I)Ljava/lang/Object;
    .locals 8
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 130
    and-int/lit16 v5, p1, 0xf0

    const/16 v6, 0x80

    if-ne v5, v6, :cond_0

    .line 131
    and-int/lit8 v0, p1, 0xf

    .line 140
    .local v0, "count":I
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v3, "objects":Ljava/util/Map;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 142
    invoke-virtual {p0}, Liyo;->b()Ljava/lang/Object;

    move-result-object v2

    .line 143
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {p0}, Liyo;->b()Ljava/lang/Object;

    move-result-object v4

    .line 145
    .local v4, "value":Ljava/lang/Object;
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "objects":Ljava/util/Map;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    and-int/lit16 v5, p1, 0xff

    const/16 v6, 0xde

    if-ne v5, v6, :cond_1

    .line 133
    invoke-direct {p0}, Liyo;->c()I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_0

    .line 134
    .end local v0    # "count":I
    :cond_1
    and-int/lit16 v5, p1, 0xff

    const/16 v6, 0xdf

    if-ne v5, v6, :cond_2

    .line 8070
    invoke-direct {p0}, Liyo;->f()I

    move-result v0

    .line 135
    .restart local v0    # "count":I
    goto :goto_0

    .line 137
    .end local v0    # "count":I
    :cond_2
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Invalid Array count: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 147
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "objects":Ljava/util/Map;
    :cond_3
    return-object v3
.end method

.method private b(I)Ljava/lang/Object;
    .locals 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 153
    and-int/lit16 v3, p1, 0xf0

    const/16 v4, 0x90

    if-ne v3, v4, :cond_0

    .line 154
    and-int/lit8 v0, p1, 0xf

    .line 163
    .local v0, "count":I
    :goto_0
    new-array v2, v0, [Ljava/lang/Object;

    .line 164
    .local v2, "objects":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 165
    invoke-virtual {p0}, Liyo;->b()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "objects":[Ljava/lang/Object;
    :cond_0
    and-int/lit16 v3, p1, 0xff

    const/16 v4, 0xdc

    if-ne v3, v4, :cond_1

    .line 156
    invoke-direct {p0}, Liyo;->c()I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_0

    .line 157
    .end local v0    # "count":I
    :cond_1
    and-int/lit16 v3, p1, 0xff

    const/16 v4, 0xdd

    if-ne v3, v4, :cond_2

    .line 9070
    invoke-direct {p0}, Liyo;->f()I

    move-result v0

    .line 158
    .restart local v0    # "count":I
    goto :goto_0

    .line 160
    .end local v0    # "count":I
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Invalid Array count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 167
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "objects":[Ljava/lang/Object;
    :cond_3
    return-object v2
.end method

.method private c()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 63
    invoke-direct {p0}, Liyo;->e()S

    move-result v0

    .line 64
    .local v0, "count":I
    if-gez v0, :cond_0

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    .line 65
    .end local v0    # "count":I
    :cond_0
    return v0
.end method

.method private d()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 93
    iget-object v1, p0, Liyo;->a:Lizj;

    invoke-interface {v1}, Lizj;->a()B

    move-result v0

    .line 94
    .local v0, "value":B
    iget-object v1, p0, Liyo;->a:Lizj;

    invoke-interface {v1}, Lizj;->b()V

    .line 95
    return v0
.end method

.method private e()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 99
    iget-object v1, p0, Liyo;->a:Lizj;

    invoke-interface {v1}, Lizj;->c()S

    move-result v0

    .line 100
    .local v0, "value":S
    iget-object v1, p0, Liyo;->a:Lizj;

    invoke-interface {v1}, Lizj;->b()V

    .line 101
    return v0
.end method

.method private f()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 105
    iget-object v1, p0, Liyo;->a:Lizj;

    invoke-interface {v1}, Lizj;->d()I

    move-result v0

    .line 106
    .local v0, "value":I
    iget-object v1, p0, Liyo;->a:Lizj;

    invoke-interface {v1}, Lizj;->b()V

    .line 107
    return v0
.end method

.method private g()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 111
    iget-object v2, p0, Liyo;->a:Lizj;

    invoke-interface {v2}, Lizj;->e()J

    move-result-wide v0

    .line 112
    .local v0, "value":J
    iget-object v2, p0, Liyo;->a:Lizj;

    invoke-interface {v2}, Lizj;->b()V

    .line 113
    return-wide v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Liyo;->a:Lizj;

    invoke-interface {v0}, Lizj;->h()Z

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v7, 0xe0

    const/16 v6, 0xa0

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 34
    invoke-virtual {p0}, Liyo;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6085
    :cond_0
    :goto_0
    :pswitch_0
    return-object v2

    .line 37
    :cond_1
    iget-object v3, p0, Liyo;->a:Lizj;

    invoke-interface {v3}, Lizj;->a()B

    move-result v0

    .line 1227
    .local v0, "b":I
    and-int/lit16 v3, v0, 0x80

    if-nez v3, :cond_2

    .line 1228
    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->INTEGER:Lcom/laiwang/idl/msgpacklite/ValueType;

    .line 39
    .local v1, "t":Lcom/laiwang/idl/msgpacklite/ValueType;
    :goto_1
    sget-object v3, Liyo$1;->a:[I

    invoke-virtual {v1}, Lcom/laiwang/idl/msgpacklite/ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2218
    :pswitch_1
    invoke-direct {p0}, Liyo;->g()J

    move-result-wide v4

    .line 2219
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 1230
    .end local v1    # "t":Lcom/laiwang/idl/msgpacklite/ValueType;
    :cond_2
    and-int/lit16 v3, v0, 0xe0

    if-ne v3, v7, :cond_3

    .line 1231
    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->INTEGER:Lcom/laiwang/idl/msgpacklite/ValueType;

    goto :goto_1

    .line 1233
    :cond_3
    and-int/lit16 v3, v0, 0xe0

    if-ne v3, v6, :cond_4

    .line 1234
    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->RAW:Lcom/laiwang/idl/msgpacklite/ValueType;

    goto :goto_1

    .line 1236
    :cond_4
    and-int/lit16 v3, v0, 0xf0

    const/16 v4, 0x90

    if-ne v3, v4, :cond_5

    .line 1237
    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->ARRAY:Lcom/laiwang/idl/msgpacklite/ValueType;

    goto :goto_1

    .line 1239
    :cond_5
    and-int/lit16 v3, v0, 0xf0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_6

    .line 1240
    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->MAP:Lcom/laiwang/idl/msgpacklite/ValueType;

    goto :goto_1

    .line 1242
    :cond_6
    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_1

    .line 1272
    :pswitch_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid byte: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1244
    :pswitch_3
    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->NIL:Lcom/laiwang/idl/msgpacklite/ValueType;

    goto :goto_1

    .line 1246
    :pswitch_4
    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->DATE:Lcom/laiwang/idl/msgpacklite/ValueType;

    goto :goto_1

    .line 1249
    :pswitch_5
    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->BOOLEAN:Lcom/laiwang/idl/msgpacklite/ValueType;

    goto :goto_1

    .line 1252
    :pswitch_6
    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->FLOAT:Lcom/laiwang/idl/msgpacklite/ValueType;

    goto :goto_1

    .line 1261
    :pswitch_7
    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->INTEGER:Lcom/laiwang/idl/msgpacklite/ValueType;

    goto :goto_1

    .line 1264
    :pswitch_8
    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->RAW:Lcom/laiwang/idl/msgpacklite/ValueType;

    goto :goto_1

    .line 1267
    :pswitch_9
    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->ARRAY:Lcom/laiwang/idl/msgpacklite/ValueType;

    goto :goto_1

    .line 1270
    :pswitch_a
    sget-object v1, Lcom/laiwang/idl/msgpacklite/ValueType;->MAP:Lcom/laiwang/idl/msgpacklite/ValueType;

    goto/16 :goto_1

    .line 3020
    .restart local v1    # "t":Lcom/laiwang/idl/msgpacklite/ValueType;
    :pswitch_b
    and-int/lit16 v3, v0, 0xff

    const/16 v4, 0xc2

    if-ne v3, v4, :cond_7

    .line 3021
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0

    .line 3022
    :cond_7
    and-int/lit16 v3, v0, 0xff

    const/16 v4, 0xc3

    if-ne v3, v4, :cond_0

    .line 3023
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0

    .line 3182
    :pswitch_c
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_8

    .line 3183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 3185
    :cond_8
    and-int/lit16 v2, v0, 0xe0

    if-ne v2, v7, :cond_9

    .line 3186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 3189
    :cond_9
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_2

    .line 3212
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid byte: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3191
    :pswitch_d
    invoke-direct {p0}, Liyo;->d()B

    move-result v2

    .line 3192
    if-gez v2, :cond_a

    add-int/lit16 v2, v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 3193
    :cond_a
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_0

    .line 3195
    :pswitch_e
    invoke-direct {p0}, Liyo;->d()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto/16 :goto_0

    .line 3197
    :pswitch_f
    invoke-direct {p0}, Liyo;->e()S

    move-result v2

    .line 3198
    if-gez v2, :cond_b

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 3199
    :cond_b
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto/16 :goto_0

    .line 3201
    :pswitch_10
    invoke-direct {p0}, Liyo;->e()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto/16 :goto_0

    .line 3203
    :pswitch_11
    invoke-direct {p0}, Liyo;->f()I

    move-result v2

    .line 3204
    if-gez v2, :cond_c

    int-to-long v2, v2

    const-wide v4, 0x100000000L

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_0

    .line 3205
    :cond_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 3207
    :pswitch_12
    invoke-direct {p0}, Liyo;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_0

    .line 3210
    :pswitch_13
    invoke-direct {p0}, Liyo;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_0

    .line 4171
    :pswitch_14
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_3

    .line 4177
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid Float: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5117
    :pswitch_15
    iget-object v2, p0, Liyo;->a:Lizj;

    invoke-interface {v2}, Lizj;->f()F

    move-result v2

    .line 5118
    iget-object v3, p0, Liyo;->a:Lizj;

    invoke-interface {v3}, Lizj;->b()V

    .line 4173
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto/16 :goto_0

    .line 5123
    :pswitch_16
    iget-object v2, p0, Liyo;->a:Lizj;

    invoke-interface {v2}, Lizj;->g()D

    move-result-wide v2

    .line 5124
    iget-object v4, p0, Liyo;->a:Lizj;

    invoke-interface {v4}, Lizj;->b()V

    .line 4175
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_0

    .line 51
    :pswitch_17
    invoke-direct {p0, v0}, Liyo;->b(I)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 53
    :pswitch_18
    invoke-direct {p0, v0}, Liyo;->a(I)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_0

    .line 6075
    :pswitch_19
    and-int/lit16 v2, v0, 0xe0

    if-ne v2, v6, :cond_d

    .line 6076
    and-int/lit8 v2, v0, 0x1f

    move v3, v2

    .line 6084
    :goto_2
    if-nez v3, :cond_10

    .line 6085
    new-array v2, v5, [B

    goto/16 :goto_0

    .line 6077
    :cond_d
    and-int/lit16 v2, v0, 0xff

    const/16 v3, 0xda

    if-ne v2, v3, :cond_e

    .line 6078
    invoke-direct {p0}, Liyo;->c()I

    move-result v2

    move v3, v2

    goto :goto_2

    .line 6079
    :cond_e
    and-int/lit16 v2, v0, 0xff

    const/16 v3, 0xdb

    if-ne v2, v3, :cond_f

    .line 7070
    invoke-direct {p0}, Liyo;->f()I

    move-result v2

    move v3, v2

    .line 6080
    goto :goto_2

    .line 6082
    :cond_f
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Invalid Array count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6087
    :cond_10
    new-array v2, v3, [B

    .line 6088
    iget-object v4, p0, Liyo;->a:Lizj;

    invoke-interface {v4, v2, v5, v3}, Lizj;->a([BII)I

    goto/16 :goto_0

    .line 39
    .line 1242
    .line 3189
    .line 4171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_14
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xcc
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_e
        :pswitch_10
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xca
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

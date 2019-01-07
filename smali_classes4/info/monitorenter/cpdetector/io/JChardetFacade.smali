.class public final Linfo/monitorenter/cpdetector/io/JChardetFacade;
.super Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;
.source "JChardetFacade.java"

# interfaces
.implements Llfr;


# static fields
.field private static det:Llfi;

.field private static instance:Linfo/monitorenter/cpdetector/io/JChardetFacade;


# instance fields
.field private amountOfVerifiers:I

.field private buf:[B

.field private codpage:Ljava/nio/charset/Charset;

.field private m_guessing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->instance:Linfo/monitorenter/cpdetector/io/JChardetFacade;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Linfo/monitorenter/cpdetector/io/AbstractCodepageDetector;-><init>()V

    .line 87
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->buf:[B

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->codpage:Ljava/nio/charset/Charset;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->m_guessing:Z

    .line 93
    iput v1, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->amountOfVerifiers:I

    .line 100
    new-instance v0, Llfi;

    invoke-direct {v0, v1}, Llfi;-><init>(I)V

    .line 101
    sput-object v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->det:Llfi;

    .line 1042
    iput-object p0, v0, Llfi;->a:Llfr;

    .line 102
    sget-object v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->det:Llfi;

    invoke-virtual {v0}, Llfi;->b()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->amountOfVerifiers:I

    .line 103
    return-void
.end method

.method public static getInstance()Linfo/monitorenter/cpdetector/io/JChardetFacade;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->instance:Linfo/monitorenter/cpdetector/io/JChardetFacade;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;

    invoke-direct {v0}, Linfo/monitorenter/cpdetector/io/JChardetFacade;-><init>()V

    sput-object v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->instance:Linfo/monitorenter/cpdetector/io/JChardetFacade;

    .line 109
    :cond_0
    sget-object v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->instance:Linfo/monitorenter/cpdetector/io/JChardetFacade;

    return-object v0
.end method

.method private guess()Ljava/nio/charset/Charset;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 150
    const/4 v3, 0x0

    .line 151
    .local v3, "ret":Ljava/nio/charset/Charset;
    sget-object v4, Linfo/monitorenter/cpdetector/io/JChardetFacade;->det:Llfi;

    invoke-virtual {v4}, Llfi;->b()[Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "possibilities":[Ljava/lang/String;
    array-length v4, v2

    iget v5, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->amountOfVerifiers:I

    if-ne v4, v5, :cond_1

    .line 157
    const-string/jumbo v4, "US-ASCII"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 173
    :cond_0
    :goto_0
    return-object v3

    .line 160
    :cond_1
    const/4 v4, 0x0

    aget-object v0, v2, v4

    .line 161
    .local v0, "check":Ljava/lang/String;
    const-string/jumbo v4, "nomatch"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    invoke-static {}, Lkfg;->a()Ljava/nio/charset/Charset;

    move-result-object v3

    goto :goto_0

    .line 164
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-nez v3, :cond_0

    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 166
    :try_start_0
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 164
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    :catch_0
    move-exception v4

    aget-object v4, v2, v1

    invoke-static {v4}, Lkfh;->a(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method public final Notify(Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->codpage:Ljava/nio/charset/Charset;

    .line 183
    return-void
.end method

.method public final Reset()V
    .locals 1

    .prologue
    .line 186
    sget-object v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->det:Llfi;

    invoke-virtual {v0}, Llfi;->a()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->codpage:Ljava/nio/charset/Charset;

    .line 188
    return-void
.end method

.method public final declared-synchronized detectCodepage(Ljava/io/InputStream;I)Ljava/nio/charset/Charset;
    .locals 16
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/JChardetFacade;->Reset()V

    .line 120
    const/4 v3, 0x0

    .line 121
    .local v3, "read":I
    const/4 v1, 0x0

    .line 125
    .local v1, "done":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->buf:[B

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->buf:[B

    array-length v7, v7

    sub-int v8, p2, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 126
    .local v2, "len":I
    if-lez v2, :cond_1

    .line 127
    add-int/2addr v3, v2

    .line 129
    :cond_1
    if-nez v1, :cond_2

    .line 130
    sget-object v9, Linfo/monitorenter/cpdetector/io/JChardetFacade;->det:Llfi;

    move-object/from16 v0, p0

    iget-object v10, v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->buf:[B

    .line 1049
    if-nez v10, :cond_6

    .line 1050
    const/4 v1, 0x0

    .line 131
    :cond_2
    :goto_0
    if-lez v2, :cond_3

    if-eqz v1, :cond_0

    .line 132
    :cond_3
    sget-object v5, Linfo/monitorenter/cpdetector/io/JChardetFacade;->det:Llfi;

    .line 3261
    iget-boolean v6, v5, Llfv;->i:Z

    if-nez v6, :cond_5

    .line 3264
    iget v6, v5, Llfv;->g:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 3265
    iget-object v6, v5, Llfv;->b:[Llga;

    iget-object v7, v5, Llfv;->f:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    aget-object v6, v6, v7

    invoke-virtual {v6}, Llga;->d()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "GB18030"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 3266
    iget-object v6, v5, Llfv;->b:[Llga;

    iget-object v7, v5, Llfv;->f:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    aget-object v6, v6, v7

    invoke-virtual {v6}, Llga;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Llfv;->a(Ljava/lang/String;)V

    .line 3267
    const/4 v6, 0x1

    iput-boolean v6, v5, Llfv;->i:Z

    .line 3275
    :cond_4
    :goto_1
    iget-boolean v6, v5, Llfv;->j:Z

    if-eqz v6, :cond_5

    .line 3276
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Llfv;->a([BIZ)V

    .line 133
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->codpage:Ljava/nio/charset/Charset;

    if-nez v5, :cond_14

    .line 134
    move-object/from16 v0, p0

    iget-boolean v5, v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->m_guessing:Z

    if-eqz v5, :cond_13

    .line 135
    invoke-direct/range {p0 .. p0}, Linfo/monitorenter/cpdetector/io/JChardetFacade;->guess()Ljava/nio/charset/Charset;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 142
    .local v4, "ret":Ljava/nio/charset/Charset;
    :goto_2
    monitor-exit p0

    return-object v4

    .line 1188
    .end local v4    # "ret":Ljava/nio/charset/Charset;
    :cond_6
    const/4 v5, 0x0

    move v8, v5

    :goto_3
    if-lt v8, v2, :cond_8

    .line 1253
    :try_start_1
    iget-boolean v5, v9, Llfv;->j:Z

    if-eqz v5, :cond_7

    .line 2280
    const/4 v5, 0x0

    invoke-virtual {v9, v10, v2, v5}, Llfv;->a([BIZ)V

    .line 1256
    :cond_7
    :goto_4
    iget-boolean v5, v9, Llfv;->i:Z

    .line 1053
    iget-boolean v1, v9, Llfi;->i:Z

    goto :goto_0

    .line 1189
    :cond_8
    aget-byte v7, v10, v8

    .line 1191
    const/4 v5, 0x0

    :cond_9
    :goto_5
    iget v6, v9, Llfv;->g:I

    if-lt v5, v6, :cond_b

    .line 1223
    iget v5, v9, Llfv;->g:I

    const/4 v6, 0x1

    if-gt v5, v6, :cond_e

    .line 1225
    const/4 v5, 0x1

    iget v6, v9, Llfv;->g:I

    if-ne v5, v6, :cond_a

    .line 1226
    iget-object v5, v9, Llfv;->b:[Llga;

    iget-object v6, v9, Llfv;->f:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {v5}, Llga;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Llfv;->a(Ljava/lang/String;)V

    .line 1228
    :cond_a
    const/4 v5, 0x1

    iput-boolean v5, v9, Llfv;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 118
    .end local v1    # "done":Z
    .end local v2    # "len":I
    .end local v3    # "read":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1192
    .restart local v1    # "done":Z
    .restart local v2    # "len":I
    .restart local v3    # "read":I
    :cond_b
    :try_start_2
    iget-object v6, v9, Llfv;->b:[Llga;

    iget-object v11, v9, Llfv;->f:[I

    aget v11, v11, v5

    aget-object v6, v6, v11

    iget-object v11, v9, Llfv;->e:[B

    aget-byte v11, v11, v5

    .line 2050
    invoke-virtual {v6}, Llga;->b()[I

    move-result-object v12

    .line 2051
    invoke-virtual {v6}, Llga;->c()I

    move-result v13

    mul-int/2addr v13, v11

    invoke-virtual {v6}, Llga;->a()[I

    move-result-object v14

    and-int/lit16 v15, v7, 0xff

    shr-int/lit8 v15, v15, 0x3

    aget v14, v14, v15

    .line 2052
    and-int/lit8 v15, v7, 0x7

    shl-int/lit8 v15, v15, 0x2

    .line 2051
    shr-int/2addr v14, v15

    and-int/lit8 v14, v14, 0xf

    add-int/2addr v13, v14

    .line 2050
    and-int/lit16 v13, v13, 0xff

    shr-int/lit8 v13, v13, 0x3

    aget v12, v12, v13

    .line 2055
    invoke-virtual {v6}, Llga;->c()I

    move-result v13

    mul-int/2addr v11, v13

    invoke-virtual {v6}, Llga;->a()[I

    move-result-object v6

    and-int/lit16 v13, v7, 0xff

    shr-int/lit8 v13, v13, 0x3

    aget v6, v6, v13

    .line 2056
    and-int/lit8 v13, v7, 0x7

    shl-int/lit8 v13, v13, 0x2

    .line 2055
    shr-int/2addr v6, v13

    and-int/lit8 v6, v6, 0xf

    add-int/2addr v6, v11

    .line 2054
    and-int/lit16 v6, v6, 0xff

    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x2

    .line 2050
    shr-int v6, v12, v6

    and-int/lit8 v6, v6, 0xf

    .line 2049
    and-int/lit16 v6, v6, 0xff

    int-to-byte v11, v6

    .line 1197
    const/4 v6, 0x2

    if-ne v11, v6, :cond_c

    .line 1201
    iget-object v6, v9, Llfv;->b:[Llga;

    iget-object v7, v9, Llfv;->f:[I

    aget v5, v7, v5

    aget-object v5, v6, v5

    invoke-virtual {v5}, Llga;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Llfv;->a(Ljava/lang/String;)V

    .line 1202
    const/4 v5, 0x1

    iput-boolean v5, v9, Llfv;->i:Z

    goto/16 :goto_4

    .line 1206
    :cond_c
    const/4 v6, 0x1

    if-ne v11, v6, :cond_d

    .line 1209
    iget v6, v9, Llfv;->g:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v9, Llfv;->g:I

    .line 1210
    iget v6, v9, Llfv;->g:I

    if-ge v5, v6, :cond_9

    .line 1211
    iget-object v6, v9, Llfv;->f:[I

    iget-object v11, v9, Llfv;->f:[I

    iget v12, v9, Llfv;->g:I

    aget v11, v11, v12

    aput v11, v6, v5

    .line 1212
    iget-object v6, v9, Llfv;->e:[B

    iget-object v11, v9, Llfv;->e:[B

    iget v12, v9, Llfv;->g:I

    aget-byte v11, v11, v12

    aput-byte v11, v6, v5

    goto/16 :goto_5

    .line 1218
    :cond_d
    iget-object v12, v9, Llfv;->e:[B

    add-int/lit8 v6, v5, 0x1

    aput-byte v11, v12, v5

    move v5, v6

    goto/16 :goto_5

    .line 1234
    :cond_e
    const/4 v7, 0x0

    .line 1235
    const/4 v5, 0x0

    .line 1237
    const/4 v6, 0x0

    :goto_6
    iget v11, v9, Llfv;->g:I

    if-lt v6, v11, :cond_f

    .line 1244
    const/4 v6, 0x1

    if-ne v6, v7, :cond_11

    .line 1245
    iget-object v6, v9, Llfv;->b:[Llga;

    iget-object v7, v9, Llfv;->f:[I

    aget v5, v7, v5

    aget-object v5, v6, v5

    invoke-virtual {v5}, Llga;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Llfv;->a(Ljava/lang/String;)V

    .line 1246
    const/4 v5, 0x1

    iput-boolean v5, v9, Llfv;->i:Z

    goto/16 :goto_4

    .line 1238
    :cond_f
    iget-object v11, v9, Llfv;->b:[Llga;

    iget-object v12, v9, Llfv;->f:[I

    aget v12, v12, v6

    aget-object v11, v11, v12

    invoke-virtual {v11}, Llga;->e()Z

    move-result v11

    if-nez v11, :cond_10

    iget-object v11, v9, Llfv;->b:[Llga;

    iget-object v12, v9, Llfv;->f:[I

    aget v12, v12, v6

    aget-object v11, v11, v12

    invoke-virtual {v11}, Llga;->e()Z

    move-result v11

    if-nez v11, :cond_10

    .line 1239
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v5, v6

    .line 1237
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1188
    :cond_11
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto/16 :goto_3

    .line 3269
    :cond_12
    iget-object v6, v5, Llfv;->b:[Llga;

    iget-object v7, v5, Llfv;->f:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    aget-object v6, v6, v7

    invoke-virtual {v6}, Llga;->d()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "GB18030"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3270
    iget-object v6, v5, Llfv;->b:[Llga;

    iget-object v7, v5, Llfv;->f:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    aget-object v6, v6, v7

    invoke-virtual {v6}, Llga;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Llfv;->a(Ljava/lang/String;)V

    .line 3271
    const/4 v6, 0x1

    iput-boolean v6, v5, Llfv;->i:Z

    goto/16 :goto_1

    .line 137
    :cond_13
    invoke-static {}, Lkfg;->a()Ljava/nio/charset/Charset;

    move-result-object v4

    .restart local v4    # "ret":Ljava/nio/charset/Charset;
    goto/16 :goto_2

    .line 140
    .end local v4    # "ret":Ljava/nio/charset/Charset;
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->codpage:Ljava/nio/charset/Charset;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v4    # "ret":Ljava/nio/charset/Charset;
    goto/16 :goto_2
.end method

.method public final isGuessing()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->m_guessing:Z

    return v0
.end method

.method public final declared-synchronized setGuessing(Z)V
    .locals 1
    .param p1, "guessing"    # Z

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Linfo/monitorenter/cpdetector/io/JChardetFacade;->m_guessing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

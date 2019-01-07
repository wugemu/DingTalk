.class public Lcom/amap/api/mapcore/util/fu;
.super Lcom/amap/api/mapcore/util/fx;
.source "AnrLogProcessor.java"


# static fields
.field private static a:Z


# instance fields
.field private b:[Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/amap/api/mapcore/util/fu;->a:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/fx;-><init>(I)V

    .line 66
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/fu;->b:[Ljava/lang/String;

    .line 67
    iput v1, p0, Lcom/amap/api/mapcore/util/fu;->c:I

    .line 68
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/fu;->d:Z

    .line 69
    iput v1, p0, Lcom/amap/api/mapcore/util/fu;->e:I

    .line 31
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/fu;->c:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/fu;->c:I

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/fu;->b:[Ljava/lang/String;

    iget v1, p0, Lcom/amap/api/mapcore/util/fu;->c:I

    aput-object p1, v0, v1

    .line 188
    iget v0, p0, Lcom/amap/api/mapcore/util/fu;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/fu;->c:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string/jumbo v1, "ANRWriter"

    const-string/jumbo v2, "addData"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    :try_start_0
    iget v0, p0, Lcom/amap/api/mapcore/util/fu;->c:I

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 165
    const/16 v2, 0x9

    if-gt v0, v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/amap/api/mapcore/util/fu;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/amap/api/mapcore/util/fu;->c:I

    if-ge v0, v2, :cond_1

    .line 171
    iget-object v2, p0, Lcom/amap/api/mapcore/util/fu;->b:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    :catch_0
    move-exception v0

    .line 175
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v3, "getLogInfo"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore/util/fm;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 74
    const/4 v0, 0x0

    .line 75
    const/4 v2, 0x0

    .line 77
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string/jumbo v3, "/data/anr/traces.txt"

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 129
    if-eqz v1, :cond_0

    .line 130
    :try_start_1
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ha;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_10

    .line 140
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 141
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_12

    :cond_1
    :goto_1
    move-object v0, v1

    .line 156
    :goto_2
    return-object v0

    .line 81
    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    :try_start_4
    new-instance v2, Lcom/amap/api/mapcore/util/ha;

    sget-object v0, Lcom/amap/api/mapcore/util/hb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v0}, Lcom/amap/api/mapcore/util/ha;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_17
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v4, v5

    .line 86
    :cond_3
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ha;->a()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string/jumbo v6, "pid"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 88
    :goto_4
    const-string/jumbo v4, "\"main\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 89
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ha;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 91
    :cond_4
    const/4 v4, 0x1

    move-object v6, v0

    move v0, v4

    .line 94
    :goto_5
    const-string/jumbo v4, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v4, v5

    .line 97
    :goto_6
    if-eqz v4, :cond_3

    .line 98
    invoke-direct {p0, v6}, Lcom/amap/api/mapcore/util/fu;->b(Ljava/lang/String;)V

    .line 99
    iget v0, p0, Lcom/amap/api/mapcore/util/fu;->e:I
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_18
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v7, 0x5

    if-ne v0, v7, :cond_7

    .line 129
    :goto_7
    if-eqz v2, :cond_5

    .line 130
    :try_start_6
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ha;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_14

    .line 140
    :cond_5
    :goto_8
    if-eqz v3, :cond_6

    .line 141
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_16

    .line 153
    :cond_6
    :goto_9
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/fu;->d:Z

    if-eqz v0, :cond_e

    .line 154
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/fu;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 102
    :cond_7
    :try_start_8
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/fu;->d:Z

    if-nez v0, :cond_9

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/fm;

    .line 105
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fm;->f()[Ljava/lang/String;

    move-result-object v8

    .line 104
    invoke-static {v8, v6}, Lcom/amap/api/mapcore/util/fu;->b([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/amap/api/mapcore/util/fu;->d:Z

    .line 106
    iget-boolean v8, p0, Lcom/amap/api/mapcore/util/fu;->d:Z

    if-eqz v8, :cond_8

    .line 107
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/fu;->a(Lcom/amap/api/mapcore/util/fm;)V

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_7

    .line 111
    :cond_9
    iget v0, p0, Lcom/amap/api/mapcore/util/fu;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/fu;->e:I
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_18
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    .line 129
    :goto_b
    if-eqz v0, :cond_a

    .line 130
    :try_start_9
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ha;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    .line 140
    :cond_a
    :goto_c
    if-eqz v2, :cond_6

    .line 141
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_9

    .line 143
    :catch_2
    move-exception v0

    .line 145
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v3, "initLog3"

    :goto_d
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 124
    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 125
    :goto_e
    :try_start_b
    const-string/jumbo v4, "ANRWriter"

    const-string/jumbo v5, "initLog"

    invoke-static {v0, v4, v5}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 129
    if-eqz v2, :cond_b

    .line 130
    :try_start_c
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ha;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_d

    .line 140
    :cond_b
    :goto_f
    if-eqz v3, :cond_6

    .line 141
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_e

    goto :goto_9

    .line 143
    :catch_4
    move-exception v0

    .line 145
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v3, "initLog3"

    goto :goto_d

    .line 128
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 129
    :goto_10
    if-eqz v2, :cond_c

    .line 130
    :try_start_e
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ha;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9

    .line 140
    :cond_c
    :goto_11
    if-eqz v3, :cond_d

    .line 141
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_b

    .line 128
    :cond_d
    :goto_12
    throw v0

    :cond_e
    move-object v0, v1

    .line 156
    goto/16 :goto_2

    .line 132
    :catch_5
    move-exception v0

    .line 133
    const-string/jumbo v3, "ANRWriter"

    const-string/jumbo v4, "initLog1"

    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 135
    :catch_6
    move-exception v0

    .line 136
    const-string/jumbo v3, "ANRWriter"

    const-string/jumbo v4, "initLog2"

    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 147
    :catch_7
    move-exception v0

    .line 148
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v3, "initLog4"

    :goto_13
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 132
    :catch_8
    move-exception v1

    .line 133
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v4, "initLog1"

    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 135
    :catch_9
    move-exception v1

    .line 136
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v4, "initLog2"

    invoke-static {v1, v2, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 143
    :catch_a
    move-exception v1

    .line 145
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v3, "initLog3"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 147
    :catch_b
    move-exception v1

    .line 148
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v3, "initLog4"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 132
    :catch_c
    move-exception v0

    .line 133
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v4, "initLog1"

    invoke-static {v0, v2, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 135
    :catch_d
    move-exception v0

    .line 136
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v4, "initLog2"

    invoke-static {v0, v2, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 147
    :catch_e
    move-exception v0

    .line 148
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v3, "initLog4"

    goto :goto_13

    .line 132
    :catch_f
    move-exception v2

    .line 133
    const-string/jumbo v3, "ANRWriter"

    const-string/jumbo v4, "initLog1"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :catch_10
    move-exception v2

    .line 136
    const-string/jumbo v3, "ANRWriter"

    const-string/jumbo v4, "initLog2"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :catch_11
    move-exception v0

    .line 145
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v3, "initLog3"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 147
    :catch_12
    move-exception v0

    .line 148
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v3, "initLog4"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 132
    :catch_13
    move-exception v0

    .line 133
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v4, "initLog1"

    invoke-static {v0, v2, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 135
    :catch_14
    move-exception v0

    .line 136
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v4, "initLog2"

    invoke-static {v0, v2, v4}, Lcom/amap/api/mapcore/util/fq;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 143
    :catch_15
    move-exception v0

    .line 145
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v3, "initLog3"

    goto/16 :goto_d

    .line 147
    :catch_16
    move-exception v0

    .line 148
    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v3, "initLog4"

    goto/16 :goto_13

    .line 128
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    goto/16 :goto_10

    .line 124
    :catch_17
    move-exception v0

    move-object v2, v1

    goto/16 :goto_e

    :catch_18
    move-exception v0

    goto/16 :goto_e

    :catch_19
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_b

    :catch_1a
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto/16 :goto_b

    :cond_f
    move v4, v0

    goto/16 :goto_6

    :cond_10
    move-object v6, v0

    move v0, v4

    goto/16 :goto_5
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-static {p1}, Lcom/amap/api/mapcore/util/fh;->m(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_2

    sget-boolean v2, Lcom/amap/api/mapcore/util/fu;->a:Z

    if-eqz v2, :cond_2

    .line 39
    sput-boolean v1, Lcom/amap/api/mapcore/util/fu;->a:Z

    .line 40
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2

    .line 42
    :try_start_0
    new-instance v3, Lcom/amap/api/mapcore/util/gk;

    invoke-direct {v3, p1}, Lcom/amap/api/mapcore/util/gk;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/gk;->a()Lcom/amap/api/mapcore/util/gl;

    move-result-object v4

    .line 48
    if-nez v4, :cond_0

    .line 49
    monitor-exit v2

    .line 61
    :goto_0
    return v0

    .line 52
    :cond_0
    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/gl;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 53
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Lcom/amap/api/mapcore/util/gl;->c(Z)V

    .line 54
    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/util/gk;->a(Lcom/amap/api/mapcore/util/gl;)V

    .line 55
    monitor-exit v2

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 57
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 61
    goto :goto_0
.end method

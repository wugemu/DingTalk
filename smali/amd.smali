.class public final Lamd;
.super Lcom/alibaba/analytics/core/sync/UploadLog;
.source "UploadLogFromDB.java"


# static fields
.field private static n:Lamd;


# instance fields
.field public d:Z

.field public final e:Lalo;

.field private volatile f:Z

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:J

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lamd;

    invoke-direct {v0}, Lamd;-><init>()V

    sput-object v0, Lamd;->n:Lamd;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadLog;-><init>()V

    .line 32
    iput-boolean v2, p0, Lamd;->f:Z

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lamd;->g:I

    .line 34
    iput v2, p0, Lamd;->h:I

    .line 35
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lamd;->i:F

    .line 36
    iput v2, p0, Lamd;->j:I

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lamd;->k:J

    .line 38
    iput-boolean v2, p0, Lamd;->d:Z

    .line 39
    iput v2, p0, Lamd;->l:I

    .line 41
    iget v0, p0, Lamd;->a:I

    iput v0, p0, Lamd;->m:I

    .line 43
    new-instance v0, Lalo;

    invoke-direct {v0}, Lalo;-><init>()V

    iput-object v0, p0, Lamd;->e:Lalo;

    return-void
.end method

.method private static a(Ljava/util/List;Lald;)Ljava/util/List;
    .locals 0
    .param p1, "log"    # Lald;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lald;",
            ">;",
            "Lald;",
            ")",
            "Ljava/util/List",
            "<",
            "Lald;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "delayLogs":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    if-nez p0, :cond_0

    .line 268
    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "delayLogs":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .restart local p0    # "delayLogs":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-object p0
.end method

.method private a(Ljava/util/List;)Z
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lald;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    invoke-static {}, Lamu;->b()V

    .line 3197
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_2

    .line 3198
    :cond_0
    const/4 v14, 0x0

    .line 126
    .local v14, "postDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-eqz v14, :cond_1

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v15

    if-nez v15, :cond_c

    .line 127
    :cond_1
    const-string/jumbo v15, ""

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "postDataMap is null"

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lamd;->f:Z

    .line 129
    const/4 v15, 0x1

    .line 193
    :goto_1
    return v15

    .line 3200
    .end local v14    # "postDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/16 v23, 0x0

    .line 3201
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 3202
    const/16 v22, 0x0

    .line 3203
    const/16 v21, 0x0

    .line 3205
    const/4 v15, 0x0

    move/from16 v24, v15

    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    move/from16 v0, v24

    if-ge v0, v15, :cond_6

    .line 3206
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lald;

    .line 3208
    const/high16 v20, 0x500000

    move/from16 v0, v23

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 3209
    move-object/from16 v0, v22

    invoke-static {v0, v15}, Lamd;->a(Ljava/util/List;Lald;)Ljava/util/List;

    move-result-object v20

    .line 3210
    const-string/jumbo v22, "log delay to upload because totalUploadSize Exceed"

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string/jumbo v28, "log"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    aput-object v15, v26, v27

    const/4 v15, 0x2

    const-string/jumbo v27, "totalUploadSize"

    aput-object v27, v26, v15

    const/4 v15, 0x3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v26, v15

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v15, v20

    move/from16 v20, v23

    .line 3205
    :goto_3
    add-int/lit8 v22, v24, 0x1

    move/from16 v24, v22

    move/from16 v23, v20

    move-object/from16 v22, v15

    goto :goto_2

    .line 3214
    :cond_3
    invoke-static {}, Lajz;->a()Lajz;

    move-result-object v20

    invoke-virtual {v15}, Lald;->b()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Laky;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lajz;->a(Ljava/util/Map;)Z

    move-result v20

    .line 3216
    if-eqz v20, :cond_4

    .line 3217
    move-object/from16 v0, v22

    invoke-static {v0, v15}, Lamd;->a(Ljava/util/List;Lald;)Ljava/util/List;

    move-result-object v22

    .line 3219
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lald;

    move-object/from16 v0, v20

    iget-object v0, v0, Lald;->b:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v26, "3"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v20

    if-ltz v20, :cond_1b

    .line 3220
    if-nez v21, :cond_1a

    .line 3221
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 3223
    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3225
    :goto_5
    const-string/jumbo v21, "log delay to upload because delay config"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string/jumbo v28, "log"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    aput-object v15, v26, v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v21, v20

    move-object/from16 v15, v22

    move/from16 v20, v23

    .line 3226
    goto :goto_3

    .line 3229
    :cond_4
    iget-object v0, v15, Lald;->a:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/StringBuilder;

    .line 3230
    if-nez v20, :cond_5

    .line 3231
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 3232
    iget-object v15, v15, Lald;->a:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3237
    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lald;

    invoke-virtual {v15}, Lald;->b()Ljava/lang/String;

    move-result-object v15

    .line 3238
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3240
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int v15, v15, v23

    move/from16 v20, v15

    move-object/from16 v15, v22

    goto/16 :goto_3

    .line 3234
    :cond_5
    const/4 v15, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3235
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 3243
    :cond_6
    if-eqz v22, :cond_7

    .line 3244
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 3246
    :cond_7
    if-eqz v21, :cond_9

    .line 3247
    const/4 v15, 0x0

    move/from16 v20, v15

    :goto_7
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v15

    move/from16 v0, v20

    if-ge v0, v15, :cond_8

    .line 3248
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lald;

    const-string/jumbo v22, "2"

    move-object/from16 v0, v22

    iput-object v0, v15, Lald;->b:Ljava/lang/String;

    .line 3247
    add-int/lit8 v15, v20, 0x1

    move/from16 v20, v15

    goto :goto_7

    .line 3250
    :cond_8
    invoke-static {}, Lalu;->a()Lalu;

    move-result-object v15

    .line 4093
    iget-object v15, v15, Lalu;->a:Lals;

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Lals;->c(Ljava/util/List;)V

    .line 3253
    :cond_9
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 3254
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lamd;->j:I

    .line 3255
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3256
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3257
    move-object/from16 v0, v20

    invoke-virtual {v14, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 3259
    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_b

    .line 3260
    move-object/from16 v0, p0

    iget v15, v0, Lamd;->j:I

    int-to-float v15, v15

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v15, v15, v20

    move-object/from16 v0, p0

    iput v15, v0, Lamd;->i:F

    .line 3262
    :cond_b
    const-string/jumbo v15, "UploadLogFromDB"

    const/16 v20, 0x6

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "averagePackageSize"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lamd;->i:F

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, "mUploadByteSize"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lamd;->j:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string/jumbo v22, "count"

    aput-object v22, v20, v21

    const/16 v21, 0x5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 131
    .restart local v14    # "postDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    const/4 v13, 0x0

    .line 133
    .local v13, "packRequest":[B
    :try_start_0
    invoke-static {v14}, Lalv;->a(Ljava/util/Map;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 137
    :goto_9
    if-nez v13, :cond_f

    .line 4275
    move-object/from16 v0, p0

    iget v15, v0, Lamd;->g:I

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lamd;->g:I

    .line 4276
    move-object/from16 v0, p0

    iget v15, v0, Lamd;->g:I

    if-gtz v15, :cond_e

    .line 4277
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lamd;->g:I

    .line 4278
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lamd;->h:I

    .line 4282
    :cond_d
    :goto_a
    const-string/jumbo v15, "UploadLogFromDB"

    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string/jumbo v22, "winsize"

    aput-object v22, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lamd;->g:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 134
    :catch_0
    move-exception v9

    .line 135
    .local v9, "e":Ljava/lang/Exception;
    const/4 v15, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 4279
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_e
    move-object/from16 v0, p0

    iget v15, v0, Lamd;->g:I

    const/16 v20, 0x15e

    move/from16 v0, v20

    if-le v15, v0, :cond_d

    .line 4280
    const/16 v15, 0x15e

    move-object/from16 v0, p0

    iput v15, v0, Lamd;->g:I

    goto :goto_a

    .line 141
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 143
    .local v16, "start":J
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v15

    invoke-virtual {v15}, Lajw;->b()Z

    move-result v15

    if-eqz v15, :cond_11

    .line 144
    invoke-static {v13}, Lamh;->a([B)Lalw;

    move-result-object v5

    .line 148
    .local v5, "bizResponse":Lalw;
    :goto_b
    invoke-virtual {v5}, Lalw;->a()Z

    move-result v12

    .line 149
    .local v12, "isSendSuccess":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 151
    .local v18, "uploadEnd":J
    sub-long v6, v18, v16

    .line 152
    .local v6, "consumeTime":J
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 4286
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-gez v20, :cond_12

    .line 4287
    move-object/from16 v0, p0

    iget v15, v0, Lamd;->g:I

    .line 153
    :goto_c
    if-eqz v12, :cond_17

    .line 154
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v15

    .line 5115
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v15, Lajw;->s:Z

    .line 155
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lamd;->d:Z

    .line 156
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lamd;->l:I

    .line 157
    invoke-static {}, Lalu;->a()Lalu;

    move-result-object v15

    .line 6079
    iget-object v15, v15, Lalu;->a:Lals;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lals;->b(Ljava/util/List;)I

    move-result v8

    .line 158
    .local v8, "deleteCount":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lamd;->k:J

    move-wide/from16 v20, v0

    int-to-long v0, v8

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lamd;->k:J

    .line 159
    move-object/from16 v0, p0

    iget-object v15, v0, Lamd;->e:Lalo;

    sget v20, Laln;->d:I

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lamd;->j:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lalo;->a(Laln;)V

    .line 161
    :try_start_1
    iget-object v15, v5, Lalw;->c:Ljava/lang/String;

    invoke-static {v15}, Lamd;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 186
    .end local v8    # "deleteCount":I
    :cond_10
    :goto_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 187
    .local v10, "deleteEnd":J
    const-string/jumbo v15, ""

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "isSendSuccess"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, "upload log count"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x4

    const-string/jumbo v22, "upload consume"

    aput-object v22, v20, v21

    const/16 v21, 0x5

    sub-long v22, v18, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x6

    const-string/jumbo v22, "delete consume"

    aput-object v22, v20, v21

    const/16 v21, 0x7

    sub-long v22, v10, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lamu;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    const-wide/16 v20, 0x64

    :try_start_2
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 193
    :goto_e
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 146
    .end local v5    # "bizResponse":Lalw;
    .end local v6    # "consumeTime":J
    .end local v10    # "deleteEnd":J
    .end local v12    # "isSendSuccess":Z
    .end local v18    # "uploadEnd":J
    :cond_11
    invoke-static {v13}, Lamb;->a([B)Lalw;

    move-result-object v5

    .restart local v5    # "bizResponse":Lalw;
    goto/16 :goto_b

    .line 4289
    .restart local v6    # "consumeTime":J
    .restart local v12    # "isSendSuccess":Z
    .restart local v18    # "uploadEnd":J
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lamd;->j:I

    move/from16 v20, v0

    .line 4290
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    long-to-float v0, v6

    move/from16 v21, v0

    div-float v20, v20, v21

    .line 4292
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_15

    .line 4293
    const-wide/32 v22, 0xafc8

    cmp-long v15, v6, v22

    if-lez v15, :cond_13

    .line 4294
    move-object/from16 v0, p0

    iget v15, v0, Lamd;->g:I

    goto/16 :goto_c

    .line 4296
    :cond_13
    const v15, 0x472fc800    # 45000.0f

    mul-float v15, v15, v20

    float-to-double v0, v15

    move-wide/from16 v20, v0

    .line 4297
    move-object/from16 v0, p0

    iget v15, v0, Lamd;->i:F

    float-to-double v0, v15

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-object/from16 v0, p0

    iget v15, v0, Lamd;->h:I

    int-to-double v0, v15

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v15, v0

    move-object/from16 v0, p0

    iput v15, v0, Lamd;->g:I

    .line 4303
    :goto_f
    move-object/from16 v0, p0

    iget v15, v0, Lamd;->g:I

    if-gtz v15, :cond_16

    .line 4304
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lamd;->g:I

    .line 4305
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lamd;->h:I

    .line 4309
    :cond_14
    :goto_10
    const-string/jumbo v15, "UploadLogFromDB"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "winsize"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lamd;->g:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4310
    move-object/from16 v0, p0

    iget v15, v0, Lamd;->g:I

    goto/16 :goto_c

    .line 4300
    :cond_15
    move-object/from16 v0, p0

    iget v15, v0, Lamd;->g:I

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lamd;->g:I

    .line 4301
    move-object/from16 v0, p0

    iget v15, v0, Lamd;->h:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lamd;->h:I

    goto :goto_f

    .line 4306
    :cond_16
    move-object/from16 v0, p0

    iget v15, v0, Lamd;->g:I

    const/16 v20, 0x15e

    move/from16 v0, v20

    if-le v15, v0, :cond_14

    .line 4307
    const/16 v15, 0x15e

    move-object/from16 v0, p0

    iput v15, v0, Lamd;->g:I

    goto :goto_10

    .line 166
    :cond_17
    move-object/from16 v0, p0

    iget v15, v0, Lamd;->l:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lamd;->l:I

    .line 167
    move-object/from16 v0, p0

    iget v15, v0, Lamd;->l:I

    const/16 v20, 0xa

    move/from16 v0, v20

    if-le v15, v0, :cond_18

    .line 168
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v15

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lajw;->a(Z)V

    .line 169
    const-string/jumbo v15, ""

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "setHttpService"

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 173
    :cond_18
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v15

    .line 6123
    iget-boolean v15, v15, Lajw;->s:Z

    .line 173
    if-eqz v15, :cond_10

    .line 174
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lamd;->d:Z

    if-eqz v15, :cond_19

    move-object/from16 v0, p0

    iget v15, v0, Lamd;->l:I

    const/16 v20, 0xa

    move/from16 v0, v20

    if-gt v15, v0, :cond_19

    .line 175
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v4, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v15, "rt"

    iget-wide v0, v5, Lalw;->b:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v15, "pSize"

    move-object/from16 v0, p0

    iget v0, v0, Lamd;->j:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v15, "errCode"

    iget v0, v5, Lalw;->a:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v15, "type"

    const-string/jumbo v20, "1"

    move-object/from16 v0, v20

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-object/from16 v0, p0

    iget-object v15, v0, Lamd;->e:Lalo;

    sget v20, Laln;->c:I

    invoke-static {v4}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lalo;->a(Laln;)V

    goto/16 :goto_d

    .line 182
    .end local v4    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_19
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v15

    .line 7119
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v15, Lajw;->s:Z

    goto/16 :goto_d

    .line 190
    .restart local v10    # "deleteEnd":J
    :catch_1
    move-exception v9

    .line 191
    .local v9, "e":Ljava/lang/Throwable;
    const/4 v15, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v15, v9, v0}, Lamu;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 165
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "deleteEnd":J
    .restart local v8    # "deleteCount":I
    :catch_2
    move-exception v15

    goto/16 :goto_d

    .end local v5    # "bizResponse":Lalw;
    .end local v6    # "consumeTime":J
    .end local v8    # "deleteCount":I
    .end local v12    # "isSendSuccess":Z
    .end local v13    # "packRequest":[B
    .end local v14    # "postDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "start":J
    .end local v18    # "uploadEnd":J
    :cond_1a
    move-object/from16 v20, v21

    goto/16 :goto_4

    :cond_1b
    move-object/from16 v20, v21

    goto/16 :goto_5
.end method

.method public static b()Lamd;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lamd;->n:Lamd;

    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 55
    invoke-static {}, Lamu;->b()V

    .line 57
    :try_start_0
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v2

    invoke-virtual {v2}, Lajw;->c()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1075
    invoke-static {}, Lamu;->b()V

    .line 1076
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v2

    .line 1305
    iget-object v2, v2, Lajw;->c:Landroid/content/Context;

    .line 1076
    invoke-static {v2}, Lalg;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1079
    sget-object v2, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iget-object v3, p0, Lamd;->c:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lamd;->c:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-static {}, Lamd;->a()Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 1080
    const-string/jumbo v2, "network not match,return"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "current networkstatus"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lamd;->a()Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "mAllowedNetworkStatus"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lamd;->c:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lamd;->b:Laly;

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, Lamd;->b:Laly;

    iget-wide v4, p0, Lamd;->k:J

    invoke-interface {v2, v4, v5}, Laly;->a(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 72
    :cond_1
    :goto_1
    return-void

    .line 1083
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Lamd;->f:Z

    if-nez v2, :cond_0

    .line 1084
    const/4 v2, 0x1

    iput-boolean v2, p0, Lamd;->f:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1090
    const-wide/16 v2, 0x0

    :try_start_3
    iput-wide v2, p0, Lamd;->k:J

    .line 1091
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v2

    .line 2305
    iget-object v2, v2, Lajw;->c:Landroid/content/Context;

    .line 1091
    invoke-static {v2}, Lamx;->a(Landroid/content/Context;)Z

    move-result v2

    .line 1092
    if-nez v2, :cond_3

    .line 1093
    const-string/jumbo v2, "UploadLogFromDB"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Other Process is Uploading, break"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1117
    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, p0, Lamd;->f:Z

    .line 1118
    invoke-static {}, Lamx;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Throwable;
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1096
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_5
    invoke-static {}, Lalu;->a()Lalu;

    move-result-object v2

    .line 2314
    iget v3, p0, Lamd;->g:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 2316
    invoke-static {}, Lalg;->a()Ljava/lang/String;

    move-result-object v3

    .line 2317
    const-string/jumbo v4, "Wi-Fi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2318
    const/16 v3, 0x14

    iput v3, p0, Lamd;->g:I

    .line 2327
    :cond_4
    :goto_2
    iget v3, p0, Lamd;->g:I

    .line 3100
    iget-object v2, v2, Lalu;->a:Lals;

    invoke-interface {v2, v3}, Lals;->a(I)Ljava/util/List;

    move-result-object v2

    .line 1097
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_9

    .line 1098
    :cond_5
    const-string/jumbo v2, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "logs is null"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1099
    const/4 v2, 0x0

    iput-boolean v2, p0, Lamd;->f:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1117
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lamd;->f:Z

    .line 1118
    invoke-static {}, Lamx;->a()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 2319
    :cond_6
    :try_start_7
    const-string/jumbo v4, "4G"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2320
    const/16 v3, 0x10

    iput v3, p0, Lamd;->g:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 1114
    :catch_1
    move-exception v2

    .line 1115
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_8
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1117
    const/4 v2, 0x0

    :try_start_9
    iput-boolean v2, p0, Lamd;->f:Z

    .line 1118
    invoke-static {}, Lamx;->a()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 2321
    :cond_7
    :try_start_a
    const-string/jumbo v4, "3G"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2322
    const/16 v3, 0xc

    iput v3, p0, Lamd;->g:I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 1117
    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    :try_start_b
    iput-boolean v3, p0, Lamd;->f:Z

    .line 1118
    invoke-static {}, Lamx;->a()V

    throw v2
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    .line 2324
    :cond_8
    const/16 v3, 0x8

    :try_start_c
    iput v3, p0, Lamd;->g:I

    goto :goto_2

    .line 1103
    :cond_9
    invoke-direct {p0, v2}, Lamd;->a(Ljava/util/List;)Z

    move-result v2

    .line 1104
    if-eqz v2, :cond_a

    .line 1105
    iget v2, p0, Lamd;->a:I

    iput v2, p0, Lamd;->m:I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1117
    :goto_3
    const/4 v2, 0x0

    :try_start_d
    iput-boolean v2, p0, Lamd;->f:Z

    .line 1118
    invoke-static {}, Lamx;->a()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_0

    .line 1107
    :cond_a
    :try_start_e
    iget v2, p0, Lamd;->m:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lamd;->m:I

    .line 1108
    iget v2, p0, Lamd;->m:I

    if-lez v2, :cond_b

    .line 1109
    invoke-static {}, Lamf;->a()Lamf;

    const-string/jumbo v2, "i"

    invoke-static {v2}, Lamf;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 1111
    :cond_b
    iget v2, p0, Lamd;->a:I

    iput v2, p0, Lamd;->m:I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_3

    .line 60
    :cond_c
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_f
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "isAllServiceClosed"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_0

    .line 69
    :catch_2
    move-exception v1

    .line 70
    .local v1, "throwable":Ljava/lang/Throwable;
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

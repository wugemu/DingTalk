.class public final Lamc;
.super Lcom/alibaba/analytics/core/sync/UploadLog;
.source "UploadLogFromCache.java"


# static fields
.field private static k:Lamc;


# instance fields
.field public final d:Lalo;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lald;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Z

.field private h:I

.field private volatile i:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lald;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lamc;

    invoke-direct {v0}, Lamc;-><init>()V

    sput-object v0, Lamc;->k:Lamc;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadLog;-><init>()V

    .line 22
    new-instance v0, Lalo;

    invoke-direct {v0}, Lalo;-><init>()V

    iput-object v0, p0, Lamc;->d:Lalo;

    .line 23
    iput v1, p0, Lamc;->f:I

    .line 24
    iput-boolean v1, p0, Lamc;->g:Z

    .line 25
    iput v1, p0, Lamc;->h:I

    .line 27
    iput-boolean v1, p0, Lamc;->i:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamc;->e:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamc;->j:Ljava/util/List;

    return-void
.end method

.method public static b()Lamc;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lamc;->k:Lamc;

    return-object v0
.end method

.method private d()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 100
    invoke-static {}, Lamu;->b()V

    .line 101
    invoke-direct {p0}, Lamc;->e()Ljava/util/Map;

    move-result-object v5

    .line 102
    .local v5, "postDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 103
    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lamc;->i:Z

    .line 104
    const/4 v8, 0x1

    .line 155
    :goto_0
    return v8

    .line 107
    :cond_1
    const/4 v4, 0x0

    .line 109
    .local v4, "packRequest":[B
    :try_start_0
    invoke-static {v5}, Lalv;->b(Ljava/util/Map;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 113
    :goto_1
    if-nez v4, :cond_2

    .line 114
    const-string/jumbo v8, ""

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "packRequest is null"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const/4 v8, 0x0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v2, v9}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    .line 118
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 119
    .local v6, "start":J
    invoke-static {v4}, Lamb;->a([B)Lalw;

    move-result-object v1

    .line 120
    .local v1, "bizResponse":Lalw;
    invoke-virtual {v1}, Lalw;->a()Z

    move-result v3

    .line 121
    .local v3, "isSendSuccess":Z
    if-eqz v3, :cond_5

    .line 122
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v8

    .line 2115
    const/4 v9, 0x1

    iput-boolean v9, v8, Lajw;->s:Z

    .line 123
    const/4 v8, 0x1

    iput-boolean v8, p0, Lamc;->g:Z

    .line 124
    const/4 v8, 0x0

    iput v8, p0, Lamc;->h:I

    .line 3050
    monitor-enter p0

    .line 3051
    :try_start_1
    iget-object v8, p0, Lamc;->e:Ljava/util/List;

    iget-object v9, p0, Lamc;->j:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 3052
    iget-object v8, p0, Lamc;->j:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 3053
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :try_start_2
    iget-object v8, v1, Lalw;->c:Ljava/lang/String;

    invoke-static {v8}, Lamc;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 147
    :cond_3
    :goto_2
    invoke-static {}, Lamu;->a()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 148
    const-string/jumbo v8, ""

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "isSendSuccess"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "cost time"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_4
    const-wide/16 v8, 0x64

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 155
    :goto_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3053
    :catchall_0
    move-exception v8

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .line 128
    :catch_1
    move-exception v2

    .line 129
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 132
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    iget v8, p0, Lamc;->h:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lamc;->h:I

    .line 133
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v8

    invoke-virtual {v8}, Lajw;->b()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 134
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 136
    :cond_6
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v8

    .line 3123
    iget-boolean v8, v8, Lajw;->s:Z

    .line 136
    if-eqz v8, :cond_3

    .line 137
    iget-boolean v8, p0, Lamc;->g:Z

    if-eqz v8, :cond_3

    iget v8, p0, Lamc;->h:I

    const/16 v9, 0xa

    if-gt v8, v9, :cond_3

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "rt"

    iget-wide v10, v1, Lalw;->b:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v8, "pSize"

    iget v9, p0, Lamc;->f:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v8, "errCode"

    iget v9, v1, Lalw;->a:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string/jumbo v8, "type"

    const-string/jumbo v9, "2"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v8, p0, Lamc;->d:Lalo;

    sget v9, Laln;->c:I

    invoke-static {v0}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v9, v10, v11}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v9

    invoke-virtual {v8, v9}, Lalo;->a(Laln;)V

    goto/16 :goto_2

    .line 152
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v2

    .line 153
    .local v2, "e":Ljava/lang/Throwable;
    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "thread sleep interrupted"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method private e()Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lamc;->e:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_1

    .line 160
    const/4 v7, 0x0

    .line 214
    :cond_0
    :goto_0
    return-object v7

    .line 163
    :cond_1
    const/4 v13, 0x0

    .line 164
    .local v13, "totalUploadSize":I
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 165
    .local v9, "temp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/StringBuilder;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v12, "timeoutLogs":Ljava/util/List;, "Ljava/util/List<Lald;>;"
    monitor-enter p0

    .line 168
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lamc;->j:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 169
    invoke-static {}, Lakh;->a()Lakh;

    move-result-object v16

    .line 4077
    move-object/from16 v0, v16

    iget v0, v0, Lakh;->a:I

    move/from16 v16, v0

    .line 169
    move/from16 v0, v16

    mul-int/lit16 v2, v0, 0x3e8

    .line 170
    .local v2, "effectiveTime":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 171
    .local v10, "time":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lamc;->e:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v3, v0, :cond_4

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lamc;->e:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lald;

    .line 173
    .local v6, "log":Lald;
    iget-object v0, v6, Lald;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    sub-long v16, v10, v16

    int-to-long v0, v2

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-lez v16, :cond_2

    .line 174
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 177
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lamc;->j:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 4207
    iget v0, v6, Lald;->g:I

    move/from16 v17, v0

    .line 181
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/StringBuilder;

    .line 182
    .local v15, "vBuilder":Ljava/lang/StringBuilder;
    if-nez v15, :cond_3

    .line 183
    new-instance v15, Ljava/lang/StringBuilder;

    .end local v15    # "vBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .restart local v15    # "vBuilder":Ljava/lang/StringBuilder;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 5207
    iget v0, v6, Lald;->g:I

    move/from16 v17, v0

    .line 184
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lamc;->e:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lald;

    invoke-virtual/range {v16 .. v16}, Lald;->b()Ljava/lang/String;

    move-result-object v14

    .line 190
    .local v14, "uploadContent":Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    add-int v13, v13, v16

    goto :goto_2

    .line 186
    .end local v14    # "uploadContent":Ljava/lang/String;
    :cond_3
    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 195
    .end local v6    # "log":Lald;
    .end local v15    # "vBuilder":Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_6

    .line 196
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v16

    .line 6123
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lajw;->s:Z

    move/from16 v16, v0

    .line 196
    if-eqz v16, :cond_5

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lamc;->d:Lalo;

    move-object/from16 v16, v0

    sget v17, Laln;->l:I

    const/16 v18, 0x0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Laln;->a(ILjava/lang/String;Ljava/lang/Double;)Laln;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lalo;->a(Laln;)V

    .line 199
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lamc;->e:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 201
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v7, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iput v13, v0, Lamc;->f:I

    .line 205
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 206
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 201
    .end local v2    # "effectiveTime":I
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "str":Ljava/lang/String;
    .end local v10    # "time":J
    :catchall_0
    move-exception v16

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v16

    .line 209
    .restart local v2    # "effectiveTime":I
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "time":J
    :cond_7
    invoke-static {}, Lamu;->a()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 210
    const-string/jumbo v16, ""

    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "mUploadByteSize"

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lamc;->f:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string/jumbo v19, "count"

    aput-object v19, v17, v18

    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lamc;->j:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    const-string/jumbo v19, "timeoutLogs count"

    aput-object v19, v17, v18

    const/16 v18, 0x5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method final c()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-static {}, Lamu;->b()V

    .line 59
    :try_start_0
    invoke-static {}, Lakh;->a()Lakh;

    invoke-static {}, Lakh;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1068
    invoke-static {}, Lamu;->b()V

    .line 1069
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v1

    .line 1305
    iget-object v1, v1, Lajw;->c:Landroid/content/Context;

    .line 1069
    invoke-static {v1}, Lalg;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1072
    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iget-object v3, p0, Lamc;->c:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lamc;->c:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-static {}, Lamc;->a()Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v3

    if-eq v1, v3, :cond_1

    .line 1073
    const-string/jumbo v1, "network not match,return"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "current networkstatus"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lamc;->a()Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "mAllowedNetworkStatus"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lamc;->c:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    iget-boolean v1, p0, Lamc;->i:Z

    if-nez v1, :cond_0

    .line 1077
    const/4 v1, 0x1

    iput-boolean v1, p0, Lamc;->i:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 1082
    :goto_1
    :try_start_1
    iget v3, p0, Lamc;->a:I

    if-ge v1, v3, :cond_2

    .line 1083
    iget-object v3, p0, Lamc;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 1084
    const/4 v1, 0x0

    iput-boolean v1, p0, Lamc;->i:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    :cond_2
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lamc;->i:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Throwable;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1088
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lamc;->d()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 1082
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1092
    :catch_1
    move-exception v1

    .line 1093
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_4
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lamu;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1095
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lamc;->i:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lamc;->i:Z

    throw v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
.end method

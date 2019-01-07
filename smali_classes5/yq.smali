.class public abstract Lyq;
.super Ljava/lang/Object;
.source "AbsTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lyt;",
            ">;"
        }
    .end annotation
.end field

.field public r:I

.field s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lyq;-><init>(I)V

    .line 120
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lyq;->a:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lyq;->r:I

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyq;->b:Ljava/util/ArrayList;

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lyq;->s:I

    .line 125
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 357
    iget-object v2, p0, Lyq;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 358
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lyt;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyt;

    .line 360
    .local v1, "l":Lyt;
    invoke-interface {v1, p0}, Lyt;->a(Lyq;)V

    goto :goto_0

    .line 362
    .end local v1    # "l":Lyt;
    :cond_0
    return-void
.end method


# virtual methods
.method final a(Lyt;)V
    .locals 2
    .param p1, "l"    # Lyt;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 396
    if-nez p1, :cond_0

    .line 403
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v1, p0, Lyq;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 400
    :try_start_0
    iget-object v0, p0, Lyq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    iget-object v0, p0, Lyq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 157
    invoke-static {}, Lyf;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b_()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 149
    :goto_0
    return-object v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "tr":Ljava/lang/Throwable;
    const-string/jumbo v1, "AbsTask"

    invoke-static {v1, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public abstract c()Z
.end method

.method public e()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public final h()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 278
    iget v0, p0, Lyq;->r:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 288
    const/4 v0, 0x4

    .line 5329
    iput v0, p0, Lyq;->r:I

    .line 289
    invoke-virtual {p0}, Lyq;->e()V

    .line 5376
    iget-object v0, p0, Lyq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5377
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5378
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyt;

    .line 5379
    invoke-interface {v0, p0}, Lyt;->c(Lyq;)V

    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method

.method protected final j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 368
    iget-object v2, p0, Lyq;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 369
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lyt;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyt;

    .line 371
    .local v1, "l":Lyt;
    invoke-interface {v1, p0}, Lyt;->b(Lyq;)V

    goto :goto_0

    .line 373
    .end local v1    # "l":Lyt;
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 18

    .prologue
    .line 162
    .line 1345
    move-object/from16 v0, p0

    iget-object v14, v0, Lyq;->b:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 1346
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1347
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 1350
    :cond_0
    const/4 v14, 0x3

    .line 2329
    move-object/from16 v0, p0

    iput v14, v0, Lyq;->r:I

    .line 163
    const/4 v6, 0x0

    .line 165
    .local v6, "result":Z
    const/4 v3, 0x0

    .line 166
    .local v3, "errMsg":Ljava/lang/String;
    invoke-static {}, Lxn;->m()Lye;

    move-result-object v5

    .line 167
    .local v5, "moniter":Lye;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 169
    .local v8, "start":J
    if-eqz v5, :cond_1

    .line 170
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lyq;->b_()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lyq;->b()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-interface {v5, v14, v0, v1}, Lye;->a(Ljava/lang/String;J)V

    .line 173
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lyq;->h()Z

    move-result v14

    if-nez v14, :cond_2

    .line 174
    invoke-virtual/range {p0 .. p0}, Lyq;->c()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 189
    :cond_2
    if-eqz v5, :cond_3

    .line 190
    invoke-interface {v5}, Lye;->a()V

    .line 194
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v8

    .line 195
    .local v10, "taskCost":J
    invoke-virtual/range {p0 .. p0}, Lyq;->b_()Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, "taskName":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 197
    .local v2, "dimensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v14, "taskName"

    invoke-interface {v2, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 199
    const-string/jumbo v14, "errMsg"

    const/4 v15, 0x0

    invoke-interface {v2, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 205
    .local v4, "measureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v14, "successCount"

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string/jumbo v14, "totalTime"

    long-to-double v0, v10

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v14, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v15, "CMail"

    const-string/jumbo v16, "Task"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v2, v4}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    .end local v2    # "dimensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "measureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v7    # "taskName":Ljava/lang/String;
    .end local v10    # "taskCost":J
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lyq;->h()Z

    move-result v14

    if-nez v14, :cond_5

    .line 3225
    if-eqz v6, :cond_a

    .line 3226
    const/4 v14, 0x1

    .line 3329
    move-object/from16 v0, p0

    iput v14, v0, Lyq;->r:I

    .line 3227
    invoke-direct/range {p0 .. p0}, Lyq;->a()V

    :cond_5
    :goto_2
    return-void

    .line 209
    :catch_0
    move-exception v13

    .line 210
    .local v13, "tr":Ljava/lang/Throwable;
    const-string/jumbo v14, "Execute task appmonitor error--->> "

    invoke-static {v14, v13}, Lys;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 176
    .end local v13    # "tr":Ljava/lang/Throwable;
    :catch_1
    move-exception v13

    .line 179
    .restart local v13    # "tr":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v14, "Execute task error--->> "

    invoke-static {v14, v13}, Lys;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lyq;->b_()Ljava/lang/String;

    move-result-object v7

    .line 182
    .restart local v7    # "taskName":Ljava/lang/String;
    invoke-static {v13}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 183
    const-string/jumbo v14, "2"

    const-string/jumbo v15, ""

    invoke-static {v7, v14, v3, v15}, Lyo;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    .end local v7    # "taskName":Ljava/lang/String;
    :goto_3
    if-eqz v5, :cond_6

    .line 190
    invoke-interface {v5}, Lye;->a()V

    .line 194
    :cond_6
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v8

    .line 195
    .restart local v10    # "taskCost":J
    invoke-virtual/range {p0 .. p0}, Lyq;->b_()Ljava/lang/String;

    move-result-object v7

    .line 196
    .restart local v7    # "taskName":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 197
    .restart local v2    # "dimensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v14, "taskName"

    invoke-interface {v2, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 199
    const-string/jumbo v14, "errMsg"

    invoke-interface {v2, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_7
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 203
    .restart local v4    # "measureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v14, "successCount"

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string/jumbo v14, "totalTime"

    long-to-double v0, v10

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v4, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v14, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v15, "CMail"

    const-string/jumbo v16, "Task"

    move-object/from16 v0, v16

    invoke-static {v14, v15, v0, v2, v4}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 209
    .end local v2    # "dimensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "measureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v7    # "taskName":Ljava/lang/String;
    .end local v10    # "taskCost":J
    :catch_2
    move-exception v13

    .line 210
    const-string/jumbo v14, "Execute task appmonitor error--->> "

    invoke-static {v14, v13}, Lys;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 184
    :catch_3
    move-exception v12

    .line 185
    .local v12, "thr":Ljava/lang/Throwable;
    :try_start_5
    const-string/jumbo v14, "Execute task robot error--->> "

    invoke-static {v14, v12}, Lys;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 189
    .end local v12    # "thr":Ljava/lang/Throwable;
    .end local v13    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    if-eqz v5, :cond_8

    .line 190
    invoke-interface {v5}, Lye;->a()V

    .line 194
    :cond_8
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v10, v16, v8

    .line 195
    .restart local v10    # "taskCost":J
    invoke-virtual/range {p0 .. p0}, Lyq;->b_()Ljava/lang/String;

    move-result-object v7

    .line 196
    .restart local v7    # "taskName":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 197
    .restart local v2    # "dimensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v15, "taskName"

    invoke-interface {v2, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 199
    const-string/jumbo v15, "errMsg"

    invoke-interface {v2, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_9
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 205
    .restart local v4    # "measureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v15, "successCount"

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string/jumbo v15, "totalTime"

    long-to-double v0, v10

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v15, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v16, "CMail"

    const-string/jumbo v17, "Task"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v15, v0, v1, v2, v4}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    .line 211
    .end local v2    # "dimensionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "measureMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v7    # "taskName":Ljava/lang/String;
    .end local v10    # "taskCost":J
    :goto_4
    throw v14

    .line 209
    :catch_4
    move-exception v13

    .line 210
    .restart local v13    # "tr":Ljava/lang/Throwable;
    const-string/jumbo v15, "Execute task appmonitor error--->> "

    invoke-static {v15, v13}, Lys;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 3229
    .end local v13    # "tr":Ljava/lang/Throwable;
    :cond_a
    const/4 v14, 0x2

    .line 4329
    move-object/from16 v0, p0

    iput v14, v0, Lyq;->r:I

    .line 3230
    invoke-virtual/range {p0 .. p0}, Lyq;->j()V

    goto/16 :goto_2
.end method

.class final Lhgg$a;
.super Ljava/lang/Object;
.source "KaoQinManager.java"

# interfaces
.implements Lbtn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhgg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lhgg;

.field private b:Z


# direct methods
.method private constructor <init>(Lhgg;)V
    .locals 1

    .prologue
    .line 183
    iput-object p1, p0, Lhgg$a;->a:Lhgg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhgg$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lhgg;B)V
    .locals 0
    .param p1, "x0"    # Lhgg;

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lhgg$a;-><init>(Lhgg;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 318
    iget-boolean v3, p0, Lhgg$a;->b:Z

    if-eqz v3, :cond_1

    .line 336
    :cond_0
    return-void

    .line 321
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lhgg$a;->b:Z

    .line 322
    const-string/jumbo v3, "Beacon"

    const-string/jumbo v4, "KaoQinManager"

    const-string/jumbo v5, "[Device Beacon] beacon start scan"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    iget-object v3, p0, Lhgg$a;->a:Lhgg;

    .line 21040
    iget-object v4, v3, Lhgg;->d:Ljava/util/List;

    .line 324
    monitor-enter v4

    .line 325
    :try_start_0
    iget-object v3, p0, Lhgg$a;->a:Lhgg;

    .line 22040
    iget-object v3, v3, Lhgg;->d:Ljava/util/List;

    .line 325
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 326
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lhgg$a;->a:Lhgg;

    .line 23040
    iget-object v3, v3, Lhgg;->d:Ljava/util/List;

    .line 326
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v1    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .local v2, "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :try_start_1
    iget-object v3, p0, Lhgg$a;->a:Lhgg;

    .line 24040
    iget-object v3, v3, Lhgg;->d:Ljava/util/List;

    .line 327
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 329
    .end local v2    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .restart local v1    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :cond_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 332
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgg$c;

    .line 333
    .local v0, "dingAtmListener":Lhgg$c;
    invoke-interface {v0}, Lhgg$c;->onStartScan()V

    goto :goto_0

    .line 329
    .end local v0    # "dingAtmListener":Lhgg$c;
    :catchall_0
    move-exception v3

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v1    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .restart local v2    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .restart local v1    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    goto :goto_1
.end method

.method public final a(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V
    .locals 10
    .param p1, "deviceModelBean"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 290
    iget-object v5, p0, Lhgg$a;->a:Lhgg;

    .line 14040
    invoke-static {p1}, Lhgg;->a(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v5, "Beacon"

    const-string/jumbo v6, "KaoQinManager"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "[Device Beacon] beacon onExitRange,"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    .line 293
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 292
    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v5, p0, Lhgg$a;->a:Lhgg;

    .line 15040
    iget-object v5, v5, Lhgg;->e:Ljava/util/HashSet;

    .line 295
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v5, p0, Lhgg$a;->a:Lhgg;

    .line 16040
    iget-object v5, v5, Lhgg;->e:Ljava/util/HashSet;

    .line 296
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 297
    .local v4, "result":Z
    if-eqz v4, :cond_1

    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    iget-object v5, p0, Lhgg$a;->a:Lhgg;

    .line 17040
    iget-object v6, v5, Lhgg;->d:Ljava/util/List;

    .line 299
    monitor-enter v6

    .line 300
    :try_start_0
    iget-object v5, p0, Lhgg$a;->a:Lhgg;

    .line 18040
    iget-object v5, v5, Lhgg;->d:Ljava/util/List;

    .line 300
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 301
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lhgg$a;->a:Lhgg;

    .line 19040
    iget-object v5, v5, Lhgg;->d:Ljava/util/List;

    .line 301
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .end local v2    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .local v3, "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :try_start_1
    iget-object v5, p0, Lhgg$a;->a:Lhgg;

    .line 20040
    iget-object v5, v5, Lhgg;->d:Ljava/util/List;

    .line 302
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 304
    .end local v3    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .restart local v2    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :cond_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 307
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgg$c;

    .line 308
    .local v0, "dingAtmListener":Lhgg$c;
    invoke-interface {v0, p1}, Lhgg$c;->onExitRange(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V

    goto :goto_0

    .line 304
    .end local v0    # "dingAtmListener":Lhgg$c;
    :catchall_0
    move-exception v5

    :goto_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 312
    .end local v2    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :cond_1
    return-void

    .line 304
    .restart local v3    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .restart local v2    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    goto :goto_1
.end method

.method public final a(ZLcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V
    .locals 16
    .param p1, "newDevice"    # Z
    .param p2, "deviceModelBean"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 187
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v11

    invoke-virtual {v11}, Lccr;->c()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-gtz v11, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    if-eqz p2, :cond_0

    .line 195
    move-object/from16 v0, p0

    iget-object v11, v0, Lhgg$a;->a:Lhgg;

    .line 1040
    iget-object v11, v11, Lhgg;->a:Lhgf;

    .line 195
    move-object/from16 v0, p2

    iget v12, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->serviceId:I

    int-to-long v12, v12

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceId:J

    invoke-virtual {v11, v12, v13, v14, v15}, Lhgf;->a(JJ)Lhiu;

    move-result-object v2

    .line 196
    .local v2, "atmInfoModel":Lhiu;
    if-eqz v2, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v11, v0, Lhgg$a;->a:Lhgg;

    .line 2040
    invoke-static/range {p2 .. p2}, Lhgg;->a(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Ljava/lang/String;

    move-result-object v7

    .line 201
    .local v7, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lhgg$a;->a:Lhgg;

    .line 3040
    iget-object v11, v11, Lhgg;->e:Ljava/util/HashSet;

    .line 201
    invoke-virtual {v11, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 204
    .local v6, "hasCache":Z
    iget v11, v2, Lhiu;->g:I

    if-lez v11, :cond_2

    move-object/from16 v0, p2

    iget v11, v0, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->distance:I

    iget v12, v2, Lhiu;->g:I

    if-le v11, v12, :cond_2

    .line 205
    move-object/from16 v0, p0

    iget-object v11, v0, Lhgg$a;->a:Lhgg;

    .line 4040
    iget-object v11, v11, Lhgg;->h:Ljava/util/Map;

    .line 205
    invoke-interface {v11, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 206
    new-instance v5, Lhgg$a$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v7, v1}, Lhgg$a$1;-><init>(Lhgg$a;Ljava/lang/String;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V

    .line 233
    .local v5, "enterRangeRunnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v11, v0, Lhgg$a;->a:Lhgg;

    .line 5040
    iget-object v11, v11, Lhgg;->h:Ljava/util/Map;

    .line 233
    invoke-interface {v11, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v11

    const-wide/16 v12, 0xbb8

    invoke-virtual {v11, v5, v12, v13}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 241
    .end local v5    # "enterRangeRunnable":Ljava/lang/Runnable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lhgg$a;->a:Lhgg;

    .line 6040
    iget-object v11, v11, Lhgg;->h:Ljava/util/Map;

    .line 241
    invoke-interface {v11, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Runnable;

    .line 242
    .local v10, "runnable":Ljava/lang/Runnable;
    if-eqz v10, :cond_3

    .line 243
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v11

    invoke-virtual {v11, v10}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    :cond_3
    const/4 v4, 0x0

    .line 248
    .local v4, "enter":Z
    if-nez p1, :cond_4

    if-nez v6, :cond_6

    .line 249
    :cond_4
    if-nez v6, :cond_5

    .line 250
    const-string/jumbo v11, "Beacon"

    const-string/jumbo v12, "KaoQinManager"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "[Device Beacon] beacon enter, key="

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v7, v13, v14

    .line 251
    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 250
    invoke-static {v11, v12, v13}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v11, v0, Lhgg$a;->a:Lhgg;

    .line 7040
    iget-object v11, v11, Lhgg;->e:Ljava/util/HashSet;

    .line 252
    invoke-virtual {v11, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_5
    const/4 v4, 0x1

    .line 257
    :cond_6
    if-nez v4, :cond_7

    .line 258
    move-object/from16 v0, p0

    iget-object v11, v0, Lhgg$a;->a:Lhgg;

    .line 8040
    iget-object v11, v11, Lhgg;->f:Ljava/util/HashSet;

    .line 258
    invoke-virtual {v11, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 259
    move-object/from16 v0, p0

    iget-object v11, v0, Lhgg$a;->a:Lhgg;

    .line 9040
    iget-object v11, v11, Lhgg;->f:Ljava/util/HashSet;

    .line 259
    invoke-virtual {v11, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 261
    const-string/jumbo v11, "Beacon"

    const-string/jumbo v12, "KaoQinManager"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "[Device Beacon] beacon enter beacon atm check timeout, key="

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v7, v13, v14

    .line 262
    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 261
    invoke-static {v11, v12, v13}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v4, 0x1

    .line 267
    :cond_7
    const/4 v8, 0x0

    .line 268
    .local v8, "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lhgg$a;->a:Lhgg;

    .line 10040
    iget-object v12, v11, Lhgg;->d:Ljava/util/List;

    .line 268
    monitor-enter v12

    .line 269
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lhgg$a;->a:Lhgg;

    .line 11040
    iget-object v11, v11, Lhgg;->d:Ljava/util/List;

    .line 269
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8

    .line 270
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lhgg$a;->a:Lhgg;

    .line 12040
    iget-object v11, v11, Lhgg;->d:Ljava/util/List;

    .line 270
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .end local v8    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .local v9, "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lhgg$a;->a:Lhgg;

    .line 13040
    iget-object v11, v11, Lhgg;->d:Ljava/util/List;

    .line 271
    invoke-interface {v9, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v9

    .line 273
    .end local v9    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .restart local v8    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :cond_8
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 276
    if-eqz v4, :cond_9

    .line 277
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhgg$c;

    .line 278
    .local v3, "dingAtmListener":Lhgg$c;
    move-object/from16 v0, p2

    invoke-interface {v3, v0, v2}, Lhgg$c;->onEnterRange(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lhiu;)V

    goto :goto_1

    .line 273
    .end local v3    # "dingAtmListener":Lhgg$c;
    :catchall_0
    move-exception v11

    :goto_2
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v11

    .line 282
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhgg$c;

    .line 283
    .restart local v3    # "dingAtmListener":Lhgg$c;
    move-object/from16 v0, p2

    invoke-interface {v3, v0, v2}, Lhgg$c;->onRangeChange(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lhiu;)V

    goto :goto_3

    .line 273
    .end local v3    # "dingAtmListener":Lhgg$c;
    .end local v8    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .restart local v9    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .restart local v8    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    goto :goto_2
.end method

.method public final b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 340
    iget-boolean v3, p0, Lhgg$a;->b:Z

    if-nez v3, :cond_1

    .line 362
    :cond_0
    return-void

    .line 343
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lhgg$a;->b:Z

    .line 344
    const-string/jumbo v3, "Beacon"

    const-string/jumbo v4, "KaoQinManager"

    const-string/jumbo v5, "[Device Beacon] beacon stop scan"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v3, p0, Lhgg$a;->a:Lhgg;

    .line 25040
    iget-object v3, v3, Lhgg;->e:Ljava/util/HashSet;

    .line 346
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 347
    iget-object v3, p0, Lhgg$a;->a:Lhgg;

    .line 26040
    iget-object v3, v3, Lhgg;->f:Ljava/util/HashSet;

    .line 347
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    iget-object v3, p0, Lhgg$a;->a:Lhgg;

    .line 27040
    iget-object v4, v3, Lhgg;->d:Ljava/util/List;

    .line 350
    monitor-enter v4

    .line 351
    :try_start_0
    iget-object v3, p0, Lhgg$a;->a:Lhgg;

    .line 28040
    iget-object v3, v3, Lhgg;->d:Ljava/util/List;

    .line 351
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 352
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lhgg$a;->a:Lhgg;

    .line 29040
    iget-object v3, v3, Lhgg;->d:Ljava/util/List;

    .line 352
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .end local v1    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .local v2, "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :try_start_1
    iget-object v3, p0, Lhgg$a;->a:Lhgg;

    .line 30040
    iget-object v3, v3, Lhgg;->d:Ljava/util/List;

    .line 353
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 355
    .end local v2    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .restart local v1    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :cond_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 358
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhgg$c;

    .line 359
    .local v0, "dingAtmListener":Lhgg$c;
    invoke-interface {v0}, Lhgg$c;->onStopScan()V

    goto :goto_0

    .line 355
    .end local v0    # "dingAtmListener":Lhgg$c;
    :catchall_0
    move-exception v3

    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v1    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .restart local v2    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    .restart local v1    # "listenerList":Ljava/util/List;, "Ljava/util/List<Lhgg$c;>;"
    goto :goto_1
.end method

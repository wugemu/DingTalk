.class public Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;
.super Ljava/lang/Object;
.source "H5PluginManagerImpl.java"

# interfaces
.implements Liow;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PluginManager"


# instance fields
.field private final TIME:I

.field private actionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Liov;",
            ">;>;"
        }
    .end annotation
.end field

.field private clazzName:Ljava/lang/String;

.field private coreNode:Liob;

.field private pluginSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Liov;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Liob;)V
    .locals 1
    .param p1, "coreNode"    # Liob;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->TIME:I

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->pluginSet:Ljava/util/Set;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->actionMap:Ljava/util/Map;

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    .line 44
    return-void
.end method


# virtual methods
.method public declared-synchronized canHandle(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->actionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 24
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 287
    monitor-enter p0

    if-nez p1, :cond_0

    .line 288
    :try_start_0
    const-string/jumbo v3, "H5PluginManager"

    const-string/jumbo v7, "invalid event!"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    const/4 v3, 0x0

    .line 372
    :goto_0
    monitor-exit p0

    return v3

    .line 292
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 2065
    .local v20, "time":J
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 295
    .local v4, "action":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    const-string/jumbo v3, "H5PluginManager"

    const-string/jumbo v7, "invalid event name"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 v3, 0x0

    goto :goto_0

    .line 300
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->actionMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 301
    .local v16, "plugins":Ljava/util/List;, "Ljava/util/List<Liov;>;"
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 302
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 306
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    .line 307
    .local v13, "index":I
    :goto_1
    if-ltz v13, :cond_c

    .line 308
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Liov;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    .local v15, "plugin":Liov;
    const/16 v17, 0x0

    .line 311
    .local v17, "result":Z
    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v15, v0, v1}, Liov;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    .line 348
    :cond_4
    if-eqz v17, :cond_a

    .line 349
    :try_start_3
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v10, v22, v20

    .line 351
    .local v10, "elapse":J
    const-wide/16 v22, 0x0

    cmp-long v3, v10, v22

    if-lez v3, :cond_5

    .line 352
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 353
    .local v6, "clazzName":Ljava/lang/String;
    const-string/jumbo v3, "H5PluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Nebula cost time ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] handled by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " elapse:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .end local v6    # "clazzName":Ljava/lang/String;
    .end local v10    # "elapse":J
    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 312
    :catch_0
    move-exception v18

    .line 314
    .local v18, "t":Ljava/lang/Throwable;
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 315
    .restart local v6    # "clazzName":Ljava/lang/String;
    const-string/jumbo v3, "H5PluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " handleEvent exception."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-static {v3, v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->useNewLogUpload()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 317
    const-string/jumbo v3, "H5_PLUGIN_EXCEPTION"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 318
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v7, "action"

    invoke-virtual {v3, v7, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 319
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    .line 320
    .local v14, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    instance-of v3, v3, Liop;

    if-eqz v3, :cond_6

    .line 321
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    check-cast v12, Liop;

    .line 322
    .local v12, "h5Page":Liop;
    invoke-virtual {v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v7, "appId"

    invoke-interface {v12}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v22, "appId"

    move-object/from16 v0, v22

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v7, "tinyApp"

    .line 323
    invoke-interface {v12}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v22, "isTinyApp"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v8, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 325
    .end local v12    # "h5Page":Liop;
    :cond_6
    invoke-static {v14}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 343
    .end local v14    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    :cond_7
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->enableThrow()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 344
    throw v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    .end local v4    # "action":Ljava/lang/String;
    .end local v6    # "clazzName":Ljava/lang/String;
    .end local v13    # "index":I
    .end local v15    # "plugin":Liov;
    .end local v16    # "plugins":Ljava/util/List;, "Ljava/util/List<Liov;>;"
    .end local v17    # "result":Z
    .end local v18    # "t":Ljava/lang/Throwable;
    .end local v20    # "time":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 327
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v6    # "clazzName":Ljava/lang/String;
    .restart local v13    # "index":I
    .restart local v15    # "plugin":Liov;
    .restart local v16    # "plugins":Ljava/util/List;, "Ljava/util/List<Liov;>;"
    .restart local v17    # "result":Z
    .restart local v18    # "t":Ljava/lang/Throwable;
    .restart local v20    # "time":J
    :cond_8
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v3

    const-class v7, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 328
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 329
    .local v2, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v2, :cond_7

    .line 332
    const-string/jumbo v5, ""

    .line 333
    .local v5, "param1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    instance-of v3, v3, Liop;

    if-eqz v3, :cond_9

    .line 334
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    check-cast v12, Liop;

    .line 335
    .restart local v12    # "h5Page":Liop;
    invoke-interface {v12}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v7, "appId"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 336
    .local v9, "appId":Ljava/lang/String;
    invoke-interface {v12}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v7, "isTinyApp"

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v19

    .line 337
    .local v19, "tinyApp":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "^appId="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "^tinyApp="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    .end local v9    # "appId":Ljava/lang/String;
    .end local v12    # "h5Page":Liop;
    .end local v19    # "tinyApp":Z
    :cond_9
    const-string/jumbo v3, "H5_PLUGIN_EXCEPTION"

    .line 340
    invoke-static/range {v18 .. v18}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 339
    invoke-interface/range {v2 .. v8}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 361
    .end local v2    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v5    # "param1":Ljava/lang/String;
    .end local v6    # "clazzName":Ljava/lang/String;
    .end local v18    # "t":Ljava/lang/Throwable;
    :cond_a
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_b

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v10, v22, v20

    .line 363
    .restart local v10    # "elapse":J
    const-wide/16 v22, 0x0

    cmp-long v3, v10, v22

    if-lez v3, :cond_b

    .line 364
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 365
    .restart local v6    # "clazzName":Ljava/lang/String;
    const-string/jumbo v3, "H5PluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Nebula cost time ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] handle pass "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " elapse:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 307
    .end local v6    # "clazzName":Ljava/lang/String;
    .end local v10    # "elapse":J
    :cond_b
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1

    .line 372
    .end local v15    # "plugin":Liov;
    .end local v17    # "result":Z
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public declared-synchronized interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 24
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 197
    monitor-enter p0

    if-nez p1, :cond_0

    .line 198
    :try_start_0
    const-string/jumbo v3, "H5PluginManager"

    const-string/jumbo v7, "invalid event!"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    const/4 v3, 0x0

    .line 282
    :goto_0
    monitor-exit p0

    return v3

    .line 201
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 1065
    .local v20, "time":J
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 204
    .local v4, "action":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    const-string/jumbo v3, "H5PluginManager"

    const-string/jumbo v7, "invalid event name"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/4 v3, 0x0

    goto :goto_0

    .line 209
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->actionMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    .line 210
    .local v16, "plugins":Ljava/util/List;, "Ljava/util/List<Liov;>;"
    if-eqz v16, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 211
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 214
    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    .line 215
    .local v13, "index":I
    :goto_1
    if-ltz v13, :cond_c

    .line 216
    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Liov;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .local v15, "plugin":Liov;
    const/16 v17, 0x0

    .line 220
    .local v17, "result":Z
    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v15, v0, v1}, Liov;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    .line 258
    :cond_4
    if-eqz v17, :cond_a

    .line 259
    :try_start_3
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v10, v22, v20

    .line 261
    .local v10, "elapse":J
    const-wide/16 v22, 0x0

    cmp-long v3, v10, v22

    if-lez v3, :cond_5

    .line 262
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, "clazzName":Ljava/lang/String;
    const-string/jumbo v3, "H5PluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Nebula cost time ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] intercepted by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " elapse:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .end local v6    # "clazzName":Ljava/lang/String;
    .end local v10    # "elapse":J
    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 221
    :catch_0
    move-exception v18

    .line 222
    .local v18, "t":Ljava/lang/Throwable;
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 223
    .restart local v6    # "clazzName":Ljava/lang/String;
    const-string/jumbo v3, "H5PluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " interceptEvent exception."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-static {v3, v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->useNewLogUpload()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 225
    const-string/jumbo v3, "H5_PLUGIN_EXCEPTION"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 226
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v7, "action"

    invoke-virtual {v3, v7, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 227
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v14

    .line 228
    .local v14, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    instance-of v3, v3, Liop;

    if-eqz v3, :cond_6

    .line 229
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    check-cast v12, Liop;

    .line 230
    .local v12, "h5Page":Liop;
    invoke-virtual {v14}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v7, "appId"

    invoke-interface {v12}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v22, "appId"

    move-object/from16 v0, v22

    invoke-static {v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v7, "tinyApp"

    .line 231
    invoke-interface {v12}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v22, "isTinyApp"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v8, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 233
    .end local v12    # "h5Page":Liop;
    :cond_6
    invoke-static {v14}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 252
    .end local v14    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    :cond_7
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->enableThrow()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 253
    throw v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    .end local v4    # "action":Ljava/lang/String;
    .end local v6    # "clazzName":Ljava/lang/String;
    .end local v13    # "index":I
    .end local v15    # "plugin":Liov;
    .end local v16    # "plugins":Ljava/util/List;, "Ljava/util/List<Liov;>;"
    .end local v17    # "result":Z
    .end local v18    # "t":Ljava/lang/Throwable;
    .end local v20    # "time":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 235
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v6    # "clazzName":Ljava/lang/String;
    .restart local v13    # "index":I
    .restart local v15    # "plugin":Liov;
    .restart local v16    # "plugins":Ljava/util/List;, "Ljava/util/List<Liov;>;"
    .restart local v17    # "result":Z
    .restart local v18    # "t":Ljava/lang/Throwable;
    .restart local v20    # "time":J
    :cond_8
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v3

    const-class v7, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 236
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 237
    .local v2, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v2, :cond_7

    .line 240
    const-string/jumbo v5, ""

    .line 241
    .local v5, "param1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    instance-of v3, v3, Liop;

    if-eqz v3, :cond_9

    .line 242
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    check-cast v12, Liop;

    .line 243
    .restart local v12    # "h5Page":Liop;
    invoke-interface {v12}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v7, "appId"

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 244
    .local v9, "appId":Ljava/lang/String;
    invoke-interface {v12}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v7, "isTinyApp"

    const/4 v8, 0x0

    invoke-static {v3, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v19

    .line 245
    .local v19, "tinyApp":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "^appId="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "^tinyApp="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 248
    .end local v9    # "appId":Ljava/lang/String;
    .end local v12    # "h5Page":Liop;
    .end local v19    # "tinyApp":Z
    :cond_9
    const-string/jumbo v3, "H5_PLUGIN_EXCEPTION"

    .line 249
    invoke-static/range {v18 .. v18}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 248
    invoke-interface/range {v2 .. v8}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 271
    .end local v2    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v5    # "param1":Ljava/lang/String;
    .end local v6    # "clazzName":Ljava/lang/String;
    .end local v18    # "t":Ljava/lang/Throwable;
    :cond_a
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_b

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v10, v22, v20

    .line 273
    .restart local v10    # "elapse":J
    const-wide/16 v22, 0x0

    cmp-long v3, v10, v22

    if-lez v3, :cond_b

    .line 274
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 275
    .restart local v6    # "clazzName":Ljava/lang/String;
    const-string/jumbo v3, "H5PluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Nebula cost time ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] intercept pass "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " elapse:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    .end local v6    # "clazzName":Ljava/lang/String;
    .end local v10    # "elapse":J
    :cond_b
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_1

    .line 282
    .end local v15    # "plugin":Liov;
    .end local v17    # "result":Z
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public onInitialize(Liob;)V
    .locals 0
    .param p1, "coreNode"    # Liob;

    .prologue
    .line 378
    return-void
.end method

.method public onPrepare(Liof;)V
    .locals 0
    .param p1, "filter"    # Liof;

    .prologue
    .line 383
    return-void
.end method

.method public declared-synchronized onRelease()V
    .locals 22

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->pluginSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Liov;

    .line 388
    .local v14, "plugin":Liov;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v16

    .line 390
    .local v16, "time":J
    :try_start_1
    invoke-interface {v14}, Liov;->onRelease()V

    .line 391
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v10, v20, v16

    .line 393
    .local v10, "elapse":J
    const-wide/16 v20, 0x0

    cmp-long v3, v10, v20

    if-lez v3, :cond_0

    .line 394
    invoke-static {v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 395
    .local v6, "clazzName":Ljava/lang/String;
    const-string/jumbo v3, "H5PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Nebula cost time release plugin "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " elapse:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 401
    .end local v6    # "clazzName":Ljava/lang/String;
    .end local v10    # "elapse":J
    :catch_0
    move-exception v15

    .line 402
    .local v15, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 403
    .restart local v6    # "clazzName":Ljava/lang/String;
    const-string/jumbo v3, "H5PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " onRelease exception."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->useNewLogUpload()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 405
    const-string/jumbo v3, "H5_PLUGIN_EXCEPTION"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 406
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 407
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-static {v15}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v13

    .line 408
    .local v13, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    instance-of v3, v3, Liop;

    if-eqz v3, :cond_1

    .line 409
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    check-cast v12, Liop;

    .line 410
    .local v12, "h5Page":Liop;
    invoke-virtual {v13}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "appId"

    invoke-interface {v12}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "appId"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "tinyApp"

    .line 411
    invoke-interface {v12}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "isTinyApp"

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v7, v8, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 413
    .end local v12    # "h5Page":Liop;
    :cond_1
    invoke-static {v13}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 432
    .end local v13    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->enableThrow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 433
    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 387
    .end local v6    # "clazzName":Ljava/lang/String;
    .end local v14    # "plugin":Liov;
    .end local v15    # "t":Ljava/lang/Throwable;
    .end local v16    # "time":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 415
    .restart local v6    # "clazzName":Ljava/lang/String;
    .restart local v14    # "plugin":Liov;
    .restart local v15    # "t":Ljava/lang/Throwable;
    .restart local v16    # "time":J
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 416
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 417
    .local v2, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v2, :cond_2

    .line 420
    const-string/jumbo v5, ""

    .line 421
    .local v5, "param1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    instance-of v3, v3, Liop;

    if-eqz v3, :cond_4

    .line 422
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    check-cast v12, Liop;

    .line 423
    .restart local v12    # "h5Page":Liop;
    invoke-interface {v12}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "appId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 424
    .local v9, "appId":Ljava/lang/String;
    invoke-interface {v12}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "isTinyApp"

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v18

    .line 425
    .local v18, "tinyApp":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "^appId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "^tinyApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 427
    .end local v9    # "appId":Ljava/lang/String;
    .end local v12    # "h5Page":Liop;
    .end local v18    # "tinyApp":Z
    :cond_4
    const-string/jumbo v3, "H5_PLUGIN_EXCEPTION"

    const/4 v4, 0x0

    invoke-static {v15}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 437
    .end local v2    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v5    # "param1":Ljava/lang/String;
    .end local v6    # "clazzName":Ljava/lang/String;
    .end local v14    # "plugin":Liov;
    .end local v15    # "t":Ljava/lang/Throwable;
    .end local v16    # "time":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->pluginSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->actionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 439
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized register(Liov;)Z
    .locals 23
    .param p1, "plugin"    # Liov;

    .prologue
    .line 48
    monitor-enter p0

    if-nez p1, :cond_0

    .line 49
    :try_start_0
    const-string/jumbo v3, "H5PluginManager"

    const-string/jumbo v4, "invalid plugin parameter!"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    const/4 v3, 0x0

    .line 151
    :goto_0
    monitor-exit p0

    return v3

    .line 53
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->enableFilterPlugin()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->isInPluginBlackList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 55
    const/4 v3, 0x0

    goto :goto_0

    .line 58
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->pluginSet:Ljava/util/Set;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    const-string/jumbo v3, "H5PluginManager"

    const-string/jumbo v4, "plugin already registered!"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v3, 0x0

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 64
    .local v20, "time":J
    new-instance v14, Liof;

    invoke-direct {v14}, Liof;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .local v14, "filter":Liof;
    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Liov;->onPrepare(Liof;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1029
    :try_start_3
    iget-object v3, v14, Liof;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 74
    .local v16, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 75
    const-string/jumbo v3, "H5PluginManager"

    const-string/jumbo v4, "empty filter"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v3, 0x0

    goto :goto_0

    .line 67
    .end local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v19

    .line 68
    .local v19, "t":Ljava/lang/Throwable;
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->clazzName:Ljava/lang/String;

    .line 69
    const-string/jumbo v3, "H5PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->clazzName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "  onPrepare exception."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 80
    .end local v19    # "t":Ljava/lang/Throwable;
    .restart local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Liov;->onInitialize(Liob;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->pluginSet:Ljava/util/Set;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_4
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 120
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 122
    .local v9, "action":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 123
    const-string/jumbo v3, "H5PluginManager"

    const-string/jumbo v4, "event can\'t be empty!"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 48
    .end local v9    # "action":Ljava/lang/String;
    .end local v14    # "filter":Liof;
    .end local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20    # "time":J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 81
    .restart local v14    # "filter":Liof;
    .restart local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v20    # "time":J
    :catch_1
    move-exception v19

    .line 82
    .restart local v19    # "t":Ljava/lang/Throwable;
    :try_start_6
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->clazzName:Ljava/lang/String;

    .line 83
    const-string/jumbo v3, "H5PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->clazzName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "  onInitialize exception."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->useNewLogUpload()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 85
    const-string/jumbo v3, "H5_PLUGIN_EXCEPTION"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->clazzName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v17

    .line 88
    .local v17, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    instance-of v3, v3, Liop;

    if-eqz v3, :cond_5

    .line 89
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    check-cast v15, Liop;

    .line 90
    .local v15, "h5Page":Liop;
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "appId"

    invoke-interface {v15}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "appId"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    const-string/jumbo v4, "tinyApp"

    .line 91
    invoke-interface {v15}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "isTinyApp"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 93
    .end local v15    # "h5Page":Liop;
    :cond_5
    invoke-static/range {v17 .. v17}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 111
    .end local v17    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    :cond_6
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->enableThrow()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 112
    throw v19

    .line 95
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 96
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 97
    .local v2, "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v2, :cond_6

    .line 100
    const-string/jumbo v5, ""

    .line 101
    .local v5, "param1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    instance-of v3, v3, Liop;

    if-eqz v3, :cond_8

    .line 102
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->coreNode:Liob;

    check-cast v15, Liop;

    .line 103
    .restart local v15    # "h5Page":Liop;
    invoke-interface {v15}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "appId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, "appId":Ljava/lang/String;
    invoke-interface {v15}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "isTinyApp"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v22

    .line 105
    .local v22, "tinyApp":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "^appId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "^tinyApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    .end local v10    # "appId":Ljava/lang/String;
    .end local v15    # "h5Page":Liop;
    .end local v22    # "tinyApp":Z
    :cond_8
    const-string/jumbo v3, "H5_PLUGIN_EXCEPTION"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->clazzName:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 115
    .end local v2    # "logProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    .end local v5    # "param1":Ljava/lang/String;
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 127
    .end local v19    # "t":Ljava/lang/Throwable;
    .restart local v9    # "action":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerUtil;->isInJsApiBlackList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->actionMap:Ljava/util/Map;

    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 133
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v18, "pluginList":Ljava/util/List;, "Ljava/util/List<Liov;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->actionMap:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v3, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 136
    .end local v18    # "pluginList":Ljava/util/List;, "Ljava/util/List<Liov;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->actionMap:Ljava/util/Map;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .restart local v18    # "pluginList":Ljava/util/List;, "Ljava/util/List<Liov;>;"
    goto :goto_3

    .line 142
    .end local v9    # "action":Ljava/lang/String;
    .end local v18    # "pluginList":Ljava/util/List;, "Ljava/util/List<Liov;>;"
    :cond_c
    sget-boolean v3, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v3, :cond_d

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v12, v6, v20

    .line 144
    .local v12, "elapse":J
    const-wide/16 v6, 0x0

    cmp-long v3, v12, v6

    if-lez v3, :cond_d

    .line 145
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 146
    .local v11, "clazzName":Ljava/lang/String;
    const-string/jumbo v3, "H5PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Nebula cost time register plugin "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " elapse "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 151
    .end local v11    # "clazzName":Ljava/lang/String;
    .end local v12    # "elapse":J
    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public register(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Liov;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 443
    .local p1, "plugins":Ljava/util/List;, "Ljava/util/List<Liov;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 444
    :cond_0
    const/4 v1, 0x0

    .line 452
    :cond_1
    return v1

    .line 447
    :cond_2
    const/4 v1, 0x1

    .line 448
    .local v1, "result":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liov;

    .line 449
    .local v0, "plugin":Liov;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->register(Liov;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 450
    goto :goto_0
.end method

.method public declared-synchronized unregister(Liov;)Z
    .locals 8
    .param p1, "plugin"    # Liov;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 156
    monitor-enter p0

    if-nez p1, :cond_0

    .line 157
    :try_start_0
    const-string/jumbo v6, "H5PluginManager"

    const-string/jumbo v7, "invalid plugin parameter!"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :goto_0
    monitor-exit p0

    return v5

    .line 161
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->pluginSet:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 162
    const-string/jumbo v6, "H5PluginManager"

    const-string/jumbo v7, "plugin not registered!"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 167
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->pluginSet:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->actionMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 171
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 172
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->actionMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 175
    .local v4, "plugins":Ljava/util/List;, "Ljava/util/List<Liov;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Liov;>;"
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liov;

    .line 178
    .local v3, "l":Liov;
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 183
    .end local v3    # "l":Liov;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->actionMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 188
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Liov;>;"
    .end local v4    # "plugins":Ljava/util/List;, "Ljava/util/List<Liov;>;"
    :cond_5
    sget-boolean v5, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v5, :cond_6

    .line 189
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->clazzName:Ljava/lang/String;

    .line 190
    const-string/jumbo v5, "H5PluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Nebula cost time unregister plugin "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->clazzName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :cond_6
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public unregister(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Liov;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 457
    .local p1, "plugins":Ljava/util/List;, "Ljava/util/List<Liov;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 458
    :cond_0
    const/4 v1, 0x0

    .line 466
    :cond_1
    return v1

    .line 461
    :cond_2
    const/4 v1, 0x1

    .line 462
    .local v1, "result":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liov;

    .line 463
    .local v0, "p":Liov;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/manager/H5PluginManagerImpl;->unregister(Liov;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 464
    goto :goto_0
.end method

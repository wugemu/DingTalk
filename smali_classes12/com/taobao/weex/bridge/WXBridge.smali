.class public Lcom/taobao/weex/bridge/WXBridge;
.super Ljava/lang/Object;
.source "WXBridge.java"

# interfaces
.implements Lcom/taobao/weex/common/IWXBridge;


# static fields
.field public static final MULTIPROCESS:Z = true

.field public static final TAG:Ljava/lang/String; = "WXBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callNative(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)I
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # Lcom/alibaba/fastjson/JSONArray;
    .param p3, "callback"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 179
    .local v4, "start":J
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    .line 180
    .local v2, "instance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v2, v4, v5}, Lcom/taobao/weex/WXSDKInstance;->firstScreenCreateInstanceTime(J)V

    .line 183
    :cond_0
    const/4 v1, 0x1

    .line 185
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->callNative(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 190
    :goto_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "destroyInstance :"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " JSF must stop callNative"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 195
    :cond_1
    return v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "WXBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "callNative throw exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private native nativeBindMeasurementToRenderObject(J)V
.end method

.method private native nativeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I
.end method

.method private native nativeExecJSService(Ljava/lang/String;)I
.end method

.method private native nativeForceLayout(Ljava/lang/String;)V
.end method

.method private native nativeInitFramework(Ljava/lang/String;Lcom/taobao/weex/bridge/WXParams;)I
.end method

.method private native nativeInitFrameworkEnv(Ljava/lang/String;Lcom/taobao/weex/bridge/WXParams;Ljava/lang/String;Z)I
.end method

.method private native nativeMarkDirty(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native nativeNotifyLayout(Ljava/lang/String;)Z
.end method

.method private native nativeOnInstanceClose(Ljava/lang/String;)V
.end method

.method private native nativeRegisterCoreEnv(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetDefaultHeightAndWidthIntoRootDom(Ljava/lang/String;FFZZ)V
.end method

.method private native nativeSetMargin(Ljava/lang/String;Ljava/lang/String;IF)V
.end method

.method private native nativeSetPadding(Ljava/lang/String;Ljava/lang/String;IF)V
.end method

.method private native nativeSetPosition(Ljava/lang/String;Ljava/lang/String;IF)V
.end method

.method private native nativeSetRenderContainerWrapContent(ZLjava/lang/String;)V
.end method

.method private native nativeSetStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V
.end method

.method private native nativeSetStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V
.end method

.method private native nativeTakeHeapSnapshot(Ljava/lang/String;)V
.end method


# virtual methods
.method public bindMeasurementToRenderObject(J)V
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 520
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridge;->nativeBindMeasurementToRenderObject(J)V

    .line 521
    return-void
.end method

.method public callAddElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[FZ)I
    .locals 15
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "componentType"    # Ljava/lang/String;
    .param p3, "ref"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "parentRef"    # Ljava/lang/String;
    .param p9, "margins"    # [F
    .param p10, "paddings"    # [F
    .param p11, "borders"    # [F
    .param p12, "willLayout"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;[F[F[FZ)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 344
    .local p6, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p8, "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x1

    .line 347
    .local v14, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/taobao/weex/bridge/WXBridgeManager;->callAddElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[FZ)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 356
    :cond_0
    :goto_0
    return v14

    .line 349
    :catch_0
    move-exception v13

    .line 351
    .local v13, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    .line 353
    const-string/jumbo v0, "WXBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "callAddElement throw error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 387
    const/4 v1, 0x1

    .line 389
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->callAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 396
    :goto_0
    return v1

    .line 390
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "WXBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "callAddEvent throw exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callAppendTreeCreateFinish(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 483
    const/4 v1, 0x1

    .line 485
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->callAppendTreeCreateFinish(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 489
    :goto_0
    return v1

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "WXBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "callAppendTreeCreateFinish throw exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callCreateBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[F)I
    .locals 12
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "componentType"    # Ljava/lang/String;
    .param p3, "ref"    # Ljava/lang/String;
    .param p7, "margins"    # [F
    .param p8, "paddings"    # [F
    .param p9, "borders"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;[F[F[F)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 326
    .local p4, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "attributes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "events":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v11, 0x1

    .line 329
    .local v11, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->callCreateBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;[F[F[F)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 337
    :cond_0
    :goto_0
    return v11

    .line 331
    :catch_0
    move-exception v10

    .line 333
    .local v10, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    const-string/jumbo v0, "WXBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "callCreateBody throw exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callCreateFinish(Ljava/lang/String;)I
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 461
    const/4 v1, 0x1

    .line 463
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->callCreateFinish(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 467
    :goto_0
    return v1

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "WXBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "callCreateFinish throw exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callHasTransitionPros(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 494
    .local p3, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 496
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->callHasTransitionPros(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 502
    :cond_0
    :goto_0
    return v1

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    const-string/jumbo v2, "WXBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "callHasTransitionPros throw exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callLayout(Ljava/lang/String;Ljava/lang/String;IIIIIII)I
    .locals 12
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I
    .param p7, "height"    # I
    .param p8, "width"    # I
    .param p9, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 447
    const/4 v11, 0x1

    .line 449
    .local v11, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/taobao/weex/bridge/WXBridgeManager;->callLayout(Ljava/lang/String;Ljava/lang/String;IIIIIII)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 456
    :cond_0
    :goto_0
    return v11

    .line 450
    :catch_0
    move-exception v10

    .line 452
    .local v10, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    const-string/jumbo v0, "WXBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "callLayout throw exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callMoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "parentref"    # Ljava/lang/String;
    .param p4, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 374
    const/4 v1, 0x1

    .line 376
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridgeManager;->callMoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 382
    :cond_0
    :goto_0
    return v1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    const-string/jumbo v2, "WXBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "callMoveElement throw exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Lcom/taobao/weex/bridge/WXBridge;->callNative(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 173
    :goto_0
    return v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WXBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "callNative throw exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public callNative(Ljava/lang/String;[BLjava/lang/String;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # [B
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lgxk;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/taobao/weex/bridge/WXBridge;->callNative(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public callNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arguments"    # [B
    .param p5, "optionsData"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 260
    :try_start_0
    invoke-static {p4}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->parseWsonOrJSON([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/JSONArray;

    .line 261
    .local v4, "argArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {p5}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->parseWsonOrJSON([B)Ljava/lang/Object;

    move-result-object v5

    .line 262
    .local v5, "options":Ljava/lang/Object;
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->callNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v4    # "argArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "options":Ljava/lang/Object;
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v6

    .line 264
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "WXBridge"

    invoke-static {v0, v6}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/lang/Object;
    .locals 11
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arguments"    # [B
    .param p5, "options"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 217
    const/4 v5, 0x0

    .line 218
    .local v5, "argArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz p4, :cond_0

    .line 219
    :try_start_0
    invoke-static {p4}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->parseWsonOrJSON([B)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    move-object v5, v0

    .line 220
    :cond_0
    const/4 v6, 0x0

    .line 221
    .local v6, "optionsObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p5, :cond_2

    .line 222
    invoke-static/range {p5 .. p5}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->parseWsonOrJSON([B)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "optionsObj":Lcom/alibaba/fastjson/JSONObject;
    check-cast v6, Lcom/alibaba/fastjson/JSONObject;

    .line 240
    .restart local v6    # "optionsObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object v8

    .line 241
    .local v8, "object":Ljava/lang/Object;
    invoke-static {v8}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v1

    .line 244
    .end local v6    # "optionsObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "object":Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 223
    .restart local v6    # "optionsObj":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    if-eqz v5, :cond_1

    .line 224
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v9

    .line 225
    .local v9, "sdkInstance":Lcom/taobao/weex/WXSDKInstance;
    if-eqz v9, :cond_1

    .line 226
    sget-object v1, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->Rax:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    iget-object v2, v9, Lcom/taobao/weex/WXSDKInstance;->bundleType:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager$BundType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    const/4 v10, 0x0

    .line 228
    .local v10, "weex_options__":Ljava/lang/Object;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v10

    .end local v10    # "weex_options__":Ljava/lang/Object;
    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 229
    .restart local v8    # "object":Ljava/lang/Object;
    instance-of v1, v8, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_3

    move-object v0, v8

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object v1, v0

    const-string/jumbo v4, "__weex_options__"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    check-cast v8, Lcom/alibaba/fastjson/JSONObject;

    .end local v8    # "object":Ljava/lang/Object;
    const-string/jumbo v1, "__weex_options__"

    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "weex_options__":Ljava/lang/Object;
    move-object v2, v10

    goto :goto_2

    .line 234
    .end local v10    # "weex_options__":Ljava/lang/Object;
    :cond_4
    instance-of v1, v2, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_1

    .line 235
    move-object v0, v2

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    .end local v6    # "optionsObj":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "sdkInstance":Lcom/taobao/weex/WXSDKInstance;
    :catch_0
    move-exception v7

    .line 243
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WXBridge"

    invoke-static {v1, v7}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    new-instance v1, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public callRefreshFinish(Ljava/lang/String;[BLjava/lang/String;)I
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # [B
    .param p3, "callback"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 294
    const/4 v1, 0x1

    .line 296
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->callRefreshFinish(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 303
    :cond_0
    :goto_0
    return v1

    .line 297
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    const-string/jumbo v2, "WXBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "callCreateFinish throw exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callRemoveElement(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 361
    const/4 v1, 0x1

    .line 363
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->callRemoveElement(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 369
    :cond_0
    :goto_0
    return v1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    const-string/jumbo v2, "WXBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "callRemoveElement throw exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callRemoveEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 401
    const/4 v1, 0x1

    .line 403
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->callRemoveEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 410
    :cond_0
    :goto_0
    return v1

    .line 404
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    const-string/jumbo v2, "WXBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "callRemoveEvent throw exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callRenderSuccess(Ljava/lang/String;)I
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 472
    const/4 v1, 0x1

    .line 474
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->callRenderSuccess(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 478
    :goto_0
    return v1

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "WXBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "callCreateFinish throw exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callUpdateAttrs(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 433
    .local p3, "attrs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 435
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->callUpdateAttrs(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 442
    :cond_0
    :goto_0
    return v1

    .line 436
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    const-string/jumbo v2, "WXBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "callUpdateAttr throw exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callUpdateFinish(Ljava/lang/String;[BLjava/lang/String;)I
    .locals 5
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # [B
    .param p3, "callback"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 280
    const/4 v1, 0x1

    .line 282
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->callUpdateFinish(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 289
    :cond_0
    :goto_0
    return v1

    .line 283
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    const-string/jumbo v2, "WXBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "callCreateBody throw exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callUpdateStyle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)I
    .locals 9
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 419
    .local p3, "styles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "paddings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "margins":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "borders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 421
    .local v8, "errorCode":I
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/weex/bridge/WXBridgeManager;->callUpdateStyle(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 428
    :cond_0
    :goto_0
    return v8

    .line 422
    :catch_0
    move-exception v7

    .line 424
    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const-string/jumbo v0, "WXBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "callUpdateStyle throw exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "function"    # Ljava/lang/String;
    .param p4, "args"    # [Lcom/taobao/weex/bridge/WXJSObject;

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridge;->nativeCreateInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    move-result v0

    return v0
.end method

.method public destoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "function"    # Ljava/lang/String;
    .param p4, "args"    # [Lcom/taobao/weex/bridge/WXJSObject;

    .prologue
    .line 146
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridge;->nativeDestoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    move-result v0

    return v0
.end method

.method public execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "function"    # Ljava/lang/String;
    .param p4, "args"    # [Lcom/taobao/weex/bridge/WXJSObject;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridge;->nativeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I

    move-result v0

    return v0
.end method

.method public execJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridge;->nativeExecJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execJSService(Ljava/lang/String;)I
    .locals 1
    .param p1, "javascript"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridge;->nativeExecJSService(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public execJSWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)[B
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "function"    # Ljava/lang/String;
    .param p4, "args"    # [Lcom/taobao/weex/bridge/WXJSObject;

    .prologue
    .line 125
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridge;->nativeExecJSWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)[B

    move-result-object v0

    return-object v0
.end method

.method public forceLayout(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridge;->nativeForceLayout(Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public getFirstScreenRenderTime(Ljava/lang/String;)[J
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 530
    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridge;->nativeGetFirstScreenRenderTime(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public getMeasurementFunc(Ljava/lang/String;J)Lcom/taobao/weex/layout/ContentBoxMeasurement;
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "renderObjectPtr"    # J

    .prologue
    .line 507
    const/4 v1, 0x0

    .line 509
    .local v1, "obj":Lcom/taobao/weex/layout/ContentBoxMeasurement;
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->getMeasurementFunc(Ljava/lang/String;J)Lcom/taobao/weex/layout/ContentBoxMeasurement;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 515
    :cond_0
    :goto_0
    return-object v1

    .line 510
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    const-string/jumbo v2, "WXBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getMeasurementFunc throw exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRenderFinishTime(Ljava/lang/String;)[J
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Lcom/taobao/weex/bridge/WXBridge;->nativeGetRenderFinishTime(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public initFramework(Ljava/lang/String;Lcom/taobao/weex/bridge/WXParams;)I
    .locals 1
    .param p1, "framework"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/taobao/weex/bridge/WXParams;

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridge;->nativeInitFramework(Ljava/lang/String;Lcom/taobao/weex/bridge/WXParams;)I

    move-result v0

    return v0
.end method

.method public initFrameworkEnv(Ljava/lang/String;Lcom/taobao/weex/bridge/WXParams;Ljava/lang/String;Z)I
    .locals 1
    .param p1, "framework"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/taobao/weex/bridge/WXParams;
    .param p3, "cacheDir"    # Ljava/lang/String;
    .param p4, "pieSupport"    # Z

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/bridge/WXBridge;->nativeInitFrameworkEnv(Ljava/lang/String;Lcom/taobao/weex/bridge/WXParams;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public markDirty(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "dirty"    # Z

    .prologue
    .line 580
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridge;->nativeMarkDirty(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 581
    return-void
.end method

.method public native nativeCreateInstanceContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I
.end method

.method public native nativeDestoryInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)I
.end method

.method public native nativeExecJSOnInstance(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public native nativeExecJSWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;)[B
.end method

.method public native nativeGetFirstScreenRenderTime(Ljava/lang/String;)[J
.end method

.method public native nativeGetRenderFinishTime(Ljava/lang/String;)[J
.end method

.method public native nativeUpdateGlobalConfig(Ljava/lang/String;)V
.end method

.method public notifyLayout(Ljava/lang/String;)Z
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridge;->nativeNotifyLayout(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onInstanceClose(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridge;->nativeOnInstanceClose(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public registerCoreEnv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 590
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridge;->nativeRegisterCoreEnv(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public reportJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->reportJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public reportNativeInitStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "statusCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 594
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_JS_FRAMEWORK_INIT_SINGLE_PROCESS_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_JS_FRAMEWORK_INIT_FAILED:Lcom/taobao/weex/common/WXErrorCode;

    .line 595
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 596
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKManager;->getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v0

    .line 597
    .local v0, "userTrackAdapter":Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    if-eqz v0, :cond_1

    .line 598
    new-instance v5, Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 599
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    const-string/jumbo v2, "errCode"

    invoke-interface {v5, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string/jumbo v2, "arg"

    const-string/jumbo v3, "InitFrameworkNativeError"

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string/jumbo v2, "errMsg"

    invoke-interface {v5, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string/jumbo v2, "Dyy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reportNativeInitStatus is running and errorCode is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " And errorMsg is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string/jumbo v3, "initFramework"

    move-object v2, v1

    move-object v4, v1

    invoke-interface/range {v0 .. v5}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V

    .line 624
    .end local v0    # "userTrackAdapter":Lcom/taobao/weex/adapter/IWXUserTrackAdapter;
    .end local v5    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    :cond_1
    :goto_0
    return-void

    .line 609
    :cond_2
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_JS_FRAMEWORK_INIT_FAILED_PARAMS_NULL:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 610
    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_JS_FRAMEWORK_INIT_FAILED_PARAMS_NULL:Lcom/taobao/weex/common/WXErrorCode;

    const-string/jumbo v3, "WeexProxy::initFromParam()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/taobao/weex/common/WXErrorCode;->WX_JS_FRAMEWORK_INIT_FAILED_PARAMS_NULL:Lcom/taobao/weex/common/WXErrorCode;

    .line 612
    invoke-virtual {v7}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 610
    invoke-static {v1, v2, v3, v4, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 617
    :cond_3
    invoke-static {}, Lcom/taobao/weex/common/WXErrorCode;->values()[Lcom/taobao/weex/common/WXErrorCode;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v6, v3, v2

    .line 618
    .local v6, "e":Lcom/taobao/weex/common/WXErrorCode;
    invoke-virtual {v6}, Lcom/taobao/weex/common/WXErrorCode;->getErrorType()Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    move-result-object v7

    sget-object v8, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->NATIVE_ERROR:Lcom/taobao/weex/common/WXErrorCode$ErrorType;

    invoke-virtual {v7, v8}, Lcom/taobao/weex/common/WXErrorCode$ErrorType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 619
    invoke-virtual {v6}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 620
    const-string/jumbo v2, "initFramework"

    invoke-static {v1, v6, v2, p2, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 617
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public reportServerCrash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "crashFile"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 308
    const-string/jumbo v1, "WXBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reportServerCrash instanceId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->callReportCrashReloadPage(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    const-string/jumbo v1, "WXBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reloadPageNative throw exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDefaultHeightAndWidthIntoRootDom(Ljava/lang/String;FFZZ)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "defaultWidth"    # F
    .param p3, "defaultHeight"    # F
    .param p4, "isWidthWrapContent"    # Z
    .param p5, "isHeightWrapContent"    # Z

    .prologue
    .line 540
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/bridge/WXBridge;->nativeSetDefaultHeightAndWidthIntoRootDom(Ljava/lang/String;FFZZ)V

    .line 541
    return-void
.end method

.method public setJSFrmVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    sput-object p1, Lcom/taobao/weex/WXEnvironment;->JS_LIB_SDK_VERSION:Ljava/lang/String;

    .line 276
    :cond_0
    return-void
.end method

.method public setMargin(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .param p4, "value"    # F

    .prologue
    .line 565
    invoke-virtual {p3}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/taobao/weex/bridge/WXBridge;->nativeSetMargin(Ljava/lang/String;Ljava/lang/String;IF)V

    .line 566
    return-void
.end method

.method public setPadding(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .param p4, "value"    # F

    .prologue
    .line 570
    invoke-virtual {p3}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/taobao/weex/bridge/WXBridge;->nativeSetPadding(Ljava/lang/String;Ljava/lang/String;IF)V

    .line 571
    return-void
.end method

.method public setPosition(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "edge"    # Lcom/taobao/weex/dom/CSSShorthand$EDGE;
    .param p4, "value"    # F

    .prologue
    .line 575
    invoke-virtual {p3}, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/taobao/weex/bridge/WXBridge;->nativeSetPosition(Ljava/lang/String;Ljava/lang/String;IF)V

    .line 576
    return-void
.end method

.method public setRenderContainerWrapContent(ZLjava/lang/String;)V
    .locals 0
    .param p1, "wrap"    # Z
    .param p2, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 525
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/bridge/WXBridge;->nativeSetRenderContainerWrapContent(ZLjava/lang/String;)V

    .line 526
    return-void
.end method

.method public setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 585
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridge;->nativeSetStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    .line 586
    return-void
.end method

.method public setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 560
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridge;->nativeSetStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    .line 561
    return-void
.end method

.method public setTimeoutNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->setTimeout(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public takeHeapSnapshot(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/WXBridge;->nativeTakeHeapSnapshot(Ljava/lang/String;)V

    .line 137
    return-void
.end method

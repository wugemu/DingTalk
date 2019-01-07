.class public Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;
.super Lcom/taobao/weex/common/WXModule;
.source "GCanvasLightningModule.java"

# interfaces
.implements Lcom/taobao/weex/common/Destroyable;


# annotations
.annotation build Lcom/alibaba/weex/plugin/annotation/WeexModule;
    name = "gcanvas"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GCanvasLightningModule"


# instance fields
.field private mComponentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mImageLoader:Lhzk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;->mComponentMap:Ljava/util/HashMap;

    .line 53
    new-instance v0, Lhzk;

    invoke-direct {v0}, Lhzk;-><init>()V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;->mImageLoader:Lhzk;

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 58
    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, v1}, Lcom/taobao/gcanvas/GCanvasJNI;->registerCallback(Ljava/lang/String;I)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public bindImageTexture(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 17
    .param p1, "args"    # Ljava/lang/String;
    .param p2, "refId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 66
    const/16 v16, 0x0

    .line 67
    .local v16, "url":Ljava/lang/String;
    const/4 v15, 0x0

    .line 68
    .local v15, "rid":I
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 70
    :try_start_0
    new-instance v13, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 71
    .local v13, "dataArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    .line 78
    .end local v13    # "dataArray":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    move-object/from16 v10, v16

    .line 79
    .local v10, "src":Ljava/lang/String;
    move v6, v15

    .line 80
    .local v6, "id":I
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 83
    .local v11, "sync":Ljava/lang/Object;
    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 85
    .local v12, "finished":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start to load texture in 2dmodule.start time = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 87
    :try_start_1
    const-string/jumbo v2, "data:image"

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start to decode base64 texture in 2dmodule.start time = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v2, "base64,"

    .line 90
    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhzk;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 92
    .local v3, "bmp":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start to decode base64 texture in 2dmodule.end time = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 93
    if-eqz v3, :cond_2

    .line 94
    const-string/jumbo v2, "start to bind base64 format texture in 2dmodule."

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 95
    const/4 v4, 0x0

    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move-object/from16 v2, p2

    invoke-static/range {v2 .. v9}, Lcom/taobao/gcanvas/GCanvasJNI;->bindTexture(Ljava/lang/String;Landroid/graphics/Bitmap;IIIIII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "id":I
    .end local v11    # "sync":Ljava/lang/Object;
    .end local v12    # "finished":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_1
    :goto_1
    return-void

    .line 73
    .end local v10    # "src":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 74
    .local v14, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "GCanvasLightningModule"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v14}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 98
    .end local v14    # "e":Ljava/lang/Throwable;
    .restart local v3    # "bmp":Landroid/graphics/Bitmap;
    .restart local v6    # "id":I
    .restart local v10    # "src":Ljava/lang/String;
    .restart local v11    # "sync":Ljava/lang/Object;
    .restart local v12    # "finished":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_2
    :try_start_2
    const-string/jumbo v2, "decode base64 texture failed,bitmap is null."

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 174
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "id":I
    :catch_1
    move-exception v14

    .line 175
    .restart local v14    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "GCanvasLightningModule"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v14}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 102
    .end local v14    # "e":Ljava/lang/Throwable;
    .restart local v6    # "id":I
    :cond_3
    :try_start_3
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v9, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/taobao/phenix/intf/Phenix;->load(Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v2

    new-instance v4, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$3;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v12}, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$3;-><init>(Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;ILjava/lang/String;Lcom/taobao/weex/bridge/JSCallback;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v4}, Lcom/taobao/phenix/intf/PhenixCreator;->succListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v2

    new-instance v4, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11, v12}, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$2;-><init>(Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 135
    invoke-virtual {v2, v4}, Lcom/taobao/phenix/intf/PhenixCreator;->failListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v2

    new-instance v4, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11, v12}, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$1;-><init>(Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 149
    invoke-virtual {v2, v4}, Lcom/taobao/phenix/intf/PhenixCreator;->cancelListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v2

    .line 162
    invoke-virtual {v2}, Lcom/taobao/phenix/intf/PhenixCreator;->fetch()Lcom/taobao/phenix/intf/PhenixTicket;

    .line 164
    monitor-enter v11
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 165
    :try_start_4
    const-string/jumbo v2, "start wait bindtexture in 2dmodule."

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_4

    .line 167
    invoke-virtual {v11}, Ljava/lang/Object;->wait()V

    .line 170
    :cond_4
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "finish wait bindtexture in 2dmodule,end time = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 172
    monitor-exit v11

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method public destroy()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 322
    iget-object v5, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;->mComponentMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 323
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 324
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 325
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;

    .line 326
    .local v4, "val":Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "component destroy id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljmj;->c(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v4}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/gcanvas/GCanvasJNI;->getNativeFps(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 330
    const-string/jumbo v5, "monitor start."

    invoke-static {v5}, Ljmj;->c(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    .line 332
    .local v3, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    sget-object v5, Ljmk;->b:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->getRef()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/taobao/gcanvas/GCanvasJNI;->getNativeFps(Ljava/lang/String;)I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v3, v5, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 334
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 335
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    sget-object v5, Ljmk;->d:Ljava/lang/String;

    const-string/jumbo v6, "weex"

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 336
    sget-object v5, Ljmk;->c:Ljava/lang/String;

    iget-object v6, v4, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mType:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 338
    sget-object v5, Ljmk;->a:Ljava/lang/String;

    invoke-static {v5, v0, v3}, Ljmk;->a(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 339
    const-string/jumbo v5, "monitor end."

    invoke-static {v5}, Ljmj;->c(Ljava/lang/String;)V

    .line 342
    .end local v0    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v3    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :cond_0
    invoke-virtual {v4}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->onActivityDestroy()V

    goto :goto_0

    .line 345
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "val":Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;
    :cond_1
    iget-object v5, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;->mComponentMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 346
    return-void
.end method

.method public enable(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 7
    .param p1, "args"    # Ljava/lang/String;
    .param p2, "callBack"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "jo":Lorg/json/JSONObject;
    const-string/jumbo v5, "componentId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "refId":Ljava/lang/String;
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 225
    invoke-virtual {v6}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v3

    .line 227
    .local v3, "myComponent":Lcom/taobao/weex/ui/component/WXComponent;
    instance-of v5, v3, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;

    if-eqz v5, :cond_0

    .line 228
    move-object v0, v3

    check-cast v0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;

    move-object v2, v0

    .line 229
    .local v2, "mWXGCanvasComp":Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;
    iget-object v5, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;->mComponentMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v1    # "jo":Lorg/json/JSONObject;
    .end local v2    # "mWXGCanvasComp":Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;
    .end local v3    # "myComponent":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v4    # "refId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public execGcanvaSyncCMD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "refId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 316
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getDeviceInfo(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 4
    .param p1, "args"    # Ljava/lang/String;
    .param p2, "callBack"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v1, "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 247
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "platform"

    const-string/jumbo v3, "Android"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    const-string/jumbo v2, "data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-interface {p2, v1}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 253
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void

    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v1    # "hm":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public preLoadImage(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 7
    .param p1, "args"    # Ljava/lang/String;
    .param p2, "callBack"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 194
    const-string/jumbo v4, "GCanvasLightningModule"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "preLoadImage() in GCanvasLightningModule,args: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "dataArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "url":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 200
    .local v2, "id":I
    iget-object v4, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;->mImageLoader:Lhzk;

    invoke-virtual {v4, v3, v2, p2}, Lhzk;->a(Ljava/lang/String;ILcom/taobao/weex/bridge/JSCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v0    # "dataArray":Lorg/json/JSONArray;
    .end local v2    # "id":I
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "GCanvasLightningModule"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public registerRetachFunction(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 0
    .param p1, "refId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 190
    return-void
.end method

.method public render(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "refId"    # Ljava/lang/String;
    .param p3, "callBack"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 237
    return-void
.end method

.method public resetComponent(Ljava/lang/String;)V
    .locals 0
    .param p1, "refId"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 182
    return-void
.end method

.method public setAlpha(Ljava/lang/String;F)V
    .locals 3
    .param p1, "refId"    # Ljava/lang/String;
    .param p2, "alpha"    # F
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 299
    const-string/jumbo v2, "start to set alpha in 3dmodule."

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;->mComponentMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;

    .line 301
    .local v0, "component":Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->getSurfaceView()Ljmi;

    move-result-object v1

    .line 303
    .local v1, "view":Ljmi;
    if-eqz v1, :cond_0

    .line 304
    const-string/jumbo v2, "set alpha success in 3dmodule."

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v1, p2}, Ljmi;->setAlpha(F)V

    .line 308
    .end local v1    # "view":Ljmi;
    :cond_0
    return-void
.end method

.method public setContextType(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 12
    .param p1, "args"    # Ljava/lang/String;
    .param p2, "refId"    # Ljava/lang/String;
    .param p3, "callBack"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v7}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 262
    .local v1, "ctx":Landroid/content/Context;
    if-nez v1, :cond_2

    .line 263
    const-string/jumbo v7, "GCanvasLightningModule"

    const-string/jumbo v8, "setDevicePixelRatio error ctx == null"

    invoke-static {v7, v8}, Ljmj;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_2
    check-cast v1, Landroid/app/Activity;

    .end local v1    # "ctx":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 269
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 270
    .local v6, "width":I
    int-to-double v8, v6

    const-wide v10, 0x4087700000000000L    # 750.0

    div-double v2, v8, v10

    .line 272
    .local v2, "devicePixelRatio":D
    const-string/jumbo v7, "GCanvasLightningModule"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "enable width "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v7, "GCanvasLightningModule"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "enable devicePixelRatio "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object v5, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;->_2D:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    .line 277
    .local v5, "type":Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;
    const-string/jumbo v7, "3d"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "1"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 278
    :cond_3
    sget-object v5, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;->_3D:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    .line 281
    :cond_4
    invoke-virtual {v5}, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;->value()I

    move-result v7

    invoke-static {p2, v7}, Lcom/taobao/gcanvas/GCanvasJNI;->setContextType(Ljava/lang/String;I)V

    .line 282
    invoke-static {p2, v2, v3}, Lcom/taobao/gcanvas/GCanvasJNI;->setDevicePixelRatio(Ljava/lang/String;D)V

    .line 283
    invoke-static {p2}, Lcom/taobao/gcanvas/GCanvasJNI;->sendEvent(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 284
    const-string/jumbo v7, "start to send event in module."

    invoke-static {v7}, Ljmj;->c(Ljava/lang/String;)V

    .line 285
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;->mComponentMap:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;

    .line 286
    .local v0, "component":Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;
    if-eqz v0, :cond_5

    .line 287
    invoke-virtual {v0}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->sendEvent()V

    .line 291
    .end local v0    # "component":Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;
    :cond_5
    iget-object v7, p0, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;->mComponentMap:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;

    .line 292
    .restart local v0    # "component":Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;
    if-eqz v0, :cond_0

    .line 293
    iput-object v5, v0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mType:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;

    goto/16 :goto_0
.end method

.method public setDevicePixelRatio(Ljava/lang/String;)V
    .locals 0
    .param p1, "refId"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 312
    return-void
.end method

.method public setHiQuality(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # Ljava/lang/String;
    .param p2, "refId"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 209
    return-void
.end method

.method public setLogLevel(Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    const-string/jumbo v0, "GCanvasLightningModule"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setLogLevel() args: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {p1}, Ljmj;->a(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public setup(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 0
    .param p1, "args"    # Ljava/lang/String;
    .param p2, "refId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 186
    return-void
.end method

.method public texImage2D(Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 15
    .param p1, "refid"    # Ljava/lang/String;
    .param p2, "target"    # I
    .param p3, "level"    # I
    .param p4, "internalformat"    # I
    .param p5, "format"    # I
    .param p6, "type"    # I
    .param p7, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "texImage2D in 3dmodule,refid="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",target="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",level="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",internalformat="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",format="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",path="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 367
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 369
    new-instance v12, Ljava/lang/Object;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 370
    .local v12, "sync":Ljava/lang/Object;
    new-instance v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v13, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 372
    .local v13, "finished":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start to load texture in 3dmodule.start time = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 374
    :try_start_0
    const-string/jumbo v2, "data:image"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start to decode base64 texture in 3dmodule.start time = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 376
    const-string/jumbo v2, "base64,"

    .line 377
    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhzk;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 378
    .local v3, "bmp":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start to decode base64 texture in 3dmodule.end time = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 379
    if-eqz v3, :cond_1

    .line 380
    const-string/jumbo v2, "start to bind base64 format texture in 3dmodule."

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 381
    const/4 v4, 0x0

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v9}, Lcom/taobao/gcanvas/GCanvasJNI;->bindTexture(Ljava/lang/String;Landroid/graphics/Bitmap;IIIIII)V

    .line 450
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v12    # "sync":Ljava/lang/Object;
    .end local v13    # "finished":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    :goto_0
    return-void

    .line 383
    .restart local v3    # "bmp":Landroid/graphics/Bitmap;
    .restart local v12    # "sync":Ljava/lang/Object;
    .restart local v13    # "finished":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_1
    const-string/jumbo v2, "decode base64 texture failed,bitmap is null."

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v14

    .line 447
    .local v14, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "GCanvasLightningModule"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v14}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 388
    .end local v14    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/taobao/phenix/intf/Phenix;->load(Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v2

    new-instance v4, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$6;

    move-object v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v4 .. v13}, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$6;-><init>(Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;Ljava/lang/String;IIIIILjava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v4}, Lcom/taobao/phenix/intf/PhenixCreator;->succListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v2

    new-instance v4, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$5;

    invoke-direct {v4, p0, v12, v13}, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$5;-><init>(Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 408
    invoke-virtual {v2, v4}, Lcom/taobao/phenix/intf/PhenixCreator;->failListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v2

    new-instance v4, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$4;

    invoke-direct {v4, p0, v12, v13}, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$4;-><init>(Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 422
    invoke-virtual {v2, v4}, Lcom/taobao/phenix/intf/PhenixCreator;->cancelListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v2

    .line 435
    invoke-virtual {v2}, Lcom/taobao/phenix/intf/PhenixCreator;->fetch()Lcom/taobao/phenix/intf/PhenixTicket;

    .line 437
    monitor-enter v12
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 438
    :try_start_2
    const-string/jumbo v2, "[texImage2D] start wait bindtexture in 3dmodule"

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    .line 440
    invoke-virtual {v12}, Ljava/lang/Object;->wait()V

    .line 443
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "finish wait bindtexture in 3dmodule,end time = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 444
    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public texSubImage2D(Ljava/lang/String;IIIIIILjava/lang/String;)V
    .locals 16
    .param p1, "refid"    # Ljava/lang/String;
    .param p2, "target"    # I
    .param p3, "level"    # I
    .param p4, "xoffset"    # I
    .param p5, "yoffset"    # I
    .param p6, "format"    # I
    .param p7, "type"    # I
    .param p8, "path"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "texSubImage2D in 3dmodule,refid="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",target="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",level="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",xoffset="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",yoffset="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",format="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",path="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 457
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 460
    .local v13, "sync":Ljava/lang/Object;
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v14, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 462
    .local v14, "finished":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start to texSubImage2D in 3dmodule.start time = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 464
    :try_start_0
    const-string/jumbo v2, "data:image"

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[texSubImage2D] start to decode base64 texture in 3dmodule.start time = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 467
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "base64,"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x7

    .line 468
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lhzk;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 469
    .local v3, "bmp":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[texSubImage2D] start to decode base64 texture in 3dmodule.end time = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 471
    if-eqz v3, :cond_1

    .line 472
    const-string/jumbo v2, "[texSubImage2D] start to bind base64 format texture in 3dmodule."

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 473
    const/4 v4, 0x0

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v10}, Lcom/taobao/gcanvas/GCanvasJNI;->texSubImage2D(Ljava/lang/String;Landroid/graphics/Bitmap;IIIIIII)V

    .line 544
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    .end local v13    # "sync":Ljava/lang/Object;
    .end local v14    # "finished":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_0
    :goto_0
    return-void

    .line 475
    .restart local v3    # "bmp":Landroid/graphics/Bitmap;
    .restart local v13    # "sync":Ljava/lang/Object;
    .restart local v14    # "finished":Ljava/util/concurrent/atomic/AtomicBoolean;
    :cond_1
    const-string/jumbo v2, "[texSubImage2D] decode base64 texture failed,bitmap is null."

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 540
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v15

    .line 541
    .local v15, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "GCanvasLightningModule"

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v15}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 480
    .end local v15    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/taobao/phenix/intf/Phenix;->load(Ljava/lang/String;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v2

    new-instance v4, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$9;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-direct/range {v4 .. v14}, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$9;-><init>(Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;Ljava/lang/String;IIIIIILjava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v2, v4}, Lcom/taobao/phenix/intf/PhenixCreator;->succListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v2

    new-instance v4, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13, v14}, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$8;-><init>(Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 501
    invoke-virtual {v2, v4}, Lcom/taobao/phenix/intf/PhenixCreator;->failListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v2

    new-instance v4, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13, v14}, Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$7;-><init>(Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 515
    invoke-virtual {v2, v4}, Lcom/taobao/phenix/intf/PhenixCreator;->cancelListener(Lcom/taobao/phenix/intf/event/IPhenixListener;)Lcom/taobao/phenix/intf/PhenixCreator;

    move-result-object v2

    .line 528
    invoke-virtual {v2}, Lcom/taobao/phenix/intf/PhenixCreator;->fetch()Lcom/taobao/phenix/intf/PhenixTicket;

    .line 530
    monitor-enter v13
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 531
    :try_start_2
    const-string/jumbo v2, "[texSubImage2D] start wait bindtexture in 3dmodule"

    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    .line 533
    invoke-virtual {v13}, Ljava/lang/Object;->wait()V

    .line 536
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[texSubImage2D] finish wait bindtexture in 3dmodule,end time = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 536
    invoke-static {v2}, Ljmj;->c(Ljava/lang/String;)V

    .line 538
    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
.end method

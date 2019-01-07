.class public Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "WXGCanvasLigntningComponent.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation build Lcom/alibaba/weex/plugin/annotation/WeexComponent;
    names = {
        "gcanvas"
    }
.end annotation

.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent",
        "<",
        "Lhzl;",
        ">;",
        "Landroid/view/TextureView$SurfaceTextureListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mSended:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSurfaceView:Lhzl;

.field public mType:Lcom/alibaba/weex/plugin/gcanvas/GCanvasLightningModule$ContextType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ILcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 2
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "type"    # I
    .param p4, "basicComponentDat"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ILcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mSended:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 2
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mSended:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 2
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "isLazy"    # Z
    .param p5, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 97
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mSended:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    return-void
.end method

.method private addGCanvasView()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXStyle;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "backgroundColor":Ljava/lang/String;
    new-instance v1, Lhzl;

    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lhzl;-><init>(Landroid/content/Context;Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;)V

    iput-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mSurfaceView:Lhzl;

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/gcanvas/GCanvasJNI;->a(Landroid/content/Context;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string/jumbo v0, "transparent"

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mSurfaceView:Lhzl;

    invoke-virtual {v1, v0}, Lhzl;->setBackgroundColor(Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public getSurfaceView()Ljmi;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mSurfaceView:Lhzl;

    return-object v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->initComponentHostView(Landroid/content/Context;)Lhzl;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lhzl;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mSended:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 159
    invoke-direct {p0}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->addGCanvasView()V

    .line 166
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mSurfaceView:Lhzl;

    return-object v0
.end method

.method public onActivityDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mSurfaceView:Lhzl;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mSurfaceView:Lhzl;

    invoke-virtual {v0, v3}, Lhzl;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mSurfaceView:Lhzl;

    .line 1084
    const-string/jumbo v1, "on request Exit in GSurfaceView."

    invoke-static {v1}, Ljmj;->c(Ljava/lang/String;)V

    .line 1085
    iget-object v1, v0, Ljmi;->a:Lcom/taobao/gcanvas/surface/GTextureViewCallback;

    if-eqz v1, :cond_2

    .line 1086
    const-string/jumbo v1, "start to request Exit."

    invoke-static {v1}, Ljmj;->c(Ljava/lang/String;)V

    .line 1087
    iget-object v0, v0, Ljmi;->a:Lcom/taobao/gcanvas/surface/GTextureViewCallback;

    .line 1129
    const-string/jumbo v1, "on RequestExit"

    invoke-static {v1}, Ljmj;->c(Ljava/lang/String;)V

    .line 1131
    iget-object v1, v0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->c:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 1133
    iget-object v1, v0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->c:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1134
    iput-object v3, v0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->c:Landroid/view/Surface;

    .line 1137
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 1138
    const-string/jumbo v1, "start to release surface textureview and surface in onRequestExit"

    invoke-static {v1}, Ljmj;->c(Ljava/lang/String;)V

    .line 1139
    iget-object v1, v0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->d:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 1142
    iget-object v1, v0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1144
    iput-object v3, v0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->d:Landroid/graphics/SurfaceTexture;

    .line 1148
    :cond_1
    iget-object v1, v0, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/gcanvas/surface/GTextureViewCallback;->onRenderExit(Ljava/lang/String;)V

    .line 140
    :cond_2
    return-void
.end method

.method public onActivityPause()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mSurfaceView:Lhzl;

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Lhzl;->c()V

    .line 147
    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mSurfaceView:Lhzl;

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lhzl;->b()V

    .line 123
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 171
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 10
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    .local v0, "ctx":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 176
    sget-object v5, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setDevicePixelRatio error ctx == null"

    invoke-static {v5, v6}, Ljmj;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .end local v0    # "ctx":Landroid/content/Context;
    :goto_0
    return-void

    .line 180
    .restart local v0    # "ctx":Landroid/content/Context;
    :cond_0
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "ctx":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 182
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 183
    .local v4, "screenWidth":I
    int-to-double v6, v4

    const-wide v8, 0x4087700000000000L    # 750.0

    div-double v2, v6, v8

    .line 185
    .local v2, "devicePixelRatio":D
    sget-object v5, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "enable width "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v5, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "enable devicePixelRatio "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljmj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2, v3}, Lcom/taobao/gcanvas/GCanvasJNI;->setDevicePixelRatio(Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 197
    return-void
.end method

.method public sendEvent()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mSended:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "ref"

    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "send event in gcanvas component.params="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljmj;->c(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    const-string/jumbo v2, "GCanvasReady"

    invoke-virtual {v1, v2, v0}, Lcom/taobao/weex/WXSDKInstance;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/WXGCanvasLigntningComponent;->mSended:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 217
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    monitor-exit p0

    return-void

    .line 215
    :cond_0
    const-string/jumbo v1, "event sended."

    invoke-static {v1}, Ljmj;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

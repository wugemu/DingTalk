.class Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;
.super Ljava/lang/Object;
.source "SophonEngineImpl.java"

# interfaces
.implements Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/alirtcInterface/SophonEngineImpl;->addLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

.field final synthetic val$config:Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;


# direct methods
.method constructor <init>(Lorg/webrtc/alirtcInterface/SophonEngineImpl;Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    .prologue
    .line 220
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    iput-object p2, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;->val$config:Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChange(Landroid/view/SurfaceHolder;IILorg/webrtc/model/SophonViewStatus;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "viewStatus"    # Lorg/webrtc/model/SophonViewStatus;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 245
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v1}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$200(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 246
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;-><init>()V

    .line 247
    .local v0, "aliRendererConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;
    iput p3, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->height:I

    .line 248
    iput p2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->width:I

    .line 249
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_view:Landroid/view/Surface;

    .line 250
    iget v1, p4, Lorg/webrtc/model/SophonViewStatus;->renderMode:I

    iput v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_mode:I

    .line 251
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;->val$config:Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;

    iget-object v1, v1, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->render_id:I

    .line 252
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;->val$config:Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;

    iget-wide v2, v1, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->sharedContext:J

    iput-wide v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->sharedContext:J

    .line 253
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;->val$config:Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;

    iget-boolean v1, v1, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->enableBeauty:Z

    iput-boolean v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->enableBeauty:Z

    .line 254
    const-string/jumbo v1, "Pass"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "local surfacechange width is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " height is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v1}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$200(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->UpdateDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V

    .line 257
    .end local v0    # "aliRendererConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;
    :cond_0
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;Lorg/webrtc/model/SophonViewStatus;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "viewStatus"    # Lorg/webrtc/model/SophonViewStatus;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 262
    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lorg/webrtc/model/SophonViewStatus;->isAddDisplayWindow:Z

    if-nez v0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v0}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$200(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/webrtc/model/SophonViewStatus;->setAddDisplayWindow(Z)V

    .line 267
    const-string/jumbo v0, "Pass"

    const-string/jumbo v1, "remove local display"

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v0}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$200(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    move-result-object v0

    invoke-virtual {p2}, Lorg/webrtc/model/SophonViewStatus;->getVideoType()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->RemoveLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V

    goto :goto_0
.end method

.method public onsurfaceCreated(Landroid/view/SurfaceHolder;Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;IILorg/webrtc/model/SophonViewStatus;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "surfaceMode"    # Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "viewStatus"    # Lorg/webrtc/model/SophonViewStatus;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 225
    if-eqz p5, :cond_0

    iget-boolean v1, p5, Lorg/webrtc/model/SophonViewStatus;->isAddDisplayWindow:Z

    if-eqz v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v1}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$200(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;-><init>()V

    .line 230
    .local v0, "aliRendererConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;
    iput p4, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->height:I

    .line 231
    iput p3, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->width:I

    .line 232
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_view:Landroid/view/Surface;

    .line 233
    iget v1, p5, Lorg/webrtc/model/SophonViewStatus;->renderMode:I

    iput v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_mode:I

    .line 234
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;->val$config:Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;

    iget-object v1, v1, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->displayView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->render_id:I

    .line 235
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;->val$config:Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;

    iget-wide v2, v1, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->sharedContext:J

    iput-wide v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->sharedContext:J

    .line 236
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;->val$config:Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;

    iget-boolean v1, v1, Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;->enableBeauty:Z

    iput-boolean v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->enableBeauty:Z

    .line 237
    const-string/jumbo v1, "Pass"

    const-string/jumbo v2, "add local display"

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v1, 0x1

    invoke-virtual {p5, v1}, Lorg/webrtc/model/SophonViewStatus;->setAddDisplayWindow(Z)V

    .line 239
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$3;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v1}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$200(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    move-result-object v1

    iget-object v2, p5, Lorg/webrtc/model/SophonViewStatus;->videoType:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-virtual {v1, v2, v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->AddLocalDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V

    goto :goto_0
.end method

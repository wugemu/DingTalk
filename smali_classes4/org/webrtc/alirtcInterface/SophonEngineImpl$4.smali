.class Lorg/webrtc/alirtcInterface/SophonEngineImpl$4;
.super Ljava/lang/Object;
.source "SophonEngineImpl.java"

# interfaces
.implements Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/alirtcInterface/SophonEngineImpl;->addRemoteDisplayWindow(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/SophonEngine$AliRendererConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;


# direct methods
.method constructor <init>(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    .prologue
    .line 329
    iput-object p1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$4;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

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
    .line 353
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$4;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v1}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$200(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;-><init>()V

    .line 355
    .local v0, "aliRendererConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;
    iput p3, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->height:I

    .line 356
    iput p2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->width:I

    .line 357
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_view:Landroid/view/Surface;

    .line 358
    iget v1, p4, Lorg/webrtc/model/SophonViewStatus;->renderMode:I

    iput v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_mode:I

    .line 359
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->render_id:I

    .line 360
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$4;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v1}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$300(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->sharedContext:J

    .line 361
    const-string/jumbo v1, "Pass"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "remote surfacechange width is "

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

    .line 362
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$4;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v1}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$200(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->UpdateDisplayWindow(Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V

    .line 364
    .end local v0    # "aliRendererConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;
    :cond_0
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;Lorg/webrtc/model/SophonViewStatus;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "viewStatus"    # Lorg/webrtc/model/SophonViewStatus;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 369
    if-eqz p2, :cond_0

    iget-boolean v0, p2, Lorg/webrtc/model/SophonViewStatus;->isAddDisplayWindow:Z

    if-nez v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$4;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v0}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$200(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/webrtc/model/SophonViewStatus;->setAddDisplayWindow(Z)V

    .line 374
    const-string/jumbo v0, "Pass"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "remove remote display callId is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$4;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v0}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$200(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    move-result-object v0

    iget-object v1, p2, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/webrtc/model/SophonViewStatus;->getVideoType()Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->RemoveRemoteDisplayWindow(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;)V

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
    .line 334
    if-eqz p5, :cond_0

    iget-boolean v1, p5, Lorg/webrtc/model/SophonViewStatus;->isAddDisplayWindow:Z

    if-eqz v1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$4;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v1}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$200(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 338
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;

    invoke-direct {v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;-><init>()V

    .line 339
    .local v0, "aliRendererConfig":Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;
    iput p4, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->height:I

    .line 340
    iput p3, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->width:I

    .line 341
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_view:Landroid/view/Surface;

    .line 342
    iget v1, p5, Lorg/webrtc/model/SophonViewStatus;->renderMode:I

    iput v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->display_mode:I

    .line 343
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iput v1, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->render_id:I

    .line 344
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$4;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v1}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$300(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)J

    move-result-wide v2

    iput-wide v2, v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;->sharedContext:J

    .line 345
    const/4 v1, 0x1

    invoke-virtual {p5, v1}, Lorg/webrtc/model/SophonViewStatus;->setAddDisplayWindow(Z)V

    .line 346
    const-string/jumbo v1, "Pass"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "add remote display "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " width is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p5, Lorg/webrtc/model/SophonViewStatus;->videoType:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " callid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p5, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lorg/webrtc/alirtcInterface/SophonEngineImpl$4;->this$0:Lorg/webrtc/alirtcInterface/SophonEngineImpl;

    invoke-static {v1}, Lorg/webrtc/alirtcInterface/SophonEngineImpl;->access$200(Lorg/webrtc/alirtcInterface/SophonEngineImpl;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;

    move-result-object v1

    iget-object v2, p5, Lorg/webrtc/model/SophonViewStatus;->callId:Ljava/lang/String;

    iget-object v3, p5, Lorg/webrtc/model/SophonViewStatus;->videoType:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;

    invoke-virtual {v1, v2, v3, v0}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;->AddRemoteDisplayWindow(Ljava/lang/String;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRTCSdk_VideSource_Type;Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliRendererConfig;)V

    goto :goto_0
.end method

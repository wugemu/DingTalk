.class final Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$1;
.super Ljava/lang/Object;
.source "CMailCameraActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v5, 0x64

    const/high16 v6, 0x43160000    # 150.0f

    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 197
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr v0, v6

    float-to-int v1, v0

    .line 198
    .local v1, "left":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr v0, v6

    float-to-int v2, v0

    .line 199
    .local v2, "top":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v3, v0

    .line 200
    .local v3, "right":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v6

    float-to-int v4, v0

    .line 201
    .local v4, "bottom":I
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    const v7, -0xffff01

    move v6, v5

    invoke-static/range {v0 .. v7}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;IIIIIII)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailCameraActivity;)Lzp;

    move-result-object v6

    .line 1490
    iget-object v0, v6, Lzp;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 1493
    :try_start_0
    iget-object v0, v6, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1497
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v6, v0, v5}, Lzp;->a(FF)Landroid/graphics/Rect;

    move-result-object v7

    .line 1498
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v6, v0, v5}, Lzp;->a(FF)Landroid/graphics/Rect;

    .line 1501
    const/4 v5, 0x0

    .line 1503
    :try_start_1
    iget-object v0, v6, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1509
    :goto_1
    if-eqz v0, :cond_1

    .line 1510
    const-string/jumbo v5, "auto"

    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1511
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-lt v5, v8, :cond_0

    .line 1512
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v5

    if-lez v5, :cond_0

    .line 1513
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1514
    new-instance v8, Landroid/hardware/Camera$Area;

    const/16 v9, 0x3e8

    invoke-direct {v8, v7, v9}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1515
    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1526
    :cond_0
    :try_start_2
    iget-object v5, v6, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 1527
    iget-object v5, v6, Lzp;->b:Landroid/hardware/Camera;

    invoke-virtual {v5, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1528
    iget-object v0, v6, Lzp;->b:Landroid/hardware/Camera;

    new-instance v5, Lzp$2;

    invoke-direct {v5, v6}, Lzp$2;-><init>(Lzp;)V

    invoke-virtual {v0, v5}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 204
    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v3    # "right":I
    .end local v4    # "bottom":I
    :cond_1
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 1494
    .restart local v1    # "left":I
    .restart local v2    # "top":I
    .restart local v3    # "right":I
    .restart local v4    # "bottom":I
    :catch_0
    move-exception v0

    .line 1495
    const-string/jumbo v5, "CameraHelper"

    const-string/jumbo v7, "3"

    const-string/jumbo v8, "cancelAutoFocus fail"

    invoke-static {v5, v7, v8, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1504
    :catch_1
    move-exception v0

    .line 1505
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v5

    goto :goto_1

    .line 1534
    :catch_2
    move-exception v0

    .line 1535
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1536
    const-string/jumbo v5, "CameraHelper"

    const-string/jumbo v6, "3"

    const-string/jumbo v7, "focusOnTouch fail"

    invoke-static {v5, v6, v7, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

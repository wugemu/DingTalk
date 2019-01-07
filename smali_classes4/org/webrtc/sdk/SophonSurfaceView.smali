.class public Lorg/webrtc/sdk/SophonSurfaceView;
.super Landroid/view/SurfaceView;
.source "SophonSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;,
        Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Pass"


# instance fields
.field private isCreate:Z

.field private listener:Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;

.field private sophonViewStatus:Lorg/webrtc/model/SophonViewStatus;

.field private surfaceMode:Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lorg/webrtc/sdk/SophonSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-virtual {p0}, Lorg/webrtc/sdk/SophonSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getSophonViewStatus()Lorg/webrtc/model/SophonViewStatus;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/webrtc/sdk/SophonSurfaceView;->sophonViewStatus:Lorg/webrtc/model/SophonViewStatus;

    return-object v0
.end method

.method public getSurfaceMode()Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/webrtc/sdk/SophonSurfaceView;->surfaceMode:Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    return-object v0
.end method

.method public isCreate()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 34
    const-string/jumbo v0, "VideoChatActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isCreate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lorg/webrtc/sdk/SophonSurfaceView;->isCreate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-boolean v0, p0, Lorg/webrtc/sdk/SophonSurfaceView;->isCreate:Z

    return v0
.end method

.method public removeListener(Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;)V
    .locals 0
    .param p1, "listener"    # Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;

    .prologue
    .line 65
    return-void
.end method

.method public setListener(Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;)V
    .locals 0
    .param p1, "listener"    # Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/webrtc/sdk/SophonSurfaceView;->listener:Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;

    .line 61
    return-void
.end method

.method public setSophonViewStatus(Lorg/webrtc/model/SophonViewStatus;)V
    .locals 0
    .param p1, "sophonViewStatus"    # Lorg/webrtc/model/SophonViewStatus;

    .prologue
    .line 56
    iput-object p1, p0, Lorg/webrtc/sdk/SophonSurfaceView;->sophonViewStatus:Lorg/webrtc/model/SophonViewStatus;

    .line 57
    return-void
.end method

.method public setsurfaceMode(Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;)V
    .locals 0
    .param p1, "surfaceMode"    # Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    .prologue
    .line 48
    iput-object p1, p0, Lorg/webrtc/sdk/SophonSurfaceView;->surfaceMode:Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    .line 49
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 84
    const-string/jumbo v0, "Pass"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "surfaceChanged listener is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/sdk/SophonSurfaceView;->listener:Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lorg/webrtc/sdk/SophonSurfaceView;->listener:Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/webrtc/sdk/SophonSurfaceView;->listener:Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;

    iget-object v1, p0, Lorg/webrtc/sdk/SophonSurfaceView;->sophonViewStatus:Lorg/webrtc/model/SophonViewStatus;

    invoke-interface {v0, p1, p3, p4, v1}, Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;->onSurfaceChange(Landroid/view/SurfaceHolder;IILorg/webrtc/model/SophonViewStatus;)V

    .line 88
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 74
    const-string/jumbo v0, "Pass"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "surfaceCreated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " listener is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/sdk/SophonSurfaceView;->listener:Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/sdk/SophonSurfaceView;->isCreate:Z

    .line 77
    iget-object v0, p0, Lorg/webrtc/sdk/SophonSurfaceView;->listener:Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/webrtc/sdk/SophonSurfaceView;->listener:Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;

    iget-object v2, p0, Lorg/webrtc/sdk/SophonSurfaceView;->surfaceMode:Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;

    invoke-virtual {p0}, Lorg/webrtc/sdk/SophonSurfaceView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/webrtc/sdk/SophonSurfaceView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lorg/webrtc/sdk/SophonSurfaceView;->sophonViewStatus:Lorg/webrtc/model/SophonViewStatus;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;->onsurfaceCreated(Landroid/view/SurfaceHolder;Lorg/webrtc/sdk/SophonSurfaceView$SurfaceMode;IILorg/webrtc/model/SophonViewStatus;)V

    .line 80
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 92
    const-string/jumbo v0, "Pass"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "surfaceDestroyed listener is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/sdk/SophonSurfaceView;->listener:Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/utils/AlivcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/sdk/SophonSurfaceView;->isCreate:Z

    .line 94
    iget-object v0, p0, Lorg/webrtc/sdk/SophonSurfaceView;->listener:Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/webrtc/sdk/SophonSurfaceView;->listener:Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;

    iget-object v1, p0, Lorg/webrtc/sdk/SophonSurfaceView;->sophonViewStatus:Lorg/webrtc/model/SophonViewStatus;

    invoke-interface {v0, p1, v1}, Lorg/webrtc/sdk/SophonSurfaceView$SophonSurfaceChange;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;Lorg/webrtc/model/SophonViewStatus;)V

    .line 97
    :cond_0
    return-void
.end method

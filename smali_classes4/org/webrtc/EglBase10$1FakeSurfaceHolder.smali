.class Lorg/webrtc/EglBase10$1FakeSurfaceHolder;
.super Ljava/lang/Object;
.source "EglBase10.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/EglBase10;->createSurface(Landroid/view/Surface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1FakeSurfaceHolder"
.end annotation


# instance fields
.field private final surface:Landroid/view/Surface;

.field final synthetic this$0:Lorg/webrtc/EglBase10;


# direct methods
.method constructor <init>(Lorg/webrtc/EglBase10;Landroid/view/Surface;)V
    .locals 0
    .param p1, "this$0"    # Lorg/webrtc/EglBase10;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/webrtc/EglBase10$1FakeSurfaceHolder;->this$0:Lorg/webrtc/EglBase10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lorg/webrtc/EglBase10$1FakeSurfaceHolder;->surface:Landroid/view/Surface;

    .line 69
    return-void
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .prologue
    .line 72
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/webrtc/EglBase10$1FakeSurfaceHolder;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCreating()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .prologue
    .line 75
    return-void
.end method

.method public setFixedSize(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i2"    # I

    .prologue
    .line 87
    return-void
.end method

.method public setFormat(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 93
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 96
    return-void
.end method

.method public setSizeFromLayout()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "i"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 109
    return-void
.end method
.class public Lcom/taobao/ma/ui/recognition/CameraSurfaceView;
.super Landroid/view/SurfaceView;
.source "CameraSurfaceView.java"


# instance fields
.field a:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0}, Lcom/taobao/ma/ui/recognition/CameraSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/ma/ui/recognition/CameraSurfaceView;->a:Landroid/view/SurfaceHolder;

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/taobao/ma/ui/recognition/CameraSurfaceView;->setZOrderOnTop(Z)V

    .line 37
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/CameraSurfaceView;->a:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 38
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/CameraSurfaceView;->a:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/taobao/ma/ui/recognition/CameraSurfaceView;->a:Landroid/view/SurfaceHolder;

    return-object v0
.end method

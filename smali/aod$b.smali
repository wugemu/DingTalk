.class final Laod$b;
.super Laod;
.source "AnimationFrame.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/view/Choreographer;

.field private b:Laod$a;

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Laod;-><init>()V

    .line 66
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 69
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Laod$b;->a:Landroid/view/Choreographer;

    .line 70
    return-void
.end method


# virtual methods
.method final a(Laod$a;)V
    .locals 1
    .param p1, "callback"    # Laod$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    iput-object p1, p0, Laod$b;->b:Laod$a;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Laod$b;->c:Z

    .line 90
    iget-object v0, p0, Laod$b;->a:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Laod$b;->a:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 93
    :cond_0
    return-void
.end method

.method final b()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Laod$b;->a:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Laod$b;->a:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 77
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Laod$b;->c:Z

    .line 78
    return-void
.end method

.method final c()V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Laod$b;->b()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Laod$b;->a:Landroid/view/Choreographer;

    .line 84
    return-void
.end method

.method public final doFrame(J)V
    .locals 1
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 97
    iget-object v0, p0, Laod$b;->b:Laod$a;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Laod$b;->b:Laod$a;

    invoke-interface {v0}, Laod$a;->a()V

    .line 100
    :cond_0
    iget-object v0, p0, Laod$b;->a:Landroid/view/Choreographer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Laod$b;->c:Z

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Laod$b;->a:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 103
    :cond_1
    return-void
.end method

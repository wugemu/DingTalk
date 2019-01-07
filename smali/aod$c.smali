.class final Laod$c;
.super Laod;
.source "AnimationFrame.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Laod$a;

.field private d:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Laod;-><init>()V

    .line 118
    iget-object v0, p0, Laod$c;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Laod$c;->c()V

    .line 121
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "expression-timing-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Laod$c;->a:Landroid/os/HandlerThread;

    .line 122
    iget-object v0, p0, Laod$c;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Laod$c;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Laod$c;->b:Landroid/os/Handler;

    .line 124
    return-void
.end method


# virtual methods
.method final a(Laod$a;)V
    .locals 2
    .param p1, "callback"    # Laod$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 148
    iput-object p1, p0, Laod$c;->c:Laod$a;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Laod$c;->d:Z

    .line 150
    iget-object v0, p0, Laod$c;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Laod$c;->b:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    :cond_0
    return-void
.end method

.method final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 128
    iget-object v0, p0, Laod$c;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Laod$c;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 131
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Laod$c;->d:Z

    .line 132
    return-void
.end method

.method final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0}, Laod$c;->b()V

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Laod$c;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 142
    :goto_0
    iput-object v2, p0, Laod$c;->b:Landroid/os/Handler;

    .line 143
    iput-object v2, p0, Laod$c;->a:Landroid/os/HandlerThread;

    .line 144
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Laod$c;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/16 v1, 0x64

    .line 157
    if-eqz p1, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Laod$c;->b:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Laod$c;->c:Laod$a;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Laod$c;->c:Laod$a;

    invoke-interface {v0}, Laod$a;->a()V

    .line 161
    :cond_0
    iget-boolean v0, p0, Laod$c;->d:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Laod$c;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 164
    :cond_1
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

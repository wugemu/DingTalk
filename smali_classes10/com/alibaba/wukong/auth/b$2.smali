.class Lcom/alibaba/wukong/auth/b$2;
.super Ljava/lang/Object;
.source "AppStatusTracker.java"

# interfaces
.implements Lcom/alibaba/doraemon/impl/statistics/StatisticsTrigger$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/auth/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic l:Lcom/alibaba/wukong/auth/b;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/auth/b;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/wukong/auth/b;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackgroundSample()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/wukong/auth/b;->a(Lcom/alibaba/wukong/auth/b;Z)V

    .line 99
    return-void
.end method

.method public onEnterBackground()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/wukong/auth/b;->b(Lcom/alibaba/wukong/auth/b;Z)Z

    .line 88
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/wukong/auth/b;->a(Lcom/alibaba/wukong/auth/b;Z)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/b;->c(Lcom/alibaba/wukong/auth/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    invoke-static {v1}, Lcom/alibaba/wukong/auth/b;->b(Lcom/alibaba/wukong/auth/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/b;->d(Lcom/alibaba/wukong/auth/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/b;->c(Lcom/alibaba/wukong/auth/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    invoke-static {v1}, Lcom/alibaba/wukong/auth/b;->e(Lcom/alibaba/wukong/auth/b;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    :cond_0
    return-void
.end method

.method public onEnterForeground()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/wukong/auth/b;->b(Lcom/alibaba/wukong/auth/b;Z)Z

    .line 104
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    invoke-static {v0, v2}, Lcom/alibaba/wukong/auth/b;->a(Lcom/alibaba/wukong/auth/b;Z)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    invoke-static {v0, v2}, Lcom/alibaba/wukong/auth/b;->c(Lcom/alibaba/wukong/auth/b;Z)Z

    .line 107
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/b;->c(Lcom/alibaba/wukong/auth/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    invoke-static {v1}, Lcom/alibaba/wukong/auth/b;->e(Lcom/alibaba/wukong/auth/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/b;->f(Lcom/alibaba/wukong/auth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    invoke-static {v0}, Lcom/alibaba/wukong/auth/b;->c(Lcom/alibaba/wukong/auth/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    invoke-static {v1}, Lcom/alibaba/wukong/auth/b;->b(Lcom/alibaba/wukong/auth/b;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    :cond_0
    return-void
.end method

.method public onForegroundSample()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/wukong/auth/b$2;->l:Lcom/alibaba/wukong/auth/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/wukong/auth/b;->a(Lcom/alibaba/wukong/auth/b;Z)V

    .line 116
    return-void
.end method

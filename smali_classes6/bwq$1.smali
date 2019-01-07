.class final Lbwq$1;
.super Landroid/os/Handler;
.source "LivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbwq;


# direct methods
.method constructor <init>(Lbwq;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lbwq;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 110
    iput-object p1, p0, Lbwq$1;->a:Lbwq;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 113
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v1, p0, Lbwq$1;->a:Lbwq;

    invoke-static {v1}, Lbwq;->a(Lbwq;)V

    goto :goto_0

    .line 118
    :pswitch_1
    const-string/jumbo v1, "LIFECYCLE"

    .line 119
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 120
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    iget-object v2, p0, Lbwq$1;->a:Lbwq;

    invoke-static {v2}, Lbwq;->b(Lbwq;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lbws;->a(Landroid/app/Activity;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-virtual {v1}, Lbws;->i()V

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-virtual {v1}, Lbws;->d()V

    goto :goto_0

    .line 127
    :cond_1
    const-string/jumbo v1, "It\'s in background, should not show small view"

    .line 1013
    const-string/jumbo v2, "live"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

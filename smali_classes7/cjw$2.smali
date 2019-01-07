.class final Lcjw$2;
.super Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;
.source "FpsFrameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcjw;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcjw;


# direct methods
.method constructor <init>(Lcjw;)V
    .locals 0
    .param p1, "this$0"    # Lcjw;

    .prologue
    .line 71
    iput-object p1, p0, Lcjw$2;->a:Lcjw;

    invoke-direct {p0}, Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompatAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x2

    .line 81
    iget-object v0, p0, Lcjw$2;->a:Lcjw;

    invoke-static {v0}, Lcjw;->b(Lcjw;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    iget-object v0, p0, Lcjw$2;->a:Lcjw;

    invoke-static {v0}, Lcjw;->b(Lcjw;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 83
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 74
    iget-object v0, p0, Lcjw$2;->a:Lcjw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcjw;->a(Lcjw;I)I

    .line 75
    iget-object v0, p0, Lcjw$2;->a:Lcjw;

    invoke-static {v0}, Lcjw;->b(Lcjw;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    iget-object v0, p0, Lcjw$2;->a:Lcjw;

    invoke-static {v0}, Lcjw;->b(Lcjw;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 77
    return-void
.end method

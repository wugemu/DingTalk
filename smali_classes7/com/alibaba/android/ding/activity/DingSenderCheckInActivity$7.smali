.class final Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;
.super Ljava/lang/Object;
.source "DingSenderCheckInActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 526
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 529
    :cond_0
    const-class v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$1;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;)V

    new-instance v2, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$2;-><init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/util/concurrent/Callable;Landroid/os/Handler$Callback;)V

    goto :goto_0
.end method

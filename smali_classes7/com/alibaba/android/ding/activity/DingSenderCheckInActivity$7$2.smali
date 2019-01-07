.class final Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$2;
.super Ljava/lang/Object;
.source "DingSenderCheckInActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$2;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 550
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$2;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->s(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7$2;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$7;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->t(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 552
    return v1
.end method

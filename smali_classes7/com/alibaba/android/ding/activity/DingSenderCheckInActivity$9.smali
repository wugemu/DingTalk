.class final Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$9;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    .prologue
    .line 735
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$9;->b:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    iput-object p2, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$9;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$9;->b:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->u(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$9;->b:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->u(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$9;->b:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->u(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$9;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 743
    return-void
.end method

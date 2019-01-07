.class final Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$13;
.super Ljava/lang/Object;
.source "DingSenderCheckInActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 257
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$13;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$13;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity$13;->a:Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;->e(Lcom/alibaba/android/ding/activity/DingSenderCheckInActivity;)Ljava/lang/String;

    move-result-object v1

    .line 1413
    if-eqz v0, :cond_0

    .line 1416
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1419
    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v2, "https://qr.dingtalk.com/ding/check_in_detail"

    new-instance v3, Lbjv$27;

    invoke-direct {v3, v1}, Lbjv$27;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 261
    :cond_0
    return-void
.end method

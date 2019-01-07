.class final Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$3;
.super Ljava/lang/Object;
.source "DingCheckInDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$3;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

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
    .line 145
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$3;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;->a(Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;)Ljava/lang/String;

    move-result-object v0

    .line 1109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 145
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity$3;->a:Lcom/alibaba/android/ding/activity/DingCheckInDetailActivity;

    invoke-static {v0, v1, v2}, Lbkm;->a(JLcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 146
    return-void
.end method

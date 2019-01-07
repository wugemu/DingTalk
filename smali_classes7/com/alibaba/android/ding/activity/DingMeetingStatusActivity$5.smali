.class final Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$5;
.super Ljava/lang/Object;
.source "DingMeetingStatusActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$5;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 404
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 395
    .line 1398
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$5;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->k(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Lcom/alibaba/android/ding/widget/ScrollableViewPager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/ScrollableViewPager;->setCurrentItem(I)V

    .line 1399
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$5;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->l(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/indicator/PagerSlidingTabStrip;->setCurrentItem(I)V

    .line 395
    return-void
.end method

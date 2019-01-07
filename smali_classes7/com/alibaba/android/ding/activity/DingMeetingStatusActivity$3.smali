.class final Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$3;
.super Lckm$a;
.source "DingMeetingStatusActivity.java"


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
        "Lckm$a",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDingSent$StatusDing;",
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
    .line 361
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$3;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 361
    .line 1364
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v3, "[DingMeetingStatusActivity]StatusObserver."

    aput-object v3, v2, v1

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 1365
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$3;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->e(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Layk;

    move-result-object v2

    .line 2091
    iget-object v2, v2, Layk;->c:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 1365
    if-eqz v2, :cond_0

    .line 1366
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$3;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->e(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)Layk;

    move-result-object v2

    .line 3091
    iget-object v2, v2, Layk;->c:Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;

    .line 1366
    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity$3;->a:Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;->d(Lcom/alibaba/android/ding/activity/DingMeetingStatusActivity;)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/alibaba/android/ding/fragment/DingMeetingStatusV2Fragment;->a(Z)V

    .line 361
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1366
    goto :goto_0
.end method

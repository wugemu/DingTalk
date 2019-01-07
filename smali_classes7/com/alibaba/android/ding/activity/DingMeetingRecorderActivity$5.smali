.class final Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$5;
.super Ljava/lang/Object;
.source "DingMeetingRecorderActivity.java"

# interfaces
.implements Lbht$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$5;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 3
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    const-string/jumbo v0, "[DingMeetingRecorderPage]getRecorder failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "userProfile is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$5;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->finish()V

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$5;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 222
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingMeetingRecorderActivity] getRecorder userProfile failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 223
    sget v0, Laxp$i;->dt_errmsg_network_abnormal:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 224
    return-void
.end method

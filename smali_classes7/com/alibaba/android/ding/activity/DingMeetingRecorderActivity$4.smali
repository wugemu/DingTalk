.class final Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;
.super Ljava/lang/Object;
.source "DingMeetingRecorderActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;
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
        "Lbfv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string/jumbo v0, "[DingMeetingRecorderPage]queryMeetingMinutes failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->finish()V

    .line 188
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 165
    check-cast p1, Lbfv;

    .line 1168
    if-nez p1, :cond_0

    .line 1169
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingMeetingRecorderActivity] meetingMinutes is null"

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1170
    :goto_0
    return-void

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;Lbfv;)Lbfv;

    .line 1173
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    invoke-static {v1, p1}, Lbkh;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbfv;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;Z)Z

    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->supportInvalidateOptionsMenu()V

    .line 1175
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->e(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4$1;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;Lbfv;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;->b(Lcom/alibaba/android/ding/activity/DingMeetingRecorderActivity;)V

    goto :goto_0
.end method

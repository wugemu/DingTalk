.class final Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$4;
.super Ljava/lang/Object;
.source "DingMeetingRecorderEditActivity.java"

# interfaces
.implements Lbhu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 218
    const-string/jumbo v0, "[DingMeetingReorderEditPage]getUserIdentities failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->finish()V

    .line 220
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->b(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->b(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$4;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->d(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)Layj;

    move-result-object v0

    invoke-virtual {v0}, Layj;->notifyDataSetChanged()V

    .line 214
    return-void
.end method

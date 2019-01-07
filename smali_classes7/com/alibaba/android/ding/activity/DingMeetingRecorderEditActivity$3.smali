.class final Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$3;
.super Ljava/lang/Object;
.source "DingMeetingRecorderEditActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$3;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 173
    check-cast p1, Ljava/util/List;

    .line 1176
    if-nez p1, :cond_0

    .line 1177
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$3;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->g(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    invoke-static {p1}, Lbkf;->a(Ljava/lang/Iterable;)V

    .line 1181
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$3;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;Ljava/util/List;)V

    .line 173
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$3;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->finish()V

    .line 191
    const-string/jumbo v0, "[DingMeetingReorderEditPage]getReceiverUids failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 186
    return-void
.end method

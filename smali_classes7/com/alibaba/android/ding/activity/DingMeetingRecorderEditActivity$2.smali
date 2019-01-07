.class final Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$2;
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
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 117
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1120
    if-nez p1, :cond_0

    .line 1121
    const-string/jumbo v0, "[DingMeetingReorderEditPage]handleIntent failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->finish()V

    .line 1123
    :goto_0
    return-void

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->a(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;Lcom/alibaba/android/ding/base/objects/ObjectDing;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1126
    invoke-static {}, Lbhi;->a()Lbhi;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v0

    .line 2109
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1126
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    new-instance v0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$2$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$2$1;-><init>(Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$2;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    const-class v6, Lcom/alibaba/wukong/Callback;

    iget-object v7, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    .line 1127
    invoke-static {v0, v6, v7}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/Callback;

    .line 1126
    invoke-virtual/range {v1 .. v6}, Lbhi;->a(JJLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string/jumbo v0, "[DingMeetingReorderEditPage]find ding failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity$2;->a:Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMeetingRecorderEditActivity;->finish()V

    .line 168
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 162
    return-void
.end method

.class final Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$1;
.super Ljava/lang/Object;
.source "LiveReplayListActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)V

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "LiveReplayListActivity getConversation failed, code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1013
    const-string/jumbo v1, "live"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 72
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1075
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)V

    .line 1077
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$1;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->supportInvalidateOptionsMenu()V

    .line 72
    return-void
.end method

.class final Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$2;
.super Ljava/lang/Object;
.source "LiveRenameActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$2;->b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$2;->a:Ljava/lang/String;

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
    .line 123
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$2;->b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->dismissLoadingDialog()V

    .line 124
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "renameLiveRecord error code="

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

    .line 127
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 113
    .line 1116
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$2;->b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->dismissLoadingDialog()V

    .line 1117
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$2;->b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;Ljava/lang/String;)V

    .line 1118
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity$2;->b:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveRenameActivity;->finish()V

    .line 113
    return-void
.end method

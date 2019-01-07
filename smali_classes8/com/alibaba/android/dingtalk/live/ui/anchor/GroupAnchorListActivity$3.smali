.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$3;
.super Ljava/lang/Object;
.source "GroupAnchorListActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->a()V
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
        "Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorRspObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->dismissLoadingDialog()V

    .line 218
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Failed listAnchors, error code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ", reason="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 206
    check-cast p1, Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorRspObject;

    .line 1209
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->dismissLoadingDialog()V

    .line 1210
    if-eqz p1, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$3;->a:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/ListAnchorRspObject;->anchors:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->a(Ljava/util/List;)V

    .line 206
    :cond_0
    return-void
.end method

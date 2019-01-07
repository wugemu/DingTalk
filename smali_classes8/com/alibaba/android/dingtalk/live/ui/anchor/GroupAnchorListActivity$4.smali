.class final Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$4;
.super Ljava/lang/Object;
.source "GroupAnchorListActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;
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
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$4;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$4;->a:J

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
    .line 279
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Failed delAnchors, error code="

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

    .line 281
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$4;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->dismissLoadingDialog()V

    .line 283
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 270
    .line 1273
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$4;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;)Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;

    move-result-object v2

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$4;->a:J

    .line 1421
    const/4 v1, 0x0

    .line 1422
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1423
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1424
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;

    .line 1425
    if-eqz v0, :cond_0

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/live/rpc/model/AnchorObject;->id:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_0

    .line 1426
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1427
    const/4 v0, 0x1

    .line 1431
    :goto_0
    if-eqz v0, :cond_1

    .line 1432
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$a;->notifyDataSetChanged()V

    .line 1274
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity$4;->b:Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/anchor/GroupAnchorListActivity;->dismissLoadingDialog()V

    .line 270
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.class final Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;
.super Ljava/lang/Object;
.source "LiveLinkListActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a(Ljava/util/List;Ljava/util/List;I)V
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
        "Lbvv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;Ljava/util/List;Ljava/util/List;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;->e:Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;->b:Ljava/util/List;

    iput p4, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;->c:I

    iput p5, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 507
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "shareTo failed code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", index="

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;->d:I

    .line 508
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 507
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;->e:Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;->a:Ljava/util/List;

    iget v3, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;Ljava/util/List;Ljava/util/List;I)V

    .line 511
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 492
    check-cast p1, Lbvv;

    .line 1495
    if-eqz p1, :cond_0

    iget-object v0, p1, Lbvv;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbvv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;->a:Ljava/util/List;

    iget-object v1, p1, Lbvv;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1502
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;->e:Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;->a:Ljava/util/List;

    iget v3, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$8;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;Ljava/util/List;Ljava/util/List;I)V

    .line 492
    return-void

    .line 1498
    :cond_0
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const-string/jumbo v2, "shareTo return success, but return ShareToRspModel or it\'s successCids is empty"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

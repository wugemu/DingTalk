.class final Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$2;
.super Ljava/lang/Object;
.source "LiveLinkListActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;
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
        "Lbvj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

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
    .line 164
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->dismissLoadingDialog()V

    .line 165
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v0, "live"

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "loadData failed code="

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

    .line 168
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 148
    check-cast p1, Lbvj;

    .line 1151
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->dismissLoadingDialog()V

    .line 1152
    if-eqz p1, :cond_1

    .line 1153
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    iget-object v1, p1, Lbvj;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;Ljava/util/List;)V

    .line 1154
    iget-object v0, p1, Lbvj;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbvj;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lbvj;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity$2;->a:Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/link/LiveLinkListActivity;)V

    goto :goto_0
.end method

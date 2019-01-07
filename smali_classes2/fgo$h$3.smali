.class final Lfgo$h$3;
.super Ljava/lang/Object;
.source "NewRequestAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgo$h;->a(ILfgm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgm;

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

.field final synthetic d:Lfgo$h;


# direct methods
.method constructor <init>(Lfgo$h;Lfgm;ILcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V
    .locals 0
    .param p1, "this$0"    # Lfgo$h;

    .prologue
    .line 512
    iput-object p1, p0, Lfgo$h$3;->d:Lfgo$h;

    iput-object p2, p0, Lfgo$h$3;->a:Lfgm;

    iput p3, p0, Lfgo$h$3;->b:I

    iput-object p4, p0, Lfgo$h$3;->c:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 517
    iget-object v0, p0, Lfgo$h$3;->a:Lfgm;

    iget v0, v0, Lfgm;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 518
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfgo$h$3;->d:Lfgo$h;

    .line 1241
    iget-object v1, v1, Lfgo$h;->b:Landroid/app/Activity;

    .line 518
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/org_apply_detail.html"

    new-instance v2, Lfgo$h$3$1;

    invoke-direct {v2, p0}, Lfgo$h$3$1;-><init>(Lfgo$h$3;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 555
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfgo$h$3;->c:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->TO_ACCEPT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 530
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lfgo$h$3;->c:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v1, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->ACCEPTED:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 531
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 533
    :cond_2
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfgo$h$3;->d:Lfgo$h;

    .line 2241
    iget-object v1, v1, Lfgo$h;->b:Landroid/app/Activity;

    .line 533
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/accept_friend"

    new-instance v2, Lfgo$h$3$2;

    invoke-direct {v2, p0}, Lfgo$h$3$2;-><init>(Lfgo$h$3;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 543
    :cond_3
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfgo$h$3;->d:Lfgo$h;

    .line 3241
    iget-object v1, v1, Lfgo$h;->b:Landroid/app/Activity;

    .line 543
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    .line 544
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfgo$h$3$3;

    invoke-direct {v2, p0}, Lfgo$h$3$3;-><init>(Lfgo$h$3;)V

    .line 543
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.class final Lfgo$h$4;
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
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lfgm;

.field final synthetic d:Lfgo$h;


# direct methods
.method constructor <init>(Lfgo$h;Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;Lfgm;)V
    .locals 0
    .param p1, "this$0"    # Lfgo$h;

    .prologue
    .line 567
    iput-object p1, p0, Lfgo$h$4;->d:Lfgo$h;

    iput-object p2, p0, Lfgo$h$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iput-object p3, p0, Lfgo$h$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lfgo$h$4;->c:Lfgm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 571
    iget-object v3, p0, Lfgo$h$4;->d:Lfgo$h;

    .line 1241
    iget-object v1, v3, Lfgo$h;->d:Ljava/lang/String;

    .line 573
    .local v1, "fromPage":Ljava/lang/String;
    iget-object v3, p0, Lfgo$h$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->INTRODUCE:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lfgo$h$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->SENT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    .line 574
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 576
    :cond_0
    iget-object v3, p0, Lfgo$h$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->status:I

    sget-object v4, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->SENT:Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/model/FriendRequestObject$FriendRequestStatus;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 577
    const-string/jumbo v0, "friend_recommend_addag_click"

    .line 581
    .local v0, "ctrlName":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lfgo$h$4;->d:Lfgo$h;

    .line 2241
    iget-boolean v3, v3, Lfgo$h;->h:Z

    .line 581
    if-eqz v3, :cond_1

    .line 582
    const-string/jumbo v0, "add_excolleague_friend_add_button"

    .line 585
    :cond_1
    const-string/jumbo v3, "NAVIGATOR"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v4, p0, Lfgo$h$4;->d:Lfgo$h;

    .line 3241
    iget-object v4, v4, Lfgo$h;->b:Landroid/app/Activity;

    .line 585
    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v3

    const-string/jumbo v4, "https://qr.dingtalk.com/page/sendfriendrequest"

    new-instance v5, Lfgo$h$4$1;

    invoke-direct {v5, p0}, Lfgo$h$4$1;-><init>(Lfgo$h$4;)V

    invoke-interface {v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 605
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 606
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 607
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "source"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 610
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void

    .line 579
    .end local v0    # "ctrlName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "friend_recommend_add_click"

    .restart local v0    # "ctrlName":Ljava/lang/String;
    goto :goto_0

    .line 598
    .end local v0    # "ctrlName":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "friend_recommend_accept_click"

    .line 599
    .restart local v0    # "ctrlName":Ljava/lang/String;
    iget-object v3, p0, Lfgo$h$4;->d:Lfgo$h;

    .line 4241
    iget-boolean v3, v3, Lfgo$h;->h:Z

    .line 599
    if-eqz v3, :cond_5

    .line 600
    const-string/jumbo v0, "add_excolleague_friend_accept_button"

    .line 602
    :cond_5
    iget-object v3, p0, Lfgo$h$4;->d:Lfgo$h;

    .line 5241
    iget-object v3, v3, Lfgo$h;->c:Lfgo$h$a;

    .line 602
    iget-object v4, p0, Lfgo$h$4;->a:Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    iget-object v5, p0, Lfgo$h$4;->b:Ljava/lang/String;

    iget-object v6, p0, Lfgo$h$4;->c:Lfgm;

    iget v6, v6, Lfgm;->b:I

    invoke-interface {v3, v4, v5, v6}, Lfgo$h$a;->a(Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;I)V

    goto :goto_1
.end method

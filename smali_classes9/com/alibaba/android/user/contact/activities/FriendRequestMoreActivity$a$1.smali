.class final Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a$1;
.super Ljava/lang/Object;
.source "FriendRequestMoreActivity.java"

# interfaces
.implements Lfgo$h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 551
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->b:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->b:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    move-result-object v1

    .line 1326
    iget-boolean v0, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->a:Z

    if-nez v0, :cond_0

    .line 1329
    iget-object v0, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    if-ltz p1, :cond_0

    iget-object v0, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1333
    :cond_0
    :goto_0
    return-void

    .line 1335
    :cond_1
    iget-object v0, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;

    .line 1336
    if-eqz v0, :cond_0

    .line 1339
    iget-object v2, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->showLoadingDialog()V

    .line 1340
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->a:Z

    .line 1341
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v2

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    new-instance v3, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;

    invoke-direct {v3, v1, p1, v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$3;-><init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;ILcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;)V

    const-class v0, Lcma;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v3, v0, v1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v2, v4, v5, v0}, Lezv;->b(JLcma;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;I)V
    .locals 6
    .param p1, "newRequestObject"    # Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 558
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->b:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a$1;->a:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;

    iget-object v0, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$a;->b:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->a(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;)Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;

    move-result-object v0

    .line 1371
    if-eqz p1, :cond_0

    .line 1374
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1375
    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-static {v1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/accept_friend"

    new-instance v3, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$4;

    invoke-direct {v3, v0, p1, p2}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$4;-><init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    :cond_0
    :goto_0
    return-void

    .line 1386
    :cond_1
    iget-object v1, v0, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;->f:Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity;->showLoadingDialog()V

    .line 1387
    invoke-static {}, Lfap;->a()Lezv;

    move-result-object v1

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;->id:J

    const/4 v4, 0x0

    new-instance v5, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;

    invoke-direct {v5, v0, p1, p2}, Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b$5;-><init>(Lcom/alibaba/android/user/contact/activities/FriendRequestMoreActivity$b;Lcom/alibaba/android/dingtalk/userbase/model/NewRequestObject;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lezv;->a(JZLcma;)V

    goto :goto_0
.end method

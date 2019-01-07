.class final Lcom/alibaba/android/ding/activity/DingMembersActivity$8;
.super Lcom/alibaba/android/ding/activity/DingMembersActivity$a;
.source "DingMembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingMembersActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMembersActivity;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/activity/DingMembersActivity$a;-><init>(Lcom/alibaba/android/ding/activity/DingMembersActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->b(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 390
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->h(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a()V

    .line 391
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->n(Lcom/alibaba/android/ding/activity/DingMembersActivity;)V

    .line 392
    return-void
.end method

.method public final a(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 401
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->a(Lcom/alibaba/android/ding/activity/DingMembersActivity;I)I

    .line 402
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->supportInvalidateOptionsMenu()V

    .line 403
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 2
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->b(Lcom/alibaba/android/ding/activity/DingMembersActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 302
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 311
    .local p1, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    sget v5, Laxp$i;->loading:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v1

    .line 312
    .local v1, "userProfileLoadingDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 313
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->g(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 314
    const-string/jumbo v2, "THREAD"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 315
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v2, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 316
    new-instance v2, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$1;-><init>(Lcom/alibaba/android/ding/activity/DingMembersActivity$8;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method public final b()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 396
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->b(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->e(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 2
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->a(Lcom/alibaba/android/ding/activity/DingMembersActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 307
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 351
    .local p1, "userIdentityObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    sget v5, Laxp$i;->loading:I

    invoke-virtual {v4, v5}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v1

    .line 352
    .local v1, "userProfileLoadingDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 353
    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v3}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->g(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 354
    const-string/jumbo v2, "THREAD"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 355
    .local v0, "queueThread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v2, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 356
    new-instance v2, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity$8$2;-><init>(Lcom/alibaba/android/ding/activity/DingMembersActivity$8;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 385
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 411
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->g(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$8;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->g(Lcom/alibaba/android/ding/activity/DingMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 414
    :cond_0
    return-void
.end method

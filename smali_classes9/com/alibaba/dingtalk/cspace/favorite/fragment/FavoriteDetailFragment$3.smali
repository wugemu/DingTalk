.class final Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;
.super Ljava/lang/Object;
.source "FavoriteDetailFragment.java"

# interfaces
.implements Lgau$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->d:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object p4, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 6
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->d:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->b(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->d:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 351
    if-nez p1, :cond_2

    .line 352
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    .line 353
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getUid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "nick":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getCid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getCid()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    :goto_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->d:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    sget v5, Lfzs$h;->dt_accessibility_avatar:I

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 356
    .end local v2    # "nick":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .restart local v2    # "nick":Ljava/lang/String;
    goto :goto_1

    .line 361
    .end local v2    # "nick":Ljava/lang/String;
    :cond_3
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .restart local v2    # "nick":Ljava/lang/String;
    goto :goto_1

    .line 368
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->d:Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getCid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment$3;->a:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getOrgId()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;->a(Lcom/alibaba/dingtalk/cspace/favorite/fragment/FavoriteDetailFragment;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2
.end method

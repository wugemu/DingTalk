.class final Lgaw$2;
.super Ljava/lang/Object;
.source "AbsFavoriteViewHolder.java"

# interfaces
.implements Lgau$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgaw;->b(Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field final synthetic c:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

.field final synthetic d:Lgaw;


# direct methods
.method constructor <init>(Lgaw;JLcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lgaw;

    .prologue
    .line 248
    iput-object p1, p0, Lgaw$2;->d:Lgaw;

    iput-wide p2, p0, Lgaw$2;->a:J

    iput-object p4, p0, Lgaw$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object p5, p0, Lgaw$2;->c:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 6
    .param p1, "userProfile"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 251
    iget-object v2, p0, Lgaw$2;->d:Lgaw;

    iget-object v2, v2, Lgaw;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 252
    .local v0, "uidTag":J
    iget-wide v2, p0, Lgaw$2;->a:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 253
    iget-object v2, p0, Lgaw$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lgaw$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget v5, Lfzs$h;->dt_accessibility_avatar:I

    invoke-static {v5}, Lgaw;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v2, p0, Lgaw$2;->c:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lgaw$2;->c:Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getCid()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    :cond_0
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    iget-object v2, p0, Lgaw$2;->d:Lgaw;

    iget-object v2, v2, Lgaw;->c:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    iget-object v2, p0, Lgaw$2;->d:Lgaw;

    iget-object v2, v2, Lgaw;->c:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

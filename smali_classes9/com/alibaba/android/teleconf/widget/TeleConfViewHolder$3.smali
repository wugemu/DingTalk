.class final Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;
.super Ljava/lang/Object;
.source "TeleConfViewHolder.java"

# interfaces
.implements Lezd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 6
    .param p1, "oldStatus"    # I
    .param p2, "status"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v2, 0x8

    .line 238
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;)Lezd;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;)Lezd;

    move-result-object v1

    iget-object v1, v1, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v1, :cond_0

    .line 239
    invoke-static {p2, p1}, Lezd;->a(II)I

    move-result v0

    .line 240
    .local v0, "animType":I
    if-ne v0, v3, :cond_1

    .line 241
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 242
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;)Lezd;

    move-result-object v2

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;)Lezd;

    move-result-object v3

    iget-object v3, v3, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->invalidate()V

    .line 244
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    sget v2, Leuj$h;->conf_icon_offline:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->setImageResource(I)V

    .line 245
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->setVisibility(I)V

    .line 246
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3$1;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    .end local v0    # "animType":I
    :cond_0
    :goto_0
    return-void

    .line 252
    .restart local v0    # "animType":I
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 253
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iput-boolean v3, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->h:Z

    .line 255
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 257
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v2, Leuj$h;->conf_icon_offline:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 258
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1, v5, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->invalidate()V

    .line 260
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;)Lezd;

    move-result-object v2

    iget-object v2, v2, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->b(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;)Lezd;

    move-result-object v3

    iget-object v3, v3, Lezd;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->setVisibility(I)V

    .line 263
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3$2;-><init>(Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->e:Lcom/alibaba/android/teleconf/widget/TeleConfImageView;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/teleconf/widget/TeleConfImageView;->setVisibility(I)V

    .line 273
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder$3;->a:Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/widget/TeleConfViewHolder;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->invalidate()V

    goto :goto_0
.end method

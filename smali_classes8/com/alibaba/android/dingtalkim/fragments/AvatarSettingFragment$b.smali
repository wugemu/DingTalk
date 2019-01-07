.class final Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;
.super Ljava/lang/Object;
.source "AvatarSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public b:Landroid/view/View;

.field public c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public d:Landroid/view/View;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Landroid/view/View;)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x4b

    .line 268
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->e:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    if-eqz p2, :cond_0

    .line 270
    sget v0, Lctk$f;->top_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 271
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTFSImageSize(I)V

    .line 272
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    sget v0, Lctk$f;->top_avatar_select:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->b:Landroid/view/View;

    .line 274
    sget v0, Lctk$f;->bottom_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTFSImageSize(I)V

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    sget v0, Lctk$f;->bottom_avatar_select:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->d:Landroid/view/View;

    .line 279
    :cond_0
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;

    .line 284
    .local v1, "data":Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;
    if-eqz v1, :cond_0

    .line 285
    iget v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->a:I

    if-ne v2, v4, :cond_1

    .line 286
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "album_single"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    const-string/jumbo v2, "album_need_crop"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    const-string/jumbo v2, "album_need_preview"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->e:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->e:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 301
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 292
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->e:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->e:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-static {v2, v4}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Z)Z

    .line 294
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->e:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->c()V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->e:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    iget-object v3, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->e:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-static {v2, v5}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Z)Z

    .line 298
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->e:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->c()V

    goto :goto_0
.end method

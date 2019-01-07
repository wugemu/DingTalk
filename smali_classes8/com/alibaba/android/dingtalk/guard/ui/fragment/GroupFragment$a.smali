.class final Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;
.super Landroid/widget/BaseAdapter;
.source "GroupFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 407
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 417
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 422
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 428
    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;)V

    .line 429
    .local v3, "holder":Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;
    if-nez p2, :cond_0

    .line 430
    new-instance v0, Lecw;

    sget v4, Lbrx$g;->icon_checkbox_fill:I

    invoke-static {v4}, Leda;->a(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lbrx$b;->ui_common_theme_icon_bg_color:I

    .line 431
    invoke-static {v5}, Leda;->b(I)I

    move-result v5

    invoke-direct {v0, v4, v5}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 432
    .local v0, "checkedDrawable":Lecw;
    iput-object v0, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->f:Landroid/graphics/drawable/Drawable;

    .line 433
    new-instance v1, Lecw;

    sget v4, Lbrx$g;->icon_checkbox:I

    invoke-static {v4}, Leda;->a(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lbrx$b;->ui_common_level1_icon_bg_color:I

    .line 434
    invoke-static {v5}, Leda;->b(I)I

    move-result v5

    invoke-direct {v1, v4, v5}, Lecw;-><init>(Ljava/lang/String;I)V

    .line 435
    .local v1, "drawable":Lecw;
    iput-object v1, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->g:Landroid/graphics/drawable/Drawable;

    .line 437
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lbrx$e;->device_config_item_org:I

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 438
    sget v4, Lbrx$d;->tv_avatar:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 439
    sget v4, Lbrx$d;->tv_main_org:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->b:Landroid/widget/TextView;

    .line 440
    sget v4, Lbrx$d;->tv_content:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->c:Landroid/widget/TextView;

    .line 441
    sget v4, Lbrx$d;->icon_selected:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->d:Landroid/widget/ImageView;

    .line 442
    sget v4, Lbrx$d;->tv_permission_tips:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->e:Landroid/widget/TextView;

    .line 443
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 448
    .end local v0    # "checkedDrawable":Lecw;
    .end local v1    # "drawable":Lecw;
    :goto_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->g(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    .line 449
    .local v2, "groupData":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->c:Landroid/widget/TextView;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->e(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;->a:Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;->e(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 453
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->d:Landroid/widget/ImageView;

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 459
    :goto_1
    iget-boolean v4, v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isMainOrg:Z

    if-eqz v4, :cond_2

    .line 460
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    :goto_2
    iget-boolean v4, v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->isAdmin:Z

    if-eqz v4, :cond_3

    .line 466
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    :goto_3
    new-instance v4, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a;Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const-string/jumbo v5, ""

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->mediaId:Ljava/lang/String;

    .line 1167
    invoke-virtual {v4, v5, v6, v8}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 506
    return-object p2

    .line 445
    .end local v2    # "groupData":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "holder":Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;
    check-cast v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;

    .restart local v3    # "holder":Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;
    goto :goto_0

    .line 456
    .restart local v2    # "groupData":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    :cond_1
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->d:Landroid/widget/ImageView;

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 462
    :cond_2
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 468
    :cond_3
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/GroupFragment$a$a;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.class public final Lgbh;
.super Lgbi;
.source "FavoriteSpaceViewHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lgbi;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lfzs$g;->fav_item_text_pic_sub:I

    return v0
.end method

.method protected final a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;ILandroid/view/ViewGroup;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "favViewModel"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .param p3, "position"    # I
    .param p4, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Lgbi;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;ILandroid/view/ViewGroup;)V

    .line 37
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v0

    .line 38
    .local v0, "extend":Ljava/lang/Object;
    if-eqz v0, :cond_3

    instance-of v4, v0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;

    if-eqz v4, :cond_3

    move-object v1, v0

    .line 39
    check-cast v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;

    .line 40
    .local v1, "spaceModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;
    iget-object v4, p0, Lgbh;->g:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 41
    iget-object v4, p0, Lgbh;->g:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->getFileType()Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-static {v5, v6}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 41
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1055
    :cond_0
    iget-object v4, p0, Lgbh;->h:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 1058
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->isEncrypt()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    .line 1059
    :goto_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->isESafeNetEncrypt()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1060
    :goto_1
    if-nez v4, :cond_1

    if-eqz v2, :cond_7

    .line 1061
    :cond_1
    iget-object v4, p0, Lgbh;->h:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1062
    iget-object v3, p0, Lgbh;->h:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    sget v2, Lfzs$e;->blue_safe_icon:I

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    :cond_2
    :goto_3
    iget-object v2, p0, Lgbh;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 49
    iget-object v2, p0, Lgbh;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;->getFileSize()J

    move-result-wide v4

    .line 2046
    invoke-static {v4, v5}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .end local v1    # "spaceModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;
    :cond_3
    return-void

    .restart local v1    # "spaceModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavSpaceModel;
    :cond_4
    move v4, v3

    .line 1058
    goto :goto_0

    :cond_5
    move v2, v3

    .line 1059
    goto :goto_1

    .line 1062
    :cond_6
    sget v2, Lfzs$e;->avatar_safe_icon:I

    goto :goto_2

    .line 1064
    :cond_7
    iget-object v2, p0, Lgbh;->h:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public final b(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 27
    invoke-super {p0, p1}, Lgbi;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 28
    .local v0, "rootView":Landroid/view/View;
    iget-object v1, p0, Lgbh;->k:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lgbh;->k:Landroid/view/View;

    sget v2, Lfzs$f;->img_encrpt_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lgbh;->h:Landroid/widget/ImageView;

    .line 31
    :cond_0
    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lgbh;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lfzs$h;->dt_accessibility_fav_type_file:I

    .line 71
    invoke-static {v2}, Lgbh;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lgbh;->e:Landroid/widget/TextView;

    .line 72
    invoke-static {v2}, Lgbh;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lgbh;->f:Landroid/widget/TextView;

    .line 73
    invoke-static {v2}, Lgbh;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 70
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

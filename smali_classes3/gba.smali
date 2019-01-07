.class public final Lgba;
.super Lgbi;
.source "FavoriteFileViewHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lgbi;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lfzs$g;->fav_item_text_pic_sub:I

    return v0
.end method

.method protected final a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;ILandroid/view/ViewGroup;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "favViewModel"    # Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;
    .param p3, "position"    # I
    .param p4, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lgbi;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;ILandroid/view/ViewGroup;)V

    .line 28
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getContent()Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavContentViewModel;->getExtend()Ljava/lang/Object;

    move-result-object v0

    .line 29
    .local v0, "extend":Ljava/lang/Object;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 30
    check-cast v1, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;

    .line 31
    .local v1, "fileModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;
    iget-object v2, p0, Lgba;->g:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 32
    iget-object v2, p0, Lgba;->g:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 33
    iget-object v2, p0, Lgba;->g:Landroid/widget/ImageView;

    .line 34
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavViewModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->getExtension()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-static {v3, v4}, Lgpx;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 33
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    :cond_0
    iget-object v2, p0, Lgba;->f:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 39
    iget-object v2, p0, Lgba;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;->getSize()J

    move-result-wide v4

    .line 1046
    invoke-static {v4, v5}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .end local v1    # "fileModel":Lcom/alibaba/dingtalk/cspace/favorite/viewmodel/FavFileModel;
    :cond_1
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lgba;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lfzs$h;->dt_accessibility_fav_type_file:I

    invoke-static {v2}, Lgba;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lgba;->e:Landroid/widget/TextView;

    invoke-static {v2}, Lgba;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

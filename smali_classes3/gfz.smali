.class public final Lgfz;
.super Landroid/widget/FrameLayout;
.source "SpaceRecentImageFrameView.java"


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field final d:I

.field final e:I

.field final f:Landroid/widget/ImageView;

.field g:Landroid/widget/TextView;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const-string/jumbo v1, "imgv"

    iput-object v1, p0, Lgfz;->h:Ljava/lang/String;

    .line 47
    const-string/jumbo v1, "itv"

    iput-object v1, p0, Lgfz;->i:Ljava/lang/String;

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Lgfz;->a:I

    .line 50
    iput v3, p0, Lgfz;->b:I

    .line 51
    iput-boolean v3, p0, Lgfz;->c:Z

    .line 59
    iput p2, p0, Lgfz;->d:I

    .line 60
    iput p3, p0, Lgfz;->e:I

    .line 61
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lgfz;->f:Landroid/widget/ImageView;

    .line 62
    iget-object v1, p0, Lgfz;->f:Landroid/widget/ImageView;

    iget v2, p0, Lgfz;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 63
    iget-object v1, p0, Lgfz;->f:Landroid/widget/ImageView;

    iget v2, p0, Lgfz;->d:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 64
    iget-object v1, p0, Lgfz;->f:Landroid/widget/ImageView;

    const-string/jumbo v2, "imgv"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 65
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    .local v0, "fparams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lgfz;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v3, v0}, Lgfz;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 149
    iget-object v0, p0, Lgfz;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lgfz;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lgfz;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;Landroid/widget/AbsListView;)V
    .locals 12
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    .param p3, "listView"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 76
    invoke-static {}, Lgfw;->b()Lgfw;

    move-result-object v11

    .line 77
    .local v11, "instance":Lgfw;
    if-eqz v11, :cond_0

    .line 1119
    iget-object v0, v11, Lgfw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 77
    if-eqz v0, :cond_0

    .line 2119
    iget-object v10, v11, Lgfw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 83
    .local v10, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :goto_0
    iget-object v0, p0, Lgfz;->f:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 85
    if-eqz v11, :cond_1

    .line 86
    iget-object v0, p0, Lgfz;->f:Landroid/widget/ImageView;

    invoke-static {v0, p2}, Lgfw;->a(Landroid/view/View;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)V

    .line 87
    invoke-virtual {v11, p2}, Lgfw;->a(Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lgfz;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1, p3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 89
    iget-object v0, p0, Lgfz;->f:Landroid/widget/ImageView;

    sget v1, Lfzs$e;->cspace_recent_default_image:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    :goto_1
    return-void

    .line 80
    .end local v10    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    :cond_0
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/doraemon/image/ImageMagician;

    .restart local v10    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    goto :goto_0

    .line 2246
    :cond_1
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 93
    invoke-interface {v0, p1}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "accessToken":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Lgfz;->f:Landroid/widget/ImageView;

    sget v1, Lfzs$e;->cspace_recent_default_image:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->spaceId:Ljava/lang/String;

    iget-object v3, p2, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->serverId:Ljava/lang/String;

    iget-object v4, p2, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->path:Ljava/lang/String;

    .line 97
    invoke-static {v3, v4}, Lfzu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->name:Ljava/lang/String;

    const/4 v5, 0x0

    .line 98
    invoke-static {v4, v5}, Lgpx;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x100

    const/16 v6, 0x100

    const/16 v7, 0x3c

    .line 96
    invoke-virtual/range {v0 .. v7}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "url":Ljava/lang/String;
    iget-object v1, p0, Lgfz;->f:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v9}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    move-object v0, v10

    move-object v3, p3

    invoke-interface/range {v0 .. v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    .line 101
    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lgfz;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1, p3}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 102
    iget-object v0, p0, Lgfz;->f:Landroid/widget/ImageView;

    sget v1, Lfzs$e;->cspace_recent_default_image:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

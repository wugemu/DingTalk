.class public final Lggj;
.super Lggg;
.source "ImageRecentViewHolder.java"


# instance fields
.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    const/4 v0, 0x2

    sget v1, Lfzs$g;->cspace_recent_item_content_image:I

    invoke-direct {p0, p1, v0, v1}, Lggg;-><init>(Landroid/app/Activity;II)V

    .line 55
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ImageView;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;Landroid/widget/AbsListView;)V
    .locals 12
    .param p0, "baseActivity"    # Landroid/app/Activity;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "imageMagician"    # Lcom/alibaba/doraemon/image/ImageMagician;
    .param p3, "imageView"    # Landroid/widget/ImageView;
    .param p4, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    .param p5, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    .line 85
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 86
    invoke-static {}, Lgfw;->b()Lgfw;

    move-result-object v11

    .line 87
    .local v11, "instance":Lgfw;
    if-eqz v11, :cond_0

    .line 1119
    iget-object v1, v11, Lgfw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 87
    if-eqz v1, :cond_0

    .line 2119
    iget-object p2, v11, Lgfw;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 90
    :cond_0
    if-eqz p4, :cond_3

    .line 92
    if-eqz v11, :cond_1

    .line 93
    invoke-static/range {p3 .. p4}, Lgfw;->a(Landroid/view/View;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)V

    .line 96
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Lgfw;->a(Lcom/alibaba/alimei/cspace/model/RecentDentryModel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {p2, p3, v1, v0}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 98
    new-instance v1, Lggj$1;

    invoke-direct {v1}, Lggj$1;-><init>()V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget v1, Lfzs$e;->cspace_recent_default_image:I

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    :goto_0
    return-void

    .line 109
    :cond_1
    sget v1, Lfzs$e;->cspace_recent_default_image:I

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 110
    invoke-interface {v1, p1}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, "accessToken":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 112
    invoke-static {}, Lgqc;->a()Lgqc;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->spaceId:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->serverId:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->path:Ljava/lang/String;

    .line 113
    invoke-static {v4, v5}, Lfzu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;->name:Ljava/lang/String;

    const/4 v6, 0x0

    .line 114
    invoke-static {v5, v6}, Lgpx;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x100

    const/16 v7, 0x100

    const/16 v8, 0x3c

    .line 112
    invoke-virtual/range {v1 .. v8}, Lgqc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "url":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v10}, Lgpr;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v4, p5

    invoke-interface/range {v1 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;Ljava/util/Map;)V

    .line 117
    new-instance v1, Lggj$2;

    move-object/from16 v0, p4

    invoke-direct {v1, v0, v10, p0}, Lggj$2;-><init>(Lcom/alibaba/alimei/cspace/model/RecentDentryModel;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 135
    .end local v3    # "url":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {p2, p3, v1, v0}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0

    .line 138
    .end local v10    # "accessToken":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {p2, p3, v1, v0}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/RecentOperationModel;Landroid/widget/AbsListView;)V
    .locals 6
    .param p1, "baseActivity"    # Landroid/app/Activity;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "operationModel"    # Lcom/alibaba/alimei/cspace/model/RecentOperationModel;
    .param p4, "absListView"    # Landroid/widget/AbsListView;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 66
    const/4 v4, 0x0

    .line 67
    .local v4, "dentryModel":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    iget-object v0, p3, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    iget-object v0, p3, Lcom/alibaba/alimei/cspace/model/RecentOperationModel;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "dentryModel":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    check-cast v4, Lcom/alibaba/alimei/cspace/model/RecentDentryModel;

    .line 70
    .restart local v4    # "dentryModel":Lcom/alibaba/alimei/cspace/model/RecentDentryModel;
    :cond_0
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 71
    .local v2, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v3, p0, Lggj;->f:Landroid/widget/ImageView;

    move-object v0, p1

    move-object v1, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lggj;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/ImageView;Lcom/alibaba/alimei/cspace/model/RecentDentryModel;Landroid/widget/AbsListView;)V

    .line 72
    return-void
.end method

.method protected final a(Landroid/view/View;)V
    .locals 1
    .param p1, "subContentView"    # Landroid/view/View;

    .prologue
    .line 59
    sget v0, Lfzs$f;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lggj;->f:Landroid/widget/ImageView;

    .line 60
    sget v0, Lfzs$f;->img_encrpt_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lggj;->g:Landroid/widget/ImageView;

    .line 61
    return-void
.end method

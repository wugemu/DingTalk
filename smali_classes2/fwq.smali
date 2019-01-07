.class public final Lfwq;
.super Ljava/lang/Object;
.source "MiniAppLastestPresenter.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "lastestLayout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lfwq;->a:Landroid/widget/LinearLayout;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lfwq;->a:Landroid/widget/LinearLayout;

    if-nez v5, :cond_1

    .line 95
    :cond_0
    return-void

    .line 47
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 51
    move-object/from16 v0, p0

    iget-object v5, v0, Lfwq;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    .line 53
    .local v13, "len":I
    const/4 v5, 0x1

    if-le v13, v5, :cond_2

    .line 54
    const/4 v13, 0x1

    .line 56
    :cond_2
    const-string/jumbo v5, "IMAGE"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 57
    .local v2, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    move-object/from16 v0, p0

    iget-object v5, v0, Lfwq;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 58
    .local v10, "context":Landroid/content/Context;
    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v10, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v17

    .line 59
    .local v17, "width":I
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v0, v17

    move/from16 v1, v17

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v14, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v10, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    iput v5, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 62
    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v10, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v15

    .line 64
    .local v15, "radius":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 65
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 66
    .local v16, "url":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 70
    :try_start_0
    invoke-static/range {v16 .. v16}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "remoteUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 75
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    invoke-direct {v3, v10}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;-><init>(Landroid/content/Context;)V

    .line 76
    .local v3, "imageView":Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    int-to-float v5, v15

    int-to-float v6, v15

    int-to-float v7, v15

    int-to-float v8, v15

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a(FFFF)V

    .line 78
    sget v5, Lezg$g;->bg_e_app_item_shape:I

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setBackgroundResource(I)V

    .line 79
    invoke-virtual {v3, v14}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    const/4 v5, 0x0

    const/16 v6, 0x16

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v5, v0, Lfwq;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v3    # "imageView":Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;
    .end local v4    # "remoteUrl":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 89
    :catch_0
    move-exception v11

    .line 90
    .local v11, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v5, "transfer remote url fail for mini app entry refresh"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 92
    invoke-virtual {v11}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 90
    invoke-static {v5, v6}, Lfxo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

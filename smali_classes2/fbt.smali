.class public final Lfbt;
.super Ljava/lang/Object;
.source "DisplayImagesView.java"

# interfaces
.implements Lfbu;


# instance fields
.field private final a:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lfbt;->a:Landroid/view/ViewGroup;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 16
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 34
    .local p1, "imgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    .line 35
    .local v12, "len":I
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 36
    .local v1, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    move-object/from16 v0, p0

    iget-object v3, v0, Lfbt;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 37
    .local v10, "context":Landroid/content/Context;
    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {v10, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v15

    .line 38
    .local v15, "width":I
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 39
    .local v13, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v10, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 41
    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v10, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v14

    .line 43
    .local v14, "radius":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_0

    .line 44
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;

    .line 45
    .local v9, "code":Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lfbt;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;-><init>(Landroid/content/Context;)V

    .line 46
    .local v2, "imageView":Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 47
    int-to-float v3, v14

    int-to-float v4, v14

    int-to-float v5, v14

    int-to-float v6, v14

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a(FFFF)V

    .line 48
    invoke-virtual {v2, v13}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 50
    const-string/jumbo v3, "CUSTOM_EMOTION"

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;->b:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 51
    .local v8, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v9, Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0x1e

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 52
    move-object/from16 v0, p0

    iget-object v3, v0, Lfbt;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "imageView":Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;
    .end local v8    # "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "code":Lcom/alibaba/android/dingtalk/circlebase/CircleInterface$a$a;
    :cond_0
    return-void
.end method

.class public final Letv;
.super Lets;
.source "MiniAppSearchItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lets",
        "<",
        "Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Landroid/widget/RelativeLayout;

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lets;-><init>(Landroid/view/View;)V

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Letv;->h:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 128
    sget v0, Lemt$f;->activity_miniapp_search_item_layout:I

    return v0
.end method

.method static synthetic a(Letv;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Letv;

    .prologue
    .line 27
    iget-object v0, p0, Letv;->h:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Letv;->h:Landroid/content/Context;

    invoke-static {v0, p2}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    iget-object v1, p0, Letv;->h:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 118
    .local v0, "radius":I
    sget v1, Lemt$e;->cell_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Letv;->c:Landroid/widget/RelativeLayout;

    .line 119
    sget v1, Lemt$e;->divider:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Letv;->g:Landroid/view/View;

    .line 120
    sget v1, Lemt$e;->cell_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    iput-object v1, p0, Letv;->d:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    .line 121
    iget-object v1, p0, Letv;->d:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 122
    iget-object v1, p0, Letv;->d:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    int-to-float v2, v0

    int-to-float v3, v0

    int-to-float v4, v0

    int-to-float v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a(FFFF)V

    .line 123
    sget v1, Lemt$e;->cell_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Letv;->e:Landroid/widget/TextView;

    .line 124
    sget v1, Lemt$e;->cell_desc:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Letv;->f:Landroid/widget/TextView;

    .line 125
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 27
    check-cast p1, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;

    .line 2044
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;->a:Lcom/alibaba/android/search/model/LightAppModel;

    if-eqz v0, :cond_1

    .line 2045
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;->a:Lcom/alibaba/android/search/model/LightAppModel;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/LightAppModel;->getIcon()Ljava/lang/String;

    move-result-object v0

    .line 2046
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2048
    :try_start_0
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2049
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2050
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 2051
    iget-object v1, p0, Letv;->d:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    const/4 v3, 0x0

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2065
    :cond_0
    :goto_0
    iget-object v0, p0, Letv;->e:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;->a:Lcom/alibaba/android/search/model/LightAppModel;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/LightAppModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Letv;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 2066
    iget-object v0, p0, Letv;->f:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;->a:Lcom/alibaba/android/search/model/LightAppModel;

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/LightAppModel;->getBrief()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Letv;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 2068
    iget-object v0, p0, Letv;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Letv$1;

    invoke-direct {v1, p0, p1}, Letv$1;-><init>(Letv;Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2077
    iget-object v1, p0, Letv;->g:Landroid/view/View;

    iget v0, p0, Letv;->b:I

    if-nez v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 27
    :cond_1
    return-void

    .line 2060
    :catch_0
    move-exception v0

    .line 2061
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_2
    move v0, v8

    .line 2077
    goto :goto_1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 27
    check-cast p1, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;

    .line 1112
    invoke-super {p0, p1, p2}, Lets;->a(Ljava/lang/Object;I)V

    .line 27
    return-void
.end method

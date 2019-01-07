.class public final Lhey;
.super Lhes;
.source "MiniAppListItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhes",
        "<",
        "Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/widget/RelativeLayout;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/content/Context;

.field private i:Lheo;

.field private j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhey;-><init>(Landroid/view/View;Lheo;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lheo;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "hostHandler"    # Lheo;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lhes;-><init>(Landroid/view/View;)V

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lhey;->h:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lhey;->i:Lheo;

    .line 67
    return-void
.end method

.method static synthetic a(Lhey;)Lheo;
    .locals 1
    .param p0, "x0"    # Lhey;

    .prologue
    .line 46
    iget-object v0, p0, Lhey;->i:Lheo;

    return-object v0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 140
    sget v0, Lhdn$i;->activity_miniapp_list_item_layout:I

    return v0
.end method

.method static synthetic b(Lhey;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lhey;

    .prologue
    .line 46
    iget-object v0, p0, Lhey;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lhey;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lhey;

    .prologue
    .line 46
    iget-object v0, p0, Lhey;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lhey;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lhey;

    .prologue
    .line 46
    iget-object v0, p0, Lhey;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 130
    iget-object v1, p0, Lhey;->h:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 131
    .local v0, "radius":I
    sget v1, Lhdn$h;->cell_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lhey;->e:Landroid/widget/RelativeLayout;

    .line 132
    sget v1, Lhdn$h;->cell_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    iput-object v1, p0, Lhey;->f:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    .line 133
    iget-object v1, p0, Lhey;->f:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 134
    iget-object v1, p0, Lhey;->f:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    int-to-float v2, v0

    int-to-float v3, v0

    int-to-float v4, v0

    int-to-float v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a(FFFF)V

    .line 135
    sget v1, Lhdn$h;->cell_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lhey;->g:Landroid/widget/TextView;

    .line 136
    sget v1, Lhdn$h;->sticky_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lhey;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 137
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 46
    check-cast p1, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    .line 1071
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1072
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->getLogo()Ljava/lang/String;

    move-result-object v0

    .line 1073
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1075
    :try_start_0
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1076
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1077
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 1078
    iget-object v1, p0, Lhey;->f:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    const/4 v3, 0x0

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    :cond_0
    :goto_0
    iget-object v0, p0, Lhey;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->getMiniAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    iget-object v0, p0, Lhey;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v0, :cond_1

    .line 1094
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v0, "f_lightapp_e_app_sticky_enable"

    invoke-static {v0, v9}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1097
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->getStickyStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1098
    iget-object v0, p0, Lhey;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1104
    :cond_1
    :goto_1
    iget-object v0, p0, Lhey;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Lhey$1;

    invoke-direct {v1, p0, p1}, Lhey$1;-><init>(Lhey;Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1148
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1149
    :cond_2
    :goto_2
    return-void

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1100
    :cond_3
    iget-object v0, p0, Lhey;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_1

    .line 1152
    :cond_4
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v0, "f_lightapp_e_app_sticky_enable"

    invoke-static {v0, v9}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1157
    iget-object v0, p0, Lhey;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Lhey$2;

    invoke-direct {v1, p0, p1}, Lhey$2;-><init>(Lhey;Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2
.end method

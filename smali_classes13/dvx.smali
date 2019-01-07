.class public final Ldvx;
.super Ljava/lang/Object;
.source "OneBoxViewWrapper.java"

# interfaces
.implements Ldvu;


# instance fields
.field private a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V
    .locals 0
    .param p1, "view"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .line 22
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;I)Landroid/widget/ImageView;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "resId"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 236
    iget-object v1, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .line 5599
    iget-object v1, v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcig$h;->layout_one_box_menu_view:I

    .line 5600
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5601
    if-eqz p1, :cond_1

    .line 5602
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 5603
    :cond_1
    if-eqz p2, :cond_0

    .line 5604
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b()V

    .line 225
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2
    .param p1, "visiable"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b(I)V

    .line 147
    :cond_0
    return-void
.end method

.method public final a(IZ)V
    .locals 3
    .param p1, "headHeight"    # I
    .param p2, "flag"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .line 4096
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->r:Z

    .line 4097
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4098
    iput p1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->q:I

    .line 4099
    iget v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->p:I

    if-lez v1, :cond_0

    .line 4100
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c(I)Z

    .line 4101
    iput v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->q:I

    .line 4109
    :cond_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 4110
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4111
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->j:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4114
    :cond_1
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 4115
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->m:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 4116
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->k:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    :cond_2
    return-void
.end method

.method public final a(IZZ)V
    .locals 5
    .param p1, "maxHeight"    # I
    .param p2, "showAvatar"    # Z
    .param p3, "showTag"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_2

    .line 103
    iget-object v3, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .line 3121
    iput p1, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->l:I

    .line 3122
    if-eqz p2, :cond_3

    iget v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->o:I

    :goto_0
    sub-int v4, p1, v0

    if-eqz p3, :cond_4

    iget v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->m:I

    :goto_1
    sub-int v0, v4, v0

    iget v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->n:I

    sub-int v4, v0, v4

    .line 3124
    if-eqz p2, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(I)V

    .line 3125
    if-eqz p3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b(I)V

    .line 3127
    iput v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->p:I

    .line 3128
    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3129
    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3130
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3131
    iget-object v2, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->d:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3133
    :cond_1
    iget v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->q:I

    if-lez v0, :cond_2

    .line 3134
    iget v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->q:I

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c(I)Z

    .line 3135
    iput v1, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->q:I

    .line 105
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 3122
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 3124
    goto :goto_2
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 201
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .line 5224
    if-eqz p1, :cond_0

    .line 5225
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 34
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1
    .param p1, "subText"    # Ljava/lang/String;
    .param p2, "num"    # I

    .prologue
    .line 74
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setSubTitleText(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "nick"    # Ljava/lang/String;
    .param p2, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .line 2554
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v1, :cond_0

    .line 2555
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2556
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    .line 2558
    :cond_1
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 2559
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->g:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lckn;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    .local p1, "tagModels":Ljava/util/List;, "Ljava/util/List<Lckn;>;"
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v5, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .line 4243
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4244
    :cond_0
    :goto_0
    return-void

    .line 4247
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 4248
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    .line 4249
    if-lez v1, :cond_9

    .line 4250
    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 4253
    :goto_1
    const/4 v0, 0x0

    move v4, v0

    :goto_2
    if-ge v4, v1, :cond_6

    .line 4254
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4255
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4256
    const/16 v0, 0x11

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 4257
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    iget-object v3, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v3, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4258
    if-nez v4, :cond_2

    .line 4259
    const/4 v2, 0x0

    iget-object v3, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v3, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4261
    :cond_2
    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4262
    const/4 v0, 0x0

    move v3, v0

    :goto_3
    const/4 v0, 0x4

    if-ge v3, v0, :cond_5

    .line 4263
    mul-int/lit8 v0, v4, 0x4

    add-int/2addr v0, v3

    .line 4264
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 4265
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckn;

    .line 4266
    if-eqz v0, :cond_3

    .line 4269
    iget-object v7, v0, Lckn;->a:Ljava/lang/String;

    iget v2, v0, Lckn;->b:I

    iget-object v8, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    if-nez v3, :cond_4

    const/4 v0, 0x0

    :goto_4
    invoke-static {v8, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 4653
    new-instance v8, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    iget-object v9, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;-><init>(Landroid/content/Context;)V

    .line 4654
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4656
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4657
    invoke-virtual {v8, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4658
    iget-object v0, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v0, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iget-object v9, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v9, v10}, Lcms;->c(Landroid/content/Context;F)I

    move-result v9

    iget-object v10, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    const/high16 v11, 0x40800000    # 4.0f

    .line 4659
    invoke-static {v10, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    iget-object v11, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v11, v12}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    .line 4658
    invoke-virtual {v8, v0, v9, v10, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setPadding(IIII)V

    .line 4660
    if-nez v2, :cond_8

    .line 4661
    iget-object v0, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcig$c;->uidic_global_color_6_2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 4663
    :goto_5
    invoke-virtual {v8, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextColor(I)V

    .line 4664
    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setGravity(I)V

    .line 4665
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v8, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextSize(F)V

    .line 4666
    invoke-virtual {v8, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setText(Ljava/lang/CharSequence;)V

    .line 4269
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4262
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 4269
    :cond_4
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_4

    .line 4272
    :cond_5
    iget-object v0, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4253
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_2

    .line 4275
    :cond_6
    new-instance v0, Landroid/view/View;

    iget-object v2, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4276
    const/16 v2, 0x10

    invoke-static {v2}, Lcms;->b(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4277
    iget-object v2, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcig$e;->default_divider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4281
    :goto_6
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v4, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4282
    iget-object v3, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 4283
    iget-object v3, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4285
    iget-object v0, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v1, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->m:I

    goto/16 :goto_0

    .line 4279
    :cond_7
    iget-object v2, v5, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcig$e;->default_divider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_8
    move v0, v2

    goto/16 :goto_5

    :cond_9
    move v1, v0

    goto/16 :goto_1
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "visiable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .line 2042
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setPullViewVisible(Z)V

    .line 2044
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2045
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :cond_0
    return-void

    .line 2045
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a()V

    .line 232
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/View;

    .prologue
    .line 244
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Landroid/view/View;)V

    .line 247
    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 5
    .param p1, "flag"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_3

    .line 117
    iget-object v3, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .line 3490
    iput-boolean v2, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->s:Z

    .line 3503
    iget-boolean v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3504
    sget v0, Lcig$f;->layout_box_guide:I

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 3505
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->i:Landroid/view/View;

    .line 3507
    :cond_0
    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->i:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 3508
    iget-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->i:Landroid/view/View;

    iget-boolean v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->s:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3509
    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->i:Landroid/view/View;

    iget-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->u:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3510
    iget-boolean v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->s:Z

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setPullViewVisible(Z)V

    .line 3511
    iget-boolean v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->s:Z

    if-eqz v0, :cond_2

    .line 3512
    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3513
    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$j;->dt_im_one_box_guide_sub_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    .line 3514
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->uidic_global_color_c2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3513
    invoke-virtual {v3, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Ljava/lang/String;I)V

    .line 3520
    :cond_2
    :goto_1
    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->i:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$3;

    invoke-direct {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 119
    :cond_3
    return-void

    .line 3508
    :cond_4
    const/16 v0, 0x8

    goto :goto_0

    .line 3516
    :cond_5
    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->t:Ljava/lang/String;

    iget-object v1, v3, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->uidic_global_color_c2:I

    .line 3517
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 3516
    invoke-virtual {v3, v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public final c(Z)V
    .locals 2
    .param p1, "needShape"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->a(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method public final getAvatarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->getAvatarView()Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getContentListView()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->getContentListView()Landroid/view/View;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPullToRefreshView()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->getTitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setBackOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "backListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 215
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setBackOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :cond_0
    return-void
.end method

.method public final setBackViewColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 258
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setBackViewColor(I)V

    .line 261
    :cond_0
    return-void
.end method

.method public final setBgColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 251
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setBgColor(I)V

    .line 254
    :cond_0
    return-void
.end method

.method public final setContentResId(I)V
    .locals 1
    .param p1, "containId"    # I

    .prologue
    .line 38
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setContentResId(I)V

    .line 41
    :cond_0
    return-void
.end method

.method public final setDragCloseLimit(I)V
    .locals 1
    .param p1, "dragCloseLimit"    # I

    .prologue
    .line 45
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setDragCloseLimit(I)V

    .line 48
    :cond_0
    return-void
.end method

.method public final setGuideListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$a;)V
    .locals 1
    .param p1, "guideListener"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$a;

    .prologue
    .line 123
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setGuideListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$a;)V

    .line 126
    :cond_0
    return-void
.end method

.method public final setGuideName(Ljava/lang/String;)V
    .locals 1
    .param p1, "guideName"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setGuideName(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public final setOnOneBoxPullViewVisibleChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;)V
    .locals 1
    .param p1, "onOneBoxPullViewVisibleChangedListener"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;

    .prologue
    .line 287
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setOnOneBoxPullViewVisibleChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$b;)V

    .line 290
    :cond_0
    return-void
.end method

.method public final setShowOneBox(Z)V
    .locals 1
    .param p1, "showBox"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setShowOneBox(Z)V

    .line 140
    :cond_0
    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setStatus(Ljava/lang/String;)V

    .line 282
    :cond_0
    return-void
.end method

.method public final setSubTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 272
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setSubTitleColor(I)V

    .line 275
    :cond_0
    return-void
.end method

.method public final setSubTitleInfo(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;)V
    .locals 1
    .param p1, "subTitleInfo"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;

    .prologue
    .line 81
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setSubTitleInfo(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$c;)V

    .line 84
    :cond_0
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setTitle(Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method public final setTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 265
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setTitleColor(I)V

    .line 268
    :cond_0
    return-void
.end method

.method public final setTitleRightImage(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 187
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setTitleRightImage(I)V

    .line 190
    :cond_0
    return-void
.end method

.method public final setTypingTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "typing"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setTypingTitle(Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method public final setViewStatusListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;)V
    .locals 1
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;

    .prologue
    .line 26
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setViewStatusListener(Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView$d;)V

    .line 29
    :cond_0
    return-void
.end method

.method public final setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 208
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Ldvx;->a:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setVisibility(I)V

    .line 211
    :cond_0
    return-void
.end method

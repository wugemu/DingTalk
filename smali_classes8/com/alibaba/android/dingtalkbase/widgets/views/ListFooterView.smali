.class public Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;
.super Landroid/widget/LinearLayout;
.source "ListFooterView.java"


# instance fields
.field protected a:Landroid/widget/ProgressBar;

.field protected b:Landroid/widget/TextView;

.field protected c:I

.field protected d:Z

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:I

.field protected j:F

.field protected k:I

.field protected l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->c:I

    .line 64
    iput-boolean v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->d:Z

    .line 85
    sget-object v1, Lcig$l;->ListFooterView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcig$l;->ListFooterView_footLoadingText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->e:Ljava/lang/String;

    .line 89
    sget v1, Lcig$l;->ListFooterView_footErrorText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->f:Ljava/lang/String;

    .line 90
    sget v1, Lcig$l;->ListFooterView_footEndText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->g:Ljava/lang/String;

    .line 91
    sget v1, Lcig$l;->ListFooterView_footRefreshMoreText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->h:Ljava/lang/String;

    .line 92
    sget v1, Lcig$l;->ListFooterView_footTextColor:I

    sget v2, Lcig$c;->search_hint_color:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->i:I

    .line 93
    sget v1, Lcig$l;->ListFooterView_footTextSize:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->j:F

    .line 94
    sget v1, Lcig$l;->ListFooterView_footBackgroundNormalResource:I

    sget v2, Lcig$c;->uidic_global_color_transparent:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->k:I

    .line 95
    sget v1, Lcig$l;->ListFooterView_footBackgroundClickResource:I

    sget v2, Lcig$c;->uidic_global_color_transparent:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1104
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcig$h;->alm_list_footer_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1105
    const v1, 0x102000d

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a:Landroid/widget/ProgressBar;

    .line 1106
    const v1, 0x1020014

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->b:Landroid/widget/TextView;

    .line 1108
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1109
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->i:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1111
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->j:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 1112
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->b:Landroid/widget/TextView;

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->j:F

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1115
    :cond_0
    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(I)V

    .line 101
    return-void

    .line 97
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "defaultTextResId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    :goto_0
    return-void

    .line 1177
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->d:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1178
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1181
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->b:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "pageType"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    .line 119
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->c:I

    .line 121
    .local v0, "oldPage":I
    if-ne v0, p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 124
    :cond_0
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->c:I

    .line 125
    packed-switch p1, :pswitch_data_0

    .line 157
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->l:I

    if-lez v1, :cond_4

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->l:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->h:Ljava/lang/String;

    sget v2, Lcig$j;->and_alm_cmail_loading_from_server:I

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 127
    :pswitch_0
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->l:I

    if-lez v1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->l:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :goto_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->f:Ljava/lang/String;

    sget v2, Lcig$j;->and_alm_cmail_loading_error:I

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$e;->cell_click_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 137
    :pswitch_1
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->k:I

    if-lez v1, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->e:Ljava/lang/String;

    sget v2, Lcig$j;->and_alm_cmail_loading_mails:I

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 147
    :pswitch_2
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->k:I

    if-lez v1, :cond_3

    .line 148
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    :goto_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->g:Ljava/lang/String;

    sget v2, Lcig$j;->and_alm_cmail_load_complete:I

    invoke-direct {p0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 150
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$c;->text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcig$e;->cell_click_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentPageType()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->c:I

    return v0
.end method

.method public setPageEndText(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageEndText"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->g:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setPageErrorText(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageErrorText"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->f:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setPageLoadingText(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageLoadingText"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->e:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setPageRefreshMoreText(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageRefreshMoreText"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->h:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setShowDefaultText(Z)V
    .locals 0
    .param p1, "showDefaultText"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ListFooterView;->d:Z

    .line 204
    return-void
.end method

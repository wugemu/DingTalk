.class public Lcom/alibaba/android/user/contact/view/IconTextView;
.super Landroid/widget/RelativeLayout;
.source "IconTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:I

.field private h:I

.field private i:F

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:F

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

.field private r:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->h:I

    .line 34
    const-string/jumbo v0, "#929292"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->l:I

    .line 38
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->o:I

    .line 39
    iput v1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->p:I

    .line 40
    sget-object v0, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->q:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    .line 41
    sget-object v0, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->r:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/view/IconTextView;->a(Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->h:I

    .line 34
    const-string/jumbo v0, "#929292"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->l:I

    .line 38
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->o:I

    .line 39
    iput v1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->p:I

    .line 40
    sget-object v0, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->q:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    .line 41
    sget-object v0, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->r:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    .line 79
    invoke-direct {p0, p2, v1}, Lcom/alibaba/android/user/contact/view/IconTextView;->a(Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->h:I

    .line 34
    const-string/jumbo v0, "#929292"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->l:I

    .line 38
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->o:I

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->p:I

    .line 40
    sget-object v0, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->q:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    .line 41
    sget-object v0, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->r:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    .line 84
    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/user/contact/view/IconTextView;->a(Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method private a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->e:Landroid/view/View;

    iget v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->o:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget v1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->o:I

    if-nez v1, :cond_0

    .line 160
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 161
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/IconTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 163
    const/4 v1, 0x2

    sget v2, Lezg$h;->itv_tv_left_text:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 165
    sget-object v1, Lcom/alibaba/android/user/contact/view/IconTextView$1;->a:[I

    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->q:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 173
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 167
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    sget v1, Lezg$h;->itv_iv_left_icon:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 170
    :pswitch_1
    sget v1, Lezg$h;->itv_tv_left_text:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/IconTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lezg$n;->IconTextView:[I

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lezg$n;->IconTextView_left_icon_src:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->g:I

    .line 93
    sget v2, Lezg$n;->IconTextView_left_text_content:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->j:Ljava/lang/String;

    .line 94
    sget v2, Lezg$n;->IconTextView_left_text_size:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->i:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->i:F

    .line 95
    sget v2, Lezg$n;->IconTextView_left_text_color:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->h:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->h:I

    .line 97
    sget v2, Lezg$n;->IconTextView_right_icon_src:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->k:I

    .line 98
    sget v2, Lezg$n;->IconTextView_right_text_content:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->n:Ljava/lang/String;

    .line 99
    sget v2, Lezg$n;->IconTextView_right_text_size:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->m:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->m:F

    .line 100
    sget v2, Lezg$n;->IconTextView_right_text_color:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->l:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->l:I

    .line 102
    sget v2, Lezg$n;->IconTextView_top_divider_visibility:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->o:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->o:I

    .line 103
    sget v2, Lezg$n;->IconTextView_bottom_divider_visibility:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->p:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->p:I

    .line 104
    sget v2, Lezg$n;->IconTextView_bottom_divider_align:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->q:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->typeValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->fromValue(I)Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->q:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    .line 105
    sget v2, Lezg$n;->IconTextView_bottom_divider_align:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->r:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->typeValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->fromValue(I)Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->r:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    .line 107
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/IconTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lezg$j;->sample_icon_text_view:I

    invoke-static {v2, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, "root":Landroid/view/View;
    sget v2, Lezg$h;->itv_iv_left_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->a:Landroid/widget/ImageView;

    .line 112
    sget v2, Lezg$h;->itv_tv_left_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->b:Landroid/widget/TextView;

    .line 113
    sget v2, Lezg$h;->itv_iv_right_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->c:Landroid/widget/ImageView;

    .line 114
    sget v2, Lezg$h;->itv_tv_right_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->d:Landroid/widget/TextView;

    .line 115
    sget v2, Lezg$h;->itv_top_dividerLine:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->e:Landroid/view/View;

    .line 116
    sget v2, Lezg$h;->itv_bottom_dividerLine:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->f:Landroid/view/View;

    .line 1122
    iget v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->g:I

    if-lez v2, :cond_2

    .line 1123
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1124
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->a:Landroid/widget/ImageView;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->g:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1129
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    iget v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->i:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 1131
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->b:Landroid/widget/TextView;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->i:F

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1133
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->b:Landroid/widget/TextView;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->h:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1135
    iget v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->k:I

    if-lez v2, :cond_3

    .line 1136
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1137
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->c:Landroid/widget/ImageView;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->k:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1142
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    iget v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->m:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    .line 1144
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->d:Landroid/widget/TextView;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->m:F

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1146
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->d:Landroid/widget/TextView;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->l:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1148
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/IconTextView;->a()V

    .line 1149
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/IconTextView;->b()V

    .line 119
    return-void

    .line 1126
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1139
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 182
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->f:Landroid/view/View;

    iget v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->p:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget v1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->p:I

    if-nez v1, :cond_0

    .line 184
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 185
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/IconTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 187
    const/4 v1, 0x3

    sget v2, Lezg$h;->itv_tv_left_text:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 189
    sget-object v1, Lcom/alibaba/android/user/contact/view/IconTextView$1;->a:[I

    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->r:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 197
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 191
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    sget v1, Lezg$h;->itv_iv_left_icon:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 194
    :pswitch_1
    sget v1, Lezg$h;->itv_tv_left_text:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(ILcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;)V
    .locals 0
    .param p1, "Visibility"    # I
    .param p2, "align"    # Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    .prologue
    .line 206
    iput p1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->o:I

    .line 207
    if-eqz p2, :cond_0

    .line 208
    iput-object p2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->q:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/IconTextView;->a()V

    .line 211
    return-void
.end method

.method public final b(ILcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;)V
    .locals 0
    .param p1, "Visibility"    # I
    .param p2, "align"    # Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    .prologue
    .line 214
    iput p1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->p:I

    .line 215
    if-eqz p2, :cond_0

    .line 216
    iput-object p2, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->r:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/IconTextView;->b()V

    .line 219
    return-void
.end method

.method public getBottomDividerAlign()Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->r:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    return-object v0
.end method

.method public getBottomDividerVisibility()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->p:I

    return v0
.end method

.method public getLeftIconResId()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->g:I

    return v0
.end method

.method public getLeftText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeftTextColor()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->h:I

    return v0
.end method

.method public getLeftTextSize()F
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->i:F

    return v0
.end method

.method public getRightIconResId()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->k:I

    return v0
.end method

.method public getRightText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRightTextColor()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->l:I

    return v0
.end method

.method public getRightTextSize()F
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->m:F

    return v0
.end method

.method public getTopDividerAlign()Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->q:Lcom/alibaba/android/user/contact/view/IconTextView$DividerAlign;

    return-object v0
.end method

.method public getTopDividerVisibility()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->o:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 154
    const-string/jumbo v0, "chandr"

    const-string/jumbo v1, "IconTextView onclick"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public setLeftIconResId(I)V
    .locals 2
    .param p1, "leftIconResId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 242
    iput p1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->g:I

    .line 243
    iget v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->g:I

    if-lez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLeftText(Ljava/lang/String;)V
    .locals 1
    .param p1, "leftText"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    return-void
.end method

.method public setLeftTextColor(I)V
    .locals 2
    .param p1, "leftTextColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 256
    iput p1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->h:I

    .line 257
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    return-void
.end method

.method public setLeftTextSize(F)V
    .locals 2
    .param p1, "leftTextSize"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/IconTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->i:F

    .line 266
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->i:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 267
    return-void
.end method

.method public setRightIconResId(I)V
    .locals 2
    .param p1, "rightIconResId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 282
    iput p1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->k:I

    .line 283
    iget v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->k:I

    if-lez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->c:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRightText(Ljava/lang/String;)V
    .locals 1
    .param p1, "rightText"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    return-void
.end method

.method public setRightTextColor(I)V
    .locals 2
    .param p1, "rightTextColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 296
    iput p1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->l:I

    .line 297
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    return-void
.end method

.method public setRightTextSize(F)V
    .locals 2
    .param p1, "rightTextSize"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/IconTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->m:F

    .line 306
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->d:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/user/contact/view/IconTextView;->m:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 307
    return-void
.end method

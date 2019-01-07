.class public Lcom/alibaba/android/user/contact/view/IconEditText;
.super Landroid/widget/RelativeLayout;
.source "IconEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

.field private i:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 19
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->b:I

    .line 20
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->c:F

    .line 23
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->f:I

    .line 24
    iput v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->g:I

    .line 25
    sget-object v0, Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->h:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    .line 26
    sget-object v0, Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->i:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/view/IconEditText;->a(Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->b:I

    .line 20
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->c:F

    .line 23
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->f:I

    .line 24
    iput v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->g:I

    .line 25
    sget-object v0, Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->h:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    .line 26
    sget-object v0, Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->i:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    .line 71
    invoke-direct {p0, p2, v1}, Lcom/alibaba/android/user/contact/view/IconEditText;->a(Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->b:I

    .line 20
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->c:F

    .line 23
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->f:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->g:I

    .line 25
    sget-object v0, Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->h:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    .line 26
    sget-object v0, Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->i:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    .line 76
    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/user/contact/view/IconEditText;->a(Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/view/IconEditText;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/view/IconEditText;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->n:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method private a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v7, 0x9

    const/4 v6, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 131
    iget v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->a:I

    if-lez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->j:Landroid/widget/ImageView;

    iget v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->k:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->k:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 137
    iget v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->c:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->k:Landroid/widget/EditText;

    iget v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->c:F

    invoke-virtual {v1, v3, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->k:Landroid/widget/EditText;

    iget v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->b:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 142
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->l:Landroid/view/View;

    iget v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->f:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->f:I

    if-nez v1, :cond_2

    .line 144
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 146
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 147
    const/4 v1, 0x2

    sget v2, Lezg$h;->IconEditText_editText_et:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 148
    sget-object v1, Lcom/alibaba/android/user/contact/view/IconEditText$2;->a:[I

    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->h:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 156
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->l:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->m:Landroid/view/View;

    iget v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->g:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->g:I

    if-nez v1, :cond_3

    .line 164
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 165
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 166
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 167
    const/4 v1, 0x3

    sget v2, Lezg$h;->IconEditText_editText_et:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 168
    sget-object v1, Lcom/alibaba/android/user/contact/view/IconEditText$2;->a:[I

    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->i:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 176
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 179
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    return-void

    .line 150
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    sget v1, Lezg$h;->IconEditText_icon_iv:I

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 153
    :pswitch_1
    sget v1, Lezg$h;->IconEditText_editText_et:I

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 170
    :pswitch_2
    sget v1, Lezg$h;->IconEditText_icon_iv:I

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 173
    :pswitch_3
    sget v1, Lezg$h;->IconEditText_editText_et:I

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 148
    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lezg$n;->IconEditText:[I

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lezg$n;->IconEditText_icon_src:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->a:I

    .line 85
    sget v2, Lezg$n;->IconEditText_edit_size:I

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->c:F

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->c:F

    .line 86
    sget v2, Lezg$n;->IconEditText_edit_color:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->b:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->b:I

    .line 87
    sget v2, Lezg$n;->IconEditText_edit_content:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->d:Ljava/lang/String;

    .line 88
    sget v2, Lezg$n;->IconEditText_edit_hint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->e:Ljava/lang/String;

    .line 89
    sget v2, Lezg$n;->IconEditText_top_divider_visibility:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->f:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->f:I

    .line 90
    sget v2, Lezg$n;->IconEditText_bottom_divider_visibility:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->g:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->g:I

    .line 91
    sget v2, Lezg$n;->IconEditText_top_divider_align:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->h:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;->typeValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;->fromValue(I)Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->h:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    .line 92
    sget v2, Lezg$n;->IconEditText_bottom_divider_align:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->i:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;->typeValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;->fromValue(I)Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->i:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lezg$j;->icon_edit_text:I

    invoke-static {v2, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "root":Landroid/view/View;
    sget v2, Lezg$h;->IconEditText_icon_iv:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->j:Landroid/widget/ImageView;

    .line 105
    sget v2, Lezg$h;->IconEditText_editText_et:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->k:Landroid/widget/EditText;

    .line 106
    sget v2, Lezg$h;->IconEditText_top_dividerLine_v:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->l:Landroid/view/View;

    .line 107
    sget v2, Lezg$h;->IconEditText_bottom_dividerLine_v:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->m:Landroid/view/View;

    .line 109
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->k:Landroid/widget/EditText;

    new-instance v3, Lcom/alibaba/android/user/contact/view/IconEditText$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/view/IconEditText$1;-><init>(Lcom/alibaba/android/user/contact/view/IconEditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 118
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->a()V

    .line 128
    return-void
.end method


# virtual methods
.method public getBottomDividerAlign()Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->i:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    return-object v0
.end method

.method public getBottomDividerVisibility()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->g:I

    return v0
.end method

.method public getEditContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->a:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->b:I

    return v0
.end method

.method public getTextHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->c:F

    return v0
.end method

.method public getTopDividerAlign()Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->h:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    return-object v0
.end method

.method public getTopDividerVisibility()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->f:I

    return v0
.end method

.method public setBottomDividerAlign(Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;)V
    .locals 0
    .param p1, "bottomDividerAlign"    # Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->i:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    .line 321
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->a()V

    .line 322
    return-void
.end method

.method public setBottomDividerVisibility(I)V
    .locals 0
    .param p1, "bottomDividerVisibility"    # I

    .prologue
    .line 310
    iput p1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->g:I

    .line 311
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->a()V

    .line 312
    return-void
.end method

.method public setEditContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "textContent"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->d:Ljava/lang/String;

    .line 287
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->a()V

    .line 288
    return-void
.end method

.method public setEditMaxLenth(I)V
    .locals 3
    .param p1, "lenth"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 291
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 292
    .local v0, "filters":[Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->k:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 293
    return-void
.end method

.method public setIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 341
    if-eqz p1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    :cond_0
    return-void
.end method

.method public setIconResId(I)V
    .locals 0
    .param p1, "iconResId"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->a:I

    .line 226
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->a()V

    .line 227
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->n:Landroid/view/View$OnFocusChangeListener;

    .line 348
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 245
    iput p1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->b:I

    .line 246
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->a()V

    .line 247
    return-void
.end method

.method public setTextHint(Ljava/lang/String;)V
    .locals 0
    .param p1, "textHint"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->e:Ljava/lang/String;

    .line 301
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->a()V

    .line 302
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "textSize"    # F

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->c:F

    .line 267
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->a()V

    .line 268
    return-void
.end method

.method public setTopDividerAlign(Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;)V
    .locals 0
    .param p1, "topDividerAlign"    # Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->h:Lcom/alibaba/android/user/contact/view/IconEditText$DividerAlign;

    .line 316
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->a()V

    .line 317
    return-void
.end method

.method public setTopDividerVisibility(I)V
    .locals 0
    .param p1, "topDividerVisibility"    # I

    .prologue
    .line 305
    iput p1, p0, Lcom/alibaba/android/user/contact/view/IconEditText;->f:I

    .line 306
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/IconEditText;->a()V

    .line 307
    return-void
.end method

.class public Lcom/alibaba/android/user/contact/view/CheckBoxTextView;
.super Landroid/widget/RelativeLayout;
.source "CheckBoxTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/CheckBox;

.field private b:Z

.field private c:Landroid/widget/ImageView;

.field private d:I

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:F

.field private i:Ljava/lang/String;

.field private j:Landroid/view/View;

.field private k:I

.field private l:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

.field private m:Landroid/view/View;

.field private n:I

.field private o:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->e:I

    .line 30
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->g:I

    .line 31
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->h:F

    .line 35
    iput v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->k:I

    .line 36
    sget-object v0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->l:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    .line 39
    iput v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->n:I

    .line 40
    sget-object v0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->o:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->a(Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->e:I

    .line 30
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->g:I

    .line 31
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->h:F

    .line 35
    iput v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->k:I

    .line 36
    sget-object v0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->l:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    .line 39
    iput v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->n:I

    .line 40
    sget-object v0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->o:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    .line 78
    invoke-direct {p0, p2, v1}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->a(Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v1, 0x8

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    iput v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->e:I

    .line 30
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->g:I

    .line 31
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->h:F

    .line 35
    iput v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->k:I

    .line 36
    sget-object v0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->l:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->n:I

    .line 40
    sget-object v0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->o:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    .line 83
    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->a(Landroid/util/AttributeSet;I)V

    .line 84
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

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->j:Landroid/view/View;

    iget v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->k:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->k:I

    if-nez v1, :cond_0

    .line 137
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 140
    const/4 v1, 0x2

    sget v2, Lezg$h;->cbt_tv_text:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 142
    sget-object v1, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$1;->a:[I

    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->l:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 150
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 144
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    sget v1, Lezg$h;->cbt_cb_checkbox:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 147
    :pswitch_1
    sget v1, Lezg$h;->cbt_tv_text:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lezg$n;->CheckBoxTextView:[I

    invoke-virtual {v2, p1, v3, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lezg$n;->CheckBoxTextView_checked:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->b:Z

    .line 92
    sget v2, Lezg$n;->CheckBoxTextView_text_content:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->i:Ljava/lang/String;

    .line 93
    sget v2, Lezg$n;->CheckBoxTextView_text_size:I

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->h:F

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->h:F

    .line 94
    sget v2, Lezg$n;->CheckBoxTextView_text_color:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->g:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->g:I

    .line 95
    sget v2, Lezg$n;->CheckBoxTextView_icon_src:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->d:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->d:I

    .line 96
    sget v2, Lezg$n;->CheckBoxTextView_icon_visibility:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->e:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->e:I

    .line 98
    sget v2, Lezg$n;->CheckBoxTextView_top_divider_visibility:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->k:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->k:I

    .line 99
    sget v2, Lezg$n;->CheckBoxTextView_bottom_divider_visibility:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->n:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->n:I

    .line 100
    sget v2, Lezg$n;->CheckBoxTextView_bottom_divider_align:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->l:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->typeValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->fromValue(I)Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->l:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    .line 101
    sget v2, Lezg$n;->CheckBoxTextView_bottom_divider_align:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->o:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->typeValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->fromValue(I)Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->o:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lezg$j;->sample_check_box_text:I

    invoke-static {v2, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, "root":Landroid/view/View;
    sget v2, Lezg$h;->cbt_cb_checkbox:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->a:Landroid/widget/CheckBox;

    .line 108
    sget v2, Lezg$h;->cbt_iv_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->c:Landroid/widget/ImageView;

    .line 109
    sget v2, Lezg$h;->cbt_tv_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->f:Landroid/widget/TextView;

    .line 110
    sget v2, Lezg$h;->cbt_top_dividerLine:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->j:Landroid/view/View;

    .line 111
    sget v2, Lezg$h;->cbt_bottom_dividerLine:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->m:Landroid/view/View;

    .line 1117
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->f:Landroid/widget/TextView;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->h:F

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1119
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->f:Landroid/widget/TextView;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->g:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1121
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->a:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->b:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1122
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->c:Landroid/widget/ImageView;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->e:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1123
    iget v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->d:I

    if-lez v2, :cond_0

    .line 1124
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1125
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->c:Landroid/widget/ImageView;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->d:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1130
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->a()V

    .line 1131
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->b()V

    .line 114
    return-void

    .line 1127
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->c:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 159
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->m:Landroid/view/View;

    iget v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->n:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->n:I

    if-nez v1, :cond_0

    .line 161
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 163
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 164
    const/4 v1, 0x3

    sget v2, Lezg$h;->cbt_tv_text:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 166
    sget-object v1, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$1;->a:[I

    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->o:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 174
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 178
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 168
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    sget v1, Lezg$h;->cbt_cb_checkbox:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 171
    :pswitch_1
    sget v1, Lezg$h;->cbt_tv_text:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(ILcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;)V
    .locals 0
    .param p1, "Visibility"    # I
    .param p2, "align"    # Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    .prologue
    .line 183
    iput p1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->k:I

    .line 184
    if-eqz p2, :cond_0

    .line 185
    iput-object p2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->l:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->a()V

    .line 188
    return-void
.end method

.method public final b(ILcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;)V
    .locals 0
    .param p1, "Visibility"    # I
    .param p2, "align"    # Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    .prologue
    .line 191
    iput p1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->n:I

    .line 192
    if-eqz p2, :cond_0

    .line 193
    iput-object p2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->o:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->b()V

    .line 196
    return-void
.end method

.method public getBottomDividerAlign()Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->o:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    return-object v0
.end method

.method public getBottomDividerVisibility()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->n:I

    return v0
.end method

.method public getIconResId()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->d:I

    return v0
.end method

.method public getIconVisibility()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->e:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->g:I

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->h:F

    return v0
.end method

.method public getTopDividerAlign()Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->l:Lcom/alibaba/android/user/contact/view/CheckBoxTextView$DividerAlign;

    return-object v0
.end method

.method public getTopDividerVisibility()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->k:I

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 220
    return-void
.end method

.method public setIconResId(I)V
    .locals 2
    .param p1, "iconResId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 227
    iput p1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->d:I

    .line 228
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->d:I

    if-lez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->c:Landroid/widget/ImageView;

    iget v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIconVisibility(I)V
    .locals 1
    .param p1, "iconVisibility"    # I

    .prologue
    .line 241
    iput p1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->e:I

    .line 242
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    return-void
.end method

.method public setOnCheckChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 273
    return-void
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1, "textColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 250
    iput p1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->g:I

    .line 251
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "textContent"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->h:F

    .line 260
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxTextView;->h:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 261
    return-void
.end method

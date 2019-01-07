.class public Lcom/alibaba/android/user/contact/view/CheckBoxEditText;
.super Landroid/widget/RelativeLayout;
.source "CheckBoxEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

.field public c:I

.field private d:Landroid/widget/CheckBox;

.field private e:Z

.field private f:Landroid/widget/EditText;

.field private g:I

.field private h:F

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

.field private n:Landroid/view/View$OnFocusChangeListener;

.field private o:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->g:I

    .line 29
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->h:F

    .line 34
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->a:I

    .line 35
    sget-object v0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->b:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    .line 38
    iput v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->c:I

    .line 39
    sget-object v0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->m:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->a(Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->g:I

    .line 29
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->h:F

    .line 34
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->a:I

    .line 35
    sget-object v0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->b:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    .line 38
    iput v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->c:I

    .line 39
    sget-object v0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->m:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    .line 80
    invoke-direct {p0, p2, v1}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->a(Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->g:I

    .line 29
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->h:F

    .line 34
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->a:I

    .line 35
    sget-object v0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->b:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->c:I

    .line 39
    sget-object v0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;->AlignContent:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->m:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    .line 85
    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->a(Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/view/CheckBoxEditText;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/view/CheckBoxEditText;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->o:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
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

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lezg$n;->CheckBoxEditText:[I

    invoke-virtual {v2, p1, v3, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lezg$n;->CheckBoxEditText_checked:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->e:Z

    .line 94
    sget v2, Lezg$n;->CheckBoxEditText_edit_content:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->i:Ljava/lang/String;

    .line 95
    sget v2, Lezg$n;->CheckBoxEditText_edit_size:I

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->h:F

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->h:F

    .line 96
    sget v2, Lezg$n;->CheckBoxEditText_edit_color:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->g:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->g:I

    .line 97
    sget v2, Lezg$n;->CheckBoxEditText_edit_hint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->j:Ljava/lang/String;

    .line 99
    sget v2, Lezg$n;->CheckBoxEditText_top_divider_visibility:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->a:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->a:I

    .line 100
    sget v2, Lezg$n;->CheckBoxEditText_bottom_divider_visibility:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->c:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->c:I

    .line 101
    sget v2, Lezg$n;->CheckBoxEditText_bottom_divider_align:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->b:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;->typeValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;->fromValue(I)Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->b:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    .line 102
    sget v2, Lezg$n;->CheckBoxEditText_bottom_divider_align:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->m:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;->typeValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;->fromValue(I)Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->m:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lezg$j;->sample_check_box_edit_text:I

    invoke-static {v2, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, "root":Landroid/view/View;
    sget v2, Lezg$h;->cbe_cb_checkbox:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->d:Landroid/widget/CheckBox;

    .line 109
    sget v2, Lezg$h;->cbe_et_edit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->f:Landroid/widget/EditText;

    .line 110
    sget v2, Lezg$h;->cbe_top_dividerLine:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->k:Landroid/view/View;

    .line 111
    sget v2, Lezg$h;->cbe_bottom_dividerLine:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->l:Landroid/view/View;

    .line 113
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->d:Landroid/widget/CheckBox;

    new-instance v3, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$1;-><init>(Lcom/alibaba/android/user/contact/view/CheckBoxEditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->f:Landroid/widget/EditText;

    new-instance v3, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$2;-><init>(Lcom/alibaba/android/user/contact/view/CheckBoxEditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 130
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->f:Landroid/widget/EditText;

    const v3, 0x81001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1135
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->f:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->f:Landroid/widget/EditText;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->h:F

    invoke-virtual {v2, v5, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1137
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->f:Landroid/widget/EditText;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->g:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1138
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->f:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1140
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->d:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->e:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1142
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->a()V

    .line 1143
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->b()V

    .line 132
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/view/CheckBoxEditText;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/view/CheckBoxEditText;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->n:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 147
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->k:Landroid/view/View;

    iget v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->a:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->a:I

    if-nez v1, :cond_0

    .line 149
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 152
    const/4 v1, 0x2

    sget v2, Lezg$h;->cbe_et_edit:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 154
    sget-object v1, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$3;->a:[I

    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->b:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 162
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 166
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 156
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    sget v1, Lezg$h;->cbe_cb_checkbox:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 159
    :pswitch_1
    sget v1, Lezg$h;->cbe_et_edit:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 171
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->l:Landroid/view/View;

    iget v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->c:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->c:I

    if-nez v1, :cond_0

    .line 173
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 176
    const/4 v1, 0x3

    sget v2, Lezg$h;->cbe_et_edit:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 178
    sget-object v1, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$3;->a:[I

    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->m:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 186
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->l:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 180
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    sget v1, Lezg$h;->cbe_cb_checkbox:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 183
    :pswitch_1
    sget v1, Lezg$h;->cbe_et_edit:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getBottomDividerAlign()Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->m:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    return-object v0
.end method

.method public getBottomDividerVisibility()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->c:I

    return v0
.end method

.method public getEditColor()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->g:I

    return v0
.end method

.method public getEditContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getEditSize()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->h:F

    return v0
.end method

.method public getTopDividerAlign()Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->b:Lcom/alibaba/android/user/contact/view/CheckBoxEditText$DividerAlign;

    return-object v0
.end method

.method public getTopDividerVisibility()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->a:I

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->e:Z

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 233
    return-void
.end method

.method public setEditColor(I)V
    .locals 2
    .param p1, "editColor"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 240
    iput p1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->g:I

    .line 241
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->f:Landroid/widget/EditText;

    iget v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 242
    return-void
.end method

.method public setEditContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "editContent"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->i:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 260
    return-void
.end method

.method public setEditHint(Ljava/lang/String;)V
    .locals 2
    .param p1, "editHint"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 267
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->j:Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 269
    return-void
.end method

.method public setEditMaxLenth(I)V
    .locals 3
    .param p1, "lenth"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 272
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 273
    .local v0, "filters":[Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->f:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 274
    return-void
.end method

.method public setEditSize(F)V
    .locals 2
    .param p1, "editSize"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->h:F

    .line 250
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->f:Landroid/widget/EditText;

    iget v1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->h:F

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 251
    return-void
.end method

.method public setOnCheckChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->o:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 288
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->n:Landroid/view/View$OnFocusChangeListener;

    .line 284
    return-void
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1
    .param p1, "watcher"    # Landroid/text/TextWatcher;

    .prologue
    .line 277
    if-eqz p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/CheckBoxEditText;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    :cond_0
    return-void
.end method

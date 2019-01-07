.class public Lcom/alibaba/android/user/contact/view/TextEdit;
.super Landroid/widget/RelativeLayout;
.source "TextEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:I

.field private c:I

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:F

.field private h:Landroid/widget/EditText;

.field private i:I

.field private j:F

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Landroid/view/View;

.field private n:I

.field private o:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

.field private p:Landroid/view/View;

.field private q:I

.field private r:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

.field private s:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, -0x1000000

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->c:I

    .line 28
    iput v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->f:I

    .line 32
    iput v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->i:I

    .line 38
    iput v1, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->n:I

    .line 39
    sget-object v0, Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->o:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    .line 42
    iput v1, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->q:I

    .line 43
    sget-object v0, Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->r:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/view/TextEdit;->a(Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, -0x1000000

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->c:I

    .line 28
    iput v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->f:I

    .line 32
    iput v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->i:I

    .line 38
    iput v1, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->n:I

    .line 39
    sget-object v0, Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->o:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    .line 42
    iput v1, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->q:I

    .line 43
    sget-object v0, Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->r:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    .line 83
    invoke-direct {p0, p2, v1}, Lcom/alibaba/android/user/contact/view/TextEdit;->a(Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x1000000

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->c:I

    .line 28
    iput v1, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->f:I

    .line 32
    iput v1, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->i:I

    .line 38
    iput v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->n:I

    .line 39
    sget-object v0, Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->o:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    .line 42
    iput v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->q:I

    .line 43
    sget-object v0, Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;->AlignParent:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->r:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    .line 88
    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/user/contact/view/TextEdit;->a(Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/view/TextEdit;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/view/TextEdit;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->s:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/TextEdit;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lezg$n;->TextEdit:[I

    invoke-virtual {v2, p1, v3, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lezg$n;->TextEdit_icon_src:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->b:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->b:I

    .line 97
    sget v2, Lezg$n;->TextEdit_icon_visibility:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->c:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->c:I

    .line 99
    sget v2, Lezg$n;->TextEdit_text_content:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->e:Ljava/lang/String;

    .line 100
    sget v2, Lezg$n;->TextEdit_text_size:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->g:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->g:F

    .line 101
    sget v2, Lezg$n;->TextEdit_text_color:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->f:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->f:I

    .line 103
    sget v2, Lezg$n;->TextEdit_edit_content:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->k:Ljava/lang/String;

    .line 104
    sget v2, Lezg$n;->TextEdit_edit_hint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->l:Ljava/lang/String;

    .line 105
    sget v2, Lezg$n;->TextEdit_edit_size:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->j:F

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->j:F

    .line 106
    sget v2, Lezg$n;->TextEdit_edit_color:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->i:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->i:I

    .line 108
    sget v2, Lezg$n;->TextEdit_top_divider_visibility:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->n:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->n:I

    .line 109
    sget v2, Lezg$n;->TextEdit_bottom_divider_visibility:I

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->q:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->q:I

    .line 110
    sget v2, Lezg$n;->TextEdit_top_divider_align:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->o:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;->typeValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;->fromValue(I)Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->o:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    .line 111
    sget v2, Lezg$n;->TextEdit_bottom_divider_align:I

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->r:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    invoke-virtual {v3}, Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;->typeValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;->fromValue(I)Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->r:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/TextEdit;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lezg$j;->sample_text_edit:I

    invoke-static {v2, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, "root":Landroid/view/View;
    sget v2, Lezg$h;->ite_iv_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->a:Landroid/widget/ImageView;

    .line 118
    sget v2, Lezg$h;->ite_tv_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->d:Landroid/widget/TextView;

    .line 119
    sget v2, Lezg$h;->ite_et_edit:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->h:Landroid/widget/EditText;

    .line 120
    sget v2, Lezg$h;->ite_top_dividerLine:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->m:Landroid/view/View;

    .line 121
    sget v2, Lezg$h;->ite_bottom_dividerLine:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->p:Landroid/view/View;

    .line 123
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->h:Landroid/widget/EditText;

    new-instance v3, Lcom/alibaba/android/user/contact/view/TextEdit$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/contact/view/TextEdit$1;-><init>(Lcom/alibaba/android/user/contact/view/TextEdit;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1136
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->a:Landroid/widget/ImageView;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->c:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1137
    iget v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->c:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->b:I

    if-lez v2, :cond_0

    .line 1138
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->a:Landroid/widget/ImageView;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->b:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1141
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1142
    iget v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->g:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    .line 1143
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->d:Landroid/widget/TextView;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->g:F

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1145
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->d:Landroid/widget/TextView;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->f:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1147
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->h:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1148
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->h:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1149
    iget v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->g:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 1150
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->h:Landroid/widget/EditText;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->j:F

    invoke-virtual {v2, v5, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1152
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->h:Landroid/widget/EditText;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->i:I

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1154
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->m:Landroid/view/View;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->n:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    iget v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->n:I

    if-nez v2, :cond_3

    .line 1156
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1157
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/TextEdit;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1158
    const/16 v3, 0xa

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1159
    const/4 v3, 0x2

    sget v4, Lezg$h;->ite_tv_text:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1160
    sget-object v3, Lcom/alibaba/android/user/contact/view/TextEdit$2;->a:[I

    iget-object v4, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->o:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1168
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1171
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->m:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1174
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->p:Landroid/view/View;

    iget v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->q:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    iget v2, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->q:I

    if-nez v2, :cond_4

    .line 1176
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1177
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/view/TextEdit;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    invoke-direct {v2, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1178
    const/16 v3, 0xa

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1179
    const/4 v3, 0x3

    sget v4, Lezg$h;->ite_tv_text:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1180
    sget-object v3, Lcom/alibaba/android/user/contact/view/TextEdit$2;->a:[I

    iget-object v4, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->r:Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;

    invoke-virtual {v4}, Lcom/alibaba/android/user/contact/view/TextEdit$DividerAlign;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 1188
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1191
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->p:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    :cond_4
    return-void

    .line 1162
    :pswitch_0
    sget v3, Lezg$h;->ite_iv_icon:I

    invoke-virtual {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 1165
    :pswitch_1
    sget v3, Lezg$h;->ite_tv_text:I

    invoke-virtual {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 1182
    :pswitch_2
    sget v3, Lezg$h;->ite_iv_icon:I

    invoke-virtual {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 1185
    :pswitch_3
    sget v3, Lezg$h;->ite_tv_text:I

    invoke-virtual {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 1160
    .line 1180
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


# virtual methods
.method public getEditContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEditContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->h:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method public setEditMaxLenth(I)V
    .locals 3
    .param p1, "lenth"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 204
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 205
    .local v0, "filters":[Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->h:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 206
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/alibaba/android/user/contact/view/TextEdit;->s:Landroid/view/View$OnFocusChangeListener;

    .line 210
    return-void
.end method

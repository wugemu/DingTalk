.class public Lcom/alibaba/android/dingtalkui/widget/button/DtButton;
.super Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;
.source "DtButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/button/DtButton;->a(Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/widget/button/DtButton;->a(Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/button/AbstractButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/widget/button/DtButton;->a(Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    .local v6, "themeType":I
    const/4 v1, 0x0

    .line 35
    .local v1, "sizeType":I
    const-string/jumbo v4, ""

    .line 37
    .local v4, "text":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/button/DtButton;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lecj$i;->DtButton:[I

    invoke-virtual {v7, p1, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 39
    .local v3, "tArray":Landroid/content/res/TypedArray;
    sget v7, Lecj$i;->DtButton_ui_buttonTheme:I

    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 40
    sget v7, Lecj$i;->DtButton_ui_buttonSize:I

    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 41
    sget v7, Lecj$i;->DtButton_android_text:I

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 42
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 45
    .end local v3    # "tArray":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v7, p0, Lcom/alibaba/android/dingtalkui/widget/button/DtButton;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    packed-switch v6, :pswitch_data_0

    .line 1045
    new-instance v5, Ledj;

    invoke-direct {v5}, Ledj;-><init>()V

    .line 2030
    .local v5, "themeConfig":Lede;
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 2037
    new-instance v0, Ledf;

    invoke-direct {v0}, Ledf;-><init>()V

    .line 49
    .local v0, "sizeConfig":Ledc;
    :goto_1
    new-instance v2, Ledd;

    invoke-direct {v2, v5, v0}, Ledd;-><init>(Lede;Ledc;)V

    .line 50
    .local v2, "style":Ledd;
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/widget/button/DtButton;->setStyle(Ledd;)V

    .line 51
    return-void

    .line 1036
    .end local v0    # "sizeConfig":Ledc;
    .end local v2    # "style":Ledd;
    .end local v5    # "themeConfig":Lede;
    :pswitch_0
    new-instance v5, Ledk;

    invoke-direct {v5}, Ledk;-><init>()V

    goto :goto_0

    .line 1038
    :pswitch_1
    new-instance v5, Ledl;

    invoke-direct {v5}, Ledl;-><init>()V

    goto :goto_0

    .line 1040
    :pswitch_2
    new-instance v5, Ledm;

    invoke-direct {v5}, Ledm;-><init>()V

    goto :goto_0

    .line 1042
    :pswitch_3
    new-instance v5, Ledn;

    invoke-direct {v5}, Ledn;-><init>()V

    goto :goto_0

    .line 2032
    .restart local v5    # "themeConfig":Lede;
    :pswitch_4
    new-instance v0, Ledg;

    invoke-direct {v0}, Ledg;-><init>()V

    goto :goto_1

    .line 2034
    :pswitch_5
    new-instance v0, Ledh;

    invoke-direct {v0}, Ledh;-><init>()V

    goto :goto_1

    .line 1034
    .line 2030
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lecj$f;->_ui_private_button_text_layout:I

    return v0
.end method

.method protected getTextViewInParent()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    sget v0, Lecj$e;->tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/button/DtButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

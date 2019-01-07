.class public Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;
.super Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;
.source "DtTagView.java"


# static fields
.field private static final a:I


# instance fields
.field private b:Ledp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget v0, Lecj$c;->dp2:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->a(Landroid/util/AttributeSet;)V

    .line 27
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
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->a(Landroid/util/AttributeSet;)V

    .line 32
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
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->a(Landroid/util/AttributeSet;)V

    .line 37
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

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lecj$i;->DtTagView:[I

    invoke-virtual {v7, p1, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 49
    .local v3, "tArray":Landroid/content/res/TypedArray;
    sget v7, Lecj$i;->DtTagView_tagTheme:I

    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 50
    .local v6, "themeType":I
    sget v7, Lecj$i;->DtTagView_tagSize:I

    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 51
    .local v1, "sizeType":I
    sget v7, Lecj$i;->DtTagView_android_text:I

    invoke-virtual {v3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 55
    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    :cond_0
    packed-switch v6, :pswitch_data_0

    .line 1044
    new-instance v5, Ledu;

    invoke-direct {v5}, Ledu;-><init>()V

    .line 2027
    .local v5, "theme":Ledq;
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 2032
    new-instance v0, Ledr;

    invoke-direct {v0}, Ledr;-><init>()V

    .line 60
    .local v0, "size":Ledo;
    :goto_1
    new-instance v2, Ledp;

    invoke-direct {v2, v5, v0}, Ledp;-><init>(Ledq;Ledo;)V

    .line 61
    .local v2, "style":Ledp;
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->setStyle(Ledp;)V

    .line 62
    return-void

    .line 1035
    .end local v0    # "size":Ledo;
    .end local v2    # "style":Ledp;
    .end local v5    # "theme":Ledq;
    :pswitch_0
    new-instance v5, Ledw;

    invoke-direct {v5}, Ledw;-><init>()V

    goto :goto_0

    .line 1037
    :pswitch_1
    new-instance v5, Ledx;

    invoke-direct {v5}, Ledx;-><init>()V

    goto :goto_0

    .line 1039
    :pswitch_2
    new-instance v5, Ledy;

    invoke-direct {v5}, Ledy;-><init>()V

    goto :goto_0

    .line 1041
    :pswitch_3
    new-instance v5, Ledv;

    invoke-direct {v5}, Ledv;-><init>()V

    goto :goto_0

    .line 2029
    .restart local v5    # "theme":Ledq;
    :pswitch_4
    new-instance v0, Leds;

    invoke-direct {v0}, Leds;-><init>()V

    goto :goto_1

    .line 1033
    .line 2027
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getStyle()Ledp;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->b:Ledp;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 44
    return-void
.end method

.method public setSize(Ledo;)V
    .locals 1
    .param p1, "size"    # Ledo;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->getStyle()Ledp;

    move-result-object v0

    .line 2091
    .local v0, "style":Ledp;
    iput-object p1, v0, Ledp;->b:Ledo;

    .line 95
    invoke-virtual {v0}, Ledp;->a()V

    .line 96
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->setStyle(Ledp;)V

    .line 97
    return-void
.end method

.method public setStyle(Ledp;)V
    .locals 4
    .param p1, "style"    # Ledp;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 66
    iput-object p1, p0, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->b:Ledp;

    .line 67
    invoke-virtual {p1}, Ledp;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p1}, Ledp;->c()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 70
    invoke-virtual {p1}, Ledp;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v3, v1}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->setTextSize(IF)V

    .line 72
    sget v1, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->a:I

    sget v2, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->a:I

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->setPadding(IIII)V

    .line 74
    invoke-virtual {p1}, Ledp;->d()I

    move-result v0

    .line 75
    .local v0, "mHeight":I
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->setMaxHeight(I)V

    .line 76
    return-void
.end method

.method public setTheme(Ledq;)V
    .locals 1
    .param p1, "theme"    # Ledq;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->getStyle()Ledp;

    move-result-object v0

    .line 2087
    .local v0, "style":Ledp;
    iput-object p1, v0, Ledp;->a:Ledq;

    .line 87
    invoke-virtual {v0}, Ledp;->a()V

    .line 88
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/widget/tag/DtTagView;->setStyle(Ledp;)V

    .line 89
    return-void
.end method

.class public Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;
.super Lcom/alibaba/android/dingtalkui/widget/text/font/DtBodyTextView;
.source "FormLabelTextView.java"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/text/font/DtBodyTextView;-><init>(Landroid/content/Context;)V

    .line 17
    const-string/jumbo v0, "Level1LabelTextView"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->a:Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->b()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/text/font/DtBodyTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const-string/jumbo v0, "Level1LabelTextView"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->a:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->b()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/text/font/DtBodyTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const-string/jumbo v0, "Level1LabelTextView"

    iput-object v0, p0, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->a:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->b()V

    .line 32
    return-void
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_content_fg_color_alpha_88:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormLabelTextView;->setTextColor(I)V

    .line 36
    return-void
.end method

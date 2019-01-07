.class public Lcom/alibaba/android/dingtalkui/form/privatewidget/FormEditText;
.super Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;
.source "FormEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormEditText;->a()V

    .line 38
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
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormEditText;->a()V

    .line 43
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
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormEditText;->a()V

    .line 48
    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$b;->ui_common_text_content_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormEditText;->setTextColor(I)V

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_text_content_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormEditText;->setTextSize(IF)V

    .line 53
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormEditText;->setFocusable(Z)V

    .line 54
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormEditText;->setFocusableInTouchMode(Z)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormEditText;->setPadding(IIII)V

    .line 60
    const v0, 0x800033

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormEditText;->setGravity(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/form/privatewidget/FormEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/widget/base/AbstractEditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

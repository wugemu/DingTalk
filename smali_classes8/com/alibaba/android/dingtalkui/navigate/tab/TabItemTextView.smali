.class Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "TabItemTextView.java"


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private final c:I

.field private d:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget v0, Lecj$c;->ui_common_subhead_text_size:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->a:I

    .line 27
    sget v0, Lecj$c;->ui_common_footnote_text_size:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_navigate_tab_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->c:I

    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->b()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_navigate_tab_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->c:I

    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->b()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lecj$c;->ui_common_navigate_tab_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->c:I

    .line 45
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->b()V

    .line 46
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textWidth"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 111
    if-lez p2, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->getPaddingLeft()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->getPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 113
    .local v0, "availableTextWidth":I
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->c()V

    .line 114
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setMaxLines(I)V

    .line 115
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 116
    .local v1, "length":F
    int-to-float v2, v0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 1081
    const/4 v2, 0x0

    sget v3, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->b:I

    int-to-float v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setTextSize(IF)V

    .line 118
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setMaxLines(I)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->invalidate()V

    .line 122
    .end local v0    # "availableTextWidth":I
    .end local v1    # "length":F
    :cond_1
    return-void
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 49
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setGravity(I)V

    .line 50
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setMaxLines(I)V

    .line 51
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52
    iget v2, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->c:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setMaxWidth(I)V

    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->c()V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->a()V

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 58
    .local v1, "res":Landroid/content/res/Resources;
    sget v2, Lecj$c;->ui_common_navigate_tab_item_padding_horizontal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 59
    .local v0, "paddingHorizontal":I
    invoke-virtual {p0, v0, v3, v0, v3}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setPadding(IIII)V

    .line 66
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->d:Landroid/graphics/Paint;

    .line 67
    iget-object v2, p0, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 68
    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 74
    const/4 v0, 0x0

    sget v1, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->a:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setTextSize(IF)V

    .line 75
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 95
    sget v0, Lecj$b;->ui_common_level1_base_color:I

    invoke-static {v0}, Leda;->b(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->setTextColor(I)V

    .line 96
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->onSizeChanged(IIII)V

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->a(Ljava/lang/String;I)V

    .line 108
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 101
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/dingtalkui/navigate/tab/TabItemTextView;->a(Ljava/lang/String;I)V

    .line 102
    return-void
.end method

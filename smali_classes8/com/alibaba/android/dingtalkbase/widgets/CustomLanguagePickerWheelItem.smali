.class public Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;
.super Landroid/widget/FrameLayout;
.source "CustomLanguagePickerWheelItem.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->a()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->a()V

    .line 35
    return-void
.end method

.method private a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 46
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->a:Landroid/widget/TextView;

    .line 47
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->a:Landroid/widget/TextView;

    const/16 v3, 0x2710

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 48
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 49
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->a:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 50
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 51
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->a:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v2, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 53
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v1, "textLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, 0x0

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 55
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->b:Landroid/widget/TextView;

    .line 57
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->b:Landroid/widget/TextView;

    const/16 v3, 0x2711

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    .line 59
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->b:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 60
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 61
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->b:Landroid/widget/TextView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v2, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 63
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v0, "textDesLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v2, 0x0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 65
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    invoke-static {}, Lcnv;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const/high16 v2, 0x60000

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->setDescendantFocusability(I)V

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method public setTextDes(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/CustomLanguagePickerWheelItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

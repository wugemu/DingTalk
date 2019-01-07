.class public Lcom/alibaba/android/user/widget/LabelButton;
.super Landroid/widget/CompoundButton;
.source "LabelButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/user/widget/LabelButton;->a()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/user/widget/LabelButton;->a()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/user/widget/LabelButton;->a()V

    .line 48
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/widget/LabelButton;->setClickable(Z)V

    .line 52
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/LabelButton;->setGravity(I)V

    .line 53
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/LabelButton;->setEms(I)V

    .line 54
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/LabelButton;->setLines(I)V

    .line 55
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/LabelButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 56
    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/user/widget/LabelButton;->setTextSize(IF)V

    .line 57
    sget v0, Lezg$g;->label_button_selector:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/LabelButton;->setBackgroundResource(I)V

    .line 58
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 63
    const-class v0, Lcom/alibaba/android/user/widget/LabelButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 69
    const-class v0, Lcom/alibaba/android/user/widget/LabelButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

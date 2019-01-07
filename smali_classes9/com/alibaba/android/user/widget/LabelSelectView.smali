.class public Lcom/alibaba/android/user/widget/LabelSelectView;
.super Landroid/widget/CompoundButton;
.source "LabelSelectView.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/user/widget/LabelSelectView;->a()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/user/widget/LabelSelectView;->a()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0}, Lcom/alibaba/android/user/widget/LabelSelectView;->a()V

    .line 53
    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/widget/LabelSelectView;->setClickable(Z)V

    .line 57
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/LabelSelectView;->setGravity(I)V

    .line 58
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/LabelSelectView;->setEms(I)V

    .line 59
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/LabelSelectView;->setLines(I)V

    .line 60
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/widget/LabelSelectView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 61
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/android/user/widget/LabelSelectView;->setTextSize(IF)V

    .line 62
    return-void
.end method

.method private setViewBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/widget/LabelSelectView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/widget/LabelSelectView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 86
    const-class v0, Lcom/alibaba/android/user/widget/LabelSelectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 92
    const-class v0, Lcom/alibaba/android/user/widget/LabelSelectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public setChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/LabelSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$g;->label_view_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/android/user/widget/LabelSelectView;->setViewBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/LabelSelectView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 70
    .local v0, "background":Landroid/graphics/drawable/GradientDrawable;
    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 73
    :cond_0
    if-eqz p1, :cond_1

    .line 74
    iget v2, p0, Lcom/alibaba/android/user/widget/LabelSelectView;->a:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    const/high16 v3, 0x26000000

    or-int v1, v2, v3

    .line 75
    .local v1, "bgColor":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 76
    iget v2, p0, Lcom/alibaba/android/user/widget/LabelSelectView;->a:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/widget/LabelSelectView;->setTextColor(I)V

    goto :goto_0

    .line 78
    .end local v1    # "bgColor":I
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/LabelSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->uidic_global_background_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/android/user/widget/LabelSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$e;->text_color_black:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/widget/LabelSelectView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/alibaba/android/user/widget/LabelSelectView;->a:I

    .line 97
    return-void
.end method

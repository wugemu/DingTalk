.class public Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;
.super Landroid/widget/EditText;
.source "ClearableEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcrx$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText$a;

.field private d:Landroid/view/View$OnTouchListener;

.field private e:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->a:Z

    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->a()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->a:Z

    .line 42
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->a()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->a:Z

    .line 47
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->a()V

    .line 48
    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 116
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108006a

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setClearIconVisible(Z)V

    .line 122
    invoke-super {p0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    invoke-super {p0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 124
    new-instance v0, Lcrx;

    invoke-direct {v0, p0, p0}, Lcrx;-><init>(Landroid/widget/EditText;Lcrx$a;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 125
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setClearIconVisible(Z)V

    .line 101
    :cond_0
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 86
    if-eqz p2, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setClearIconVisible(Z)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->e:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->e:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 94
    :cond_1
    return-void

    .line 89
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setClearIconVisible(Z)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 67
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x14

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move v0, v1

    .line 68
    .local v0, "tappedX":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 70
    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText$a;

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText$a;

    invoke-interface {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText$a;->a()V

    .line 81
    .end local v0    # "tappedX":Z
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 67
    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->d:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_3

    .line 79
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->d:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 81
    goto :goto_1
.end method

.method public setClearAble(Z)V
    .locals 1
    .param p1, "clearAble"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->a:Z

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setClearIconVisible(Z)V

    .line 108
    :cond_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClearDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 137
    if-eqz p1, :cond_0

    .line 138
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 141
    :cond_0
    return-void
.end method

.method protected setClearIconVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 128
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->a:Z

    if-nez v1, :cond_0

    .line 129
    const/4 p1, 0x0

    .line 131
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 132
    .local v0, "x":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    .line 132
    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 134
    return-void

    .line 131
    .end local v0    # "x":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText$a;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->c:Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText$a;

    .line 29
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "f"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->e:Landroid/view/View$OnFocusChangeListener;

    .line 58
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->d:Landroid/view/View$OnTouchListener;

    .line 53
    return-void
.end method

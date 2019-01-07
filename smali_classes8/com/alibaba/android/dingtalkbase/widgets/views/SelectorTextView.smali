.class public Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorTextView;
.super Landroid/widget/TextView;
.source "SelectorTextView.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    const/16 v0, 0x66

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorTextView;->a:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/16 v0, 0x66

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorTextView;->a:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/16 v0, 0x66

    iput v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorTextView;->a:I

    .line 29
    return-void
.end method


# virtual methods
.method public setPressedAlpha(I)V
    .locals 1
    .param p1, "pressedAlpha"    # I

    .prologue
    .line 32
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorTextView;->a:I

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 9
    .param p1, "color"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 40
    new-array v3, v8, [[I

    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    aput-object v4, v3, v6

    new-array v4, v6, [I

    aput-object v4, v3, v7

    .line 45
    .local v3, "states":[[I
    const v4, 0xffffff

    and-int/2addr v4, p1

    iget v5, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/SelectorTextView;->a:I

    shl-int/lit8 v5, v5, 0x18

    or-int v2, v4, v5

    .line 47
    .local v2, "pressedColor":I
    new-array v1, v8, [I

    aput v2, v1, v6

    aput p1, v1, v7

    .line 51
    .local v1, "colors":[I
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v3, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 52
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 53
    return-void
.end method

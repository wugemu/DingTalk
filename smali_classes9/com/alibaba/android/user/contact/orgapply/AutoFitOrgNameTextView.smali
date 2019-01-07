.class public Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "AutoFitOrgNameTextView.java"


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private c:I

.field private d:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget v0, Lezg$f;->dp22:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->a:I

    .line 22
    sget v0, Lezg$f;->dp17:I

    invoke-static {v0}, Leda;->d(I)I

    move-result v0

    sput v0, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
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
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    sget v0, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->a:I

    iput v0, p0, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->c:I

    .line 1043
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->d:Landroid/graphics/Paint;

    .line 1044
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 37
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textWidth"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 60
    if-lez p2, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->getPaddingLeft()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->getPaddingRight()I

    move-result v4

    sub-int v0, v3, v4

    .line 62
    .local v0, "availableTextWidth":I
    iget v3, p0, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->c:I

    int-to-float v2, v3

    .line 63
    .local v2, "tsTextSize":F
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 64
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->setMaxLines(I)V

    .line 65
    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->d:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 66
    .local v1, "length":F
    int-to-float v3, v0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    .line 67
    sget v3, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->b:I

    int-to-float v2, v3

    .line 68
    const v3, 0x7fffffff

    invoke-virtual {p0, v3}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->setMaxLines(I)V

    .line 70
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->setTextSize(IF)V

    .line 71
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->invalidate()V

    .line 73
    .end local v0    # "availableTextWidth":I
    .end local v1    # "length":F
    .end local v2    # "tsTextSize":F
    :cond_1
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->onSizeChanged(IIII)V

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->a(Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 50
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->getWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->a(Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public setNormalTextSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/alibaba/android/user/contact/orgapply/AutoFitOrgNameTextView;->c:I

    .line 41
    return-void
.end method

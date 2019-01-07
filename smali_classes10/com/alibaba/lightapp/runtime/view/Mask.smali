.class public Lcom/alibaba/lightapp/runtime/view/Mask;
.super Landroid/view/View;
.source "Mask.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/Mask;->a:Z

    .line 19
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/view/Mask;->a()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/Mask;->a:Z

    .line 24
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/view/Mask;->a()V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/Mask;->a:Z

    .line 29
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/view/Mask;->a()V

    .line 30
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 34
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/Mask;->setBackgroundColor(I)V

    .line 1044
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/view/Mask;->a:Z

    .line 1045
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/view/Mask;->setAlpha(F)V

    .line 36
    return-void
.end method


# virtual methods
.method public getShadow()F
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/view/Mask;->getAlpha()F

    move-result v0

    return v0
.end method

.method public setShadow(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/view/Mask;->setAlpha(F)V

    .line 50
    return-void
.end method

.class public Lcom/alibaba/alimei/mail/widget/ComposeScrollView;
.super Landroid/widget/ScrollView;
.source "ComposeScrollView.java"


# instance fields
.field public a:Landroid/graphics/Rect;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->a:Landroid/graphics/Rect;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->b:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->a:Landroid/graphics/Rect;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->b:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->a:Landroid/graphics/Rect;

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->b:I

    .line 27
    return-void
.end method


# virtual methods
.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

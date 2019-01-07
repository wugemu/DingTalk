.class public Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;
.super Landroid/widget/LinearLayout;
.source "TitleBarWebViewFooterView.java"


# instance fields
.field a:Z

.field b:I

.field c:I

.field public d:Lsg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->b:I

    .line 19
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->c:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->b:I

    .line 19
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->c:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, -0x1

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->b:I

    .line 19
    iput v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->c:I

    .line 35
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->a:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 62
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, "shouldNotDo":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 50
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 54
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 66
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->d:Lsg;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->b:I

    if-eq v0, p3, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->d:Lsg;

    invoke-interface {v0, p0}, Lsg;->a(Landroid/view/View;)V

    .line 73
    iput p3, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->b:I

    .line 77
    :cond_0
    return-void
.end method

.method public setOnLayoutChangedListener(Lsg;)V
    .locals 0
    .param p1, "listener"    # Lsg;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->d:Lsg;

    .line 30
    return-void
.end method

.method public setVisiable(Z)V
    .locals 0
    .param p1, "visiable"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->a:Z

    .line 23
    invoke-virtual {p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->invalidate()V

    .line 24
    return-void
.end method

.class public Lcom/alibaba/alimei/cmail/widget/mail/SignatureTitleBarWebView;
.super Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;
.source "SignatureTitleBarWebView.java"


# instance fields
.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SignatureTitleBarWebView;->h:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SignatureTitleBarWebView;->h:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SignatureTitleBarWebView;->h:Z

    .line 24
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "paramMotionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/alibaba/alimei/cmail/widget/mail/SignatureTitleBarWebView;->i:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-super {p0, p1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableTouchEvent(Z)V
    .locals 0
    .param p1, "enableTouchEvent"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/alibaba/alimei/cmail/widget/mail/SignatureTitleBarWebView;->i:Z

    .line 41
    return-void
.end method

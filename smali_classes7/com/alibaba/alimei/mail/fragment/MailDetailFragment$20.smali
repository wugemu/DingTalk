.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$20;
.super Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;
.source "MailDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$20;->i:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "paramMotionEvent"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 552
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$20;->i:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$20;->i:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->c(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->onClick(Landroid/view/View;)V

    .line 555
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

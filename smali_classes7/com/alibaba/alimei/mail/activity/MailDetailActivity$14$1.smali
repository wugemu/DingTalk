.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14$1;
.super Ljava/lang/Object;
.source "MailDetailActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;

    .prologue
    .line 1990
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2003
    :goto_0
    return-void

    .line 1996
    :cond_0
    const/16 v0, 0x10

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_1

    .line 1997
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2001
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->l(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;

    iget-object v2, v2, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->m(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 2002
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1999
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14$1;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method

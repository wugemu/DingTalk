.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;
.super Ljava/lang/Object;
.source "MailDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 1978
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1981
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->j(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v1}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2008
    :cond_0
    :goto_0
    return-void

    .line 1985
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1987
    invoke-static {}, Lacq;->d()Z

    move-result v0

    .line 1989
    .local v0, "enableQuickReply":Z
    if-eqz v0, :cond_0

    .line 1990
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->k(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14$1;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity$14;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

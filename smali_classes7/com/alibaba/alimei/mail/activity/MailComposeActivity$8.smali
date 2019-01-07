.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$8;
.super Ljava/lang/Object;
.source "MailComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$8;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

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
    .line 1291
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$8;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v1}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1298
    :goto_0
    return-void

    .line 1294
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$8;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->k(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1295
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$8;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    sget v2, Laxo$a;->pop_bottom:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1296
    .local v0, "animation1":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$8;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->k(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 1297
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$8;->a:Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->k(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

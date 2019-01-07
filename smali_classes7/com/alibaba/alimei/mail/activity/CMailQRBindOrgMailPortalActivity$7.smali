.class final Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$7;
.super Ljava/lang/Object;
.source "CMailQRBindOrgMailPortalActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$7;->d:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$7;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$7;->b:J

    iput-object p5, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$7;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 439
    const-string/jumbo v0, "mail_qr_token"

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$7;->d:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string/jumbo v0, "mail_bind_org_name"

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$7;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string/jumbo v0, "mail_bind_org_id"

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$7;->b:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 442
    const-string/jumbo v0, "mail_bind_mail_accpunt"

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$7;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    return-object p1
.end method

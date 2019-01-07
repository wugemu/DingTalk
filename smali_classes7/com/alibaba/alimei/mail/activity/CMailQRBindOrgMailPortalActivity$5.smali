.class final Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$5;
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
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$5;->c:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$5;->a:Ljava/lang/Long;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$5;->b:Ljava/lang/String;

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
    .line 348
    const-string/jumbo v0, "mail_bind_org_id"

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$5;->a:Ljava/lang/Long;

    .line 1044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 348
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 349
    const-string/jumbo v0, "mail_bind_org_name"

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$5;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string/jumbo v0, "mail_qr_token"

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$5;->c:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    return-object p1
.end method

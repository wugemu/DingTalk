.class final Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$2;
.super Lcmi;
.source "CMailQRBindOrgMailPortalActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Laae;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 237
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    const-string/jumbo v1, "getUserOrgList"

    invoke-static {v0, v1, p1, p2, p3}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 217
    check-cast p1, Laae;

    .line 1220
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->dismissLoadingDialog()V

    .line 1226
    if-eqz p1, :cond_1

    .line 1227
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    iget-object v1, p1, Laae;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    const-string/jumbo v0, "getUserOrgList result is empty"

    invoke-static {v0}, Lafg;->a(Ljava/lang/String;)V

    .line 1231
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailQRBindOrgMailPortalActivity;Ljava/util/List;)V

    goto :goto_0
.end method

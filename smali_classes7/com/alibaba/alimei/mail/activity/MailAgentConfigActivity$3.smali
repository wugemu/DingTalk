.class final Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$3;
.super Lcmi;
.source "MailAgentConfigActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    .prologue
    .line 848
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 864
    const-string/jumbo v0, "queryOrgEmailManageUrl"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    :goto_0
    return-void

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->finish()V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 848
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 1851
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1855
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1856
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    const/4 v3, 0x0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1859
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity$3;->a:Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailAgentConfigActivity;->finish()V

    .line 848
    :cond_1
    return-void
.end method

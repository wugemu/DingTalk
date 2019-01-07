.class final Lacg$74;
.super Ljava/lang/Object;
.source "MailNavigator.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lacg;->e(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 4826
    iput-object p1, p0, Lacg$74;->a:Ljava/lang/String;

    iput-object p2, p0, Lacg$74;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "e"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 4859
    const-string/jumbo v0, "navToCollectionServerConfig, queryAccountByName, e:"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 4860
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 4826
    check-cast p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 5829
    if-eqz p1, :cond_0

    .line 5830
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5831
    const-string/jumbo v0, "mail_account_name"

    iget-object v2, p0, Lacg$74;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5832
    const-string/jumbo v0, "imap_server"

    iget-object v2, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingServer:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5834
    :try_start_0
    const-string/jumbo v0, "imap_port"

    iget-object v2, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPort:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5841
    :goto_0
    const-string/jumbo v0, "imap_ssl"

    iget-boolean v2, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingSsl:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5843
    const-string/jumbo v0, "smtp_server"

    iget-object v2, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpServer:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5845
    :try_start_1
    const-string/jumbo v0, "smtp_port"

    iget-object v2, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPort:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5852
    :goto_1
    const-string/jumbo v2, "smtp_ssl"

    iget v0, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpSecurityType:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5854
    iget-object v0, p0, Lacg$74;->b:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lacg;->a(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 4826
    :cond_0
    return-void

    .line 5835
    :catch_0
    move-exception v0

    .line 5836
    const-string/jumbo v2, "navToCollectionServerConfig"

    invoke-static {v2, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5837
    const-string/jumbo v2, "imap_port"

    iget-boolean v0, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingSsl:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x3e1

    :goto_3
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8f

    goto :goto_3

    .line 5846
    :catch_1
    move-exception v0

    .line 5847
    const-string/jumbo v2, "navToCollectionServerConfig"

    invoke-static {v2, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 5848
    const-string/jumbo v2, "imap_port"

    iget-boolean v0, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingSsl:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x1d1

    :goto_4
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x19

    goto :goto_4

    .line 5852
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.class Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$16;
.super Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;
.source "CommonMailApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->autoSetCopySendMail2SentFolder(Lxv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/framework/api/AccountCheckRunnable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$16;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    invoke-direct {p0, p2}, Lcom/alibaba/alimei/framework/api/AccountCheckRunnable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleExecuteResult(Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 17
    .param p1, "apiResult"    # Lcom/alibaba/alimei/framework/api/ApiResult;
    .param p2, "account"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 1085
    :try_start_0
    new-instance v2, Lcom/alibaba/alimei/emailcommon/CommonAccount;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPassword:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingServer:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingPort:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-boolean v7, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingSsl:Z

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/alimei/emailcommon/CommonAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1086
    .local v2, "commonAccount":Lcom/alibaba/alimei/emailcommon/CommonAccount;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPassword:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpServer:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpPort:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v6, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->smtpSecurityType:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->setSmtp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1087
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1088
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->setEnableSasl(Z)V

    .line 1089
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->oauthToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->setOauthToken(Ljava/lang/String;)V

    .line 1091
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->getCommonEmailAPI()Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;

    move-result-object v3

    sget-object v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->app:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->checkAccount(Landroid/content/Context;Lcom/alibaba/alimei/emailcommon/CommonAccount;)Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v12

    .line 1093
    .local v12, "innerAccount":Lcom/alibaba/alimei/emailcommon/Account;
    if-eqz v12, :cond_2

    .line 1767
    const/4 v3, 0x0

    invoke-static {v12, v3}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;Z)Lvt;

    move-result-object v16

    .line 1095
    .local v16, "store":Lvt;
    move-object/from16 v0, v16

    instance-of v3, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    if-eqz v3, :cond_2

    .line 1096
    move-object/from16 v0, v16

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    move-object v10, v0

    .line 1097
    .local v10, "imapStore":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    invoke-virtual {v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->d()Lwl;

    move-result-object v14

    .line 1098
    .local v14, "server":Lwl;
    if-eqz v14, :cond_2

    .line 1099
    invoke-interface {v14}, Lwl;->a()I

    move-result v15

    .line 1100
    .local v15, "serverType":I
    const/4 v3, 0x4

    if-eq v15, v3, :cond_1

    const/4 v3, 0x1

    if-eq v15, v3, :cond_1

    const/16 v3, 0x8

    if-ne v15, v3, :cond_2

    .line 1103
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$16;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v3, v0, v1, v4}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$1300(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    .end local v2    # "commonAccount":Lcom/alibaba/alimei/emailcommon/CommonAccount;
    .end local v10    # "imapStore":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    .end local v12    # "innerAccount":Lcom/alibaba/alimei/emailcommon/Account;
    .end local v14    # "server":Lwl;
    .end local v15    # "serverType":I
    .end local v16    # "store":Lvt;
    :goto_0
    return-void

    .line 1109
    :catch_0
    move-exception v9

    .line 1110
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1113
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->incomingServer:Ljava/lang/String;

    .line 1115
    .local v11, "incomingServer":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1116
    invoke-static {}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "auto set copy sent mail, check incomming server:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v13, 0x1

    .line 1120
    .local v13, "result":Z
    invoke-static {}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$1400()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v8, v4, v3

    .line 1121
    .local v8, "checkDomain":Ljava/lang/String;
    invoke-virtual {v11, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1122
    const/4 v13, 0x0

    .line 1127
    .end local v8    # "checkDomain":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl$16;->this$0:Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v3, v0, v1, v13}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;->access$1300(Lcom/alibaba/alimei/adpater/api/impl/CommonMailApiImpl;Lcom/alibaba/alimei/framework/api/ApiResult;Lcom/alibaba/alimei/framework/model/UserAccountModel;Z)V

    goto :goto_0

    .line 1120
    .restart local v8    # "checkDomain":Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1129
    .end local v8    # "checkDomain":Ljava/lang/String;
    .end local v13    # "result":Z
    :cond_5
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/alibaba/alimei/framework/api/ApiResult;->result:Ljava/lang/Object;

    goto :goto_0
.end method

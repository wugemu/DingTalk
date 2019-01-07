.class public final Lpr$1;
.super Ljava/lang/Object;
.source "AttachmentDownloadController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

.field final synthetic c:Lpr;


# direct methods
.method public constructor <init>(Lpr;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 0
    .param p1, "this$0"    # Lpr;

    .prologue
    .line 109
    iput-object p1, p0, Lpr$1;->c:Lpr;

    iput-object p2, p0, Lpr$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lpr$1;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 113
    :try_start_0
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v0

    iget-object v2, p0, Lpr$1;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lpq;->getAccountByMail(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v1

    .line 115
    .local v1, "account":Lcom/alibaba/alimei/emailcommon/Account;
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v0

    iget-object v2, p0, Lpr$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v11

    .line 116
    .local v11, "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v11, :cond_0

    .line 117
    iget-object v0, p0, Lpr$1;->c:Lpr;

    .line 1064
    iget-object v0, v0, Lpr;->b:Lyc;

    .line 117
    const/4 v2, 0x2

    iput v2, v0, Lyc;->c:I

    .line 118
    iget-object v0, p0, Lpr$1;->c:Lpr;

    .line 2064
    iget-object v0, v0, Lpr;->c:Lya;

    .line 118
    iget-object v2, p0, Lpr$1;->c:Lpr;

    .line 3064
    iget-object v2, v2, Lpr;->b:Lyc;

    .line 118
    invoke-interface {v0, v2}, Lya;->a(Lyc;)V

    .line 198
    .end local v1    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    .end local v11    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :goto_0
    return-void

    .line 122
    .restart local v1    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    .restart local v11    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMessageDatasource()Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;

    move-result-object v0

    .line 123
    invoke-virtual {v11}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v6

    iget-object v2, p0, Lpr$1;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v8, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->messageId:J

    invoke-interface {v0, v6, v7, v8, v9}, Lcom/alibaba/alimei/sdk/datasource/MessageDatasource;->queryMessageById(JJ)Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-result-object v14

    .line 125
    .local v14, "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-nez v14, :cond_1

    .line 126
    iget-object v0, p0, Lpr$1;->c:Lpr;

    .line 4064
    iget-object v0, v0, Lpr;->b:Lyc;

    .line 126
    const/4 v2, 0x2

    iput v2, v0, Lyc;->c:I

    .line 127
    iget-object v0, p0, Lpr$1;->c:Lpr;

    .line 5064
    iget-object v0, v0, Lpr;->c:Lya;

    .line 127
    iget-object v2, p0, Lpr$1;->c:Lpr;

    .line 6064
    iget-object v2, v2, Lpr;->b:Lyc;

    .line 127
    invoke-interface {v0, v2}, Lya;->a(Lyc;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    .end local v1    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    .end local v11    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .end local v14    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :catch_0
    move-exception v12

    .line 196
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v1    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    .restart local v11    # "accountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    .restart local v14    # "message":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v0

    iget-wide v6, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    invoke-interface {v0, v6, v7}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryMailboxByIdForSyncKey(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v13

    .line 133
    .local v13, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v13, :cond_2

    .line 134
    iget-object v0, p0, Lpr$1;->c:Lpr;

    .line 7064
    iget-object v0, v0, Lpr;->b:Lyc;

    .line 134
    const/4 v2, 0x2

    iput v2, v0, Lyc;->c:I

    .line 135
    iget-object v0, p0, Lpr$1;->c:Lpr;

    .line 8064
    iget-object v0, v0, Lpr;->c:Lya;

    .line 135
    iget-object v2, p0, Lpr$1;->c:Lpr;

    .line 9064
    iget-object v2, v2, Lpr;->b:Lyc;

    .line 135
    invoke-interface {v0, v2}, Lya;->a(Lyc;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-wide v3, v14, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mUid:J

    .line 140
    .local v3, "uid":J
    invoke-static {}, Lpu;->a()Lpu;

    move-result-object v0

    iget-object v2, v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    iget-object v5, p0, Lpr$1;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->partId:Ljava/lang/String;

    iget-object v6, p0, Lpr$1;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->encoding:Ljava/lang/String;

    iget-object v7, p0, Lpr$1;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v7, v7, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentType:Ljava/lang/String;

    iget-object v8, p0, Lpr$1;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-wide v8, v8, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    new-instance v10, Lpr$1$1;

    invoke-direct {v10, p0}, Lpr$1$1;-><init>(Lpr$1;)V

    invoke-virtual/range {v0 .. v10}, Lpu;->a(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLuv;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

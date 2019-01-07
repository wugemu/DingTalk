.class public Lcom/alibaba/alimei/sdk/datasource/impl/AccountAdditionalDatasourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "AccountAdditionalDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/sdk/datasource/AccountAdditionalDatasource;


# static fields
.field private static final PAGE_SIZE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "AccountAdditionalDatasourceImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    return-void
.end method

.method private deleteCalendarData(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 3
    .param p1, "accountModel"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 176
    if-nez p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v1, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v0

    .line 184
    .local v0, "datasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    iget-object v1, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->deleteCalendarAccount(Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private removeMailData(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 34
    .param p1, "accountModel"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 169
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v4

    .line 65
    .local v4, "accountId":J
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    .line 68
    .local v6, "accountName":Ljava/lang/String;
    new-instance v11, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v30, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v31, "EmailProvider.db"

    const-string/jumbo v32, "Mailbox"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v11, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v11, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v30, "accountKey"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v16

    .line 71
    .local v16, "mailboxCount":I
    const-string/jumbo v30, "AccountAdditionalDatasourceImpl"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "delete mailboxCount = "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v11, Lcom/alibaba/alimei/orm/query/Delete;

    .end local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-class v30, Lcom/alibaba/alimei/sdk/db/mail/entry/Tag;

    const-string/jumbo v31, "EmailProvider.db"

    const-string/jumbo v32, "tags"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v11, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .restart local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v30, "account_key"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v29

    .line 77
    .local v29, "tagCount":I
    const-string/jumbo v30, "AccountAdditionalDatasourceImpl"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "delete tagCount = "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v25, Lcom/alibaba/alimei/orm/query/Select;

    const-class v30, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v31, "EmailProvider.db"

    const-string/jumbo v32, "Message"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v25, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v30, "_id"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v30, "accountKey"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v19

    .line 86
    .local v19, "msgList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Message;>;"
    new-instance v11, Lcom/alibaba/alimei/orm/query/Delete;

    .end local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-class v30, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v31, "EmailProvider.db"

    const-string/jumbo v32, "Message"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v11, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .restart local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v30, "accountKey"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v17

    .line 89
    .local v17, "msgCount":I
    const-string/jumbo v30, "AccountAdditionalDatasourceImpl"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "delete msgCount = "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v11, Lcom/alibaba/alimei/orm/query/Delete;

    .end local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-class v30, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const-string/jumbo v31, "EmailProvider.db"

    const-string/jumbo v32, "SyncMsg"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v11, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .restart local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v30, "accountId"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v20

    .line 95
    .local v20, "msgSyncCount":I
    const-string/jumbo v30, "AccountAdditionalDatasourceImpl"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "delete readStatusCount = "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v11, Lcom/alibaba/alimei/orm/query/Delete;

    .end local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-class v30, Lcom/alibaba/alimei/sdk/db/mail/entry/MailReadStatusEntry;

    const-string/jumbo v31, "EmailProvider.db"

    const-string/jumbo v32, "mailReadStatusCache"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v11, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .restart local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v30, "accountKey"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v22

    .line 101
    .local v22, "readStatusCount":I
    const-string/jumbo v30, "AccountAdditionalDatasourceImpl"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "delete readStatusCount = "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v11, Lcom/alibaba/alimei/orm/query/Delete;

    .end local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-class v30, Lcom/alibaba/alimei/sdk/db/mail/entry/MailParticipantsEntry;

    const-string/jumbo v31, "EmailProvider.db"

    const-string/jumbo v32, "mailParticipants"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v11, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .restart local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v30, "accountKey"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v21

    .line 107
    .local v21, "participantCount":I
    const-string/jumbo v30, "AccountAdditionalDatasourceImpl"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "delete participantCount = "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v11, Lcom/alibaba/alimei/orm/query/Delete;

    .end local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-class v30, Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;

    const-string/jumbo v31, "EmailProvider.db"

    const-string/jumbo v32, "recipient_lookup"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v11, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .restart local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v30, "account"

    move-object/from16 v0, v30

    invoke-virtual {v11, v0, v6}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v23

    .line 113
    .local v23, "recipientCount":I
    const-string/jumbo v30, "AccountAdditionalDatasourceImpl"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "delete recipientCount = "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v11, Lcom/alibaba/alimei/orm/query/Delete;

    .end local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-class v30, Lcom/alibaba/alimei/sdk/db/frequentcontacts/entry/FrequentContactEntry;

    const-string/jumbo v31, "EmailProvider.db"

    const-string/jumbo v32, "frequent_contact"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v11, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .restart local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v30, "account_id"

    move-object/from16 v0, v30

    invoke-virtual {v11, v0, v6}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v12

    .line 119
    .local v12, "freCount":I
    const-string/jumbo v30, "AccountAdditionalDatasourceImpl"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "delete freCount = "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v11, Lcom/alibaba/alimei/orm/query/Delete;

    .end local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-class v30, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    const-string/jumbo v31, "EmailProvider.db"

    const-string/jumbo v32, "Attachment"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v11, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .restart local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v30, "accountKey"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v7

    .line 125
    .local v7, "attCount":I
    const-string/jumbo v30, "AccountAdditionalDatasourceImpl"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "delete attCount = "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v11, Lcom/alibaba/alimei/orm/query/Delete;

    .end local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-class v30, Lcom/alibaba/alimei/sdk/db/mail/entry/MailRevokeStatus;

    const-string/jumbo v31, "EmailProvider.db"

    const-string/jumbo v32, "MailRevokeStatus"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v11, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .restart local v11    # "delete":Lcom/alibaba/alimei/orm/query/Delete;
    const-string/jumbo v30, "accountKey"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v24

    .line 130
    .local v24, "revokeCount":I
    const-string/jumbo v30, "AccountAdditionalDatasourceImpl"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "delete revokeCount = "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v8, 0x0

    .line 134
    .local v8, "bodyCount":I
    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_4

    .line 135
    new-instance v10, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v30, Lcom/alibaba/alimei/sdk/db/mail/entry/Body;

    const-string/jumbo v31, "EmailProviderBody.db"

    const-string/jumbo v32, "Body"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v10, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v10, "delBody":Lcom/alibaba/alimei/orm/query/Delete;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v26

    .line 137
    .local v26, "size":I
    move/from16 v0, v26

    div-int/lit16 v0, v0, 0xc8

    move/from16 v30, v0

    add-int/lit8 v9, v30, 0x1

    .line 140
    .local v9, "count":I
    new-instance v18, Ljava/util/ArrayList;

    const/16 v30, 0xc8

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v18, "msgIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v9, :cond_3

    .line 142
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Delete;->resetDelete()V

    .line 143
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 144
    mul-int/lit16 v0, v13, 0xc8

    move/from16 v27, v0

    .line 145
    .local v27, "start":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    const/16 v30, 0xc8

    move/from16 v0, v30

    if-ge v15, v0, :cond_1

    .line 146
    add-int v14, v27, v15

    .line 147
    .local v14, "index":I
    move/from16 v0, v26

    if-ge v14, v0, :cond_1

    .line 150
    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mId:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 152
    .end local v14    # "index":I
    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_2

    .line 153
    const-string/jumbo v30, "messageKey"

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->andInList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    .line 154
    invoke-virtual {v10}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v30

    add-int v8, v8, v30

    .line 141
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 157
    .end local v15    # "j":I
    .end local v27    # "start":I
    :cond_3
    const-string/jumbo v30, "AccountAdditionalDatasourceImpl"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "delete bodyCount = "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v9    # "count":I
    .end local v10    # "delBody":Lcom/alibaba/alimei/orm/query/Delete;
    .end local v13    # "i":I
    .end local v18    # "msgIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v26    # "size":I
    :cond_4
    add-int v30, v16, v29

    add-int v30, v30, v17

    add-int v30, v30, v20

    add-int v30, v30, v22

    add-int v30, v30, v23

    add-int v30, v30, v21

    add-int v30, v30, v12

    add-int v30, v30, v7

    add-int v30, v30, v24

    add-int v28, v30, v8

    .line 163
    .local v28, "sum":I
    const-string/jumbo v30, "AccountAdditionalDatasourceImpl"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string/jumbo v33, "delete total count: "

    aput-object v33, v31, v32

    const/16 v32, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v31 .. v31}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {v4, v5}, Lage;->b(J)V

    .line 167
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-static {v4, v5, v0}, Lail;->a(JI)V

    .line 168
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-static {v4, v5, v0}, Lail;->a(JI)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeAccountRelativeData(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 0
    .param p1, "accountModel"    # Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/AccountAdditionalDatasourceImpl;->removeMailData(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/datasource/impl/AccountAdditionalDatasourceImpl;->deleteCalendarData(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    .line 57
    return-void
.end method

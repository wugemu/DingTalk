.class public Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "MailboxDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/framework/datasource/IDatasource;
.implements Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;


# static fields
.field private static final AlimeiFolderColumns:[Ljava/lang/String;

.field private static PUSH_FOLDER_MAIL_TYPES:[Ljava/lang/Object; = null

.field private static PUSH_FOLDER_VALUES:[Ljava/lang/Object; = null

.field private static final SQL_MAILBOX_ID:Ljava/lang/String; = "_id=? "

.field private static final SQL_MAILBOX_SERVERID_TYPE:Ljava/lang/String; = "accountKey=? AND serverId = ? AND type = ? "

.field private static final SQL_MAILBOX_TYPE:Ljava/lang/String; = "accountKey=? AND type = ? "

.field private static final SQL_SHARED_CALENDAR:Ljava/lang/String; = "accountKey=? AND type=70 AND ownerEmail IS NOT NULL"

.field private static final TAG:Ljava/lang/String; = "MailboxDatasourceImpl"

.field private static UnReadCountColumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 412
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "displayName"

    aput-object v1, v0, v4

    const-string/jumbo v1, "type"

    aput-object v1, v0, v5

    const-string/jumbo v1, "serverId"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "parentServerId"

    aput-object v2, v0, v1

    const-string/jumbo v1, "syncInterval"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string/jumbo v2, "unreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "isPop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "messageCount"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "syncTime"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "hasNewMail"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "lastVisitTime"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "customOrder"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "careOrder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    .line 428
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v1, v0, v3

    const-string/jumbo v1, "unreadCount"

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->UnReadCountColumns:[Ljava/lang/String;

    .line 1183
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1185
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->PUSH_FOLDER_MAIL_TYPES:[Ljava/lang/Object;

    .line 1188
    new-array v0, v5, [Ljava/lang/Object;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->PUSH_FOLDER_VALUES:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    return-void
.end method

.method public static final buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 4
    .param p0, "mailbox"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .prologue
    .line 433
    new-instance v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    invoke-direct {v0, v2, v3}, Lcom/alibaba/alimei/sdk/model/FolderModel;-><init>(J)V

    .line 434
    .local v0, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-static {p0, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->copyToFolderModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;Lcom/alibaba/alimei/sdk/model/FolderModel;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v1

    return-object v1
.end method

.method private static buildCalendarFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;
    .locals 4
    .param p0, "mailbox"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .prologue
    .line 1533
    if-nez p0, :cond_0

    .line 1534
    const/4 v0, 0x0

    .line 1543
    :goto_0
    return-object v0

    .line 1537
    :cond_0
    new-instance v0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    invoke-direct {v0, v2, v3}, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;-><init>(J)V

    .line 1538
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;
    invoke-static {p0, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->copyToFolderModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;Lcom/alibaba/alimei/sdk/model/FolderModel;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1539
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mFolderAcl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->folderAcl:Ljava/lang/String;

    .line 1540
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mOwnerEmail:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->ownerAccount:Ljava/lang/String;

    .line 1541
    const/16 v1, 0x46

    iget v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;->isSharedAccount:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static final buildNewMailboxByFolder(Lcom/alibaba/alimei/framework/db/Account;Lcom/alibaba/alimei/restfulapi/data/Folder;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 4
    .param p0, "account"    # Lcom/alibaba/alimei/framework/db/Account;
    .param p1, "folder"    # Lcom/alibaba/alimei/restfulapi/data/Folder;

    .prologue
    .line 385
    new-instance v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;-><init>()V

    .line 386
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getFolderId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getParentId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mParentServerId:Ljava/lang/String;

    .line 389
    iget-wide v2, p0, Lcom/alibaba/alimei/framework/db/Account;->mId:J

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mAccountKey:J

    .line 390
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getType()I

    move-result v1

    invoke-static {v1}, Laja;->c(I)I

    move-result v1

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    .line 391
    iget v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    sparse-switch v1, :sswitch_data_0

    .line 399
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncInterval:I

    .line 403
    :goto_0
    iget v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    invoke-static {v1}, Lair;->a(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mFlagVisible:Z

    .line 404
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/Folder;->isPop()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mIsPop:Z

    .line 405
    iget-object v1, p1, Lcom/alibaba/alimei/restfulapi/data/Folder;->ownerEmail:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mOwnerEmail:Ljava/lang/String;

    .line 406
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getUnread()I

    move-result v1

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mUnreadCount:I

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncTime:J

    .line 408
    invoke-virtual {p1}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getOrder()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mOrder:J

    .line 409
    return-object v0

    .line 393
    :sswitch_0
    iget v1, p0, Lcom/alibaba/alimei/framework/db/Account;->mSyncInterval:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncInterval:I

    goto :goto_0

    .line 396
    :sswitch_1
    const/4 v1, -0x2

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncInterval:I

    goto :goto_0

    .line 391
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x41 -> :sswitch_1
    .end sparse-switch
.end method

.method public static final copyToFolderModel(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;Lcom/alibaba/alimei/sdk/model/FolderModel;)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 2
    .param p0, "mailbox"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .param p1, "folder"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    .prologue
    .line 438
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-object p1

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    .line 444
    iget v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    .line 445
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    invoke-static {v0}, Laja;->d(I)I

    move-result v0

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverType:I

    .line 446
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mParentServerId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    .line 447
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncTime:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->lastSyncTime:J

    .line 448
    iget v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mUnreadCount:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->unreadCount:I

    .line 449
    iget v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->messageCount:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->totalCount:I

    .line 450
    iget v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncInterval:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncInterval:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    .line 452
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mIsPop:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPop:Z

    .line 455
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->hasNewMail:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasNewMail:Z

    .line 456
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mOrder:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->mOrder:J

    .line 457
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->careOrder:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->mCareOrder:J

    goto :goto_0

    .line 450
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getChildFolder(Lcom/alibaba/alimei/sdk/model/FolderModel;)Ljava/util/List;
    .locals 6
    .param p1, "folderModel"    # Lcom/alibaba/alimei/sdk/model/FolderModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 662
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasChildren()Z

    move-result v4

    if-nez v4, :cond_2

    .line 663
    :cond_0
    const/4 v1, 0x0

    .line 675
    :cond_1
    return-object v1

    .line 666
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 667
    .local v1, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 668
    .local v2, "childrens":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 669
    .local v0, "childFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getChildFolder(Lcom/alibaba/alimei/sdk/model/FolderModel;)Ljava/util/List;

    move-result-object v3

    .line 671
    .local v3, "childs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 672
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private getMailBoxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "type"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1081
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Mailbox"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v5

    const-string/jumbo v3, "serverId"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, "syncKey"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "displayName"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "syncInterval"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "unreadCount"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "messageCount"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "hasNewMail"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1084
    const-string/jumbo v2, "accountKey = ?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    const-string/jumbo v2, "type = ?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1087
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v0, :cond_0

    .line 1088
    iput-wide p1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mAccountKey:J

    .line 1089
    iput p3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    .line 1091
    :cond_0
    return-object v0
.end method

.method private getMailboxIdAndTypeByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "mailboxType"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1108
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Mailbox"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1110
    const-string/jumbo v2, "accountKey = ?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    const-string/jumbo v2, "type = ?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1114
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v0, :cond_0

    .line 1115
    iput-wide p1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mAccountKey:J

    .line 1116
    iput p3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    .line 1118
    :cond_0
    return-object v0
.end method

.method private handleFolderActions(JLjava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderGroupModel;Ljava/util/List;Z)V
    .locals 27
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "alimeiFolders"    # Lcom/alibaba/alimei/sdk/model/FolderGroupModel;
    .param p6, "isForceFullSync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/FolderGroupModel;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Folder;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p5, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Folder;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v5, "addFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v8, "changedFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v9, "deleteFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    new-instance v14, Lcom/alibaba/alimei/orm/query/Select;

    const-class v20, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v21, "EmailProvider.db"

    const-string/jumbo v22, "Mailbox"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v14, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .local v14, "mSelect":Lcom/alibaba/alimei/orm/query/Select;
    new-instance v15, Lcom/alibaba/alimei/orm/query/Update;

    const-class v20, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v21, "EmailProvider.db"

    const-string/jumbo v22, "Mailbox"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v15, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .local v15, "mUpdate":Lcom/alibaba/alimei/orm/query/Update;
    new-instance v13, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v20, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v21, "EmailProvider.db"

    const-string/jumbo v22, "Mailbox"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v13, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .local v13, "mDelete":Lcom/alibaba/alimei/orm/query/Delete;
    const/16 v17, 0x0

    .line 246
    .local v17, "mailboxMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-eqz p6, :cond_1

    .line 248
    const-string/jumbo v20, "MailboxDatasourceImpl"

    const-string/jumbo v21, "force full sync"

    invoke-static/range {v20 .. v21}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->querySyncableFolders(J)Ljava/util/List;

    move-result-object v18

    .line 250
    .local v18, "syncableMailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1

    .line 251
    new-instance v17, Ljava/util/HashMap;

    .end local v17    # "mailboxMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 252
    .restart local v17    # "mailboxMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 253
    .local v16, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v16, :cond_0

    .line 256
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 261
    .end local v16    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v18    # "syncableMailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    :cond_1
    sget-object v20, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->getAccountById(J)Lcom/alibaba/alimei/framework/db/Account;

    move-result-object v4

    .line 265
    .local v4, "account":Lcom/alibaba/alimei/framework/db/Account;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/restfulapi/data/Folder;

    .line 266
    .local v10, "folder":Lcom/alibaba/alimei/restfulapi/data/Folder;
    if-eqz v10, :cond_2

    .line 270
    if-eqz v17, :cond_3

    .line 272
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getFolderId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_3
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getType()I

    move-result v21

    invoke-static/range {v21 .. v21}, Laja;->c(I)I

    move-result v19

    .line 278
    .local v19, "type":I
    const/16 v21, 0x47

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    const/16 v21, 0x48

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    const/16 v21, 0x50

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    const/16 v21, 0x49

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    :cond_4
    const/4 v11, 0x1

    .line 283
    .local v11, "isContactFolder":Z
    :goto_2
    const/4 v6, 0x0

    .line 285
    .local v6, "alimeiFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 286
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getAction()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 287
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getAction()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 288
    :cond_5
    if-eqz v11, :cond_8

    .line 289
    const-string/jumbo v21, "accountKey=? AND type = ? "

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :goto_3
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v16

    check-cast v16, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 294
    .restart local v16    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v16, :cond_9

    .line 296
    invoke-virtual {v15}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 297
    const-string/jumbo v21, "displayName"

    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 298
    const-string/jumbo v21, "parentServerId"

    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getParentId()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->nvl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    const-string/jumbo v21, "isPop"

    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->isPop()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    const-string/jumbo v21, "unreadCount"

    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getUnread()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    const-string/jumbo v21, "customOrder"

    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getOrder()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    const-string/jumbo v21, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    const-string/jumbo v21, "_id=? "

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-virtual {v15}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 306
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 307
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getParentId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mParentServerId:Ljava/lang/String;

    .line 309
    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v6

    .line 310
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v16    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_6
    :goto_4
    if-eqz v6, :cond_2

    .line 346
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getFolderId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    .line 347
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getParentId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    .line 348
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v6, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    .line 349
    move/from16 v0, v19

    iput v0, v6, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    goto/16 :goto_1

    .line 278
    .end local v6    # "alimeiFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v11    # "isContactFolder":Z
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 291
    .restart local v6    # "alimeiFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v11    # "isContactFolder":Z
    :cond_8
    const-string/jumbo v21, "accountKey=? AND serverId = ? AND type = ? "

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getFolderId()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 313
    .restart local v16    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_9
    invoke-static {v4, v10}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildNewMailboxByFolder(Lcom/alibaba/alimei/framework/db/Account;Lcom/alibaba/alimei/restfulapi/data/Folder;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v16

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mLastVisitTime:J

    .line 315
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->save()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    .line 316
    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v6

    .line 317
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 320
    .end local v16    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_a
    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getAction()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 322
    if-nez v11, :cond_2

    .line 325
    const-string/jumbo v21, "accountKey=? AND serverId = ? AND type = ? "

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getFolderId()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-virtual {v14}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v16

    check-cast v16, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 327
    .restart local v16    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v16, :cond_6

    .line 328
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Delete;->resetDelete()V

    .line 329
    const-string/jumbo v21, "accountKey=? AND serverId = ? AND type = ? "

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v10}, Lcom/alibaba/alimei/restfulapi/data/Folder;->getFolderId()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 333
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mOwnerEmail:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_b

    const/16 v21, 0x46

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 335
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v7

    .line 336
    .local v7, "calendarDatasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mOwnerEmail:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v7, v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->deleteSharedAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v7    # "calendarDatasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    :cond_b
    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v6

    .line 341
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 353
    .end local v6    # "alimeiFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v10    # "folder":Lcom/alibaba/alimei/restfulapi/data/Folder;
    .end local v11    # "isContactFolder":Z
    .end local v16    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v19    # "type":I
    :cond_c
    if-eqz v17, :cond_f

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_f

    .line 355
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 357
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;>;"
    :cond_d
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 358
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 359
    .restart local v16    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v16, :cond_d

    .line 362
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Delete;->resetDelete()V

    .line 363
    const-string/jumbo v20, "accountKey=? AND serverId = ? AND type = ? "

    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Delete;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    .line 367
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mOwnerEmail:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_e

    const/16 v20, 0x46

    move-object/from16 v0, v16

    iget v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 369
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getCalendarDatasource()Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;

    move-result-object v7

    .line 370
    .restart local v7    # "calendarDatasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mOwnerEmail:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v7, v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;->deleteSharedAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .end local v7    # "calendarDatasource":Lcom/alibaba/alimei/sdk/datasource/CalendarDatasource;
    :cond_e
    invoke-static/range {v16 .. v16}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v6

    .line 375
    .restart local v6    # "alimeiFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 379
    .end local v6    # "alimeiFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;>;"
    .end local v16    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_f
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->setAddedFolders(Ljava/util/List;)V

    .line 380
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->setChangedFolders(Ljava/util/List;)V

    .line 381
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->setDeletedFolders(Ljava/util/List;)V

    .line 382
    return-void
.end method

.method private static final isDefaultMailboxTypeExist(JI)Z
    .locals 6
    .param p0, "accountId"    # J
    .param p2, "mailboxType"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "Mailbox"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "accountKey=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v1, "type=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v1

    return v1
.end method

.method public static final newDefaultBizMailbox(JLjava/lang/String;Ljava/lang/String;I)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 2
    .param p0, "accountId"    # J
    .param p2, "serverId"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 93
    new-instance v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;-><init>()V

    .line 94
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iput-object p3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 95
    iput-object p2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    .line 96
    iput-wide p0, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mAccountKey:J

    .line 97
    iput p4, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    .line 98
    const/4 v1, -0x1

    iput v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mSyncInterval:I

    .line 99
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mIsPop:Z

    .line 100
    iget v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    invoke-static {v1}, Lair;->a(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mFlagVisible:Z

    .line 101
    return-object v0
.end method

.method private sortForFolderRecursion(Lcom/alibaba/alimei/sdk/model/FolderModel;)V
    .locals 4
    .param p1, "folderModel"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 640
    if-nez p1, :cond_1

    .line 654
    :cond_0
    return-void

    .line 644
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 647
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    sget-object v2, Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 650
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 651
    .local v0, "child":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->sortForFolderRecursion(Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    goto :goto_0
.end method


# virtual methods
.method public addDefaultFolderForAccount(J)Z
    .locals 9
    .param p1, "accountId"    # J

    .prologue
    const/16 v7, 0x48

    const/16 v6, 0x47

    const/16 v5, 0x9

    const/4 v4, 0x4

    const/4 v3, -0x2

    .line 123
    invoke-static {p1, p2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->isDefaultMailboxTypeExist(JI)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const-string/jumbo v1, "RecentlyRead"

    const-string/jumbo v2, "RecentlyRead"

    invoke-static {p1, p2, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->newDefaultBizMailbox(JLjava/lang/String;Ljava/lang/String;I)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 126
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Mailbox"

    invoke-static {v1, v2, v0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->save(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/orm/TableEntry;)J

    .line 129
    .end local v0    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_0
    invoke-static {p1, p2, v5}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->isDefaultMailboxTypeExist(JI)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    const-string/jumbo v1, "starred"

    const-string/jumbo v2, "Starred"

    invoke-static {p1, p2, v1, v2, v5}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->newDefaultBizMailbox(JLjava/lang/String;Ljava/lang/String;I)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 132
    .restart local v0    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Mailbox"

    invoke-static {v1, v2, v0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->save(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/orm/TableEntry;)J

    .line 136
    .end local v0    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_1
    invoke-static {p1, p2, v4}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->isDefaultMailboxTypeExist(JI)Z

    move-result v1

    if-nez v1, :cond_2

    .line 137
    const-string/jumbo v1, "Outbox"

    const-string/jumbo v2, "Outbox"

    invoke-static {p1, p2, v1, v2, v4}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->newDefaultBizMailbox(JLjava/lang/String;Ljava/lang/String;I)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 139
    .restart local v0    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Mailbox"

    invoke-static {v1, v2, v0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->save(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/orm/TableEntry;)J

    .line 143
    .end local v0    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_2
    invoke-static {p1, p2, v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->isDefaultMailboxTypeExist(JI)Z

    move-result v1

    if-nez v1, :cond_3

    .line 144
    const-string/jumbo v1, "all"

    const-string/jumbo v2, "all"

    invoke-static {p1, p2, v1, v2, v6}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->newDefaultBizMailbox(JLjava/lang/String;Ljava/lang/String;I)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 146
    .restart local v0    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Mailbox"

    invoke-static {v1, v2, v0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->save(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/orm/TableEntry;)J

    .line 150
    .end local v0    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_3
    invoke-static {p1, p2, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->isDefaultMailboxTypeExist(JI)Z

    move-result v1

    if-nez v1, :cond_4

    .line 151
    const-string/jumbo v1, "recent contacts"

    const-string/jumbo v2, "recent contacts"

    invoke-static {p1, p2, v1, v2, v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->newDefaultBizMailbox(JLjava/lang/String;Ljava/lang/String;I)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 153
    .restart local v0    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Mailbox"

    invoke-static {v1, v2, v0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->save(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/orm/TableEntry;)J

    .line 157
    .end local v0    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_4
    const/16 v1, 0x50

    invoke-static {p1, p2, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->isDefaultMailboxTypeExist(JI)Z

    move-result v1

    if-nez v1, :cond_5

    .line 158
    const-string/jumbo v1, "personal"

    const-string/jumbo v2, "personal"

    const/16 v3, 0x50

    invoke-static {p1, p2, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->newDefaultBizMailbox(JLjava/lang/String;Ljava/lang/String;I)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 160
    .restart local v0    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Mailbox"

    invoke-static {v1, v2, v0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->save(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/orm/TableEntry;)J

    .line 164
    .end local v0    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_5
    const/16 v1, 0x49

    invoke-static {p1, p2, v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->isDefaultMailboxTypeExist(JI)Z

    move-result v1

    if-nez v1, :cond_6

    .line 165
    const-string/jumbo v1, "blacklist"

    const-string/jumbo v2, "blacklist"

    const/16 v3, 0x49

    invoke-static {p1, p2, v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->newDefaultBizMailbox(JLjava/lang/String;Ljava/lang/String;I)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 167
    .restart local v0    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Mailbox"

    invoke-static {v1, v2, v0}, Lcom/alibaba/alimei/orm/AlimeiOrm;->save(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/orm/TableEntry;)J

    .line 170
    .end local v0    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_6
    const/4 v1, 0x1

    return v1
.end method

.method public addLocalFolder(JLjava/lang/String;ILjava/lang/String;)J
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    .line 1387
    invoke-static {p1, p2, p4}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->isDefaultMailboxTypeExist(JI)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1388
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "local_"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p5, v5, v6

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1389
    .local v4, "serverId":Ljava/lang/String;
    invoke-static {p1, p2, v4, p5, p4}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->newDefaultBizMailbox(JLjava/lang/String;Ljava/lang/String;I)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v3

    .line 1391
    .local v3, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mLastVisitTime:J

    .line 1392
    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->save()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    .line 1394
    new-instance v2, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    invoke-direct {v2, p1, p2, p3}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;-><init>(JLjava/lang/String;)V

    .line 1395
    .local v2, "changeFoldersModel":Lcom/alibaba/alimei/sdk/model/FolderGroupModel;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1396
    .local v0, "addFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-static {v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v1

    .line 1397
    .local v1, "alimeiFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->setAddedFolders(Ljava/util/List;)V

    .line 1399
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyFolderChanged(Lcom/alibaba/alimei/sdk/model/FolderGroupModel;)V

    .line 1401
    iget-wide v6, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    .line 1404
    .end local v0    # "addFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v1    # "alimeiFolder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v2    # "changeFoldersModel":Lcom/alibaba/alimei/sdk/model/FolderGroupModel;
    .end local v3    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v4    # "serverId":Ljava/lang/String;
    :goto_0
    return-wide v6

    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0
.end method

.method public changeNewMailStatus(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "serverId"    # Ljava/lang/String;
    .param p5, "hasNewMail"    # Z

    .prologue
    .line 1306
    const-string/jumbo v9, "MailboxDatasourceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "changeNewMailStatus serverId: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " fail, accountName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", hasNewMail: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    new-instance v8, Lcom/alibaba/alimei/orm/query/Update;

    const-class v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Mailbox"

    invoke-direct {v8, v9, v10, v11}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    .local v8, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v9, "hasNewMail"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1311
    const-string/jumbo v9, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1312
    const-string/jumbo v9, "accountKey=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    const-string/jumbo v9, "serverId"

    move-object/from16 v0, p4

    invoke-virtual {v8, v9, v0}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    const-string/jumbo v9, "type"

    sget-object v10, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->PUSH_FOLDER_MAIL_TYPES:[Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Update;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    invoke-virtual {v8}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v6

    .line 1316
    .local v6, "result":I
    if-lez v6, :cond_3

    .line 1317
    new-instance v7, Lcom/alibaba/alimei/orm/query/Select;

    const-class v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "Mailbox"

    invoke-direct {v7, v9, v10, v11}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    .local v7, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v9, "serverId"

    move-object/from16 v0, p4

    invoke-virtual {v7, v9, v0}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    const-string/jumbo v9, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v5

    .line 1321
    .local v5, "mailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1322
    :cond_0
    const-string/jumbo v9, "MailboxDatasourceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "changeNewMailStatus query serverId: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " fail, accountName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    .end local v5    # "mailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    .end local v7    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :goto_0
    return-void

    .line 1326
    .restart local v5    # "mailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    .restart local v7    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 1327
    .local v2, "folderModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1328
    .local v4, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-static {v4}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1330
    .end local v4    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_2
    new-instance v3, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    move-object/from16 v0, p3

    invoke-direct {v3, p1, p2, v0}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;-><init>(JLjava/lang/String;)V

    .line 1331
    .local v3, "groupModel":Lcom/alibaba/alimei/sdk/model/FolderGroupModel;
    invoke-virtual {v3, v2}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->setChangedFolders(Ljava/util/List;)V

    .line 1332
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyFolderChanged(Lcom/alibaba/alimei/sdk/model/FolderGroupModel;)V

    goto :goto_0

    .line 1334
    .end local v2    # "folderModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    .end local v3    # "groupModel":Lcom/alibaba/alimei/sdk/model/FolderGroupModel;
    .end local v5    # "mailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    .end local v7    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_3
    const-string/jumbo v9, "MailboxDatasourceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "changeNewMailStatus update error serverId: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " fail, accountName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1548
    const-string/jumbo v0, "EmailProvider.db"

    return-object v0
.end method

.method public getFolderSyncKey(J)Ljava/lang/String;
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 70
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->getAccountSyncKey(J)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "syncKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const-string/jumbo v0, "0"

    .line 74
    :cond_0
    return-object v0
.end method

.method public getTagSyncKey(J)Ljava/lang/String;
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 78
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->getTagSyncKey(J)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "syncKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string/jumbo v0, "0"

    .line 82
    :cond_0
    return-object v0
.end method

.method public handleCareOrdersResult(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;)V
    .locals 23
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;

    .prologue
    .line 1409
    new-instance v15, Lcom/alibaba/alimei/orm/query/Select;

    const-class v19, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "Mailbox"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    .local v15, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v19, "serverId"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 1411
    const-string/jumbo v19, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    const-string/jumbo v19, "careOrder>0"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 1413
    invoke-virtual {v15}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v12

    .line 1414
    .local v12, "oldCareMailboxList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_3

    :cond_0
    if-eqz p4, :cond_1

    .line 1415
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 1416
    :cond_1
    const-string/jumbo v19, "MailboxDatasourceImpl"

    const-string/jumbo v20, "old care order is null, return careOrder is null, do nothing!!!!"

    invoke-static/range {v19 .. v20}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    :cond_2
    :goto_0
    return-void

    .line 1420
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    .local v5, "changedServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_5

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_5

    .line 1422
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_4
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1423
    .local v9, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v9, :cond_4

    .line 1427
    iget-object v0, v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1431
    .end local v9    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_5
    new-instance v18, Lcom/alibaba/alimei/orm/query/Update;

    const-class v19, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "Mailbox"

    invoke-direct/range {v18 .. v21}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    .local v18, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v19, "careOrder"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1433
    const-string/jumbo v19, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v6

    .line 1435
    .local v6, "count":I
    const-string/jumbo v19, "MailboxDatasourceImpl"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "update count: "

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult;->getCareOrderList()Ljava/util/List;

    move-result-object v14

    .line 1438
    .local v14, "orderItemList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareOrderItem;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    .line 1439
    .local v17, "size":I
    const/4 v13, 0x0

    .line 1440
    .local v13, "order":I
    const/16 v16, 0x0

    .line 1441
    .local v16, "serverId":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v8, v0, :cond_8

    .line 1442
    add-int/lit8 v13, v13, 0x1

    .line 1443
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareOrderItem;

    .line 1445
    .local v3, "careItem":Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareOrderItem;
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareOrderItem;->isTag()Z

    move-result v19

    if-nez v19, :cond_6

    .line 1448
    const/4 v11, 0x1

    .line 1449
    .local v11, "needUpdate":Z
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 1450
    const-string/jumbo v19, "careOrder"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1451
    const-string/jumbo v19, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1453
    invoke-virtual {v3}, Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareOrderItem;->isFolder()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1454
    iget-object v0, v3, Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareOrderItem;->objectId:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1459
    :goto_3
    if-eqz v11, :cond_6

    .line 1460
    const-string/jumbo v19, "serverId"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 1441
    .end local v11    # "needUpdate":Z
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1456
    .restart local v11    # "needUpdate":Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 1466
    .end local v3    # "careItem":Lcom/alibaba/alimei/restfulapi/response/data/CareOrderResult$CareOrderItem;
    .end local v11    # "needUpdate":Z
    :cond_8
    invoke-virtual {v15}, Lcom/alibaba/alimei/orm/query/Select;->resetSelect()V

    .line 1467
    sget-object v19, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1468
    const-string/jumbo v19, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    const-string/jumbo v19, "serverId"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0, v5}, Lcom/alibaba/alimei/orm/query/Select;->andInList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    .line 1470
    invoke-virtual {v15}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v10

    .line 1471
    .local v10, "mailboxList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-eqz v10, :cond_2

    .line 1475
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1476
    .local v4, "changedFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1477
    .restart local v9    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-static {v9}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1480
    .end local v9    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_9
    new-instance v7, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-direct {v7, v0, v1, v2}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;-><init>(JLjava/lang/String;)V

    .line 1481
    .local v7, "groupModel":Lcom/alibaba/alimei/sdk/model/FolderGroupModel;
    invoke-virtual {v7, v4}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->setChangedFolders(Ljava/util/List;)V

    .line 1482
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyFolderChanged(Lcom/alibaba/alimei/sdk/model/FolderGroupModel;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized handleSyncFoldersResult(JLjava/lang/String;Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;Z)Lcom/alibaba/alimei/sdk/model/FolderGroupModel;
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "folderResult"    # Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;
    .param p5, "isNotifyFolderChanged"    # Z

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;->getFolders()Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Folder;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 179
    :cond_0
    const-string/jumbo v1, "MailboxDatasourceImpl"

    const-string/jumbo v2, "sync folders returned size is zero!!!!!"

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    const/4 v5, 0x0

    .line 198
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v5

    .line 183
    :cond_2
    :try_start_1
    const-string/jumbo v1, "MailboxDatasourceImpl"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "sync folders returned size: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", syncKey: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;->getSyncKey()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v5, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    invoke-direct {v5, p1, p2, p3}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;-><init>(JLjava/lang/String;)V

    .line 188
    .local v5, "alimeiFolders":Lcom/alibaba/alimei/sdk/model/FolderGroupModel;
    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;->getFolders()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;->isForceFullSync()Z

    move-result v7

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->handleFolderActions(JLjava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderGroupModel;Ljava/util/List;Z)V

    .line 194
    invoke-static {}, Lcom/alibaba/alimei/framework/datasource/FrameworkDatasourceCenter;->getAccountDatasource()Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;

    move-result-object v1

    invoke-virtual {p4}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncFolderResult;->getSyncKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/alibaba/alimei/framework/account/datasource/AccountDatasource;->updateAccountSyncKey(JLjava/lang/String;)V

    .line 195
    if-eqz p5, :cond_1

    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyFolderChanged(Lcom/alibaba/alimei/sdk/model/FolderGroupModel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    .end local v0    # "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Folder;>;"
    .end local v5    # "alimeiFolders":Lcom/alibaba/alimei/sdk/model/FolderGroupModel;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public queryAccountStatus(J)Lcom/alibaba/alimei/sdk/model/AccountStatusModel;
    .locals 11
    .param p1, "accountId"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 768
    new-instance v4, Lcom/alibaba/alimei/sdk/model/AccountStatusModel;

    invoke-direct {v4}, Lcom/alibaba/alimei/sdk/model/AccountStatusModel;-><init>()V

    .line 769
    .local v4, "statusModel":Lcom/alibaba/alimei/sdk/model/AccountStatusModel;
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->queryAllUnReadCount(J)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/alibaba/alimei/sdk/model/AccountStatusModel;->allUnreadCount:J

    .line 771
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Mailbox"

    invoke-direct {v3, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "type"

    aput-object v6, v5, v8

    const-string/jumbo v6, "hasNewMail"

    aput-object v6, v5, v9

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 773
    const-string/jumbo v5, "accountKey = ?"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string/jumbo v5, "flagVisible=?"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v2

    .line 776
    .local v2, "mailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-nez v2, :cond_0

    .line 777
    iput-boolean v8, v4, Lcom/alibaba/alimei/sdk/model/AccountStatusModel;->hasNewMail:Z

    .line 796
    :goto_0
    return-object v4

    .line 781
    :cond_0
    const/4 v0, 0x0

    .line 782
    .local v0, "hasNewMail":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 783
    .local v1, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v7, -0x2

    if-eq v6, v7, :cond_1

    iget v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/16 v7, 0x9

    if-eq v6, v7, :cond_1

    iget v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    iget v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    iget v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_1

    iget v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    .line 789
    iget-boolean v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->hasNewMail:Z

    if-eqz v6, :cond_1

    .line 790
    const/4 v0, 0x1

    .line 794
    .end local v1    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_2
    iput-boolean v0, v4, Lcom/alibaba/alimei/sdk/model/AccountStatusModel;->hasNewMail:Z

    goto :goto_0
.end method

.method public queryAllMailPushableFolders(J)Ljava/util/List;
    .locals 9
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1227
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v5, "EmailProvider.db"

    const-string/jumbo v6, "Mailbox"

    invoke-direct {v3, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v4, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1229
    const-string/jumbo v4, "accountKey=?"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    const-string/jumbo v4, "flagVisible=?"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    const-string/jumbo v4, "type"

    sget-object v5, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->PUSH_FOLDER_MAIL_TYPES:[Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v2

    .line 1233
    .local v2, "mailboxs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1234
    .local v0, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v2, :cond_0

    .line 1235
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1236
    .local v1, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-static {v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1239
    .end local v1    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_0
    return-object v0
.end method

.method public queryAllMailbox(J)Ljava/util/List;
    .locals 5
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1053
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Mailbox"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "accountKey = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryAllPushFolders(J)Ljava/util/List;
    .locals 9
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1192
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v5, "EmailProvider.db"

    const-string/jumbo v6, "Mailbox"

    invoke-direct {v3, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v4, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1194
    const-string/jumbo v4, "accountKey=?"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const-string/jumbo v4, "syncInterval"

    sget-object v5, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->PUSH_FOLDER_VALUES:[Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    const-string/jumbo v4, "type NOT IN(?) "

    new-array v5, v8, [Ljava/lang/Object;

    const/16 v6, 0x44

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v2

    .line 1198
    .local v2, "mailboxs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    .local v0, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v2, :cond_0

    .line 1200
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1201
    .local v1, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-static {v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1204
    .end local v1    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_0
    return-object v0
.end method

.method public queryAllUnReadCount(J)J
    .locals 11
    .param p1, "accountId"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 743
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Mailbox"

    invoke-direct {v2, v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v3, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->UnReadCountColumns:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 745
    const-string/jumbo v3, "accountKey = ?"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    const-string/jumbo v3, "flagVisible=?"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 748
    .local v1, "mailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-nez v1, :cond_1

    .line 749
    const-wide/16 v4, 0x0

    .line 763
    :cond_0
    return-wide v4

    .line 751
    :cond_1
    const-wide/16 v4, 0x0

    .line 752
    .local v4, "unReadCount":J
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 753
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mUnreadCount:I

    if-lez v6, :cond_2

    .line 756
    iget v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v7, -0x2

    if-eq v6, v7, :cond_2

    iget v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/16 v7, 0x9

    if-eq v6, v7, :cond_2

    iget v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    iget v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    iget v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    iget v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_2

    .line 761
    iget v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mUnreadCount:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 762
    goto :goto_0
.end method

.method public queryCalendarFolders(J)Ljava/util/List;
    .locals 7
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1507
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Mailbox"

    invoke-direct {v3, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v4, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    const-string/jumbo v4, "type=65 or type=70"

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 1511
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v2

    .line 1512
    .local v2, "mailboxList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1513
    :cond_0
    const/4 v0, 0x0

    .line 1529
    :cond_1
    return-object v0

    .line 1516
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1517
    .local v0, "folderModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1518
    .local v1, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v1, :cond_3

    .line 1522
    const/16 v5, 0x46

    iget v6, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    if-ne v5, v6, :cond_4

    iget-object v5, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mOwnerEmail:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1526
    :cond_4
    invoke-static {v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildCalendarFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/CalendarFolderModel;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public queryCollectionFolders(J)Ljava/util/List;
    .locals 11
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 851
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Mailbox"

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v5, "accountKey = ?"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    const-string/jumbo v5, "flagVisible=?"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    const-string/jumbo v5, "type = ?"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string/jumbo v5, "isPop"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v3

    .line 857
    .local v3, "mailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-nez v3, :cond_1

    .line 858
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 869
    :cond_0
    return-object v1

    .line 860
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 861
    .local v1, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 863
    .local v2, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget-boolean v6, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mIsPop:Z

    if-eqz v6, :cond_2

    .line 866
    invoke-static {v2}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    .line 867
    .local v0, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public queryCustomMailFolders(JZ)Ljava/util/List;
    .locals 13
    .param p1, "accountId"    # J
    .param p3, "withChildrenStructure"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 801
    new-instance v7, Lcom/alibaba/alimei/orm/query/Select;

    const-class v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Mailbox"

    invoke-direct {v7, v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    .local v7, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v8, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 803
    const-string/jumbo v8, "accountKey = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string/jumbo v8, "flagVisible=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string/jumbo v8, "(type=? OR type=?)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, -0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v5

    .line 807
    .local v5, "mailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 808
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 846
    :cond_1
    return-object v1

    .line 810
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 811
    .local v1, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v3, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 813
    .local v3, "mFolderModelMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 815
    .local v4, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget-boolean v9, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mIsPop:Z

    if-nez v9, :cond_3

    .line 818
    iget v9, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v10, -0x2

    if-eq v9, v10, :cond_3

    iget v9, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/16 v10, 0x9

    if-eq v9, v10, :cond_3

    .line 822
    invoke-static {v4}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    .line 823
    .local v0, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz p3, :cond_4

    .line 824
    iget-object v9, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-virtual {v3, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 826
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 831
    .end local v0    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v4    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_5
    if-eqz p3, :cond_1

    .line 832
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 833
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 834
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 835
    .restart local v0    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 836
    .local v6, "parent":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v6, :cond_7

    .line 837
    iget-object v8, v6, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    if-nez v8, :cond_6

    .line 838
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v6, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 840
    :cond_6
    iget-object v8, v6, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 842
    :cond_7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public queryFolderById(JJ)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "id"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 949
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Mailbox"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v2, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 951
    const-string/jumbo v2, "_id = ?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 953
    const-string/jumbo v2, "accountKey = ?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 956
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v0, :cond_1

    .line 957
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v2

    .line 959
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public queryFolderByMailServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "mailServerId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1017
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    const-string/jumbo v5, "EmailProvider.db"

    const-string/jumbo v6, "Message"

    invoke-direct {v1, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    .local v1, "messageSelect":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v4, "syncServerId"

    invoke-virtual {v1, v4, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    const-string/jumbo v4, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;

    .line 1022
    .local v2, "msg":Lcom/alibaba/alimei/sdk/db/mail/entry/Message;
    if-eqz v2, :cond_0

    .line 1023
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Mailbox"

    invoke-direct {v3, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v4, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1025
    const-string/jumbo v4, "accountKey = ?"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    const-string/jumbo v4, "_id = ?"

    new-array v5, v7, [Ljava/lang/Object;

    iget-wide v6, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Message;->mMailboxKey:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1028
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v0, :cond_0

    .line 1029
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v4

    .line 1032
    .end local v0    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .end local v3    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public queryFolderByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1003
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Mailbox"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v2, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1005
    const-string/jumbo v2, "accountKey = ?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    const-string/jumbo v2, "serverId = ?"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1008
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v0, :cond_0

    .line 1009
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v2

    .line 1011
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public queryFolderByType(JI)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "mailboxType"    # I

    .prologue
    .line 981
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Mailbox"

    invoke-direct {v3, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v4, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 983
    const-string/jumbo v4, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    const-string/jumbo v4, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 987
    .local v1, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v1, :cond_0

    .line 988
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v2

    .line 989
    .local v2, "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    invoke-interface {v2, p1, p2}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->addDefaultFolderForAccount(J)Z

    .line 990
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    .end local v1    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 991
    .restart local v1    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    const-string/jumbo v5, "DefaultMailBox"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DefaultMailBox queryMailboxByType init id:"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-wide v8, v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    .end local v2    # "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    :cond_0
    const/4 v0, 0x0

    .line 995
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v1, :cond_1

    .line 996
    invoke-static {v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    .line 998
    :cond_1
    return-object v0

    .line 991
    .end local v0    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v2    # "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    :cond_2
    const-string/jumbo v4, "0"

    goto :goto_0
.end method

.method public varargs queryFolderChildren(JLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;
    .param p4, "excludeServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 875
    new-instance v6, Lcom/alibaba/alimei/orm/query/Select;

    const-class v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Mailbox"

    invoke-direct {v6, v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    .local v6, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v7, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 877
    const-string/jumbo v7, "flagVisible=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    const-string/jumbo v7, "parentServerId= ? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p3, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    if-eqz p4, :cond_1

    array-length v7, p4

    if-lez v7, :cond_1

    .line 882
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "serverId"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    const-string/jumbo v7, " NOT IN ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    const-string/jumbo v7, "? "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v7, p4

    if-ge v2, v7, :cond_0

    .line 889
    const-string/jumbo v7, ", ?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 891
    :cond_0
    const-string/jumbo v7, " ) "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast p4, [Ljava/lang/Object;

    .end local p4    # "excludeServerIds":[Ljava/lang/String;
    invoke-virtual {v6, v7, p4}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    .end local v2    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v4

    .line 896
    .local v4, "mailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-nez v4, :cond_3

    .line 897
    const/4 v1, 0x0

    .line 904
    :cond_2
    return-object v1

    .line 899
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 900
    .local v1, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 901
    .local v3, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-static {v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    .line 902
    .local v0, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public queryFolderIdAndTypeById(JJ)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "id"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 964
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Mailbox"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "type"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 966
    const-string/jumbo v2, "_id = ?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 968
    const-string/jumbo v2, "accountKey = ?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 971
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v0, :cond_1

    .line 972
    iput-wide p3, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    .line 973
    iput-wide p1, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mAccountKey:J

    .line 974
    invoke-static {v0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v2

    .line 976
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public queryFolderOldestItemTime(J)Ljava/util/Map;
    .locals 9
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1487
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1489
    .local v6, "timeStampMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "select mailboxKey, timeStamp from Message where syncServerId in (select messageOldestServerId from Mailbox where accountKey="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") AND accountKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1492
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDefaultDatabase()Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v1, v8}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1493
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1494
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1495
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1496
    .local v2, "mailboxId":J
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1497
    .local v4, "timeStamp":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1499
    .end local v2    # "mailboxId":J
    .end local v4    # "timeStamp":J
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1502
    :cond_1
    return-object v6
.end method

.method public queryHasNewMail(J)Z
    .locals 7
    .param p1, "accountId"    # J

    .prologue
    const/4 v0, 0x1

    .line 1344
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Mailbox"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    const-string/jumbo v3, "hasNewMail"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1348
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 1350
    .local v1, "mailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1351
    .local v0, "hasNewMail":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1352
    const-string/jumbo v3, "MailboxDatasourceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "hasNewMail: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :goto_1
    return v0

    .line 1350
    .end local v0    # "hasNewMail":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1354
    .restart local v0    # "hasNewMail":Z
    :cond_1
    const-string/jumbo v3, "MailboxDatasourceImpl"

    const-string/jumbo v4, "hasNewMail: false"

    invoke-static {v3, v4}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public queryMailPushFolders(J)Ljava/util/List;
    .locals 9
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1209
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v5, "EmailProvider.db"

    const-string/jumbo v6, "Mailbox"

    invoke-direct {v3, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v4, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1211
    const-string/jumbo v4, "accountKey=?"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    const-string/jumbo v4, "syncInterval"

    sget-object v5, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->PUSH_FOLDER_VALUES:[Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    const-string/jumbo v4, "flagVisible=?"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    const-string/jumbo v4, "type"

    sget-object v5, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->PUSH_FOLDER_MAIL_TYPES:[Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v2

    .line 1216
    .local v2, "mailboxs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    .local v0, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz v2, :cond_0

    .line 1218
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1219
    .local v1, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    invoke-static {v1}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1222
    .end local v1    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_0
    return-object v0
.end method

.method public queryMailboxById(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 5
    .param p1, "mailboxId"    # J

    .prologue
    .line 1046
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Mailbox"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v1, "_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    return-object v1
.end method

.method public queryMailboxByIdForSyncKey(J)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 7
    .param p1, "mailboxId"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1060
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Mailbox"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    const-string/jumbo v2, "displayName"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, "serverId"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "syncKey"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "syncInterval"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "messageOldestServerId"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1063
    const-string/jumbo v1, "_id = ?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    return-object v1
.end method

.method public queryMailboxByServerId(JLjava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "serverId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1037
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Mailbox"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v2, "accountKey = ?"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    const-string/jumbo v2, "serverId = ?"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p3, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1041
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    return-object v0
.end method

.method public queryMailboxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 9
    .param p1, "accountId"    # J
    .param p3, "type"    # I

    .prologue
    .line 1069
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getMailBoxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 1071
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v0, :cond_0

    .line 1072
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    .line 1073
    .local v1, "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    invoke-interface {v1, p1, p2}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->addDefaultFolderForAccount(J)Z

    .line 1074
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getMailBoxByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 1075
    const-string/jumbo v3, "DefaultMailBox"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DefaultMailBox queryMailboxByType init id:"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-wide v6, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    .end local v1    # "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    :cond_0
    return-object v0

    .line 1075
    .restart local v1    # "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    :cond_1
    const-string/jumbo v2, "0"

    goto :goto_0
.end method

.method public queryMailboxByTypeAndOwner(JILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "mailboxType"    # I
    .param p4, "ownerEmail"    # Ljava/lang/String;
    .param p5, "serverId"    # Ljava/lang/String;

    .prologue
    .line 1123
    new-instance v0, Lcom/alibaba/alimei/orm/query/Select;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Mailbox"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    .local v0, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "serverId"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "syncKey"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "syncInterval"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "folderAcl"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1126
    const-string/jumbo v1, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    const-string/jumbo v1, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1129
    const-string/jumbo v1, "ownerEmail"

    invoke-virtual {v0, v1, p4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1132
    const-string/jumbo v1, "serverId"

    invoke-virtual {v0, v1, p5}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    return-object v1
.end method

.method public queryMailboxIdAndTypeByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 5
    .param p1, "accountId"    # J
    .param p3, "mailboxType"    # I

    .prologue
    .line 1096
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getMailboxIdAndTypeByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 1098
    .local v0, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez v0, :cond_0

    .line 1099
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    .line 1100
    .local v1, "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    invoke-interface {v1, p1, p2}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->addDefaultFolderForAccount(J)Z

    .line 1101
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getMailboxIdAndTypeByType(JI)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    move-result-object v0

    .line 1102
    const-string/jumbo v3, "DefaultMailBox"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DefaultMailBox queryMailboxIdAndTypeByType init mailboxName:"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mDisplayName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    .end local v1    # "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    :cond_0
    return-object v0

    .line 1102
    .restart local v1    # "mailboxDatasource":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    :cond_1
    const-string/jumbo v2, "null"

    goto :goto_0
.end method

.method public varargs queryMovableFolders(J[Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .param p1, "accountId"    # J
    .param p3, "excludeServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 909
    new-instance v7, Lcom/alibaba/alimei/orm/query/Select;

    const-class v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Mailbox"

    invoke-direct {v7, v8, v9, v10}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    .local v7, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v8, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 911
    const-string/jumbo v8, "accountKey = ?"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    const-string/jumbo v8, "flagVisible=?"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual {v7, v8, v9}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    array-length v8, v0

    if-lez v8, :cond_1

    .line 915
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 916
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "serverId"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    const-string/jumbo v8, " NOT IN ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    const-string/jumbo v8, "? "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v8, v0

    if-ge v3, v8, :cond_0

    .line 922
    const-string/jumbo v8, ", ?"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 924
    :cond_0
    const-string/jumbo v8, " ) "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast p3, [Ljava/lang/Object;

    .end local p3    # "excludeServerIds":[Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v7, v8, v0}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    .end local v3    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v5

    .line 929
    .local v5, "mailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-nez v5, :cond_3

    .line 930
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 944
    :cond_2
    :goto_1
    return-object v2

    .line 932
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 933
    .local v2, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 934
    .local v4, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget v9, v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    invoke-static {v9}, Laja;->a(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 938
    invoke-static {v4}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v1

    .line 939
    .local v1, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 941
    .end local v1    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v4    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 942
    sget-object v8, Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/FolderComparator;

    invoke-static {v2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method public querySessionModelFolder(J)Ljava/util/List;
    .locals 13
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 680
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "Mailbox"

    invoke-direct {v4, v6, v7, v8}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v6, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 684
    const-string/jumbo v6, "accountKey = ?"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    const-string/jumbo v6, "flagVisible=?"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v3

    .line 688
    .local v3, "mailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-nez v3, :cond_0

    .line 689
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 716
    :goto_0
    return-object v1

    .line 692
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v5, "sessionChildrenIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 695
    .local v1, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 698
    .local v2, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget v7, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v8, -0x2

    if-eq v7, v8, :cond_1

    iget v7, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/16 v8, 0x9

    if-eq v7, v8, :cond_1

    .line 702
    iget v7, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    if-nez v7, :cond_2

    .line 703
    iget-wide v8, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 705
    :cond_2
    iget v7, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    if-ne v7, v10, :cond_3

    .line 707
    iget-wide v8, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 711
    :cond_3
    invoke-static {v2}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    .line 713
    .local v0, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 715
    .end local v0    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v2    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_4
    invoke-static {v5}, Lcom/alibaba/alimei/sdk/model/FolderModel;->buildSessionFolder(Ljava/util/List;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v6

    invoke-virtual {v1, v11, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public querySharedCalendarMailbox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "sharedAccountName"    # Ljava/lang/String;
    .param p3, "serverId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1293
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v3

    invoke-virtual {v3, p1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v0

    .line 1294
    .local v0, "accountId":J
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Mailbox"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "syncKey"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "serverId"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "ownerEmail"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "accountKey"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "folderAcl"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "displayName"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1297
    const-string/jumbo v3, "accountKey"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    const-string/jumbo v3, "ownerEmail"

    invoke-virtual {v2, v3, p2}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    const-string/jumbo v3, "serverId"

    invoke-virtual {v2, v3, p3}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    return-object v3
.end method

.method public querySharedCalendarMailbox(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1139
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v4

    invoke-virtual {v4, p1}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v3

    .line 1140
    .local v3, "userAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v3, :cond_0

    .line 1141
    const/4 v4, 0x0

    .line 1148
    :goto_0
    return-object v4

    .line 1143
    :cond_0
    invoke-virtual {v3}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v0

    .line 1144
    .local v0, "accountId":J
    new-instance v2, Lcom/alibaba/alimei/orm/query/Select;

    const-class v4, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Mailbox"

    invoke-direct {v2, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    aput-object v5, v4, v7

    const-string/jumbo v5, "serverId"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string/jumbo v6, "syncKey"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "syncInterval"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string/jumbo v6, "ownerEmail"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string/jumbo v6, "displayName"

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1147
    const-string/jumbo v4, "accountKey=? AND type=70 AND ownerEmail IS NOT NULL"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v4

    goto :goto_0
.end method

.method public querySyncableFolders(J)Ljava/util/List;
    .locals 9
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 203
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Mailbox"

    invoke-direct {v3, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v5, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 205
    const-string/jumbo v5, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 208
    .local v4, "syncFolderTypes":[I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "type in ("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 211
    aget v5, v4, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 215
    const-string/jumbo v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v1

    .line 218
    .local v1, "mailboxList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    return-object v1

    .line 206
    nop

    :array_0
    .array-data 4
        0x1
        0x46
    .end array-data
.end method

.method public querySystemMailFolders(J)Ljava/util/List;
    .locals 11
    .param p1, "accountId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 721
    new-instance v4, Lcom/alibaba/alimei/orm/query/Select;

    const-class v5, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Mailbox"

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .local v4, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v5, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 723
    const-string/jumbo v5, "accountKey = ?"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    const-string/jumbo v5, "flagVisible=?"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    const-string/jumbo v5, "(type!=? AND type!=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, -0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    invoke-virtual {v4}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v3

    .line 727
    .local v3, "mailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-nez v3, :cond_1

    .line 728
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 738
    :cond_0
    return-object v1

    .line 730
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 731
    .local v1, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 732
    .local v2, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    iget v6, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v7, -0x2

    if-eq v6, v7, :cond_2

    iget v6, v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/16 v7, 0x9

    if-eq v6, v7, :cond_2

    .line 735
    invoke-static {v2}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    .line 736
    .local v0, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public varargs queryVisibleFolders(JZZ[Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "accountId"    # J
    .param p3, "withChildrenStructure"    # Z
    .param p4, "includeVirtualFolders"    # Z
    .param p5, "excludeServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    new-instance v11, Lcom/alibaba/alimei/orm/query/Select;

    const-class v12, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Mailbox"

    invoke-direct {v11, v12, v13, v14}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .local v11, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v12, "flagVisible=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-wide/16 v12, 0x0

    cmp-long v12, p1, v12

    if-lez v12, :cond_0

    .line 468
    const-string/jumbo v12, "accountKey = ?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_0
    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    array-length v12, v0

    if-lez v12, :cond_2

    .line 472
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .local v10, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v12, "serverId"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    const-string/jumbo v12, " NOT IN ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    const-string/jumbo v12, "? "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p5

    array-length v12, v0

    if-ge v4, v12, :cond_1

    .line 479
    const-string/jumbo v12, ", ?"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 481
    :cond_1
    const-string/jumbo v12, " ) "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    check-cast p5, [Ljava/lang/Object;

    .end local p5    # "excludeServerIds":[Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-virtual {v11, v12, v0}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .end local v4    # "i":I
    .end local v10    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v11}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v8

    .line 486
    .local v8, "mailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_5

    .line 487
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 524
    :cond_4
    return-object v3

    .line 489
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 490
    .local v3, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v6, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 492
    .local v6, "mFolderModelMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 494
    .local v7, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez p4, :cond_7

    .line 495
    iget v13, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v14, -0x2

    if-eq v13, v14, :cond_6

    iget v13, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/16 v14, 0x9

    if-eq v13, v14, :cond_6

    .line 500
    :cond_7
    invoke-static {v7}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v2

    .line 501
    .local v2, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz p3, :cond_8

    .line 502
    iget-object v13, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-virtual {v6, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 504
    :cond_8
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 509
    .end local v2    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v7    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_9
    if-eqz p3, :cond_4

    .line 510
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 511
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 512
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 513
    .restart local v2    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v12, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 514
    .local v9, "parent":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v9, :cond_b

    .line 515
    iget-object v12, v9, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    if-nez v12, :cond_a

    .line 516
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v9, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 518
    :cond_a
    iget-object v12, v9, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 520
    :cond_b
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public varargs queryVisibleFoldersForDingTalk(JZZ[Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "accountId"    # J
    .param p3, "withChildrenStructure"    # Z
    .param p4, "includeVirtualFolders"    # Z
    .param p5, "excludeServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    new-instance v12, Lcom/alibaba/alimei/orm/query/Select;

    const-class v13, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "Mailbox"

    invoke-direct {v12, v13, v14, v15}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v12, "select":Lcom/alibaba/alimei/orm/query/Select;
    sget-object v13, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->AlimeiFolderColumns:[Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 533
    const-string/jumbo v13, "accountKey = ?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string/jumbo v13, "flagVisible=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    if-eqz p5, :cond_1

    move-object/from16 v0, p5

    array-length v13, v0

    if-lez v13, :cond_1

    .line 537
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .local v11, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v13, "serverId"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string/jumbo v13, " NOT IN ("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string/jumbo v13, "? "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p5

    array-length v13, v0

    if-ge v5, v13, :cond_0

    .line 544
    const-string/jumbo v13, ", ?"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 546
    :cond_0
    const-string/jumbo v13, " ) "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    check-cast p5, [Ljava/lang/Object;

    .end local p5    # "excludeServerIds":[Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-virtual {v12, v13, v0}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .end local v5    # "i":I
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v12}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v9

    .line 551
    .local v9, "mailboxes":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;>;"
    if-eqz v9, :cond_2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_4

    .line 552
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 632
    :cond_3
    return-object v4

    .line 554
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 555
    .local v4, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v7, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 557
    .local v7, "mFolderModelMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 559
    .local v8, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-nez p4, :cond_6

    .line 560
    iget v14, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/4 v15, -0x2

    if-eq v14, v15, :cond_5

    iget v14, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    const/16 v15, 0x9

    if-eq v14, v15, :cond_5

    .line 566
    :cond_6
    iget v14, v8, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;->mType:I

    invoke-static {v14}, Laiv;->a(I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 570
    invoke-static {v8}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v2

    .line 571
    .local v2, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz p3, :cond_7

    .line 572
    iget-object v14, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-virtual {v7, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 574
    :cond_7
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 579
    .end local v2    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v8    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_8
    if-eqz p3, :cond_3

    .line 580
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 581
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 582
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 585
    .restart local v2    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSystemFolder()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 586
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 588
    :cond_9
    iget-object v13, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->parentServerId:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 589
    .local v10, "parent":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v10, :cond_b

    .line 590
    iget-object v13, v10, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    if-nez v13, :cond_a

    .line 591
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v10, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    .line 593
    :cond_a
    iget-object v13, v10, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 595
    :cond_b
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 600
    .end local v2    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v10    # "parent":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v1, "adustList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_d
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 602
    .local v3, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isSystemFolder()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 603
    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasChildren()Z

    move-result v14

    if-eqz v14, :cond_d

    .line 604
    iget-object v14, v3, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 605
    const/4 v14, 0x0

    iput-object v14, v3, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    goto :goto_3

    .line 609
    .end local v3    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_f

    .line 610
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 614
    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_10
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 615
    .restart local v2    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v2, :cond_10

    .line 619
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->sortForFolderRecursion(Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    goto :goto_4

    .line 623
    .end local v2    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_12
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 624
    .restart local v3    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/model/FolderModel;->hasChildren()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 625
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getChildFolder(Lcom/alibaba/alimei/sdk/model/FolderModel;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v3, Lcom/alibaba/alimei/sdk/model/FolderModel;->childrens:Ljava/util/List;

    goto :goto_5
.end method

.method public updateAllPushFoldersLastVisitTime(JLjava/lang/String;)V
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 1374
    new-instance v1, Lcom/alibaba/alimei/orm/query/Update;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Mailbox"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    .local v1, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v2, "lastVisitTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1376
    const-string/jumbo v2, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    const-string/jumbo v2, "type"

    sget-object v3, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->PUSH_FOLDER_MAIL_TYPES:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 1380
    new-instance v0, Lyc;

    const-string/jumbo v2, "FolderLastSyncTimeChanged"

    const/4 v3, 0x1

    invoke-direct {v0, v2, p3, v3}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1381
    .local v0, "eventMessage":Lyc;
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v2

    invoke-interface {v2, v0}, Lya;->a(Lyc;)V

    .line 1382
    const-string/jumbo v2, "MailboxDatasourceImpl"

    const-string/jumbo v3, "updateAllPushFoldersLastVisitTime"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    return-void
.end method

.method public updateLastVisitTime(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "serverId"    # Ljava/lang/String;

    .prologue
    .line 1361
    new-instance v1, Lcom/alibaba/alimei/orm/query/Update;

    const-class v2, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Mailbox"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    .local v1, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v2, "lastVisitTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1363
    const-string/jumbo v2, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    const-string/jumbo v2, "serverId"

    invoke-virtual {v1, v2, p4}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 1367
    new-instance v0, Lyc;

    const-string/jumbo v2, "FolderLastSyncTimeChanged"

    const/4 v3, 0x1

    invoke-direct {v0, v2, p3, v3}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1368
    .local v0, "eventMessage":Lyc;
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v2

    invoke-interface {v2, v0}, Lya;->a(Lyc;)V

    .line 1369
    const-string/jumbo v2, "MailboxDatasourceImpl"

    const-string/jumbo v3, "updateLastVisitTime"

    invoke-static {v2, v3}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    return-void
.end method

.method public updateMailPushFolders(JLjava/lang/String;Ljava/util/List;)I
    .locals 23
    .param p1, "accountId"    # J
    .param p3, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1244
    .local p4, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_2

    .line 1245
    :cond_0
    const/4 v5, 0x0

    .line 1288
    :cond_1
    :goto_0
    return v5

    .line 1247
    :cond_2
    new-instance v15, Lcom/alibaba/alimei/orm/query/Update;

    const-class v16, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v17, "EmailProvider.db"

    const-string/jumbo v18, "Mailbox"

    invoke-direct/range {v15 .. v18}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    .local v15, "update":Lcom/alibaba/alimei/orm/query/Update;
    const/4 v5, 0x0

    .line 1250
    .local v5, "count":I
    new-instance v13, Lcom/alibaba/alimei/orm/query/Select;

    const-class v16, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v17, "EmailProvider.db"

    const-string/jumbo v18, "Mailbox"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v13, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    .local v13, "select":Lcom/alibaba/alimei/orm/query/Select;
    new-instance v4, Ljava/util/HashMap;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 1253
    .local v4, "changedFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1254
    .local v7, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-boolean v10, v7, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    .line 1255
    .local v10, "isPush":Z
    invoke-virtual {v15}, Lcom/alibaba/alimei/orm/query/Update;->resetUpdate()V

    .line 1256
    const-string/jumbo v18, "syncInterval"

    if-eqz v10, :cond_4

    const/16 v16, -0x2

    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1257
    const-string/jumbo v16, "_id=?"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v7}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const-string/jumbo v16, "accountKey=?"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    const-string/jumbo v16, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1260
    const-string/jumbo v16, "type"

    sget-object v18, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->PUSH_FOLDER_MAIL_TYPES:[Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->andIn(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    invoke-virtual {v15}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v12

    .line 1264
    .local v12, "resultCount":I
    if-lez v12, :cond_3

    .line 1265
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Select;->resetSelectAndKeepColumns()V

    .line 1266
    const-string/jumbo v16, "_id=?"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v7}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    const-string/jumbo v16, "accountKey=?"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    const-string/jumbo v16, "flagVisible=?"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    invoke-virtual {v13}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v11

    check-cast v11, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    .line 1270
    .local v11, "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    if-eqz v11, :cond_3

    .line 1271
    invoke-virtual {v7}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static {v11}, Lcom/alibaba/alimei/sdk/datasource/impl/MailboxDatasourceImpl;->buildAlimeiFolder(Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    .end local v11    # "mailbox":Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 1275
    goto/16 :goto_1

    .line 1256
    .end local v12    # "resultCount":I
    :cond_4
    const/16 v16, -0x1

    goto/16 :goto_2

    .line 1276
    .end local v7    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v10    # "isPush":Z
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v14

    .line 1277
    .local v14, "size":I
    if-lez v14, :cond_1

    .line 1278
    new-instance v9, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-direct {v9, v0, v1, v2}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;-><init>(JLjava/lang/String;)V

    .line 1279
    .local v9, "groupModel":Lcom/alibaba/alimei/sdk/model/FolderGroupModel;
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1280
    .local v8, "fs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/FolderModel;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1281
    invoke-virtual {v9, v8}, Lcom/alibaba/alimei/sdk/model/FolderGroupModel;->setChangedFolders(Ljava/util/List;)V

    .line 1282
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->notifyFolderChanged(Lcom/alibaba/alimei/sdk/model/FolderGroupModel;)V

    .line 1284
    new-instance v6, Lyc;

    const-string/jumbo v16, "FolderPushStateChange"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v17

    invoke-direct {v6, v0, v1, v2}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1285
    .local v6, "eventMessage":Lyc;
    iput-object v9, v6, Lyc;->g:Ljava/lang/Object;

    .line 1286
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Lya;->a(Lyc;)V

    goto/16 :goto_0
.end method

.method public updateSyncKey(JILjava/lang/String;)I
    .locals 7
    .param p1, "accountid"    # J
    .param p3, "mailboxType"    # I
    .param p4, "newSyncKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1165
    const-string/jumbo v1, "MailboxDatasourceImpl"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "update mailboxyType: "

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, ", accountId: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "Mailbox"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "syncKey"

    invoke-virtual {v0, v1, p4}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1168
    const-string/jumbo v1, "type=?"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    const-string/jumbo v1, "accountKey=?"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    return v1
.end method

.method public updateSyncKey(JJLjava/lang/String;J)I
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "mailboxId"    # J
    .param p5, "newSyncKey"    # Ljava/lang/String;
    .param p6, "syncTime"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "contactsynckey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "Mailbox"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "syncKey"

    invoke-virtual {v0, v1, p5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1157
    const-string/jumbo v1, "syncTime"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1158
    const-string/jumbo v1, "_id=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    const-string/jumbo v1, "accountKey=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    return v1
.end method

.method public updateSyncTime(JJJ)I
    .locals 7
    .param p1, "accountId"    # J
    .param p3, "mailboxId"    # J
    .param p5, "syncTime"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1175
    new-instance v0, Lcom/alibaba/alimei/orm/query/Update;

    const-class v1, Lcom/alibaba/alimei/sdk/db/mail/entry/Mailbox;

    const-string/jumbo v2, "EmailProvider.db"

    const-string/jumbo v3, "Mailbox"

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    .local v0, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v1, "syncTime"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1177
    const-string/jumbo v1, "_id=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    const-string/jumbo v1, "accountKey=?"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;->and(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    invoke-virtual {v0}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    move-result v1

    return v1
.end method

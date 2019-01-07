.class public Lcom/alibaba/alimei/mail/avatar/datasource/impl/MailUidDatasourceImpl;
.super Lcom/alibaba/alimei/framework/datasource/BaseDatasource;
.source "MailUidDatasourceImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/avatar/datasource/MailUidDatasource;


# static fields
.field private static final TAG:Ljava/lang/String; = "MailUidDatasourceImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/datasource/BaseDatasource;-><init>()V

    return-void
.end method

.method private static buildMailUidModel(Lcom/alibaba/alimei/mail/avatar/db/MailUid;)Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;
    .locals 4
    .param p0, "mailUid"    # Lcom/alibaba/alimei/mail/avatar/db/MailUid;

    .prologue
    .line 76
    new-instance v0, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;-><init>()V

    .line 77
    .local v0, "uidModel":Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;
    iget-wide v2, p0, Lcom/alibaba/alimei/mail/avatar/db/MailUid;->mLastReqTime:J

    iput-wide v2, v0, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->mLastReqMillis:J

    .line 78
    iget-wide v2, p0, Lcom/alibaba/alimei/mail/avatar/db/MailUid;->mUid:J

    iput-wide v2, v0, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->mUid:J

    .line 79
    iget-object v1, p0, Lcom/alibaba/alimei/mail/avatar/db/MailUid;->mEmail:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;->mEmail:Ljava/lang/String;

    .line 81
    return-object v0
.end method


# virtual methods
.method public clearUidCache()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 70
    new-instance v1, Lcom/alibaba/alimei/orm/query/Delete;

    const-class v2, Lcom/alibaba/alimei/mail/avatar/db/MailUid;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/avatar/datasource/impl/MailUidDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mail_uid"

    invoke-direct {v1, v2, v3, v4}, Lcom/alibaba/alimei/orm/query/Delete;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .local v1, "delete":Lcom/alibaba/alimei/orm/query/Delete;
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Delete;->execute()I

    move-result v0

    .line 72
    .local v0, "count":I
    const-string/jumbo v2, "MailUidDatasourceImpl"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "clear uid cache count: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "mailuid.db"

    return-object v0
.end method

.method public queryUidByEmail(Ljava/lang/String;)Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;
    .locals 4
    .param p1, "email"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-object v2

    .line 35
    :cond_1
    const-class v3, Lcom/alibaba/alimei/mail/avatar/db/MailUid;

    invoke-static {v3}, Lcom/alibaba/alimei/orm/query/Select;->newTableSelect(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/query/Select;

    move-result-object v1

    .line 36
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v3, "email"

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 37
    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 38
    const-string/jumbo v3, "last_req_time"

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 39
    const-string/jumbo v3, "email"

    invoke-virtual {v1, v3, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/avatar/db/MailUid;

    .line 41
    .local v0, "mailUid":Lcom/alibaba/alimei/mail/avatar/db/MailUid;
    if-eqz v0, :cond_0

    .line 44
    invoke-static {v0}, Lcom/alibaba/alimei/mail/avatar/datasource/impl/MailUidDatasourceImpl;->buildMailUidModel(Lcom/alibaba/alimei/mail/avatar/db/MailUid;)Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;

    move-result-object v2

    goto :goto_0
.end method

.method public saveUidByEmail(Ljava/lang/String;J)V
    .locals 8
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "uid"    # J

    .prologue
    .line 49
    const-class v4, Lcom/alibaba/alimei/mail/avatar/db/MailUid;

    invoke-static {v4}, Lcom/alibaba/alimei/orm/query/Select;->newTableSelect(Ljava/lang/Class;)Lcom/alibaba/alimei/orm/query/Select;

    move-result-object v2

    .line 50
    .local v2, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v4, "_id"

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/orm/query/Select;->addColumn(Ljava/lang/String;)V

    .line 51
    const-string/jumbo v4, "email"

    invoke-virtual {v2, v4, p1}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {v2}, Lcom/alibaba/alimei/orm/query/Select;->isExist()Z

    move-result v0

    .line 53
    .local v0, "exsit":Z
    if-eqz v0, :cond_0

    .line 54
    new-instance v3, Lcom/alibaba/alimei/orm/query/Update;

    const-class v4, Lcom/alibaba/alimei/mail/avatar/db/MailUid;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/avatar/datasource/impl/MailUidDatasourceImpl;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mail_uid"

    invoke-direct {v3, v4, v5, v6}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v3, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v4, "uid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    const-string/jumbo v4, "last_req_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    const-string/jumbo v4, "email"

    invoke-virtual {v3, v4, p1}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Update;->execute()I

    .line 66
    .end local v3    # "update":Lcom/alibaba/alimei/orm/query/Update;
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/mail/avatar/db/MailUid;

    invoke-direct {v1}, Lcom/alibaba/alimei/mail/avatar/db/MailUid;-><init>()V

    .line 61
    .local v1, "mailUid":Lcom/alibaba/alimei/mail/avatar/db/MailUid;
    iput-object p1, v1, Lcom/alibaba/alimei/mail/avatar/db/MailUid;->mEmail:Ljava/lang/String;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alibaba/alimei/mail/avatar/db/MailUid;->mLastReqTime:J

    .line 63
    iput-wide p2, v1, Lcom/alibaba/alimei/mail/avatar/db/MailUid;->mUid:J

    .line 64
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/avatar/db/MailUid;->save()J

    goto :goto_0
.end method

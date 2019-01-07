.class public Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;
.super Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;
.source "CommonMailAdditionApiImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonMailAdditionApiImpl"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/api/impl/BaseMailAdditionApiImpl;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private notSupport(Lxv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lxv",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "listener":Lxv;, "Lxv<TT;>;"
    if-eqz p1, :cond_0

    .line 259
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->STDProtocolNotSupportAction:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    invoke-interface {p1, v0}, Lxv;->onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public addAndRemoveMailTags(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lxv;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 92
    .local p1, "mailServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "addTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "removeTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lxv;, "Lxv<Lxv$a;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 93
    :cond_0
    if-eqz p4, :cond_1

    .line 94
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v5

    invoke-interface {p4, v5}, Lxv;->onSuccess(Ljava/lang/Object;)V

    .line 126
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 100
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 102
    .local v3, "mailServerId":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 103
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 104
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 105
    .local v4, "tagId":Ljava/lang/String;
    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 106
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v0, v5, v3, v6}, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    .local v0, "command":Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->executeCommand()V

    .line 103
    .end local v0    # "command":Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 112
    .end local v2    # "j":I
    .end local v4    # "tagId":Ljava/lang/String;
    :cond_4
    if-eqz p3, :cond_6

    .line 113
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 114
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 115
    .restart local v4    # "tagId":Ljava/lang/String;
    const-string/jumbo v5, "1"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 116
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v0, v5, v3, v6}, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 117
    .restart local v0    # "command":Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->executeCommand()V

    .line 113
    .end local v0    # "command":Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 99
    .end local v2    # "j":I
    .end local v4    # "tagId":Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    .end local v3    # "mailServerId":Ljava/lang/String;
    :cond_7
    if-eqz p4, :cond_1

    .line 124
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v5

    invoke-interface {p4, v5}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addMailTag(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 6
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    const/4 v5, 0x1

    .line 130
    const-string/jumbo v3, "1"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CommonMailAdditionApiImpladdMailTag mailServerIds="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lzb;->g(Ljava/lang/String;)I

    .line 133
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p1, v5}, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 134
    .local v0, "command":Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->executeCommand()V

    .line 136
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    .line 138
    .local v1, "eventCenter":Lya;
    new-instance v2, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$2;

    invoke-direct {v2, p0, p1, p3, v1}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$2;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;Ljava/lang/String;Lxv;Lya;)V

    .line 155
    .local v2, "eventListener":Lyb;
    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "mailTagsUpdate"

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 159
    .end local v0    # "command":Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;
    .end local v1    # "eventCenter":Lya;
    .end local v2    # "eventListener":Lyb;
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-direct {p0, p3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    goto :goto_0
.end method

.method public addMailTags(Ljava/util/List;Ljava/lang/String;Lxv;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "mailServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-direct {p0, p3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 195
    return-void
.end method

.method public blurredLookUpQuery(Ljava/lang/String;ILxv;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p3, "sdkListener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/db/lookup/entry/RecipientLookup;>;>;"
    invoke-direct {p0, p3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 215
    return-void
.end method

.method public changeMailTags(Ljava/lang/String;Ljava/util/List;Lxv;)V
    .locals 0
    .param p1, "mailServerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    return-void
.end method

.method public changeMailTags(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "isAddTag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "mailServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public checkAndDeleteFrequentContactsWhenOver(IILxv;)V
    .locals 0
    .param p1, "max"    # I
    .param p2, "top"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-direct {p0, p3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 225
    return-void
.end method

.method public getFoldersPushSettings(Ljava/util/List;Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/data/Folder;",
            ">;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/data/Folder;>;"
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/restfulapi/response/data/GetFolderPushSettingsResult;>;"
    invoke-direct {p0, p2}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 83
    return-void
.end method

.method public getMailInfoByMail(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;>;"
    invoke-direct {p0, p2}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 230
    return-void
.end method

.method public getMailInfoByMail(Ljava/util/List;Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "mailList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;"
    invoke-direct {p0, p2}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 235
    return-void
.end method

.method public queryAllRevokeMailStatus(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;>;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 255
    return-void
.end method

.method public queryFrequentContacts(Ljava/lang/String;IZLxv;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "limiet"    # I
    .param p3, "isIntelligent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lxv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FrequentContactModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p4, "sdkListener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/FrequentContactModel;>;>;"
    invoke-direct {p0, p4}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 220
    return-void
.end method

.method public queryMailMembersInMailListByPage(Ljava/lang/String;ILxv;)V
    .locals 0
    .param p1, "groupMail"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lxv",
            "<",
            "Lagx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p3, "listener":Lxv;, "Lxv<Lagx;>;"
    invoke-direct {p0, p3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 240
    return-void
.end method

.method public queryMailParticipantsInMailList(Ljava/lang/String;Ljava/lang/String;ILxv;)V
    .locals 0
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "mailList"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lxv",
            "<",
            "Lagx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p4, "listener":Lxv;, "Lxv<Lagx;>;"
    invoke-direct {p0, p4}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 78
    return-void
.end method

.method public queryMailParticipantsMap(Ljava/lang/String;ZLxv;)V
    .locals 0
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "includeMailSender"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p3, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;>;"
    invoke-direct {p0, p3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 73
    return-void
.end method

.method public queryMailParticipantsMapFromCache(Ljava/lang/String;ZLxv;)V
    .locals 2
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "includeMailSender"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lxv",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 54
    .local p3, "listener":Lxv;, "Lxv<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;>;"
    new-instance v0, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$1;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$1;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    .local v0, "runnable":Lcom/alibaba/alimei/framework/api/ApiResultRunnable;, "Lcom/alibaba/alimei/framework/api/ApiResultRunnable<Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;>;>;>;"
    invoke-virtual {p0, v0, p3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->executeInAnAsyncTask(Lcom/alibaba/alimei/framework/api/ApiResultRunnable;Lxv;)V

    .line 68
    return-void
.end method

.method public queryMailReadStatus(Ljava/lang/String;JLxv;)V
    .locals 0
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "forceRefreshTimeInterval"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p4, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;>;"
    invoke-direct {p0, p4}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 49
    return-void
.end method

.method public queryRevokeMailStatus(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;>;"
    invoke-direct {p0, p2}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 250
    return-void
.end method

.method public removeMailTag(Ljava/lang/String;Ljava/lang/String;Lxv;)V
    .locals 6
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    const/4 v5, 0x0

    .line 163
    const-string/jumbo v3, "1"

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    new-instance v0, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;

    invoke-virtual {p0}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p1, v5}, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    .local v0, "command":Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;
    invoke-virtual {v0}, Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;->executeCommand()V

    .line 167
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    .line 169
    .local v1, "eventCenter":Lya;
    new-instance v2, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$3;

    invoke-direct {v2, p0, p1, p3, v1}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl$3;-><init>(Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;Ljava/lang/String;Lxv;Lya;)V

    .line 186
    .local v2, "eventListener":Lyb;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "mailTagsUpdate"

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 190
    .end local v0    # "command":Lcom/alibaba/alimei/adpater/task/cmmd/ChangeImapMailFlagCommand;
    .end local v1    # "eventCenter":Lya;
    .end local v2    # "eventListener":Lyb;
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-direct {p0, p3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    goto :goto_0
.end method

.method public removeMailTags(Ljava/util/List;Ljava/lang/String;Lxv;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "mailServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    invoke-direct {p0, p3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 200
    return-void
.end method

.method public revokeMail(Ljava/lang/String;Lxv;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p2, "listener":Lxv;, "Lxv<Ljava/lang/Boolean;>;"
    invoke-direct {p0, p2}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 245
    return-void
.end method

.method public setFoldersPushSettings(Ljava/util/List;ZLxv;)V
    .locals 0
    .param p2, "accountSwitch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;",
            ">;Z",
            "Lxv",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "folderSettings":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/request/data/SetPushFoldersRequestData$FolderPushSetting;>;"
    .local p3, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/restfulapi/response/data/SetFolderPushSettingsResult;>;"
    invoke-direct {p0, p3}, Lcom/alibaba/alimei/adpater/api/impl/CommonMailAdditionApiImpl;->notSupport(Lxv;)V

    .line 88
    return-void
.end method

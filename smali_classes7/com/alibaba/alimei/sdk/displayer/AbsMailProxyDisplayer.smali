.class public abstract Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
.source "AbsMailProxyDisplayer.java"


# instance fields
.field private mContentObserver:Lxm;

.field private mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

.field private mDefaultDisplayer:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

.field private mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

.field private mTiledDisplayer:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v3, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer$1;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer$1;-><init>(Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;)V

    iput-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mContentObserver:Lxm;

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v0, v3

    .line 69
    .local v0, "hashCode":J
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getMailApi()Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getMailAdditionalApi()Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v4

    invoke-static {p1, v0, v1, v3, v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->buildMailLoaderInstance(Ljava/lang/String;JLcom/alibaba/alimei/sdk/api/MailApi;Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v2

    .line 70
    .local v2, "loader":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getDefaultDisplayer(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mDefaultDisplayer:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    .line 71
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getTiledDisplayer(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTiledDisplayer:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    .line 72
    new-instance v3, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-direct {v3, v2}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;-><init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V

    iput-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->notifyShownTypeChanged(I)V

    return-void
.end method

.method private getMailDisplayer()Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 249
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v0

    .line 250
    .local v0, "sdkConfig":Lafy;
    iget v1, v0, Lafy;->o:I

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getMailDisplayer(I)Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;

    move-result-object v1

    return-object v1
.end method

.method private getMailDisplayer(I)Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 254
    packed-switch p1, :pswitch_data_0

    .line 262
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mDefaultDisplayer:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    :goto_0
    return-object v0

    .line 256
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mDefaultDisplayer:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTiledDisplayer:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyShownTypeChanged(I)V
    .locals 2
    .param p1, "mailShownType"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getMailDisplayer(I)Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;

    move-result-object v0

    .line 243
    .local v0, "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getCurrentFolder()Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;->switchToFolder(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    .line 244
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->notifyLoadSuccess()V

    .line 245
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->onShownTypeChanged()V

    .line 246
    return-void
.end method


# virtual methods
.method public changeAllReadStatus(ZLxv;)V
    .locals 2
    .param p1, "readStatus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 117
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-nez v1, :cond_0

    .line 127
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    instance-of v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getMailDisplayer()Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;

    move-result-object v0

    .line 123
    .local v0, "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;->changeAllReadStatus(ZLxv;)V

    goto :goto_0

    .line 125
    .end local v0    # "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->changeReadStatus(ZLxv;)V

    goto :goto_0
.end method

.method protected executeLoad()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 267
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->hasLoading:Z

    if-eqz v1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->hasLoading:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    instance-of v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_2

    .line 272
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getMailDisplayer()Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;

    move-result-object v0

    .line 273
    .local v0, "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;->load()V

    goto :goto_0

    .line 275
    .end local v0    # "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->load()V

    goto :goto_0
.end method

.method public getAllDatas()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 172
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    :goto_0
    return-object v1

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    instance-of v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_1

    .line 176
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getMailDisplayer()Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;

    move-result-object v0

    .line 177
    .local v0, "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;->getAllDatas()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 180
    .end local v0    # "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->getAllDatas()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getAttachmentList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 197
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    :goto_0
    return-object v1

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    instance-of v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getMailDisplayer()Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;

    move-result-object v0

    .line 203
    .local v0, "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;->getAttachmentList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 205
    .end local v0    # "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->getAttachmentList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getConversationMailList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 156
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    :goto_0
    return-object v1

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    instance-of v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getMailDisplayer()Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;

    move-result-object v0

    .line 161
    .local v0, "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;->getConversationMailList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 163
    .end local v0    # "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v1, p1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->getConversationMailList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentFolder()Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    instance-of v0, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 99
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getDefaultDisplayer(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;
.end method

.method public abstract getMailAdditionalApi()Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;
.end method

.method public abstract getMailApi()Lcom/alibaba/alimei/sdk/api/MailApi;
.end method

.method public getTagList(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 210
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-nez v1, :cond_0

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    :goto_0
    return-object v1

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    instance-of v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_1

    .line 215
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getMailDisplayer()Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;

    move-result-object v0

    .line 216
    .local v0, "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;->getTagList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 218
    .end local v0    # "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v1, p1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->getTagList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getTiledDisplayer(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;
.end method

.method public getUnreadList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 185
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-nez v1, :cond_0

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    :goto_0
    return-object v1

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    instance-of v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_1

    .line 189
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getMailDisplayer()Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;

    move-result-object v0

    .line 190
    .local v0, "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;->getUnreadList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 192
    .end local v0    # "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->getUnreadList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public hasMoreHistoryMail()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 145
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    instance-of v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getMailDisplayer()Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;

    move-result-object v0

    .line 147
    .local v0, "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;->hasMoreHistoryMail()Z

    .line 151
    .end local v0    # "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->hasMoreHistoryMail()Z

    goto :goto_0
.end method

.method public loadMoreHistoryMail(Lxv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 131
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-nez v1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    instance-of v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getMailDisplayer()Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;

    move-result-object v0

    .line 137
    .local v0, "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;->loadMoreHistoryMail(Lxv;)V

    goto :goto_0

    .line 139
    .end local v0    # "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v1, p1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->loadMoreHistoryMail(Lxv;)V

    goto :goto_0
.end method

.method protected onRelease()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 282
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mDefaultDisplayer:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->release()V

    .line 283
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTiledDisplayer:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->release()V

    .line 284
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->release()V

    .line 285
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mContentObserver:Lxm;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->unregisterContentObserver(Ljava/lang/Class;Lxm;)V

    .line 286
    return-void
.end method

.method public refreshMail()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 104
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    if-nez v1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    instance-of v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v1, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getMailDisplayer()Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;

    move-result-object v0

    .line 109
    .local v0, "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;->refreshMail()V

    goto :goto_0

    .line 111
    .end local v0    # "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->refreshMail()V

    goto :goto_0
.end method

.method public registerObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V
    .locals 1
    .param p1, "displayerObserver"    # Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mDefaultDisplayer:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->registerObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTiledDisplayer:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->registerObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 83
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->registerObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 84
    return-void
.end method

.method public switchToFolder(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V
    .locals 9
    .param p1, "baseModel"    # Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 227
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mCurrentModel:Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .line 228
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getInstance()Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;

    move-result-object v3

    const-class v4, Lcom/alibaba/alimei/sdk/model/SettingGroupModel;

    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mContentObserver:Lxm;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->registerContentObserver(Ljava/lang/Class;Lxm;)V

    .line 229
    instance-of v3, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 230
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 231
    .local v0, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    const-string/jumbo v3, "MailLoader"

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "switchToFolder "

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->getMailDisplayer()Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;

    move-result-object v1

    .line 233
    .local v1, "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;->switchToFolder(Lcom/alibaba/alimei/framework/model/AbsBaseModel;)V

    .line 239
    .end local v0    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v1    # "mailDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsAdapterMailDisplayer;
    :goto_0
    return-void

    :cond_0
    move-object v2, p1

    .line 235
    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 236
    .local v2, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    const-string/jumbo v3, "MailLoader"

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "switchToTag "

    aput-object v5, v4, v6

    invoke-virtual {v2}, Lcom/alibaba/alimei/sdk/model/MailTagModel;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v4}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v3, v2}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->switchToTag(Lcom/alibaba/alimei/sdk/model/MailTagModel;)V

    goto :goto_0
.end method

.method public unregisterObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mDefaultDisplayer:Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsDefaultMailDisplayer;->unregisterObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTiledDisplayer:Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/AbsTiledMailDisplayer;->unregisterObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/AbsMailProxyDisplayer;->mTagDisplayer:Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/MailTagMailDisplayer;->unregisterObserver(Lcom/alibaba/alimei/sdk/displayer/DisplayerObserver;)V

    .line 91
    return-void
.end method

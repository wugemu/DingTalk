.class public Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;
.super Lcom/alibaba/alimei/sdk/displayer/Displayer;
.source "DefaultTagMailDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/sdk/displayer/Displayer",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
        ">;"
    }
.end annotation


# static fields
.field public static DEFAULT_TAG_MAIL_SIZE:I = 0x0

.field private static final INIT_ENDTIME:I = 0x0

.field private static final SAVE_ENDTIME:I = 0x1


# instance fields
.field private hasMoreTagHistoryMails:Z

.field private isFirstLoadMoreMails:Z

.field private isSessionable:Z

.field private mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field private final mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

.field private mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

.field private mMessageSync:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

.field private mMoreHistoryEndTime:J

.field private final mTag:Ljava/lang/String;

.field private final mTagMailsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field private mTempHoldMailsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field private mailApi:Lcom/alibaba/alimei/sdk/api/MailApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x14

    sput v0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->DEFAULT_TAG_MAIL_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/lang/String;)V
    .locals 3
    .param p1, "loader"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 45
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/Displayer;-><init>(Ljava/lang/String;)V

    .line 36
    iput-boolean v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->hasMoreTagHistoryMails:Z

    .line 37
    iput-boolean v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->isFirstLoadMoreMails:Z

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMoreHistoryEndTime:J

    .line 40
    iput-boolean v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->isSessionable:Z

    .line 380
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$2;-><init>(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    .line 46
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .line 47
    iput-object p2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTag:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTagMailsMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTempHoldMailsMap:Ljava/util/HashMap;

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getMailApi()Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mailApi:Lcom/alibaba/alimei/sdk/api/MailApi;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "loader"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "isSessionable"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;-><init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/lang/String;)V

    .line 55
    iput-boolean p3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->isSessionable:Z

    .line 56
    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->hasMoreTagHistoryMails:Z

    return p1
.end method

.method static synthetic access$102(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMoreHistoryEndTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->handleLoadHistoryEndTime(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->addMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->fillTagMails()V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->isFirstLoadMoreMails:Z

    return v0
.end method

.method static synthetic access$702(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->isFirstLoadMoreMails:Z

    return p1
.end method

.method static synthetic access$800(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->handleMailGroup(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized addMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 6
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 183
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 184
    .local v0, "mailId":Ljava/lang/Long;
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTagMailsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 185
    .local v1, "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->containsTag(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTagMailsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 183
    .end local v0    # "mailId":Ljava/lang/Long;
    .end local v1    # "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized changeMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 6
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 221
    .local v1, "mailId":Ljava/lang/Long;
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTempHoldMailsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->containsTag(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v0

    .line 223
    .local v0, "hasTag":Z
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTagMailsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 224
    .local v2, "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v0, :cond_0

    .line 225
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTagMailsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :cond_0
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 220
    .end local v0    # "hasTag":Z
    .end local v1    # "mailId":Ljava/lang/Long;
    .end local v2    # "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private containsTag(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 8
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v3, :cond_2

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 204
    :cond_1
    :goto_0
    return v1

    .line 196
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 197
    .local v0, "mailId":Ljava/lang/Long;
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTempHoldMailsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 201
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTag:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    move v1, v2

    .line 204
    goto :goto_0
.end method

.method private declared-synchronized deleteMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 4
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 209
    .local v0, "mailId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTempHoldMailsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTagMailsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .local v1, "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 208
    .end local v0    # "mailId":Ljava/lang/Long;
    .end local v1    # "target":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized fillTagMails()V
    .locals 20

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTagMailsMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v13

    .line 267
    .local v13, "tagMailSize":I
    if-nez v13, :cond_1

    .line 268
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    :cond_0
    monitor-exit p0

    return-void

    .line 273
    :cond_1
    :try_start_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v9, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTagMailsMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 275
    .local v8, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v5, "cs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->isSessionable:Z

    if-eqz v15, :cond_3

    .line 278
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 279
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 280
    .local v10, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v10, :cond_2

    .line 283
    invoke-static {v10}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversationId(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, "conversationId":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 287
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v15, v15, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mConversationMap:Ljava/util/Map;

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 288
    .local v3, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-eqz v3, :cond_2

    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v15}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasTag(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 293
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v15, v3, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    .end local v3    # "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    .end local v4    # "conversationId":Ljava/lang/String;
    .end local v5    # "cs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v9    # "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v10    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v13    # "tagMailSize":I
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 298
    .restart local v5    # "cs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v8    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v9    # "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v13    # "tagMailSize":I
    :cond_3
    :goto_1
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 299
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 300
    .restart local v10    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v10, :cond_3

    .line 303
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 307
    .end local v10    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_4
    sget-object v15, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    invoke-static {v9, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 310
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 311
    .local v14, "targetMailsSize":I
    if-lez v14, :cond_0

    .line 312
    const/4 v12, 0x0

    .line 314
    .local v12, "previous":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 315
    .restart local v10    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-wide v0, v10, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Laiq;->a(J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 316
    .local v6, "dayTime":Ljava/lang/Long;
    const/4 v2, 0x0

    .line 319
    .local v2, "addDivider":Z
    if-nez v12, :cond_9

    .line 320
    const/4 v2, 0x1

    .line 328
    :cond_6
    :goto_3
    iget-boolean v0, v10, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    move/from16 v16, v0

    if-nez v16, :cond_7

    .line 331
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->containsTag(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 335
    :cond_7
    if-eqz v2, :cond_8

    .line 336
    iget-wide v0, v10, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    move-wide/from16 v16, v0

    iget-wide v0, v10, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->lastReadTimeStamp:J

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->createTimeDivider(JJ)Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-result-object v7

    .line 338
    .local v7, "divider":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mListDatas:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    .end local v7    # "divider":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mListDatas:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    move-object v12, v10

    .line 342
    goto :goto_2

    .line 322
    :cond_9
    iget-wide v0, v12, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Laiq;->a(J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 323
    .local v11, "pdayTime":Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v18

    cmp-long v16, v16, v18

    if-eqz v16, :cond_6

    .line 324
    const/4 v2, 0x1

    goto :goto_3
.end method

.method private handleLoadHistoryEndTime(I)V
    .locals 10
    .param p1, "handleType"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 463
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    if-nez v6, :cond_1

    const/4 v2, 0x0

    .line 464
    .local v2, "mAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :goto_0
    if-nez v2, :cond_2

    .line 503
    :cond_0
    :goto_1
    return-void

    .line 463
    .end local v2    # "mAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_1
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v2, v6, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    goto :goto_0

    .line 468
    .restart local v2    # "mAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v0

    .line 469
    .local v0, "accountId":J
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMessageSync:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    if-nez v6, :cond_3

    .line 470
    new-instance v3, Lcom/alibaba/alimei/orm/query/Select;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v3, v6}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;)V

    .line 471
    .local v3, "select":Lcom/alibaba/alimei/orm/query/Select;
    const-string/jumbo v6, "accountId"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string/jumbo v6, "itemId"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string/jumbo v6, "type"

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/alimei/orm/query/Select;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "lastsynctime"

    aput-object v8, v6, v7

    invoke-virtual {v3, v6}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 475
    invoke-virtual {v3}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    iput-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMessageSync:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .line 478
    .end local v3    # "select":Lcom/alibaba/alimei/orm/query/Select;
    :cond_3
    if-nez p1, :cond_5

    .line 479
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMessageSync:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    if-nez v6, :cond_4

    .line 480
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMoreHistoryEndTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 500
    .end local v0    # "accountId":J
    :catch_0
    move-exception v4

    .line 501
    .local v4, "tr":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 482
    .end local v4    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "accountId":J
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMessageSync:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    iget-wide v6, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->lastsynctime:J

    iput-wide v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMoreHistoryEndTime:J

    goto :goto_1

    .line 484
    :cond_5
    if-ne p1, v9, :cond_0

    .line 485
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMessageSync:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    if-nez v6, :cond_6

    .line 486
    new-instance v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v6}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;-><init>()V

    iput-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMessageSync:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    .line 487
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMessageSync:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    iget-wide v8, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMoreHistoryEndTime:J

    iput-wide v8, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->lastsynctime:J

    .line 488
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMessageSync:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    iput-wide v0, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->accountId:J

    .line 489
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMessageSync:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    const/16 v7, 0x8

    iput v7, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->type:I

    .line 490
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMessageSync:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->itemId:Ljava/lang/String;

    .line 491
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMessageSync:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMessageSync:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-virtual {v7}, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->save()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    goto/16 :goto_1

    .line 493
    :cond_6
    new-instance v5, Lcom/alibaba/alimei/orm/query/Update;

    const-class v6, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    invoke-direct {v5, v6}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;)V

    .line 494
    .local v5, "update":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v6, "lastsynctime"

    iget-wide v8, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMoreHistoryEndTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    const-string/jumbo v6, "_id"

    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMessageSync:Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;

    iget-wide v8, v7, Lcom/alibaba/alimei/sdk/db/mail/entry/MessageSync;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string/jumbo v6, "accountId"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/alimei/orm/query/Update;->columnAnd(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    invoke-virtual {v5}, Lcom/alibaba/alimei/orm/query/Update;->execute()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private declared-synchronized handleMailGroup(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "addedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p2, "changedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p3, "deletedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    monitor-enter p0

    const/4 v1, 0x0

    .line 236
    .local v1, "result":Z
    if-eqz p3, :cond_2

    .line 237
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 239
    .local v0, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->deleteMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    .line 240
    :goto_1
    goto :goto_0

    :cond_1
    move v1, v2

    .line 239
    goto :goto_1

    .line 244
    .end local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    if-eqz p1, :cond_5

    .line 245
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 247
    .restart local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->addMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v1, v3

    .line 248
    :goto_3
    goto :goto_2

    :cond_4
    move v1, v2

    .line 247
    goto :goto_3

    .line 252
    .end local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_5
    if-eqz p2, :cond_8

    .line 253
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 255
    .restart local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->changeMail(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    move v1, v3

    .line 256
    :goto_5
    goto :goto_4

    :cond_7
    move v1, v2

    .line 255
    goto :goto_5

    .line 258
    .end local v0    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_8
    if-eqz v1, :cond_9

    .line 259
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->fillTagMails()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_9
    monitor-exit p0

    return v1

    .line 234
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method protected executeLoad()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 373
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 374
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTagMailsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 375
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTempHoldMailsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 376
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->notifyLoadStarted()V

    .line 377
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->executeLoading(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;)V

    .line 378
    return-void
.end method

.method public getConversationMailList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .prologue
    .line 451
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversationMailList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadCount()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 507
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTagMailsMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "count":I
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTagMailsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 510
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 511
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 512
    .local v2, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-boolean v3, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v3, :cond_0

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    .end local v0    # "count":I
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v2    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public hasMoreHistoryMail()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public hasMoreHistoryMailBackup()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->hasMoreTagHistoryMails:Z

    goto :goto_0
.end method

.method public declared-synchronized load()V
    .locals 1

    .prologue
    .line 348
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->executeLoad()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Lcom/alibaba/alimei/sdk/model/FolderModel;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->notifyLoadSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :goto_0
    monitor-exit p0

    return-void

    .line 367
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mCurrentFolder:Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 368
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->load()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Z)V
    .locals 1
    .param p1, "isSessionable"    # Z

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->isSessionable:Z

    if-ne v0, p1, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->notifyLoadSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :goto_0
    monitor-exit p0

    return-void

    .line 358
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->isSessionable:Z

    .line 359
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->load()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadMoreHistoryMail(Lxv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    return-void
.end method

.method public loadMoreHistoryMailBackup(Lxv;)V
    .locals 9
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

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 118
    .local p1, "listener":Lxv;, "Lxv<Lxv$a;>;"
    const-wide/16 v4, -0x1

    .line 119
    .local v4, "endTime":J
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 120
    .local v8, "size":I
    if-lez v8, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mListDatas:Ljava/util/List;

    add-int/lit8 v1, v8, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 122
    .local v7, "last":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v7, :cond_0

    .line 124
    iget-wide v0, v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    const-wide/16 v2, 0x3e8

    sub-long v4, v0, v2

    .line 128
    .end local v7    # "last":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMoreHistoryEndTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 129
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mMoreHistoryEndTime:J

    .line 132
    :cond_1
    new-instance v6, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$1;

    invoke-direct {v6, p0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer$1;-><init>(Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;Lxv;)V

    .line 160
    .local v6, "listener2":Lxv;, "Lxv<Lcom/alibaba/alimei/restfulapi/response/data/MailSearchResult;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mailApi:Lcom/alibaba/alimei/sdk/api/MailApi;

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mailApi:Lcom/alibaba/alimei/sdk/api/MailApi;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTag:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailByTagFromServer(Ljava/lang/String;JJLxv;)V

    .line 163
    :cond_2
    return-void
.end method

.method protected onRelease()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 447
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mDefaultMailLoader:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mLoaderCallback:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->releaseCallback(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;)V

    .line 448
    return-void
.end method

.method public refreshMail()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public refreshMailBackup()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mAccountName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-wide/16 v2, -0x1

    .line 94
    .local v2, "startTime":J
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 95
    .local v7, "size":I
    if-lez v7, :cond_3

    .line 96
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mListDatas:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 97
    .local v6, "first":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v6, :cond_2

    iget-boolean v0, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isTimeDivider:Z

    if-eqz v0, :cond_2

    .line 98
    const/4 v0, 0x2

    if-lt v7, v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mListDatas:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "first":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 102
    .restart local v6    # "first":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_2
    if-eqz v6, :cond_3

    .line 103
    iget-wide v2, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 107
    .end local v6    # "first":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mailApi:Lcom/alibaba/alimei/sdk/api/MailApi;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mailApi:Lcom/alibaba/alimei/sdk/api/MailApi;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultTagMailDisplayer;->mTag:Ljava/lang/String;

    const-wide/16 v4, -0x1

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->startSyncMailByTagFromServer(Ljava/lang/String;JJ)V

    goto :goto_0
.end method

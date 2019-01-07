.class public Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
.super Ljava/lang/Object;
.source "DefaultMailLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;,
        Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;,
        Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_INIT_PAGE_SIZE:I = 0x64

.field private static final DEFAULT_MAX_PAGE_SIZE:I = 0x1f4

.field private static final DEFAULT_STEP_PAGE_SIZE:I = 0x64

.field private static final LOAD_STAGE_FINISHED:I = 0x2

.field private static final LOAD_STAGE_INIT:I = 0x0

.field private static final LOAD_STAGE_LOADING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DefaultMailLoader"

.field private static sLoaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final mAccountName:Ljava/lang/String;

.field final mAllMailMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field final mAllMailServerIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContentObserver:Lxm;

.field final mConversationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentStage:I

.field private mEventListener:Lyb;

.field mFolderArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field

.field mFolderMailMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lfk",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;>;"
        }
    .end annotation
.end field

.field final mFolderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/sdk/model/FolderModel;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderOldestItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstanceId:Ljava/lang/Long;

.field private final mIsSupportLongSparseArray:Z

.field final mLoaderObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderQuery:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

.field private mMailAdditionalApi:Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

.field private mMailApi:Lcom/alibaba/alimei/sdk/api/MailApi;

.field mMailDisplayerRuler:Lcom/alibaba/alimei/sdk/displayer/MailDisplayerRuler;

.field private mWatcher:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->sLoaderMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Long;Lcom/alibaba/alimei/sdk/api/MailApi;Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;)V
    .locals 5
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "instanceId"    # Ljava/lang/Long;
    .param p3, "mailApi"    # Lcom/alibaba/alimei/sdk/api/MailApi;
    .param p4, "mailAdditionalApi"    # Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mCurrentStage:I

    .line 94
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mWatcher:Ljava/util/concurrent/atomic/AtomicLong;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mCallbacks:Ljava/util/ArrayList;

    .line 103
    new-instance v1, Lcom/alibaba/alimei/sdk/displayer/MailDisplayerRuler;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayerRuler;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mMailDisplayerRuler:Lcom/alibaba/alimei/sdk/displayer/MailDisplayerRuler;

    .line 1005
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mLoaderObservers:Ljava/util/ArrayList;

    .line 113
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mIsSupportLongSparseArray:Z

    .line 114
    iput-object p2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mInstanceId:Ljava/lang/Long;

    .line 115
    iput-object p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailServerIdMap:Ljava/util/Map;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mConversationMap:Ljava/util/Map;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderMailMaps:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderMap:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderOldestItemMap:Ljava/util/Map;

    .line 122
    iput-object p3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mMailApi:Lcom/alibaba/alimei/sdk/api/MailApi;

    .line 123
    iput-object p4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mMailAdditionalApi:Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    .line 126
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mIsSupportLongSparseArray:Z

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderArray:Landroid/util/LongSparseArray;

    .line 129
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->handleSendMailStatusCode(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->notifyObserverDataChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mWatcher:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->reloadFolderOldestItem()V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mLoaderQuery:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->handleImapMailNotification(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->deleteMails(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->changesMails(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->addMails(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)Lcom/alibaba/alimei/sdk/api/MailApi;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mMailApi:Lcom/alibaba/alimei/sdk/api/MailApi;

    return-object v0
.end method

.method static synthetic access$902(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mCurrentStage:I

    return p1
.end method

.method private addMails(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 693
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 694
    :cond_0
    const/4 v6, 0x0

    .line 736
    :cond_1
    :goto_0
    return v6

    .line 696
    :cond_2
    const/4 v6, 0x0

    .line 698
    .local v6, "result":Z
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 699
    .local v5, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v5, :cond_3

    .line 702
    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 703
    .local v3, "mailId":Ljava/lang/Long;
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 706
    const/4 v6, 0x1

    .line 707
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v9, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailServerIdMap:Ljava/util/Map;

    iget-object v10, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v9, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    iget-wide v10, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getFolderMailList(Ljava/lang/Long;Z)Lfk;

    move-result-object v4

    .line 713
    .local v4, "mailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 714
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :cond_4
    iget-wide v10, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-direct {p0, v10, v11}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getFolderModel(J)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v2

    .line 719
    .local v2, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v2, :cond_5

    .line 720
    iget v9, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iput v9, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    .line 722
    :cond_5
    invoke-static {v2}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayerRuler;->isAggregationable(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 723
    invoke-static {v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversationId(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "conversationId":Ljava/lang/String;
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mConversationMap:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 725
    .local v0, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-nez v0, :cond_6

    .line 726
    invoke-static {v1, v5}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->create(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    move-result-object v0

    .line 727
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mConversationMap:Ljava/util/Map;

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 733
    .end local v0    # "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    .end local v1    # "conversationId":Ljava/lang/String;
    .end local v2    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v3    # "mailId":Ljava/lang/Long;
    .end local v4    # "mailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v5    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :catch_0
    move-exception v7

    .line 734
    .local v7, "tr":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 729
    .end local v7    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    .restart local v1    # "conversationId":Ljava/lang/String;
    .restart local v2    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v3    # "mailId":Ljava/lang/Long;
    .restart local v4    # "mailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v5    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_6
    :try_start_1
    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addConversationItem(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static buildMailLoaderInstance(Ljava/lang/String;JLcom/alibaba/alimei/sdk/api/MailApi;Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "instanceId"    # J
    .param p3, "mailApi"    # Lcom/alibaba/alimei/sdk/api/MailApi;
    .param p4, "additionalApi"    # Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    .prologue
    .line 132
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 133
    .local v0, "ll":Ljava/lang/Long;
    sget-object v2, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->sLoaderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .line 134
    .local v1, "loader":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    if-nez v1, :cond_0

    .line 135
    new-instance v1, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    .end local v1    # "loader":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    invoke-direct {v1, p0, v0, p3, p4}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/alibaba/alimei/sdk/api/MailApi;Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;)V

    .line 136
    .restart local v1    # "loader":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    sget-object v2, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->sLoaderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    return-object v1
.end method

.method private declared-synchronized changesMails(Ljava/util/List;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const/4 v7, 0x0

    .line 581
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    .line 638
    :cond_0
    :goto_0
    monitor-exit p0

    return v7

    .line 584
    :cond_1
    const/4 v7, 0x0

    .line 586
    .local v7, "result":Z
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 587
    .local v8, "toAddList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 588
    .local v5, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v5, :cond_2

    .line 591
    invoke-virtual {v5}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 593
    .local v3, "mailId":Ljava/lang/Long;
    iget-object v11, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 594
    iget-object v11, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 595
    .local v6, "oldModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v11, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v11, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    if-eqz v6, :cond_3

    .line 597
    iget-object v11, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailServerIdMap:Ljava/util/Map;

    iget-object v12, v6, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_3
    iget-object v11, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailServerIdMap:Ljava/util/Map;

    iget-object v12, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v11, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const/4 v7, 0x1

    .line 604
    iget-wide v12, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getFolderMailList(Ljava/lang/Long;Z)Lfk;

    move-result-object v4

    .line 605
    .local v4, "mailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v4, :cond_4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 606
    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_4
    iget-wide v12, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-direct {p0, v12, v13}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getFolderModel(J)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v2

    .line 612
    .local v2, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-eqz v2, :cond_5

    .line 613
    iget v11, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iput v11, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderType:I

    .line 615
    :cond_5
    invoke-static {v2}, Lcom/alibaba/alimei/sdk/displayer/MailDisplayerRuler;->isAggregationable(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 616
    invoke-static {v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversationId(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "conversationId":Ljava/lang/String;
    iget-object v11, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mConversationMap:Ljava/util/Map;

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 618
    .local v0, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-nez v0, :cond_6

    .line 619
    invoke-static {v1, v5}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->create(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    move-result-object v0

    .line 620
    iget-object v11, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mConversationMap:Ljava/util/Map;

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 634
    .end local v0    # "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    .end local v1    # "conversationId":Ljava/lang/String;
    .end local v2    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v3    # "mailId":Ljava/lang/Long;
    .end local v4    # "mailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v5    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v6    # "oldModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v8    # "toAddList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :catch_0
    move-exception v9

    .line 635
    .local v9, "tr":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 581
    .end local v7    # "result":Z
    .end local v9    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 622
    .restart local v0    # "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    .restart local v1    # "conversationId":Ljava/lang/String;
    .restart local v2    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .restart local v3    # "mailId":Ljava/lang/Long;
    .restart local v4    # "mailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .restart local v5    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .restart local v6    # "oldModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .restart local v7    # "result":Z
    .restart local v8    # "toAddList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_6
    :try_start_3
    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->addConversationItem(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    goto/16 :goto_1

    .line 626
    .end local v0    # "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    .end local v1    # "conversationId":Ljava/lang/String;
    .end local v2    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    .end local v4    # "mailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v6    # "oldModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_7
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "changes a not exist mail: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lzb;->i(Ljava/lang/String;)I

    goto/16 :goto_1

    .line 631
    .end local v3    # "mailId":Ljava/lang/Long;
    .end local v5    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 632
    invoke-direct {p0, v8}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->addMails(Ljava/util/List;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    or-int/2addr v7, v10

    goto/16 :goto_0
.end method

.method private deleteMails(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    const/4 v7, 0x0

    .line 647
    if-nez p1, :cond_1

    move v6, v7

    .line 680
    :cond_0
    return v6

    .line 650
    :cond_1
    const/4 v6, 0x0

    .line 651
    .local v6, "result":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 652
    .local v4, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v4, :cond_2

    .line 655
    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 656
    .local v2, "mailId":Ljava/lang/Long;
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 657
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v9, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 658
    .local v5, "oldModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailServerIdMap:Ljava/util/Map;

    iget-object v10, v5, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const/4 v6, 0x1

    .line 662
    iget-wide v10, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {p0, v9, v7}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getFolderMailList(Ljava/lang/Long;Z)Lfk;

    move-result-object v3

    .line 663
    .local v3, "mailMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 664
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    :cond_3
    invoke-static {v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversationId(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, "conversationId":Ljava/lang/String;
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mConversationMap:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 670
    .local v0, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-eqz v0, :cond_2

    .line 671
    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->deleteConversationItem(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    .line 673
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 674
    iget-object v9, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mConversationMap:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static getConversationId(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/lang/String;
    .locals 1
    .param p0, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 833
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    goto :goto_0
.end method

.method private getFolderMailList(Ljava/lang/Long;Z)Lfk;
    .locals 2
    .param p1, "folderId"    # Ljava/lang/Long;
    .param p2, "isCreate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Z)",
            "Lfk",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 764
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderMailMaps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfk;

    .line 765
    .local v0, "mailist":Lfk;, "Lfk<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-nez v0, :cond_0

    .line 766
    if-eqz p2, :cond_0

    .line 767
    new-instance v0, Lfk;

    .end local v0    # "mailist":Lfk;, "Lfk<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-direct {v0}, Lfk;-><init>()V

    .line 768
    .restart local v0    # "mailist":Lfk;, "Lfk<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderMailMaps:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_0
    return-object v0
.end method

.method private getFolderModel(J)Lcom/alibaba/alimei/sdk/model/FolderModel;
    .locals 9
    .param p1, "folderId"    # J

    .prologue
    const-wide/16 v6, -0x1

    const/4 v2, 0x0

    .line 807
    iget-boolean v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mIsSupportLongSparseArray:Z

    if-eqz v3, :cond_2

    .line 808
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderArray:Landroid/util/LongSparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 809
    .local v1, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-nez v1, :cond_0

    .line 810
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v0

    .line 811
    .local v0, "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    if-nez v0, :cond_1

    move-object v1, v2

    .line 812
    :goto_0
    if-eqz v1, :cond_0

    .line 813
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderArray:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 826
    .end local v0    # "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    :cond_0
    :goto_1
    return-object v1

    .line 811
    .restart local v0    # "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    :cond_1
    invoke-interface {v0, v6, v7, p1, p2}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryFolderIdAndTypeById(JJ)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v1

    goto :goto_0

    .line 817
    .end local v0    # "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    .end local v1    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 818
    .restart local v1    # "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    if-nez v1, :cond_0

    .line 819
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v0

    .line 820
    .restart local v0    # "ds":Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;
    if-nez v0, :cond_3

    move-object v1, v2

    .line 821
    :goto_2
    if-eqz v1, :cond_0

    .line 822
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 820
    :cond_3
    invoke-interface {v0, v6, v7, p1, p2}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryFolderIdAndTypeById(JJ)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v1

    goto :goto_2
.end method

.method private varargs getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "withRelationConversations"    # Z
    .param p2, "mailServerIds"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 977
    if-eqz p2, :cond_0

    array-length v5, p2

    if-nez v5, :cond_1

    .line 1002
    .end local p2    # "mailServerIds":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 980
    .restart local p2    # "mailServerIds":[Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_0

    .line 981
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 982
    .local v4, "serverIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v6, p2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v3, p2, v5

    .line 983
    .local v3, "mailServerId":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailServerIdMap:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 985
    .local v2, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v2, :cond_3

    .line 986
    iget-object v7, v2, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversation(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    move-result-object v0

    .line 988
    .local v0, "conversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-eqz v0, :cond_2

    iget-object v7, v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->firstMail:Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    iget-object v7, v7, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 989
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->getConversationItemServerIds()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 982
    .end local v0    # "conversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 991
    .restart local v0    # "conversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    :cond_2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 994
    .end local v0    # "conversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    :cond_3
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 998
    .end local v2    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v3    # "mailServerId":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 999
    .local v1, "ids":[Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ids":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .restart local v1    # "ids":[Ljava/lang/String;
    move-object p2, v1

    .line 1000
    goto :goto_0
.end method

.method private handleImapMailNotification(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "accountName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1019
    .local p2, "addedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1020
    new-instance v0, Lyc;

    const-string/jumbo v1, "imapIncrement"

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1021
    .local v0, "message":Lyc;
    iput-object p2, v0, Lyc;->g:Ljava/lang/Object;

    .line 1023
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    invoke-interface {v1, v0}, Lya;->a(Lyc;)V

    .line 1025
    .end local v0    # "message":Lyc;
    :cond_0
    return-void
.end method

.method private declared-synchronized handleSendMailStatusCode(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 4
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 561
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 562
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 563
    .local v0, "mailId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 564
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 566
    .local v1, "oldModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    iget v2, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    iget v3, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    if-eq v2, v3, :cond_0

    .line 567
    iget v2, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I

    iput v2, v1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->statusCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    const/4 v2, 0x1

    .line 572
    .end local v0    # "mailId":Ljava/lang/Long;
    .end local v1    # "oldModel":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 561
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private notifyObserverDataChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
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
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 467
    .local p1, "addedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p2, "changedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .local p3, "deletedMails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 468
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 469
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    .line 470
    .local v0, "cb":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;
    if-eqz v0, :cond_0

    .line 472
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;->onDataChanged(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v4

    .line 474
    .local v4, "tr":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 479
    .end local v0    # "cb":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;
    .end local v4    # "tr":Ljava/lang/Throwable;
    :cond_1
    invoke-static {}, Lafv;->a()Landroid/os/Handler;

    move-result-object v1

    .line 480
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_3

    .line 481
    new-instance v5, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$4;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$4;-><init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    :cond_2
    return-void

    .line 490
    :cond_3
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mLoaderObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;

    .line 491
    .local v3, "os":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;
    invoke-interface {v3}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;->onDataChanged()V

    goto :goto_1
.end method

.method private reloadFolderOldestItem()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1031
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getMailboxDatasource()Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountModel:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/framework/model/UserAccountModel;->getId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/sdk/datasource/MailboxDatasource;->queryFolderOldestItemTime(J)Ljava/util/Map;

    move-result-object v0

    .line 1032
    .local v0, "folderOldestItemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1033
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderOldestItemMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1035
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs declared-synchronized addAndRemoveTag(ZLjava/util/List;Ljava/util/List;Lxv;[Ljava/lang/String;)V
    .locals 5
    .param p1, "withRelationConversations"    # Z
    .param p5, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 957
    .local p2, "addTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "removeTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "listener":Lxv;, "Lxv<Lxv$a;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 958
    .local v2, "targetIds":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_2

    .line 959
    :cond_0
    if-eqz p4, :cond_1

    .line 960
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v3

    invoke-interface {p4, v3}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 965
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 966
    .local v0, "finalTargetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v2, v3

    .line 967
    .local v1, "serverId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 970
    .end local v1    # "serverId":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mMailAdditionalApi:Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    const/4 v4, 0x0

    invoke-interface {v3, v0, p2, p3, v4}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->addAndRemoveMailTags(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lxv;)V

    .line 971
    if-eqz p4, :cond_1

    .line 972
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v3

    invoke-interface {p4, v3}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 957
    .end local v0    # "finalTargetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "targetIds":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public addLoaderObserver(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;

    .prologue
    .line 1007
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mLoaderObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mLoaderObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    :cond_0
    return-void
.end method

.method public varargs declared-synchronized addMailTag(ZLjava/lang/String;Lxv;[Ljava/lang/String;)V
    .locals 5
    .param p1, "withRelationConversations"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .param p4, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 927
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 928
    .local v2, "targetIds":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_2

    .line 929
    :cond_0
    if-eqz p3, :cond_1

    .line 930
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v3

    invoke-interface {p3, v3}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 935
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 936
    .local v0, "finalTargetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v2, v3

    .line 937
    .local v1, "serverId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 940
    .end local v1    # "serverId":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mMailAdditionalApi:Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    const/4 v4, 0x1

    invoke-interface {v3, v0, p2, v4}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->changeMailTags(Ljava/util/List;Ljava/lang/String;Z)V

    .line 941
    if-eqz p3, :cond_1

    .line 942
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v3

    invoke-interface {p3, v3}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 927
    .end local v0    # "finalTargetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "targetIds":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public varargs declared-synchronized changeMailReadStatus(ZZLxv;[Ljava/lang/String;)V
    .locals 7
    .param p1, "withRelationConversations"    # Z
    .param p2, "isRead"    # Z
    .param p4, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 845
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 846
    .local v3, "targetIds":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-nez v4, :cond_2

    .line 847
    :cond_0
    if-eqz p3, :cond_1

    .line 848
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v4

    invoke-interface {p3, v4}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 853
    :cond_2
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, v3

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 854
    .local v1, "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    array-length v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v2, v3, v4

    .line 855
    .local v2, "serverId":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailServerIdMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 856
    .local v0, "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v0, :cond_3

    .line 858
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    iput-boolean p2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    .line 854
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 863
    .end local v0    # "mail":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v2    # "serverId":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mMailApi:Lcom/alibaba/alimei/sdk/api/MailApi;

    const/4 v5, 0x0

    invoke-interface {v4, p2, v5, v3}, Lcom/alibaba/alimei/sdk/api/MailApi;->changeMailReadStatus(ZLxv;[Ljava/lang/String;)V

    .line 865
    if-eqz p3, :cond_1

    .line 866
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v4

    invoke-interface {p3, v4}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 845
    .end local v1    # "mails":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v3    # "targetIds":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public varargs declared-synchronized deleteMailByServerId(ZLxv;[Ljava/lang/String;)V
    .locals 3
    .param p1, "withRelationConversations"    # Z
    .param p3, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 872
    .local p2, "listener":Lxv;, "Lxv<Lxv$a;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "targetIds":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ltz v1, :cond_0

    .line 875
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mMailApi:Lcom/alibaba/alimei/sdk/api/MailApi;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->deleteMailByServerId(Lxv;[Ljava/lang/String;)V

    .line 877
    :cond_0
    if-eqz p2, :cond_1

    .line 878
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v1

    invoke-interface {p2, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    :cond_1
    monitor-exit p0

    return-void

    .line 872
    .end local v0    # "targetIds":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method executeLoading(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;)V
    .locals 13
    .param p1, "callback"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;
    .param p2, "loaderQuery"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 150
    iget v8, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mCurrentStage:I

    .line 151
    .local v8, "currentStage":I
    const-string/jumbo v1, "DefaultMailLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "executeLoading mCurrentStage: "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-eqz p1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :goto_0
    if-ne v12, v8, :cond_1

    .line 162
    invoke-interface {p1}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;->onLoadFinished()V

    .line 462
    :goto_1
    return-void

    .line 157
    :cond_0
    const-string/jumbo v1, "DefaultMailLoader"

    const-string/jumbo v7, "executeLoading contains a same callback"

    invoke-static {v1, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_1
    if-eqz p2, :cond_2

    .line 168
    iput-object p2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mLoaderQuery:Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderQuery;

    .line 174
    :goto_2
    monitor-enter p0

    .line 176
    if-ne v8, v11, :cond_3

    .line 177
    :try_start_0
    const-string/jumbo v1, "DefaultMailLoader"

    const-string/jumbo v7, "executeLoading contains a same callback"

    invoke-static {v1, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    monitor-exit p0

    goto :goto_1

    .line 462
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 170
    :cond_2
    const-string/jumbo v1, "DefaultMailLoader"

    const-string/jumbo v7, "executeLoading has a null loadquery"

    invoke-static {v1, v7}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 181
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mEventListener:Lyb;

    if-nez v1, :cond_4

    .line 182
    const-string/jumbo v1, "DefaultMailLoader"

    const-string/jumbo v7, "EventListener is null and new one"

    invoke-static {v1, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v1, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$1;-><init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mEventListener:Lyb;

    .line 208
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mEventListener:Lyb;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "basic_SendMail"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "SendMail1202ErrorCode"

    aput-object v12, v10, v11

    invoke-interface {v1, v7, v10}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 211
    :cond_4
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mContentObserver:Lxm;

    if-nez v1, :cond_5

    .line 212
    new-instance v1, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$2;-><init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V

    iput-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mContentObserver:Lxm;

    .line 290
    const-class v1, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    iget-object v7, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mContentObserver:Lxm;

    invoke-static {v1, v7}, Lafv;->a(Ljava/lang/Class;Lxm;)V

    .line 294
    :cond_5
    if-nez v8, :cond_6

    .line 295
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mWatcher:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 296
    .local v2, "checkStub":J
    const/4 v1, 0x1

    iput v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mCurrentStage:I

    .line 297
    const-string/jumbo v1, "DefaultMailLoader"

    const-string/jumbo v7, "executeLoading ready for loading"

    invoke-static {v1, v7}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v6, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;

    invoke-direct {v6}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;-><init>()V

    .line 299
    .local v6, "fullFlowModel":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;
    const-string/jumbo v1, "cmail_loadmail"

    const-string/jumbo v7, "4.5.10"

    invoke-virtual {v6, v1, v7}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startStatistics(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string/jumbo v1, "1"

    invoke-virtual {v6, v1}, Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;->startSubFlow(Ljava/lang/String;)V

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 302
    .local v4, "start":J
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$3;-><init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;JJLcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;)V

    .line 459
    .local v0, "runnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v1}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v9

    .line 460
    .local v9, "thread":Laie;
    invoke-interface {v9, v0}, Laie;->a(Ljava/lang/Runnable;)V

    .line 462
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "checkStub":J
    .end local v4    # "start":J
    .end local v6    # "fullFlowModel":Lcom/alibaba/alimei/restfulapi/tracker/fullstatistics/model/AlimeiFullFlowUnifyStatisticsModel;
    .end local v9    # "thread":Laie;
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getConversation(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    .locals 1
    .param p1, "conversationId"    # Ljava/lang/String;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mConversationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    return-object v0
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
    .line 745
    const/4 v1, 0x0

    .line 746
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mConversationMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    .line 747
    .local v0, "conversation":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    if-eqz v0, :cond_0

    .line 748
    sget-object v2, Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;->instance:Lcom/alibaba/alimei/sdk/displayer/comparator/MailComparator;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->getConversationItems(Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 750
    :cond_0
    return-object v1
.end method

.method public getFolderOldestItem(J)J
    .locals 3
    .param p1, "folderId"    # J

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderOldestItemMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderOldestItemMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderOldestItemMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1046
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getLocalFolderUnreadCount(Ljava/lang/Long;)I
    .locals 7
    .param p1, "folderId"    # Ljava/lang/Long;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 779
    monitor-enter p0

    const/4 v5, 0x0

    .line 780
    .local v5, "ret":I
    if-eqz p1, :cond_2

    .line 781
    :try_start_0
    new-instance v2, Lfk;

    iget-object v6, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderMailMaps:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfw;

    invoke-direct {v2, v6}, Lfk;-><init>(Lfw;)V

    .line 782
    .local v2, "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 783
    const/4 v6, 0x0

    .line 797
    .end local v2    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :goto_0
    monitor-exit p0

    return v6

    .line 785
    .restart local v2    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 786
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 787
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 788
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_1

    instance-of v6, v4, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    if-eqz v6, :cond_1

    .line 789
    move-object v0, v4

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    move-object v3, v0

    .line 790
    .local v3, "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    if-eqz v3, :cond_1

    iget-boolean v6, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    .line 791
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v2    # "mailMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;"
    .end local v3    # "model":Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_2
    move v6, v5

    .line 797
    goto :goto_0

    .line 779
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public getMailApi()Lcom/alibaba/alimei/sdk/api/MailApi;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mMailApi:Lcom/alibaba/alimei/sdk/api/MailApi;

    return-object v0
.end method

.method loadFromDatabase(J)V
    .locals 3
    .param p1, "folderId"    # J

    .prologue
    .line 501
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    invoke-static {v2}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    .line 502
    .local v1, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    if-eqz v1, :cond_0

    .line 504
    new-instance v0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$5;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$5;-><init>(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;)V

    .line 522
    .local v0, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryAllLocalMails(JLxv;)V

    .line 524
    .end local v0    # "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/MailSnippetModel;>;>;"
    :cond_0
    return-void
.end method

.method public varargs declared-synchronized moveMailToNewFolder(ZJLxv;[Ljava/lang/String;)V
    .locals 2
    .param p1, "withRelationConversations"    # Z
    .param p2, "targetFolderId"    # J
    .param p5, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 884
    .local p4, "listener":Lxv;, "Lxv<Lxv$a;>;"
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "targetIds":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ltz v1, :cond_0

    .line 886
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mMailApi:Lcom/alibaba/alimei/sdk/api/MailApi;

    invoke-interface {v1, p2, p3, p4, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->moveMailToNewFolder(JLxv;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    :cond_0
    monitor-exit p0

    return-void

    .line 884
    .end local v0    # "targetIds":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected releaseCallback(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderCallback;

    .prologue
    .line 555
    if-eqz p1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 558
    :cond_0
    return-void
.end method

.method public releaseLoader()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 530
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mWatcher:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 531
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mContentObserver:Lxm;

    if-eqz v0, :cond_0

    .line 532
    const-class v0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mContentObserver:Lxm;

    invoke-static {v0, v1}, Lafv;->b(Ljava/lang/Class;Lxm;)V

    .line 533
    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mContentObserver:Lxm;

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mEventListener:Lyb;

    if-eqz v0, :cond_1

    .line 536
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mEventListener:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 537
    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mEventListener:Lyb;

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 540
    const-string/jumbo v0, "releaseLoader!!!"

    invoke-static {v0}, Lzb;->i(Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 542
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAllMailServerIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 543
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mConversationMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 544
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderMailMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 545
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 546
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mIsSupportLongSparseArray:Z

    if-eqz v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mFolderArray:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 549
    :cond_2
    iput-object v2, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mContentObserver:Lxm;

    .line 550
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mCurrentStage:I

    .line 552
    return-void
.end method

.method public removeLoaderObserver(Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader$LoaderObserver;

    .prologue
    .line 1013
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mLoaderObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mLoaderObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1016
    :cond_0
    return-void
.end method

.method public varargs declared-synchronized removeMailTag(ZLjava/lang/String;Lxv;[Ljava/lang/String;)V
    .locals 5
    .param p1, "withRelationConversations"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .param p4, "mailServerIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lxv",
            "<",
            "Lxv$a;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p3, "listener":Lxv;, "Lxv<Lxv$a;>;"
    const/4 v3, 0x0

    .line 899
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getTargetServerIds(Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 900
    .local v2, "targetIds":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_2

    .line 901
    :cond_0
    if-eqz p3, :cond_1

    .line 902
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v3

    invoke-interface {p3, v3}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 907
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 908
    .local v0, "finalTargetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v2, v3

    .line 909
    .local v1, "serverId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 911
    .end local v1    # "serverId":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->mAccountName:Ljava/lang/String;

    invoke-static {v3}, Lafv;->f(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, p2, v4}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->changeMailTags(Ljava/util/List;Ljava/lang/String;Z)V

    .line 913
    if-eqz p3, :cond_1

    .line 914
    invoke-static {}, Lxv$a;->a()Lxv$a;

    move-result-object v3

    invoke-interface {p3, v3}, Lxv;->onSuccess(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 899
    .end local v0    # "finalTargetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "targetIds":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

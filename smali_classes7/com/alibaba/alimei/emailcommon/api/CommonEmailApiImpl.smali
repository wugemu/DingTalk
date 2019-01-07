.class public Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;
.super Ljava/lang/Object;
.source "CommonEmailApiImpl.java"

# interfaces
.implements Lcom/alibaba/alimei/emailcommon/api/ICommonEmailApi;


# static fields
.field private static final EMPTY_MESSAGE_ARRAY:[Lcom/alibaba/alimei/emailcommon/mail/Message;

.field private static final FIRST_LOAD_MAIL_MAX_COUNT:I = 0x14

.field private static final LOAD_MORE_MAIL_MAX_COUNT:I = 0x14

.field private static final LOAD_MORE_MAIL_MAX_DETECT_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CommonEmailApiImpl"

.field private static fetchEmlPath:Ljava/lang/String;

.field private static fetchEmlTryCount:I

.field private static fetchUidTryCount:I

.field private static isFetchEmlSuccess:Z

.field private static listFolderTryCount:I


# instance fields
.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Luv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    sput v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->listFolderTryCount:I

    .line 61
    sput v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchUidTryCount:I

    .line 63
    sput v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchEmlTryCount:I

    .line 64
    sput-boolean v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->isFetchEmlSuccess:Z

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchEmlPath:Ljava/lang/String;

    .line 71
    new-array v0, v1, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    sput-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->EMPTY_MESSAGE_ARRAY:[Lcom/alibaba/alimei/emailcommon/mail/Message;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->mListeners:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 41
    sput-boolean p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->isFetchEmlSuccess:Z

    return p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 41
    sput-object p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchEmlPath:Ljava/lang/String;

    return-object p0
.end method

.method private downloadLargeMessages(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Folder;Ljava/util/ArrayList;Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;)Z
    .locals 2
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "remoteFolder"    # Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .param p4, "fp"    # Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Lcom/alibaba/alimei/emailcommon/mail/Folder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;",
            "Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1421
    .line 1422
    .local p3, "largeMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    new-instance v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$4;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$4;-><init>(Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;)V

    .line 1421
    invoke-virtual {p2, v0, p4, v1}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;Luu;)V

    .line 1444
    const/4 v0, 0x1

    return v0
.end method

.method private downloadMessages(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Folder;Ljava/util/List;Luv;)V
    .locals 8
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "remoteFolder"    # Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .param p4, "listener"    # Luv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Lcom/alibaba/alimei/emailcommon/mail/Folder;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;",
            "Luv;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1060
    .local p3, "inputMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v6

    .line 1061
    .local v6, "folder":Ljava/lang/String;
    move-object v3, p3

    .line 1062
    .local v3, "unsyncedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    const-string/jumbo v1, "CommonEmailApiImpl"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "SYNC: downloadMessages have "

    aput-object v5, v2, v0

    const/4 v5, 0x1

    if-nez v3, :cond_3

    const-string/jumbo v0, "0"

    :goto_0
    aput-object v0, v2, v5

    const/4 v0, 0x2

    const-string/jumbo v5, " unsynced messages"

    aput-object v5, v2, v0

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1074
    new-instance v0, Lxc;

    invoke-direct {v0}, Lxc;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1076
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 1078
    .local v7, "listSize":I
    const/16 v0, 0x32

    if-le v7, v0, :cond_0

    .line 1079
    const/4 v0, 0x0

    const/16 v1, 0x32

    invoke-interface {v3, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 1082
    :cond_0
    new-instance v4, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;

    invoke-direct {v4}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;-><init>()V

    .line 1083
    .local v4, "fp":Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1084
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v4, v0}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1086
    :cond_1
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v4, v0}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1087
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v4, v0}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1089
    const-string/jumbo v0, "CommonEmailApiImpl"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "SYNC: downloadMessages ,about to fetch "

    aput-object v5, v1, v2

    const/4 v2, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v5, " unsynced messages for folder "

    aput-object v5, v1, v2

    const/4 v2, 0x3

    aput-object v6, v1, v2

    invoke-static {v1}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    .line 1092
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchUnsyncedMessages(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Folder;Ljava/util/List;Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;Luv;)V

    .line 1095
    .end local v4    # "fp":Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;
    .end local v7    # "listSize":I
    :cond_2
    return-void

    .line 1062
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private fetchUnsyncedMessages(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Folder;Ljava/util/List;Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;Luv;)V
    .locals 3
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "remoteFolder"    # Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .param p4, "fp"    # Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;
    .param p5, "listener"    # Luv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Lcom/alibaba/alimei/emailcommon/mail/Folder;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;",
            "Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;",
            "Luv;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1102
    .local p3, "unsyncedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v0

    .line 1104
    .local v0, "folder":Ljava/lang/String;
    sget-object v1, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->EMPTY_MESSAGE_ARRAY:[Lcom/alibaba/alimei/emailcommon/mail/Message;

    invoke-interface {p3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    new-instance v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;

    invoke-direct {v2, p0, p5, p1, v0}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$2;-><init>(Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;Luv;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;)V

    invoke-virtual {p2, v1, p4, v2}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;Luu;)V

    .line 1150
    return-void
.end method

.method private verifyOrCreateRemoteSpecialFolder(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Folder;Luv;)Z
    .locals 4
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "remoteFolder"    # Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .param p4, "listener"    # Luv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1453
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/Account;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1454
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/Account;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1455
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/Account;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1456
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->b()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1457
    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/alibaba/alimei/emailcommon/mail/Folder$FolderType;

    invoke-virtual {p3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1458
    invoke-virtual {p0, p4}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luv;

    .line 1459
    .local v0, "l":Luv;
    invoke-virtual {v0, p1, p2, v1, v1}, Luv;->synchronizeMailboxFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;II)V

    goto :goto_0

    .line 1461
    .end local v0    # "l":Luv;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Done synchronizing folder "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public appendMail(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;Luv;)V
    .locals 5
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p4, "listener"    # Luv;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1316
    const/4 v2, 0x0

    .line 1318
    .local v2, "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    if-eqz p4, :cond_0

    .line 1319
    :try_start_0
    invoke-virtual {p4, p1, p2, p3}, Luv;->appendMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 20762
    :cond_0
    invoke-static {p1}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvt;

    move-result-object v3

    .line 1322
    .local v3, "remoteStore":Lvt;
    invoke-virtual {v3, p2}, Lvt;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v2

    .line 1323
    sget-object v4, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 1324
    const/4 v4, 0x1

    new-array v0, v4, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 1325
    .local v0, "appendMessages":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    const/4 v4, 0x0

    aput-object p3, v0, v4

    .line 1326
    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 1328
    if-eqz p4, :cond_1

    .line 1329
    invoke-virtual {p4, p1, p2, p3}, Luv;->appendMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1340
    :cond_1
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    .line 1341
    .end local v0    # "appendMessages":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v3    # "remoteStore":Lvt;
    :goto_0
    return-void

    .line 1332
    :catch_0
    move-exception v1

    .line 1333
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1334
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1336
    :cond_2
    if-eqz p4, :cond_3

    .line 1337
    invoke-virtual {p4, p1, p2, p3, v1}, Luv;->appendMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1340
    :cond_3
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    throw v4
.end method

.method public changeMailFlagStatus(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLuv;)V
    .locals 13
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "isFlag"    # Z
    .param p6, "listener"    # Luv;

    .prologue
    .line 849
    if-eqz p6, :cond_0

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    .line 850
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Luv;->changeFlagStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V

    .line 15762
    :cond_0
    invoke-static {p1}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvt;

    move-result-object v11

    .line 854
    .local v11, "remoteStore":Lvt;
    invoke-virtual {v11, p2}, Lvt;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v10

    .line 856
    .local v10, "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v10, v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 858
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v2

    .line 859
    .local v2, "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/Flag;->FLAGGED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    move/from16 v0, p5

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 861
    if-eqz p6, :cond_1

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    .line 862
    invoke-virtual/range {v3 .. v8}, Luv;->changeFlagFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    .end local v2    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v10    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .end local v11    # "remoteStore":Lvt;
    :cond_1
    :goto_0
    return-void

    .line 864
    :catch_0
    move-exception v9

    .line 865
    .local v9, "e":Ljava/lang/Exception;
    if-eqz p6, :cond_1

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    .line 866
    invoke-virtual/range {v3 .. v9}, Luv;->changeFlagFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLjava/lang/Exception;)V

    goto :goto_0
.end method

.method public changeMailReadStatus(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLuv;)V
    .locals 13
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "isRead"    # Z
    .param p6, "listener"    # Luv;

    .prologue
    .line 823
    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    :try_start_0
    invoke-virtual/range {v3 .. v8}, Luv;->changeReadStatusStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V

    .line 14762
    invoke-static {p1}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvt;

    move-result-object v12

    .line 826
    .local v12, "remoteStore":Lvt;
    invoke-virtual {v12, p2}, Lvt;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v11

    .line 828
    .local v11, "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v11, v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 831
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v10

    .line 832
    .local v10, "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/Flag;->SEEN:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    move/from16 v0, p5

    invoke-virtual {v10, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    .line 834
    invoke-virtual/range {v3 .. v8}, Luv;->changeReadStatusFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    .end local v10    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v11    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .end local v12    # "remoteStore":Lvt;
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v2

    .line 838
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v9}, Luv;->changeReadStatusFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 839
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    throw v3
.end method

.method public checkAccount(Landroid/content/Context;Lcom/alibaba/alimei/emailcommon/CommonAccount;)Lcom/alibaba/alimei/emailcommon/Account;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "commonAccount"    # Lcom/alibaba/alimei/emailcommon/CommonAccount;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 201
    invoke-static {p1}, Lus;->a(Landroid/content/Context;)Lus;

    move-result-object v6

    .line 202
    .local v6, "pre":Lus;
    invoke-virtual {v6}, Lus;->a()[Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v1

    .line 204
    .local v1, "accounts":[Lcom/alibaba/alimei/emailcommon/Account;
    if-eqz v1, :cond_0

    array-length v7, v1

    if-nez v7, :cond_3

    .line 205
    :cond_0
    invoke-virtual {v6}, Lus;->b()Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v0

    .line 211
    .local v0, "account":Lcom/alibaba/alimei/emailcommon/Account;
    :goto_0
    const-string/jumbo v3, "example@company.com"

    .line 212
    .local v3, "email":Ljava/lang/String;
    const-string/jumbo v5, "unknown"

    .line 214
    .local v5, "password":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getMail()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 215
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getMail()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/Account;->c(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/Account;->d(Ljava/lang/String;)V

    .line 219
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getPassword()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 220
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getPassword()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->isSsl()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v4, "imap+ssl+://"

    .line 226
    .local v4, "imapPre":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "PLAIN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-static {v3, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    .line 227
    invoke-static {v5, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getServer()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getPort()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 226
    invoke-virtual {v0, v7}, Lcom/alibaba/alimei/emailcommon/Account;->a(Ljava/lang/String;)V

    .line 228
    invoke-static {p2}, Lwu;->a(Lcom/alibaba/alimei/emailcommon/CommonAccount;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/alibaba/alimei/emailcommon/Account;->b(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->isEnableSasl()Z

    move-result v7

    .line 10485
    iput-boolean v7, v0, Lcom/alibaba/alimei/emailcommon/Account;->b:Z

    .line 230
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/CommonAccount;->getOauthToken()Ljava/lang/String;

    move-result-object v7

    .line 10493
    iput-object v7, v0, Lcom/alibaba/alimei/emailcommon/Account;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v4    # "imapPre":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 207
    .end local v0    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    .end local v3    # "email":Ljava/lang/String;
    .end local v5    # "password":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    aget-object v0, v1, v7

    .restart local v0    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    goto/16 :goto_0

    .line 225
    .restart local v3    # "email":Ljava/lang/String;
    .restart local v5    # "password":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v4, "imap://"
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 234
    :catch_0
    move-exception v2

    .line 235
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method public declared-synchronized checkAcocunt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLuv;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "imapIp"    # Ljava/lang/String;
    .param p5, "imapPort"    # Ljava/lang/String;
    .param p6, "isSSL"    # Z
    .param p7, "allowInvalidCertificates"    # Z
    .param p8, "listener"    # Luv;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p8}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->checkSubAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLuv;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, "cve":Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    :try_start_2
    const-string/jumbo v4, "CommonEmailApiImpl"

    const-string/jumbo v5, "IMAP CertificateValidation try again"

    invoke-static {v4, v5}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".incoming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-static {}, Lwg;->a()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 387
    .local v0, "chain":[Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lwg;->b([Ljava/security/cert/X509Certificate;)V

    .line 390
    invoke-virtual/range {p0 .. p8}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->checkSubAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLuv;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 391
    .end local v0    # "chain":[Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v2

    .line 392
    .local v2, "e":Ljava/security/cert/CertificateException;
    :try_start_3
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 393
    invoke-virtual {p0, p8}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luv;

    .line 395
    .local v3, "l":Luv;
    invoke-virtual {v3, v2}, Luv;->checkAccountFailed(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 376
    .end local v1    # "cve":Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .end local v3    # "l":Luv;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 397
    .restart local v1    # "cve":Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;
    :catch_2
    move-exception v2

    .line 398
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 399
    invoke-virtual {p0, p8}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luv;

    .line 401
    .restart local v3    # "l":Luv;
    invoke-virtual {v3, v2}, Luv;->checkAccountFailed(Ljava/lang/Exception;)V

    goto :goto_2

    .line 403
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "l":Luv;
    :catch_3
    move-exception v2

    .line 404
    .local v2, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 405
    invoke-virtual {p0, p8}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luv;

    .line 407
    .restart local v3    # "l":Luv;
    invoke-virtual {v3, v2}, Luv;->checkAccountFailed(Ljava/lang/Exception;)V

    goto :goto_3

    .line 411
    .end local v1    # "cve":Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;
    .end local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .end local v3    # "l":Luv;
    :catch_4
    move-exception v2

    .line 412
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 413
    invoke-virtual {p0, p8}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luv;

    .line 415
    .restart local v3    # "l":Luv;
    invoke-virtual {v3, v2}, Luv;->checkAccountFailed(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method public checkOAuthAcocunt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLuv;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "oauthToken"    # Ljava/lang/String;
    .param p4, "imapIp"    # Ljava/lang/String;
    .param p5, "imapPort"    # Ljava/lang/String;
    .param p6, "isSSL"    # Z
    .param p7, "listener"    # Luv;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 424
    :try_start_0
    invoke-virtual/range {p0 .. p7}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->checkSubOAuthAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLuv;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v1

    .line 426
    .local v1, "cve":Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;
    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;->printStackTrace()V

    .line 431
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".incoming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-static {}, Lwg;->a()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 433
    .local v0, "chain":[Ljava/security/cert/X509Certificate;
    invoke-static {v0}, Lwg;->b([Ljava/security/cert/X509Certificate;)V

    .line 436
    invoke-virtual/range {p0 .. p7}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->checkSubOAuthAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLuv;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 437
    .end local v0    # "chain":[Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v2

    .line 438
    .local v2, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 439
    invoke-virtual {p0, p7}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luv;

    .line 441
    .local v3, "l":Luv;
    invoke-virtual {v3, v2}, Luv;->checkAccountFailed(Ljava/lang/Exception;)V

    goto :goto_1

    .line 443
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .end local v3    # "l":Luv;
    :catch_2
    move-exception v2

    .line 444
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 445
    invoke-virtual {p0, p7}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luv;

    .line 447
    .restart local v3    # "l":Luv;
    invoke-virtual {v3, v2}, Luv;->checkAccountFailed(Ljava/lang/Exception;)V

    goto :goto_2

    .line 449
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "l":Luv;
    :catch_3
    move-exception v2

    .line 450
    .local v2, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 451
    invoke-virtual {p0, p7}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luv;

    .line 453
    .restart local v3    # "l":Luv;
    invoke-virtual {v3, v2}, Luv;->checkAccountFailed(Ljava/lang/Exception;)V

    goto :goto_3

    .line 457
    .end local v1    # "cve":Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;
    .end local v2    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .end local v3    # "l":Luv;
    :catch_4
    move-exception v2

    .line 458
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    invoke-virtual {p0, p7}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luv;

    .line 461
    .restart local v3    # "l":Luv;
    invoke-virtual {v3, v2}, Luv;->checkAccountFailed(Ljava/lang/Exception;)V

    goto :goto_4
.end method

.method public checkSmtp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLuv;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "smtpIp"    # Ljava/lang/String;
    .param p5, "smtpPort"    # Ljava/lang/String;
    .param p6, "isSSL"    # Z
    .param p7, "allowInvalidCertificates"    # Z
    .param p8, "listener"    # Luv;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 250
    const/4 v7, 0x0

    .line 251
    .local v7, "securityType":I
    if-eqz p6, :cond_0

    .line 252
    if-eqz p7, :cond_2

    .line 253
    const/4 v7, 0x3

    :cond_0
    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p8

    .line 259
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->checkSubSmtp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILuv;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 318
    :cond_1
    :goto_1
    return-void

    .line 255
    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    .line 261
    :catch_0
    move-exception v10

    .line 262
    .local v10, "cve":Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;
    invoke-virtual {v10}, Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;->printStackTrace()V

    .line 264
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->SSL_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v10}, Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;->getError()Lcom/alibaba/alimei/framework/SDKError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/framework/SDKError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 266
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".outgoing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-static {}, Lwg;->a()[Ljava/security/cert/X509Certificate;

    move-result-object v9

    .line 270
    .local v9, "chain":[Ljava/security/cert/X509Certificate;
    const-string/jumbo v1, "CommonEmailApiImpl"

    const-string/jumbo v2, "SSL_REQUIRED failure, use CONNECTION_SECURITY_TLS try smtp"

    invoke-static {v1, v2}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {v9}, Lwg;->b([Ljava/security/cert/X509Certificate;)V

    .line 274
    const/4 v7, 0x0

    .line 275
    if-eqz p6, :cond_3

    .line 276
    if-eqz p7, :cond_4

    .line 277
    const/4 v7, 0x4

    :cond_3
    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p8

    .line 284
    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->checkSubSmtp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILuv;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 286
    .end local v9    # "chain":[Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v11

    .line 287
    .local v11, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v11}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 288
    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Luv;

    .line 290
    .local v12, "l":Luv;
    invoke-virtual {v12, v11}, Luv;->checkSmtpFailed(Ljava/lang/Exception;)V

    goto :goto_3

    .line 279
    .end local v11    # "e":Ljava/security/cert/CertificateException;
    .end local v12    # "l":Luv;
    .restart local v9    # "chain":[Ljava/security/cert/X509Certificate;
    :cond_4
    const/4 v7, 0x2

    goto :goto_2

    .line 292
    .end local v9    # "chain":[Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v11

    .line 293
    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 294
    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Luv;

    .line 296
    .restart local v12    # "l":Luv;
    invoke-virtual {v12, v11}, Luv;->checkSmtpFailed(Ljava/lang/Exception;)V

    goto :goto_4

    .line 298
    .end local v11    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v12    # "l":Luv;
    :catch_3
    move-exception v11

    .line 299
    .local v11, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v11}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 300
    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Luv;

    .line 302
    .restart local v12    # "l":Luv;
    invoke-virtual {v12, v11}, Luv;->checkSmtpFailed(Ljava/lang/Exception;)V

    goto :goto_5

    .line 306
    .end local v11    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .end local v12    # "l":Luv;
    :cond_5
    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Luv;

    .line 308
    .restart local v12    # "l":Luv;
    invoke-virtual {v12, v10}, Luv;->checkSmtpFailed(Ljava/lang/Exception;)V

    goto :goto_6

    .line 311
    .end local v10    # "cve":Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;
    .end local v12    # "l":Luv;
    :catch_4
    move-exception v11

    .line 312
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 313
    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Luv;

    .line 315
    .restart local v12    # "l":Luv;
    invoke-virtual {v12, v11}, Luv;->checkSmtpFailed(Ljava/lang/Exception;)V

    goto :goto_7
.end method

.method public declared-synchronized checkSubAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLuv;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "imapIp"    # Ljava/lang/String;
    .param p5, "imapPort"    # Ljava/lang/String;
    .param p6, "isSSL"    # Z
    .param p7, "allowInvalidCertificates"    # Z
    .param p8, "listener"    # Luv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lus;->a(Landroid/content/Context;)Lus;

    move-result-object v5

    .line 91
    .local v5, "pre":Lus;
    invoke-virtual {v5}, Lus;->a()[Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v2

    .line 93
    .local v2, "accounts":[Lcom/alibaba/alimei/emailcommon/Account;
    if-eqz v2, :cond_0

    array-length v7, v2

    if-nez v7, :cond_1

    .line 94
    :cond_0
    invoke-virtual {v5}, Lus;->b()Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v1

    .line 99
    .local v1, "account":Lcom/alibaba/alimei/emailcommon/Account;
    :goto_0
    const-string/jumbo v7, "UTF-8"

    invoke-static {p2, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 100
    const-string/jumbo v7, "UTF-8"

    invoke-static {p3, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 102
    invoke-virtual {v1, p2}, Lcom/alibaba/alimei/emailcommon/Account;->c(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, p2}, Lcom/alibaba/alimei/emailcommon/Account;->d(Ljava/lang/String;)V

    .line 104
    const/4 v7, 0x0

    .line 4485
    iput-boolean v7, v1, Lcom/alibaba/alimei/emailcommon/Account;->b:Z

    .line 109
    if-eqz p6, :cond_3

    .line 110
    if-eqz p7, :cond_2

    .line 111
    const-string/jumbo v3, "imap+ssl://"

    .line 119
    .local v3, "imapPre":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "PLAIN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-static {p2, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    .line 120
    invoke-static {p3, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-virtual {v1, v7}, Lcom/alibaba/alimei/emailcommon/Account;->a(Ljava/lang/String;)V

    .line 4762
    invoke-static {v1}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvt;

    move-result-object v6

    .line 122
    .local v6, "store":Lvt;
    invoke-virtual {v6}, Lvt;->a()V

    .line 123
    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luv;

    .line 125
    .local v4, "l":Luv;
    invoke-virtual {v4, v1}, Luv;->checkAccount(Lcom/alibaba/alimei/emailcommon/Account;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 90
    .end local v1    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    .end local v2    # "accounts":[Lcom/alibaba/alimei/emailcommon/Account;
    .end local v3    # "imapPre":Ljava/lang/String;
    .end local v4    # "l":Luv;
    .end local v5    # "pre":Lus;
    .end local v6    # "store":Lvt;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 96
    .restart local v2    # "accounts":[Lcom/alibaba/alimei/emailcommon/Account;
    .restart local v5    # "pre":Lus;
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    aget-object v1, v2, v7

    .restart local v1    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    goto/16 :goto_0

    .line 113
    :cond_2
    const-string/jumbo v3, "imap+ssl+://"

    .restart local v3    # "imapPre":Ljava/lang/String;
    goto :goto_1

    .line 116
    .end local v3    # "imapPre":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "imap://"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v3    # "imapPre":Ljava/lang/String;
    goto :goto_1

    .line 127
    .restart local v6    # "store":Lvt;
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized checkSubOAuthAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLuv;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "oauthToken"    # Ljava/lang/String;
    .param p4, "imapIp"    # Ljava/lang/String;
    .param p5, "imapPort"    # Ljava/lang/String;
    .param p6, "isSSL"    # Z
    .param p7, "listener"    # Luv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lus;->a(Landroid/content/Context;)Lus;

    move-result-object v5

    .line 132
    .local v5, "pre":Lus;
    invoke-virtual {v5}, Lus;->a()[Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v2

    .line 134
    .local v2, "accounts":[Lcom/alibaba/alimei/emailcommon/Account;
    if-eqz v2, :cond_0

    array-length v7, v2

    if-nez v7, :cond_1

    .line 135
    :cond_0
    invoke-virtual {v5}, Lus;->b()Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v1

    .line 140
    .local v1, "account":Lcom/alibaba/alimei/emailcommon/Account;
    :goto_0
    const-string/jumbo v7, "UTF-8"

    invoke-static {p2, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 142
    invoke-virtual {v1, p2}, Lcom/alibaba/alimei/emailcommon/Account;->c(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1, p2}, Lcom/alibaba/alimei/emailcommon/Account;->d(Ljava/lang/String;)V

    .line 5493
    iput-object p3, v1, Lcom/alibaba/alimei/emailcommon/Account;->c:Ljava/lang/String;

    .line 145
    const/4 v7, 0x1

    .line 6485
    iput-boolean v7, v1, Lcom/alibaba/alimei/emailcommon/Account;->b:Z

    .line 150
    if-eqz p6, :cond_2

    const-string/jumbo v3, "imap+ssl+://"

    .line 151
    .local v3, "imapPre":Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "PLAIN:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-static {p2, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "oauth"

    const-string/jumbo v9, "UTF-8"

    .line 152
    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-virtual {v1, v7}, Lcom/alibaba/alimei/emailcommon/Account;->a(Ljava/lang/String;)V

    .line 6762
    invoke-static {v1}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvt;

    move-result-object v6

    .line 154
    .local v6, "store":Lvt;
    invoke-virtual {v6}, Lvt;->a()V

    .line 155
    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luv;

    .line 157
    .local v4, "l":Luv;
    invoke-virtual {v4, v1}, Luv;->checkAccount(Lcom/alibaba/alimei/emailcommon/Account;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 131
    .end local v1    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    .end local v2    # "accounts":[Lcom/alibaba/alimei/emailcommon/Account;
    .end local v3    # "imapPre":Ljava/lang/String;
    .end local v4    # "l":Luv;
    .end local v5    # "pre":Lus;
    .end local v6    # "store":Lvt;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 137
    .restart local v2    # "accounts":[Lcom/alibaba/alimei/emailcommon/Account;
    .restart local v5    # "pre":Lus;
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    aget-object v1, v2, v7

    .restart local v1    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    goto/16 :goto_0

    .line 150
    :cond_2
    const-string/jumbo v3, "imap://"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 159
    .restart local v3    # "imapPre":Ljava/lang/String;
    .restart local v6    # "store":Lvt;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public checkSubSmtp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILuv;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "smtpIp"    # Ljava/lang/String;
    .param p5, "smtpPort"    # Ljava/lang/String;
    .param p6, "securityType"    # I
    .param p7, "listener"    # Luv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 322
    invoke-static {p1}, Lus;->a(Landroid/content/Context;)Lus;

    move-result-object v3

    .line 323
    .local v3, "pre":Lus;
    invoke-virtual {v3}, Lus;->a()[Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v1

    .line 325
    .local v1, "accounts":[Lcom/alibaba/alimei/emailcommon/Account;
    if-eqz v1, :cond_0

    array-length v6, v1

    if-nez v6, :cond_2

    .line 326
    :cond_0
    invoke-virtual {v3}, Lus;->b()Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v0

    .line 331
    .local v0, "account":Lcom/alibaba/alimei/emailcommon/Account;
    :goto_0
    const-string/jumbo v6, "UTF-8"

    invoke-static {p2, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 332
    const-string/jumbo v6, "UTF-8"

    invoke-static {p3, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 334
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/emailcommon/Account;->c(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/emailcommon/Account;->d(Ljava/lang/String;)V

    .line 336
    const/4 v6, 0x0

    .line 11485
    iput-boolean v6, v0, Lcom/alibaba/alimei/emailcommon/Account;->b:Z

    .line 339
    if-eqz p6, :cond_6

    .line 341
    const/4 v6, 0x1

    if-ne p6, v6, :cond_3

    .line 342
    const-string/jumbo v4, "smtp+ssl+://"

    .line 353
    .local v4, "smtpPre":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-static {p2, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    .line 354
    invoke-static {p3, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 353
    invoke-virtual {v0, v6}, Lcom/alibaba/alimei/emailcommon/Account;->b(Ljava/lang/String;)V

    .line 355
    const/4 v5, 0x0

    .line 357
    .local v5, "smtpTransport":Lvu;
    :try_start_0
    invoke-static {v0}, Lwu;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvu;

    move-result-object v5

    .line 358
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lvu;->a(Z)V

    .line 359
    invoke-virtual {p0, p7}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luv;

    .line 361
    .local v2, "l":Luv;
    invoke-virtual {v2, v0, p6}, Luv;->checkSmtp(Lcom/alibaba/alimei/emailcommon/Account;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 364
    .end local v2    # "l":Luv;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_1

    .line 365
    invoke-virtual {v5}, Lvu;->a()V

    :cond_1
    throw v6

    .line 328
    .end local v0    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    .end local v4    # "smtpPre":Ljava/lang/String;
    .end local v5    # "smtpTransport":Lvu;
    :cond_2
    const/4 v6, 0x0

    aget-object v0, v1, v6

    .restart local v0    # "account":Lcom/alibaba/alimei/emailcommon/Account;
    goto/16 :goto_0

    .line 343
    :cond_3
    const/4 v6, 0x2

    if-ne p6, v6, :cond_4

    .line 344
    const-string/jumbo v4, "smtp+tls+://"

    .restart local v4    # "smtpPre":Ljava/lang/String;
    goto :goto_1

    .line 345
    .end local v4    # "smtpPre":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x3

    if-ne p6, v6, :cond_5

    .line 346
    const-string/jumbo v4, "smtp+ssl://"

    .restart local v4    # "smtpPre":Ljava/lang/String;
    goto/16 :goto_1

    .line 347
    .end local v4    # "smtpPre":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x4

    if-ne p6, v6, :cond_6

    .line 348
    const-string/jumbo v4, "smtp+tls://"

    .restart local v4    # "smtpPre":Ljava/lang/String;
    goto/16 :goto_1

    .line 350
    .end local v4    # "smtpPre":Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "smtp://"

    .restart local v4    # "smtpPre":Ljava/lang/String;
    goto/16 :goto_1

    .line 365
    .restart local v5    # "smtpTransport":Lvu;
    :cond_7
    invoke-virtual {v5}, Lvu;->a()V

    return-void
.end method

.method protected closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V
    .locals 0
    .param p1, "f"    # Lcom/alibaba/alimei/emailcommon/mail/Folder;

    .prologue
    .line 1473
    return-void
.end method

.method public deleteMessage(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;Luv;)V
    .locals 8
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p4, "listener"    # Luv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Luv;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1388
    .local p3, "inMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1391
    :cond_1
    invoke-virtual {p4, p1, p2, p3}, Luv;->deleteMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;)V

    .line 22762
    invoke-static {p1}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvt;

    move-result-object v5

    .line 1394
    .local v5, "remoteStore":Lvt;
    invoke-virtual {v5, p2}, Lvt;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v4

    .line 1396
    .local v4, "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    sget-object v6, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 1398
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1400
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1401
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v2

    .line 1402
    .local v2, "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1404
    .end local v2    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :cond_2
    sget-object v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->EMPTY_MESSAGE_ARRAY:[Lcom/alibaba/alimei/emailcommon/mail/Message;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;)V

    .line 1406
    invoke-virtual {p4, p1, p2, p3}, Luv;->deletMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1408
    .end local v1    # "i":I
    .end local v3    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    .end local v4    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .end local v5    # "remoteStore":Lvt;
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 1411
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1413
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p4, p1, p2, p3, v6}, Luv;->deleteMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fetchAttachment(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLuv;)V
    .locals 13
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "partId"    # Ljava/lang/String;
    .param p6, "encoding"    # Ljava/lang/String;
    .param p7, "contentType"    # Ljava/lang/String;
    .param p8, "size"    # J
    .param p10, "listener"    # Luv;

    .prologue
    .line 1238
    move-object/from16 v3, p10

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Luv;->fetchAttachmentStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V

    .line 1239
    const/4 v10, 0x0

    .line 1241
    .local v10, "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    const/4 v3, 0x2

    .line 18771
    :try_start_0
    invoke-static {p1, v3}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;I)Lvt;

    move-result-object v12

    .line 1242
    .local v12, "remoteStore":Lvt;
    invoke-virtual {v12, p2}, Lvt;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v10

    .line 1243
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v10, v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 1245
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v11

    .line 1246
    .local v11, "remoteMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    const-string/jumbo v3, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p5

    invoke-virtual {v11, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string/jumbo v3, "Content-Transfer-Encoding"

    move-object/from16 v0, p6

    invoke-virtual {v11, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string/jumbo v3, "Content-Type"

    move-object/from16 v0, p7

    invoke-virtual {v11, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string/jumbo v3, "Attachment_SIZE"

    invoke-static/range {p8 .. p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    new-instance v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$3;

    move-object v4, p0

    move-object/from16 v5, p10

    move-object v6, p1

    move-object v7, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$3;-><init>(Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;Luv;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;J)V

    invoke-virtual {v10, v11, v11, v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Lcom/alibaba/alimei/emailcommon/mail/Message;Lvs;Luu;)V

    move-object/from16 v3, p10

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    move-object v8, v11

    .line 1273
    invoke-virtual/range {v3 .. v8}, Luv;->fetchAttachmentFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLcom/alibaba/alimei/emailcommon/mail/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    invoke-virtual {p0, v10}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    .line 1282
    .end local v11    # "remoteMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v12    # "remoteStore":Lvt;
    :goto_0
    return-void

    .line 1275
    :catch_0
    move-exception v2

    .line 1276
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1277
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1279
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p10

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Luv;->fetchAttachmentFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1281
    invoke-virtual {p0, v10}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v10}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    throw v3
.end method

.method public declared-synchronized fetchEml(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/Long;Luv;)V
    .locals 17
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/Long;
    .param p4, "listener"    # Luv;

    .prologue
    .line 573
    monitor-enter p0

    const/4 v14, 0x0

    :try_start_0
    sput v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchEmlTryCount:I

    .line 574
    const/4 v14, 0x0

    sput-boolean v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->isFetchEmlSuccess:Z

    .line 577
    const/4 v12, 0x0

    .line 579
    .local v12, "remoteMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    const/4 v10, 0x0

    .line 581
    .local v10, "messagingException":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :goto_0
    sget v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchEmlTryCount:I

    const/4 v15, 0x3

    if-ge v14, v15, :cond_5

    sget-boolean v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->isFetchEmlSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_5

    .line 583
    :try_start_1
    sget-boolean v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 584
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "\u5f00\u59cb\u4e0b\u8f7d  "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 587
    :cond_0
    const/4 v14, 0x1

    .line 12771
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;I)Lvt;

    move-result-object v13

    .line 589
    .local v13, "remoteStore":Lvt;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lvt;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v11

    .line 592
    .local v11, "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    instance-of v14, v11, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    if-nez v14, :cond_1

    .line 593
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "CommonEmailApiImpl"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-string/jumbo v16, ", \u642c\u5bb6\u76ee\u524d\u53ea\u652f\u6301imap\u534f\u8bae"

    aput-object v16, v14, v15

    invoke-static {v14}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lyx;->a(Ljava/lang/String;)I

    .line 594
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "\u642c\u5bb6\u76ee\u524d\u53ea\u652f\u6301imap\u534f\u8bae"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 676
    .end local v11    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .end local v13    # "remoteStore":Lvt;
    :catch_0
    move-exception v6

    .line 677
    .local v6, "e1":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    move-object v10, v6

    .line 678
    :try_start_2
    const-string/jumbo v14, "CommonEmailApiImpl"

    invoke-virtual {v6}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    sget v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchEmlTryCount:I

    add-int/lit8 v14, v14, 0x1

    sput v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchEmlTryCount:I

    .line 680
    const/4 v14, 0x0

    sput-boolean v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->isFetchEmlSuccess:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 573
    .end local v6    # "e1":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .end local v10    # "messagingException":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .end local v12    # "remoteMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 597
    .restart local v10    # "messagingException":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .restart local v11    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .restart local v12    # "remoteMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .restart local v13    # "remoteStore":Lvt;
    :cond_1
    :try_start_3
    move-object v0, v11

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    move-object v9, v0

    .line 13165
    .local v9, "imapFolder":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;
    iget-object v7, v9, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c:Ljava/lang/String;

    .line 601
    .local v7, "folder":Ljava/lang/String;
    sget-object v14, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v9, v14}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 602
    sget-boolean v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    .line 606
    const-string/jumbo v14, "EXPUNGE_ON_POLL"

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->l()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 608
    sget-boolean v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v14, :cond_2

    .line 609
    sget-object v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "SYNC: Expunging folder "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :cond_2
    invoke-virtual {v9}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d()V

    .line 622
    :cond_3
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v12

    .line 624
    if-nez v12, :cond_4

    .line 625
    sget-boolean v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    .line 628
    const-string/jumbo v14, "CommonEmailApiImpl"

    const-string/jumbo v15, ", remoteMessage == null"

    invoke-static {v14, v15}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v4, "chunk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    new-instance v8, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;

    invoke-direct {v8}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;-><init>()V

    .line 635
    .local v8, "fp1":Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;
    sget-object v14, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v8, v14}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 636
    sget-object v14, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->EML:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v8, v14}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 639
    :try_start_4
    sget-object v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->EMPTY_MESSAGE_ARRAY:[Lcom/alibaba/alimei/emailcommon/mail/Message;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    new-instance v15, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl$1;-><init>(Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p2

    invoke-virtual {v9, v14, v0, v8, v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;Luu;)V
    :try_end_4
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 670
    :catch_1
    move-exception v5

    .line 671
    .local v5, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    move-object v10, v5

    .line 672
    :try_start_5
    const-string/jumbo v14, "CommonEmailApiImpl"

    invoke-virtual {v5}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    sget v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchEmlTryCount:I

    add-int/lit8 v14, v14, 0x1

    sput v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchEmlTryCount:I

    .line 674
    const/4 v14, 0x0

    sput-boolean v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->isFetchEmlSuccess:Z
    :try_end_5
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 684
    .end local v4    # "chunk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    .end local v5    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .end local v7    # "folder":Ljava/lang/String;
    .end local v8    # "fp1":Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;
    .end local v9    # "imapFolder":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;
    .end local v11    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .end local v13    # "remoteStore":Lvt;
    :cond_5
    :try_start_6
    sget-boolean v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->isFetchEmlSuccess:Z

    if-eqz v14, :cond_7

    .line 685
    if-eqz p4, :cond_6

    .line 686
    sget-object v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchEmlPath:Ljava/lang/String;

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v14}, Luv;->fetchEmlFinish(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 693
    :cond_6
    :goto_1
    monitor-exit p0

    return-void

    .line 689
    :cond_7
    if-eqz p4, :cond_6

    .line 690
    :try_start_7
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v10}, Luv;->fetchEmlFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public fetchMailDetail(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Luv;)V
    .locals 17
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "partId"    # Ljava/lang/String;
    .param p6, "encoding"    # Ljava/lang/String;
    .param p7, "contentType"    # Ljava/lang/String;
    .param p8, "listener"    # Luv;

    .prologue
    .line 1177
    move-object/from16 v3, p8

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Luv;->fetchMailDetailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V

    .line 1178
    const/4 v2, 0x0

    .line 1180
    .local v2, "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    const/4 v3, 0x0

    .line 16771
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;I)Lvt;

    move-result-object v15

    .line 1181
    .local v15, "remoteStore":Lvt;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lvt;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v2

    .line 1182
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 1184
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v8

    .line 1185
    .local v8, "remoteMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    const-string/jumbo v3, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p5

    invoke-virtual {v8, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const-string/jumbo v3, "Content-Transfer-Encoding"

    move-object/from16 v0, p6

    invoke-virtual {v8, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string/jumbo v3, "Content-Type"

    move-object/from16 v0, p7

    invoke-virtual {v8, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const/4 v3, 0x0

    invoke-virtual {v2, v8, v8, v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Lcom/alibaba/alimei/emailcommon/mail/Message;Lvs;Luu;)V

    move-object/from16 v3, p8

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    .line 1191
    invoke-virtual/range {v3 .. v8}, Luv;->fetchMailDetailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLcom/alibaba/alimei/emailcommon/mail/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    .line 1200
    .end local v8    # "remoteMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v15    # "remoteStore":Lvt;
    :goto_0
    return-void

    .line 1193
    :catch_0
    move-exception v14

    .line 1194
    .local v14, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1195
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object/from16 v9, p8

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-wide/from16 v12, p3

    .line 1197
    invoke-virtual/range {v9 .. v14}, Luv;->fetchMailDetailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1199
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    goto :goto_0

    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    throw v3
.end method

.method public fetchMailSummary(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLuv;)V
    .locals 17
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "uid"    # J
    .param p5, "partId"    # Ljava/lang/String;
    .param p6, "encoding"    # Ljava/lang/String;
    .param p7, "contentType"    # Ljava/lang/String;
    .param p8, "range"    # J
    .param p10, "listener"    # Luv;

    .prologue
    .line 1207
    move-object/from16 v3, p10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Luv;->fetchMailSummaryStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/String;)V

    .line 1208
    const/4 v2, 0x0

    .line 1210
    .local v2, "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    const/4 v3, 0x1

    .line 17771
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;I)Lvt;

    move-result-object v15

    .line 1211
    .local v15, "remoteStore":Lvt;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lvt;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v2

    .line 1212
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 1214
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v8

    .line 1215
    .local v8, "remoteMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    const-string/jumbo v3, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p5

    invoke-virtual {v8, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string/jumbo v3, "Content-Transfer-Encoding"

    move-object/from16 v0, p6

    invoke-virtual {v8, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string/jumbo v3, "Content-Type"

    move-object/from16 v0, p7

    invoke-virtual {v8, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-wide/16 v4, 0x0

    cmp-long v3, p8, v4

    if-lez v3, :cond_0

    .line 1219
    const-string/jumbo v3, "Content-RANGE"

    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v8, v8, v3}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Lcom/alibaba/alimei/emailcommon/mail/Message;Lvs;Luu;)V

    move-object/from16 v3, p10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    .line 1223
    invoke-virtual/range {v3 .. v8}, Luv;->fetchMailSummaryFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLcom/alibaba/alimei/emailcommon/mail/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    .line 1232
    .end local v8    # "remoteMessage":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v15    # "remoteStore":Lvt;
    :goto_0
    return-void

    .line 1225
    :catch_0
    move-exception v14

    .line 1226
    .local v14, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 1227
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object/from16 v9, p10

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-wide/from16 v12, p3

    .line 1229
    invoke-virtual/range {v9 .. v14}, Luv;->fetchMailSummaryFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JLjava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1231
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    goto :goto_0

    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    throw v3
.end method

.method public declared-synchronized fetchUids(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;IILuv;)V
    .locals 10
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "from"    # I
    .param p4, "to"    # I
    .param p5, "listener"    # Luv;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 508
    monitor-enter p0

    const/4 v7, 0x0

    :try_start_0
    sput v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchUidTryCount:I

    .line 509
    const/4 v3, 0x0

    .line 510
    .local v3, "isSuccess":Z
    const/4 v4, 0x0

    .line 511
    .local v4, "messages":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    const/4 v2, 0x0

    .line 512
    .local v2, "imapFolder":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;
    :cond_0
    :goto_0
    sget v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchUidTryCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x3

    if-ge v7, v8, :cond_4

    .line 12762
    :try_start_1
    invoke-static {p1}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvt;

    move-result-object v6

    .line 517
    .local v6, "remoteStore":Lvt;
    invoke-virtual {v6, p2}, Lvt;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v5

    .line 519
    .local v5, "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    instance-of v7, v5, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    if-nez v7, :cond_1

    .line 520
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "CommonEmailApiImpl"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, ", not use imap ,when fetch uids"

    aput-object v9, v7, v8

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lyx;->a(Ljava/lang/String;)I

    .line 521
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "not use imap ,when fetch uids "

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 546
    .end local v5    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .end local v6    # "remoteStore":Lvt;
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 548
    const/4 v3, 0x0

    .line 549
    sget v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchUidTryCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchUidTryCount:I

    .line 551
    if-eqz v2, :cond_0

    .line 552
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 508
    .end local v1    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .end local v2    # "imapFolder":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;
    .end local v3    # "isSuccess":Z
    .end local v4    # "messages":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 524
    .restart local v2    # "imapFolder":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;
    .restart local v3    # "isSuccess":Z
    .restart local v4    # "messages":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .restart local v5    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .restart local v6    # "remoteStore":Lvt;
    :cond_1
    :try_start_3
    move-object v0, v5

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    move-object v2, v0

    .line 527
    sget-object v7, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v2, v7}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 528
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    .line 531
    const-string/jumbo v7, "EXPUNGE_ON_POLL"

    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/Account;->l()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 533
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 534
    sget-object v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "SYNC: Expunging folder "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/Account;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_2
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d()V

    .line 541
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v2, p3, p4, v7}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->b(IILuu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v4

    .line 543
    const/4 v7, 0x0

    sput v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchUidTryCount:I
    :try_end_3
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 544
    const/4 v3, 0x1

    .line 556
    .end local v5    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .end local v6    # "remoteStore":Lvt;
    :cond_4
    const/4 v7, 0x0

    :try_start_4
    sput v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->fetchUidTryCount:I

    .line 558
    if-eqz v3, :cond_6

    .line 559
    if-eqz p5, :cond_5

    .line 560
    invoke-virtual {p5, p1, v4}, Luv;->listRemoteUids(Lcom/alibaba/alimei/emailcommon/Account;[Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 567
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    .line 563
    :cond_6
    if-eqz p5, :cond_5

    .line 564
    :try_start_5
    invoke-virtual {p5, p1}, Luv;->listRemoteUidsFailed(Lcom/alibaba/alimei/emailcommon/Account;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public getLastCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lwg;->a()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getListeners(Luv;)Ljava/util/Set;
    .locals 2
    .param p1, "listener"    # Luv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luv;",
            ")",
            "Ljava/util/Set",
            "<",
            "Luv;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->mListeners:Ljava/util/Set;

    .line 84
    :goto_0
    return-object v0

    .line 82
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->mListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 83
    .local v0, "listeners":Ljava/util/Set;, "Ljava/util/Set<Luv;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized listFolders(Lcom/alibaba/alimei/emailcommon/Account;Luv;)V
    .locals 9
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "listener"    # Luv;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 468
    monitor-enter p0

    const/4 v7, 0x0

    :try_start_0
    sput v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->listFolderTryCount:I

    .line 469
    const/4 v4, 0x0

    .line 471
    .local v4, "isSuccess":Z
    const/4 v2, 0x0

    .line 472
    .local v2, "imapServer":Lwl;
    const/4 v5, 0x0

    .line 473
    .local v5, "remoteFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    :goto_0
    sget v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->listFolderTryCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    .line 11762
    :try_start_1
    invoke-static {p1}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvt;

    move-result-object v6

    .line 477
    .local v6, "store":Lvt;
    instance-of v7, v6, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    if-eqz v7, :cond_0

    .line 478
    move-object v0, v6

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    move-object v3, v0

    .line 479
    .local v3, "imapStore":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    invoke-virtual {v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->e()Lwl;

    move-result-object v2

    .line 482
    .end local v3    # "imapStore":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lvt;->a(Z)Ljava/util/List;

    move-result-object v5

    .line 485
    const/4 v7, 0x0

    sput v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->listFolderTryCount:I
    :try_end_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    const/4 v4, 0x1

    .line 497
    .end local v6    # "store":Lvt;
    :cond_1
    if-eqz v4, :cond_2

    .line 498
    :try_start_2
    invoke-virtual {p2, p1, v5, v2}, Luv;->listRemoteFolders(Lcom/alibaba/alimei/emailcommon/Account;Ljava/util/List;Lwl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    :goto_1
    monitor-exit p0

    return-void

    .line 488
    :catch_0
    move-exception v1

    .line 489
    .local v1, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :try_start_3
    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 491
    const/4 v4, 0x0

    .line 492
    sget v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->listFolderTryCount:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->listFolderTryCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 468
    .end local v1    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .end local v2    # "imapServer":Lwl;
    .end local v4    # "isSuccess":Z
    .end local v5    # "remoteFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 500
    .restart local v2    # "imapServer":Lwl;
    .restart local v4    # "isSuccess":Z
    .restart local v5    # "remoteFolders":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/alimei/emailcommon/mail/Folder;>;"
    :cond_2
    :try_start_4
    invoke-virtual {p2, p1}, Luv;->listFoldersFailed(Lcom/alibaba/alimei/emailcommon/Account;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public logout(Lcom/alibaba/alimei/emailcommon/Account;)V
    .locals 9
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 186
    .line 6767
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1, v4}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;Z)Lvt;

    move-result-object v3

    .line 187
    .local v3, "store":Lvt;
    if-eqz v3, :cond_2

    instance-of v4, v3, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    if-eqz v4, :cond_2

    .line 188
    move-object v0, v3

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    move-object v2, v0

    .line 190
    .local v2, "imapStore":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    const-string/jumbo v4, "CommonEmailApiImpl"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/Account;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, " ready to release imap store connections"

    aput-object v7, v5, v6

    invoke-static {v5}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 7764
    iget-object v6, v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->d:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7766
    :try_start_1
    sget-boolean v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 7767
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-----size : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->d:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7770
    :cond_0
    iget-object v4, v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->d:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 7771
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7772
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    .line 7773
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 7776
    :try_start_2
    const-string/jumbo v5, "logout"

    .line 7904
    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7780
    :try_start_3
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    .line 7783
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7785
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 194
    .end local v2    # "imapStore":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    .end local v3    # "store":Lvt;
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    const-string/jumbo v4, "CommonEmailApiImpl"

    invoke-static {v4, v1}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .end local v1    # "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :cond_2
    :goto_2
    return-void

    .line 7777
    .restart local v2    # "imapStore":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    .restart local v3    # "store":Lvt;
    :catch_1
    move-exception v5

    .line 7778
    :try_start_5
    sget-object v8, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v8, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 7780
    :try_start_6
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    goto :goto_1

    :catchall_1
    move-exception v5

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    throw v5

    .line 7785
    :cond_3
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 7787
    :try_start_7
    iget-object v6, v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->e:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_7
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_0

    .line 7789
    :try_start_8
    sget-boolean v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 7790
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-----size : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->e:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7792
    :cond_4
    iget-object v4, v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->e:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 7793
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7794
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    .line 7795
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v5

    if-eqz v5, :cond_5

    .line 7798
    :try_start_9
    const-string/jumbo v5, "logout"

    .line 8904
    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 7802
    :try_start_a
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    .line 7805
    :cond_5
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 7807
    :catchall_2
    move-exception v4

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v4
    :try_end_b
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_0

    .line 7799
    :catch_2
    move-exception v5

    .line 7800
    :try_start_c
    sget-object v8, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v8, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 7802
    :try_start_d
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    goto :goto_4

    :catchall_3
    move-exception v5

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    throw v5

    .line 7807
    :cond_6
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 7809
    :try_start_e
    iget-object v6, v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->f:Ljava/util/LinkedList;

    monitor-enter v6
    :try_end_e
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_e .. :try_end_e} :catch_0

    .line 7811
    :try_start_f
    sget-boolean v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 7812
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "-----size : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->f:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7814
    :cond_7
    iget-object v4, v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->f:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 7815
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 7816
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    .line 7817
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-result v5

    if-eqz v5, :cond_8

    .line 7820
    :try_start_10
    const-string/jumbo v5, "logout"

    .line 9904
    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 7824
    :try_start_11
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    .line 7827
    :cond_8
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 7829
    :catchall_4
    move-exception v4

    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v4
    :try_end_12
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_12 .. :try_end_12} :catch_0

    .line 7821
    :catch_3
    move-exception v5

    .line 7822
    :try_start_13
    sget-object v8, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v8, v5}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 7824
    :try_start_14
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    goto :goto_6

    :catchall_5
    move-exception v5

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    throw v5

    .line 7829
    :cond_9
    monitor-exit v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto/16 :goto_2
.end method

.method public moveMessage(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Luv;)V
    .locals 18
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "srcFolder"    # Ljava/lang/String;
    .param p3, "destFolder"    # Ljava/lang/String;
    .param p5, "listener"    # Luv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Luv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1348
    .local p4, "inMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p4, :cond_0

    :try_start_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 1349
    :cond_0
    const-string/jumbo v10, "no message to move"

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Luv;->moveMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1381
    :cond_1
    :goto_0
    return-void

    .line 1353
    :cond_2
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Luv;->moveMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 21762
    invoke-static/range {p1 .. p1}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvt;

    move-result-object v17

    .line 1356
    .local v17, "remoteStore":Lvt;
    invoke-virtual/range {v17 .. v17}, Lvt;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1359
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Luv;->moveMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1360
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvt;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v16

    .line 1361
    .local v16, "remoteSrcFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lvt;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v15

    .line 1363
    .local v15, "remoteDestFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    sget-object v5, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 1365
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1366
    .local v14, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v12, v5, :cond_3

    .line 1367
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v13

    .line 1368
    .local v13, "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1366
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1370
    .end local v13    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :cond_3
    sget-object v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->EMPTY_MESSAGE_ARRAY:[Lcom/alibaba/alimei/emailcommon/mail/Message;

    invoke-interface {v14, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v15}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    .line 1372
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Luv;->moveMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1374
    .end local v12    # "i":I
    .end local v14    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    .end local v15    # "remoteDestFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .end local v16    # "remoteSrcFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .end local v17    # "remoteStore":Lvt;
    :catch_0
    move-exception v11

    .line 1376
    .local v11, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v5, :cond_4

    .line 1377
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1379
    :cond_4
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p5

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Luv;->moveMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public searchMail(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Luv;)V
    .locals 5
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .param p6, "listener"    # Luv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Flag;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Flag;",
            ">;",
            "Luv;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1287
    .local p4, "requiresFlag":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/alimei/emailcommon/mail/Flag;>;"
    .local p5, "forbiddenFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/alimei/emailcommon/mail/Flag;>;"
    const/4 v1, 0x0

    .line 1289
    .local v1, "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    if-eqz p6, :cond_0

    .line 1290
    :try_start_0
    invoke-virtual {p6, p1, p2, p3}, Luv;->searchMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 19762
    :cond_0
    invoke-static {p1}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvt;

    move-result-object v3

    .line 1293
    .local v3, "remoteStore":Lvt;
    invoke-virtual {v3, p2}, Lvt;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v1

    .line 1294
    sget-object v4, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 1296
    invoke-virtual {v1, p3, p4, p5}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    .line 1298
    .local v2, "remoteMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    if-eqz p6, :cond_1

    .line 1299
    invoke-virtual {p6, p1, p2, p3, v2}, Luv;->searchMailFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1310
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    .line 1311
    .end local v2    # "remoteMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    .end local v3    # "remoteStore":Lvt;
    :goto_0
    return-void

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1306
    :cond_2
    if-eqz p6, :cond_3

    .line 1307
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p6, p1, p2, p3, v4}, Luv;->searchMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1310
    :cond_3
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->closeFolder(Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    throw v4
.end method

.method public sendMail(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;Luv;)V
    .locals 3
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p3, "listener"    # Luv;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1155
    if-eqz p3, :cond_0

    .line 1156
    :try_start_0
    invoke-virtual {p3, p1, p2}, Luv;->sendMailStarted(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 1158
    :cond_0
    invoke-static {p1}, Lvu;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvu;

    move-result-object v1

    .line 1159
    .local v1, "transport":Lvu;
    invoke-virtual {v1, p2}, Lvu;->a(Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    .line 1161
    if-eqz p3, :cond_1

    .line 1162
    invoke-virtual {p3, p1, p2}, Luv;->sendMailFinish(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    .end local v1    # "transport":Lvu;
    :cond_1
    :goto_0
    return-void

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    sget-boolean v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 1166
    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 1168
    :cond_2
    if-eqz p3, :cond_1

    .line 1169
    invoke-virtual {p3, p1, p2, v0}, Luv;->sendMailFailed(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public syncchronizeFlag(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJLuv;)V
    .locals 25
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "startUid"    # J
    .param p5, "endUid"    # J
    .param p7, "listener"    # Luv;

    .prologue
    .line 700
    :try_start_0
    invoke-static/range {p3 .. p6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    .line 701
    .local v22, "start":J
    invoke-static/range {p3 .. p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    .line 702
    .local v16, "end":J
    move-wide/from16 p3, v22

    .line 703
    move-wide/from16 p5, v16

    move-object/from16 v7, p7

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    .line 705
    invoke-virtual/range {v7 .. v13}, Luv;->synchronizeMailFlagStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13762
    :try_start_1
    invoke-static/range {p1 .. p1}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvt;

    move-result-object v21

    .line 710
    .local v21, "remoteStore":Lvt;
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 711
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " get flag : About to get remote folder "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :cond_0
    const-string/jumbo v7, "CommonEmailApiImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " get flag : About to get remote folder "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lvt;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v19

    .line 717
    .local v19, "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->verifyOrCreateRemoteSpecialFolder(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Folder;Luv;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_3

    .line 805
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Luv;

    .line 806
    .local v18, "l":Luv;
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Luv;->synchronizeMailboxFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 808
    .end local v18    # "l":Luv;
    :catch_0
    move-exception v6

    .line 809
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 810
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Exception"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    :cond_1
    const-string/jumbo v7, "CommonEmailApiImpl"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "syncchronizeFlag exception "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v16    # "end":J
    .end local v19    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .end local v21    # "remoteStore":Lvt;
    .end local v22    # "start":J
    :cond_2
    :goto_1
    return-void

    .line 727
    .restart local v16    # "end":J
    .restart local v19    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .restart local v21    # "remoteStore":Lvt;
    .restart local v22    # "start":J
    :cond_3
    :try_start_3
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 728
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " get flag : About to open remote folder "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    :cond_4
    sget-object v7, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 732
    const-string/jumbo v7, "EXPUNGE_ON_POLL"

    .line 733
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->l()Ljava/lang/String;

    move-result-object v8

    .line 732
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 734
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 735
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "SYNC: Expunging folder "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->d()V

    .line 743
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->c()I

    move-result v20

    .line 745
    .local v20, "remoteMessageCount":I
    sget-object v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->EMPTY_MESSAGE_ARRAY:[Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 746
    .local v14, "remoteMessageArray":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_7

    .line 747
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, " get flag : Remote message count for folder "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " start="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " end="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p5

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 750
    :cond_7
    move-object/from16 v0, p7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Luv;->synchronizeMailboxHeadersStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;)V

    .line 752
    if-lez v20, :cond_d

    .line 755
    move-wide/from16 v0, p3

    long-to-int v7, v0

    move-wide/from16 v0, p5

    long-to-int v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8, v9}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(IILuu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v14

    .line 756
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_8

    .line 757
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " get flag "

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v14, :cond_c

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " messages for folder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    move-object/from16 v7, p7

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    .line 768
    invoke-virtual/range {v7 .. v14}, Luv;->synchronizeMailFlagFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJ[Lcom/alibaba/alimei/emailcommon/mail/Message;)V

    move-object/from16 v7, p7

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    .line 771
    invoke-virtual/range {v7 .. v14}, Luv;->synchronizeMailFlagQueryUnSyncedMail(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;JJ[Lcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/util/List;

    move-result-object v24

    .line 773
    .local v24, "unsyncedMessage":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    if-eqz v24, :cond_9

    .line 774
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v24

    move-object/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->downloadMessages(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Folder;Ljava/util/List;Luv;)V

    .line 777
    :cond_9
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_a

    .line 778
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Done  get flag  folder "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 805
    .end local v14    # "remoteMessageArray":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v19    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .end local v20    # "remoteMessageCount":I
    .end local v21    # "remoteStore":Lvt;
    .end local v24    # "unsyncedMessage":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    :cond_a
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Luv;

    .line 806
    .restart local v18    # "l":Luv;
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Luv;->synchronizeMailboxFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 808
    .end local v18    # "l":Luv;
    :catch_1
    move-exception v6

    .line 809
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_b

    .line 810
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Exception"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    :cond_b
    const-string/jumbo v7, "CommonEmailApiImpl"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "syncchronizeFlag exception "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 757
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v14    # "remoteMessageArray":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .restart local v19    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .restart local v20    # "remoteMessageCount":I
    .restart local v21    # "remoteStore":Lvt;
    :cond_c
    :try_start_5
    array-length v7, v14

    goto/16 :goto_2

    .line 761
    :cond_d
    if-gez v20, :cond_8

    .line 762
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "syncchronizeFlag exception "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "Message count "

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string/jumbo v9, " for folder "

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p2, v7, v8

    invoke-static {v7}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 764
    .local v15, "errorMsg":Ljava/lang/String;
    const-string/jumbo v7, "CommonEmailApiImpl"

    invoke-static {v7, v15}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 781
    .end local v14    # "remoteMessageArray":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v15    # "errorMsg":Ljava/lang/String;
    .end local v19    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .end local v20    # "remoteMessageCount":I
    .end local v21    # "remoteStore":Lvt;
    :catch_2
    move-exception v6

    .line 782
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_6
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    .line 785
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Luv;

    .line 786
    .restart local v18    # "l":Luv;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Luv;->synchronizeMailboxFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 793
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v18    # "l":Luv;
    :catchall_0
    move-exception v7

    :try_start_7
    throw v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 797
    .end local v16    # "end":J
    .end local v22    # "start":J
    :catch_3
    move-exception v6

    .line 798
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_8
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_e

    .line 799
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Exception"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_e
    const-string/jumbo v7, "CommonEmailApiImpl"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "syncchronizeFlag exception "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v7}, Luv;->synchronizeMailFlagFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 805
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Luv;

    .line 806
    .restart local v18    # "l":Luv;
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Luv;->synchronizeMailboxFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_6

    .line 808
    .end local v18    # "l":Luv;
    :catch_4
    move-exception v6

    .line 809
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_f

    .line 810
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Exception"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    :cond_f
    const-string/jumbo v7, "CommonEmailApiImpl"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "syncchronizeFlag exception "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 788
    .restart local v16    # "end":J
    .restart local v22    # "start":J
    :cond_10
    :try_start_a
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_11

    .line 789
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failed  get flag  folder "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " @ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 791
    :cond_11
    const-string/jumbo v7, "CommonEmailApiImpl"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "syncchronizeFlag exception "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "Failed  get flag  folder "

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    invoke-static {v8}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    .line 804
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v16    # "end":J
    .end local v22    # "start":J
    :catchall_1
    move-exception v7

    .line 805
    :try_start_b
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Luv;

    .line 806
    .restart local v18    # "l":Luv;
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v9, v10}, Luv;->synchronizeMailboxFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_7

    .line 808
    .end local v18    # "l":Luv;
    :catch_5
    move-exception v6

    .line 809
    .restart local v6    # "e":Ljava/lang/Exception;
    sget-boolean v8, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v8, :cond_12

    .line 810
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Exception"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    :cond_12
    const-string/jumbo v8, "CommonEmailApiImpl"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "syncchronizeFlag exception "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_13
    throw v7
.end method

.method public synchronizeMailbox(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;IJLuv;)V
    .locals 24
    .param p1, "account"    # Lcom/alibaba/alimei/emailcommon/Account;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "syncType"    # I
    .param p4, "uid"    # J
    .param p6, "listener"    # Luv;

    .prologue
    .line 874
    const-string/jumbo v17, "CommonEmailApiImpl"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "synchronizeMailbox uid: "

    aput-object v22, v20, v21

    const/16 v21, 0x1

    .line 875
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, " folder "

    aput-object v22, v20, v21

    const/16 v21, 0x3

    aput-object p2, v20, v21

    .line 874
    invoke-static/range {v20 .. v20}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v18 .. v18}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :try_start_0
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Luv;->synchronizeMailboxStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;)V

    .line 881
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->i()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 882
    const-string/jumbo v17, "CommonEmailApiImpl"

    const-string/jumbo v18, "synchronizeMailbox outbox just finish"

    invoke-static/range {v17 .. v18}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->getListeners(Luv;)Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Luv;

    .line 884
    .local v6, "l":Luv;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v6, v0, v1, v2, v3}, Luv;->synchronizeMailboxFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1041
    .end local v6    # "l":Luv;
    :catch_0
    move-exception v5

    .line 1042
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v17, "CommonEmailApiImpl"

    const/16 v18, 0x8

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "synchronizeMailbox err, syncType"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, " uid "

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 1043
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string/jumbo v20, " folder "

    aput-object v20, v18, v19

    const/16 v19, 0x5

    aput-object p2, v18, v19

    const/16 v19, 0x6

    const-string/jumbo v20, " "

    aput-object v20, v18, v19

    const/16 v19, 0x7

    invoke-static {v5}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    .line 1042
    invoke-static/range {v18 .. v18}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 16762
    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Lvt;->a(Lcom/alibaba/alimei/emailcommon/Account;)Lvt;

    move-result-object v15

    .line 892
    .local v15, "remoteStore":Lvt;
    const-string/jumbo v17, "CommonEmailApiImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "SYNC: About to get remote folder "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lvt;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v10

    .line 896
    .local v10, "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v10, v3}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->verifyOrCreateRemoteSpecialFolder(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Folder;Luv;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 897
    const-string/jumbo v17, "CommonEmailApiImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "verifyOrCreateRemoteFolder folder "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1033
    .end local v10    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .end local v15    # "remoteStore":Lvt;
    :catch_1
    move-exception v5

    .line 1034
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5}, Luv;->synchronizeMailboxFailed(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1035
    const-string/jumbo v17, "CommonEmailApiImpl"

    const/16 v18, 0x8

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "synchronizeMailbox err, syncType "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, " uid "

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 1036
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string/jumbo v20, " folder "

    aput-object v20, v18, v19

    const/16 v19, 0x5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->c()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x6

    const-string/jumbo v20, " "

    aput-object v20, v18, v19

    const/16 v19, 0x7

    invoke-static {v5}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    .line 1035
    invoke-static/range {v18 .. v18}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1038
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    :try_start_3
    throw v17
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 906
    .restart local v10    # "remoteFolder":Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .restart local v15    # "remoteStore":Lvt;
    :cond_2
    :try_start_4
    const-string/jumbo v17, "CommonEmailApiImpl"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "SYNC: About to open remote folder "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    sget-object v17, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 909
    const-string/jumbo v17, "EXPUNGE_ON_POLL"

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->l()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 910
    const-string/jumbo v17, "CommonEmailApiImpl"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "SYNC: Expunging folder "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->c()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, ":"

    aput-object v20, v18, v19

    const/16 v19, 0x3

    aput-object p2, v18, v19

    invoke-static/range {v18 .. v18}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    invoke-virtual {v10}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->d()V

    .line 917
    :cond_3
    invoke-virtual {v10}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->c()I

    move-result v12

    .line 921
    .local v12, "remoteMessageCount":I
    sget-object v11, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->EMPTY_MESSAGE_ARRAY:[Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 922
    .local v11, "remoteMessageArray":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 924
    .local v13, "remoteMessages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    const-string/jumbo v17, "CommonEmailApiImpl"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "SYNC: Remote message count for folder "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object p2, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, " is "

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 925
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    .line 924
    invoke-static/range {v18 .. v18}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Luv;->synchronizeMailboxHeadersStarted(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;)V

    .line 928
    if-lez v12, :cond_12

    .line 932
    const/4 v14, 0x1

    .line 933
    .local v14, "remoteStart":I
    move v9, v12

    .line 934
    .local v9, "remoteEnd":I
    if-nez p3, :cond_d

    .line 938
    const/16 v17, 0x0

    add-int/lit8 v18, v12, -0x14

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v14, v17, 0x1

    .line 940
    move v9, v12

    .line 957
    :cond_4
    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 958
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 960
    const-string/jumbo v17, "CommonEmailApiImpl"

    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "SYNC: About to get messages "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, " through "

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 961
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string/jumbo v20, " for folder "

    aput-object v20, v18, v19

    const/16 v19, 0x5

    aput-object p2, v18, v19

    .line 960
    invoke-static/range {v18 .. v18}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/16 v17, 0x2

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_f

    .line 965
    const/4 v4, -0x1

    .line 969
    .local v4, "detecIndex":I
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_6

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_7

    .line 972
    :cond_6
    const/16 v17, 0x0

    move/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v14, v9, v1}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(IIILuu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v11

    .line 974
    add-int/lit8 v4, v4, 0x1

    .line 975
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_7

    .line 980
    move v7, v14

    .local v7, "lastStart":I
    add-int/lit8 v9, v14, -0x1

    .line 981
    add-int/lit8 v14, v9, -0x14

    .line 983
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 984
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 986
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ge v4, v0, :cond_7

    if-eqz v11, :cond_5

    array-length v0, v11

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 990
    .end local v7    # "lastStart":I
    :cond_7
    const/16 v17, 0x2

    move/from16 v0, v17

    if-lt v4, v0, :cond_9

    if-eqz v11, :cond_8

    array-length v0, v11

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 992
    :cond_8
    const/4 v14, 0x1

    .line 993
    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, p3

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v10, v0, v1, v9, v2}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(IIILuu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v11

    .line 1002
    .end local v4    # "detecIndex":I
    :cond_9
    :goto_3
    add-int/lit8 v17, v14, -0x1

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 1003
    .local v8, "maxUid":Ljava/lang/String;
    array-length v0, v11

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    aget-object v16, v11, v17

    .line 1004
    .local v16, "thisMess":Lcom/alibaba/alimei/emailcommon/mail/Message;
    const/16 v19, 0x1

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 1007
    :cond_a
    const/16 v19, 0x2

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 1011
    :cond_b
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 942
    .end local v8    # "maxUid":Ljava/lang/String;
    .end local v16    # "thisMess":Lcom/alibaba/alimei/emailcommon/mail/Message;
    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_e

    .line 946
    move-wide/from16 v0, p4

    long-to-int v0, v0

    move/from16 v17, v0

    add-int/lit8 v14, v17, 0x1

    goto/16 :goto_2

    .line 948
    :cond_e
    const/16 v17, 0x2

    move/from16 v0, v17

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 953
    move-wide/from16 v0, p4

    long-to-int v0, v0

    move/from16 v17, v0

    add-int/lit8 v9, v17, -0x1

    .line 954
    add-int/lit8 v14, v9, -0x14

    goto/16 :goto_2

    .line 998
    :cond_f
    const/16 v17, 0x0

    move/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v14, v9, v1}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->a(IIILuu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v11

    goto :goto_3

    .line 1013
    .restart local v8    # "maxUid":Ljava/lang/String;
    :cond_10
    const-string/jumbo v17, "CommonEmailApiImpl"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "SYNC: Got "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, " messages for folder "

    aput-object v20, v18, v19

    const/16 v19, 0x3

    aput-object p2, v18, v19

    invoke-static/range {v18 .. v18}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    .end local v8    # "maxUid":Ljava/lang/String;
    .end local v9    # "remoteEnd":I
    .end local v14    # "remoteStart":I
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0, v1, v10, v13, v2}, Lcom/alibaba/alimei/emailcommon/api/CommonEmailApiImpl;->downloadMessages(Lcom/alibaba/alimei/emailcommon/Account;Lcom/alibaba/alimei/emailcommon/mail/Folder;Ljava/util/List;Luv;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1026
    :try_start_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v17

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v12, v3}, Luv;->synchronizeMailboxFinished(Lcom/alibaba/alimei/emailcommon/Account;Ljava/lang/String;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1031
    :goto_5
    :try_start_6
    const-string/jumbo v17, "CommonEmailApiImpl"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "Done synchronizing folder "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/Account;->c()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, ":"

    aput-object v20, v18, v19

    const/16 v19, 0x3

    aput-object p2, v18, v19

    invoke-static/range {v18 .. v18}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1017
    :cond_12
    if-gez v12, :cond_11

    .line 1018
    const-string/jumbo v17, "CommonEmailApiImpl"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "Message count "

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, " for folder "

    aput-object v20, v18, v19

    const/16 v19, 0x3

    aput-object p2, v18, v19

    invoke-static/range {v18 .. v18}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    new-instance v17, Ljava/lang/Exception;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Exception;-><init>()V

    throw v17

    .line 1027
    :catch_2
    move-exception v5

    .line 1028
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string/jumbo v17, "CommonEmailApiImpl"

    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "synchronizeMailbox err, syncType"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, " uid "

    aput-object v20, v18, v19

    const/16 v19, 0x3

    .line 1029
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string/jumbo v20, " "

    aput-object v20, v18, v19

    const/16 v19, 0x5

    invoke-static {v5}, Lyy;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    .line 1028
    invoke-static/range {v18 .. v18}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5
.end method

.method public trustCertificateChain([Ljava/security/cert/X509Certificate;Luv;)V
    .locals 4
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "listener"    # Luv;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 169
    :try_start_0
    invoke-static {p1}, Lwg;->b([Ljava/security/cert/X509Certificate;)V

    .line 171
    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p2}, Luv;->addCertificateSuccess()V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 177
    if-eqz p2, :cond_0

    .line 178
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->CERTIFICATE_ADD_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/CertificateValidationException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v1}, Luv;->addCertificateFail(Ljava/lang/Exception;)V

    goto :goto_0
.end method

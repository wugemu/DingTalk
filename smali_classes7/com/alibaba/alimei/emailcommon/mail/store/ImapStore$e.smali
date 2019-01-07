.class public final Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;
.super Lcom/alibaba/alimei/emailcommon/mail/Folder;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field protected volatile d:I

.field protected volatile e:I

.field protected volatile f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

.field private i:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

.field private volatile j:Z

.field private k:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    .param p2, "nStore"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 950
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .line 951
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->c()Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/emailcommon/mail/Folder;-><init>(Lcom/alibaba/alimei/emailcommon/Account;)V

    .line 940
    iput v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d:I

    .line 941
    iput v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->e:I

    .line 945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->k:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .line 946
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->g:Ljava/util/Map;

    .line 952
    iput-object p2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->k:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .line 953
    iput-object p3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c:Ljava/lang/String;

    .line 954
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "this$0"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    .param p2, "nStore"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 957
    iput-object p1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .line 958
    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->c()Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/alibaba/alimei/emailcommon/mail/Folder;-><init>(Lcom/alibaba/alimei/emailcommon/Account;Ljava/util/List;)V

    .line 940
    iput v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d:I

    .line 941
    iput v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->e:I

    .line 945
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->k:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .line 946
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->g:Ljava/util/Map;

    .line 959
    iput-object p2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->k:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .line 960
    iput-object p3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c:Ljava/lang/String;

    .line 961
    return-void
.end method

.method private a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .locals 6
    .param p1, "connection"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    .param p2, "ioe"    # Ljava/io/IOException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2904
    sget-object v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, " IO Error"

    aput-object v5, v3, v4

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    sget-boolean v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2906
    sget-object v2, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "IOException for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2909
    :cond_0
    if-eqz p1, :cond_1

    .line 2911
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-static {v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->n(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Ljava/util/LinkedList;

    move-result-object v1

    .line 2912
    .local v1, "imapConnections":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;>;"
    monitor-enter v1

    .line 2914
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 2915
    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->d()V

    .line 2916
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2919
    .end local v1    # "imapConnections":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;>;"
    :cond_1
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2920
    .local v0, "errorMsg":Ljava/lang/String;
    instance-of v2, p2, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_2

    .line 2921
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->TIMED_OUT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v2, v3, v0, p2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2923
    :goto_0
    return-object v2

    .line 2916
    .end local v0    # "errorMsg":Ljava/lang/String;
    .restart local v1    # "imapConnections":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2923
    .end local v1    # "imapConnections":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;>;"
    .restart local v0    # "errorMsg":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v2, v3, v0, p2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;)Ljava/lang/Object;
    .locals 12
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    .param p2, "fetchList"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v11, 0x1

    .line 2229
    const/4 v8, 0x0

    .line 2230
    .local v8, "result":Ljava/lang/Object;
    const-string/jumbo v10, "FLAGS"

    invoke-virtual {p2, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2232
    const-string/jumbo v10, "FLAGS"

    invoke-virtual {p2, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getKeyedList(Ljava/lang/Object;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move-result-object v4

    .line 2233
    .local v4, "flags":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    if-eqz v4, :cond_4

    .line 2235
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v5, v1, :cond_4

    .line 2237
    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2238
    .local v3, "flag":Ljava/lang/String;
    const-string/jumbo v10, "\\Deleted"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2240
    sget-object v10, Lcom/alibaba/alimei/emailcommon/mail/Flag;->DELETED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    invoke-virtual {p1, v10, v11}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->b(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 2235
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2242
    :cond_1
    const-string/jumbo v10, "\\Answered"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2244
    sget-object v10, Lcom/alibaba/alimei/emailcommon/mail/Flag;->ANSWERED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    invoke-virtual {p1, v10, v11}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->b(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    goto :goto_1

    .line 2246
    :cond_2
    const-string/jumbo v10, "\\Seen"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2248
    sget-object v10, Lcom/alibaba/alimei/emailcommon/mail/Flag;->SEEN:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    invoke-virtual {p1, v10, v11}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->b(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    goto :goto_1

    .line 2250
    :cond_3
    const-string/jumbo v10, "\\Flagged"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2252
    sget-object v10, Lcom/alibaba/alimei/emailcommon/mail/Flag;->FLAGGED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    invoke-virtual {p1, v10, v11}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->b(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    goto :goto_1

    .line 2258
    .end local v1    # "count":I
    .end local v3    # "flag":Ljava/lang/String;
    .end local v4    # "flags":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v5    # "i":I
    :cond_4
    const-string/jumbo v10, "INTERNALDATE"

    invoke-virtual {p2, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2260
    const-string/jumbo v10, "INTERNALDATE"

    invoke-virtual {p2, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getKeyedDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v7

    .line 2261
    .local v7, "internalDate":Ljava/util/Date;
    invoke-virtual {p1, v7}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->b(Ljava/util/Date;)V

    .line 2264
    .end local v7    # "internalDate":Ljava/util/Date;
    :cond_5
    const-string/jumbo v10, "RFC822.SIZE"

    invoke-virtual {p2, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2266
    const-string/jumbo v10, "RFC822.SIZE"

    invoke-virtual {p2, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getKeyedNumber(Ljava/lang/Object;)I

    move-result v9

    .line 2267
    .local v9, "size":I
    invoke-virtual {p1, v9}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->a(I)V

    .line 2270
    .end local v9    # "size":I
    :cond_6
    const-string/jumbo v10, "BODYSTRUCTURE"

    invoke-virtual {p2, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2272
    const-string/jumbo v10, "BODYSTRUCTURE"

    invoke-virtual {p2, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getKeyedList(Ljava/lang/Object;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move-result-object v0

    .line 2273
    .local v0, "bs":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    if-eqz v0, :cond_7

    .line 2277
    :try_start_0
    const-string/jumbo v10, "TEXT"

    invoke-direct {p0, v0, p1, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;Lvs;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2290
    .end local v0    # "bs":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    :cond_7
    :goto_2
    const-string/jumbo v10, "BODY"

    invoke-virtual {p2, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2292
    const-string/jumbo v10, "BODY"

    invoke-virtual {p2, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getKeyIndex(Ljava/lang/Object;)I

    move-result v10

    add-int/lit8 v6, v10, 0x2

    .line 2293
    .local v6, "index":I
    invoke-virtual {p2, v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    .line 2296
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 2301
    invoke-virtual {p2, v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    .line 2306
    .end local v6    # "index":I
    .end local v8    # "result":Ljava/lang/Object;
    :cond_8
    return-object v8

    .line 2279
    .restart local v0    # "bs":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .restart local v8    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 2281
    .local v2, "e":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    sget-object v10, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    sget-boolean v10, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v10, :cond_9

    .line 2284
    sget-object v10, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Error handling message for "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->m()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2285
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->a(Lvp;)V

    goto :goto_2
.end method

.method private a(Lcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/lang/String;
    .locals 12
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2729
    :try_start_0
    const-string/jumbo v7, "Message-ID"

    invoke-virtual {p1, v7}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2731
    .local v3, "messageIdHeader":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v7, v3

    if-nez v7, :cond_2

    .line 2733
    :cond_0
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 2734
    sget-object v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Did not get a message-id in order to search for UID  for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2752
    :cond_1
    :goto_0
    return-object v6

    .line 2737
    :cond_2
    const/4 v7, 0x0

    aget-object v2, v3, v7

    .line 2738
    .local v2, "messageId":Ljava/lang/String;
    sget-boolean v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 2739
    sget-object v7, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Looking for UID for message with message-id "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2741
    :cond_3
    const-string/jumbo v7, "UID SEARCH HEADER MESSAGE-ID %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    .line 2743
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2742
    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 2744
    .local v5, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 2746
    .local v4, "response1":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    iget-object v8, v4, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v8, :cond_4

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string/jumbo v9, "SEARCH"

    invoke-static {v8, v9}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2747
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v8

    if-le v8, v11, :cond_4

    .line 2749
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 2754
    .end local v2    # "messageId":Ljava/lang/String;
    .end local v3    # "messageIdHeader":[Ljava/lang/String;
    .end local v4    # "response1":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .end local v5    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    :catch_0
    move-exception v1

    .line 2756
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    const-string/jumbo v7, ", Could not find UID for message based on Message-ID"

    aput-object v7, v6, v11

    invoke-static {v6}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2757
    .local v0, "errorMsg":Ljava/lang/String;
    sget-object v6, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v6, v0}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2758
    new-instance v6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v7, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v6, v7, v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;Lvs;Ljava/lang/String;)V
    .locals 30
    .param p1, "bs"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .param p2, "part"    # Lvs;
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2414
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move/from16 v25, v0

    if-eqz v25, :cond_3

    .line 2419
    new-instance v18, Lvi;

    invoke-direct/range {v18 .. v18}, Lvi;-><init>()V

    .line 2421
    .local v18, "mp":Lvi;
    const/16 v16, 0x0

    .local v16, "i":I
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v11

    .local v11, "count":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v11, :cond_2

    .line 2423
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move/from16 v25, v0

    if-eqz v25, :cond_1

    .line 2429
    new-instance v7, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$d;

    invoke-direct {v7}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$d;-><init>()V

    .line 2431
    .local v7, "bp":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$d;
    const-string/jumbo v25, "TEXT"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 2434
    const-string/jumbo v25, "X-Android-Attachment-StoreData"

    add-int/lit8 v26, v16, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lvs;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move-result-object v25

    add-int/lit8 v26, v16, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;Lvs;Ljava/lang/String;)V

    .line 2443
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lvi;->a(Lvq;)V

    .line 2421
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 2440
    :cond_0
    const-string/jumbo v25, "X-Android-Attachment-StoreData"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v16, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lvs;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v16, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v7, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;Lvs;Ljava/lang/String;)V

    goto :goto_1

    .line 2451
    .end local v7    # "bp":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$d;
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2452
    .local v22, "subType":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lvi;->c(Ljava/lang/String;)V

    .line 2456
    .end local v22    # "subType":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lvs;->a(Lvp;)V

    .line 2647
    .end local v11    # "count":I
    .end local v16    # "i":I
    .end local v18    # "mp":Lvi;
    :goto_2
    return-void

    .line 2475
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_17

    .line 2476
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 2477
    .local v24, "type":Ljava/lang/String;
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2478
    .restart local v22    # "subType":Ljava/lang/String;
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v24, v25, v26

    const/16 v26, 0x1

    const-string/jumbo v27, "/"

    aput-object v27, v25, v26

    const/16 v26, 0x2

    aput-object v22, v25, v26

    invoke-static/range {v25 .. v25}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 2480
    .local v17, "mimeType":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2481
    .local v6, "bodyParams":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    const/16 v25, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 2483
    const/16 v25, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move-result-object v6

    .line 2489
    :cond_4
    const-string/jumbo v25, "%s"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v17, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 2491
    .local v10, "contentType":Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 2496
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_3
    invoke-virtual {v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v25

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 2498
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2499
    .local v21, "str":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 2500
    :cond_5
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->remove(I)Ljava/lang/Object;

    .line 2501
    add-int/lit8 v16, v16, -0x1

    .line 2496
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 2508
    .end local v21    # "str":Ljava/lang/String;
    :cond_7
    const/16 v16, 0x0

    invoke-virtual {v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v11

    .restart local v11    # "count":I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v11, :cond_9

    .line 2510
    invoke-virtual {v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v25

    add-int/lit8 v26, v16, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_8

    .line 2511
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ";\n %s=\"%s\""

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    .line 2512
    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    add-int/lit8 v29, v16, 0x1

    .line 2513
    move/from16 v0, v29

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    .line 2511
    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2508
    :cond_8
    add-int/lit8 v16, v16, 0x2

    goto :goto_4

    .line 2518
    .end local v11    # "count":I
    .end local v16    # "i":I
    :cond_9
    const-string/jumbo v25, "Content-Type"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v10}, Lvs;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_a

    .line 2521
    const/16 v25, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2523
    .local v9, "contentId":Ljava/lang/String;
    if-eqz v9, :cond_a

    const-string/jumbo v25, "NIL"

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_a

    .line 2524
    const-string/jumbo v25, "Content-ID"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v9}, Lvs;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2528
    .end local v9    # "contentId":Ljava/lang/String;
    :cond_a
    const-string/jumbo v12, ""

    .line 2529
    .local v12, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v25

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_b

    .line 2530
    const/16 v25, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v23

    .line 2531
    .local v23, "tempDesc":Ljava/lang/Object;
    if-eqz v23, :cond_b

    move-object/from16 v0, v23

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v25, v0

    if-eqz v25, :cond_b

    move-object/from16 v12, v23

    .line 2532
    check-cast v12, Ljava/lang/String;

    .line 2533
    const-string/jumbo v25, "Content-Description"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v12}, Lvs;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    .end local v23    # "tempDesc":Ljava/lang/Object;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v25

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_c

    .line 2538
    const/16 v25, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2543
    .local v14, "encoding":Ljava/lang/String;
    const-string/jumbo v25, "Content-Transfer-Encoding"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v14}, Lvs;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    .end local v14    # "encoding":Ljava/lang/String;
    :cond_c
    const/16 v20, 0x0

    .line 2548
    .local v20, "size":I
    const/16 v25, 0x6

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 2567
    :goto_5
    const/4 v4, 0x0

    .line 2568
    .local v4, "bodyDisposition":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    const-string/jumbo v25, "text"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 2569
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v25

    const/16 v26, 0x9

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_10

    const/16 v25, 0x9

    .line 2570
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move/from16 v25, v0

    if-eqz v25, :cond_10

    .line 2572
    const/16 v25, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move-result-object v4

    .line 2581
    :cond_d
    :goto_6
    const-string/jumbo v8, ""

    .line 2583
    .local v8, "contentDisposition":Ljava/lang/String;
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v25

    if-lez v25, :cond_11

    .line 2585
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v25, v0

    if-eqz v25, :cond_e

    const-string/jumbo v25, "NIL"

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_e

    .line 2587
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 2590
    :cond_e
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_11

    const/16 v25, 0x1

    .line 2591
    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move/from16 v25, v0

    if-eqz v25, :cond_11

    .line 2593
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move-result-object v5

    .line 2598
    .local v5, "bodyDispositionParams":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    const/16 v16, 0x0

    .restart local v16    # "i":I
    invoke-virtual {v5}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v11

    .restart local v11    # "count":I
    :goto_7
    move/from16 v0, v16

    if-ge v0, v11, :cond_11

    .line 2600
    invoke-virtual {v5}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v25

    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_f

    add-int/lit8 v25, v16, 0x1

    invoke-virtual {v5}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 2601
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v25, v0

    if-eqz v25, :cond_f

    add-int/lit8 v25, v16, 0x1

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 2602
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ";\n %s=\"%s\""

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    .line 2603
    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    add-int/lit8 v29, v16, 0x1

    .line 2604
    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    .line 2602
    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2598
    :cond_f
    add-int/lit8 v16, v16, 0x2

    goto :goto_7

    .line 2549
    .end local v4    # "bodyDisposition":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v5    # "bodyDispositionParams":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v8    # "contentDisposition":Ljava/lang/String;
    .end local v11    # "count":I
    .end local v16    # "i":I
    :catch_0
    move-exception v13

    .line 2550
    .local v13, "e":Ljava/lang/Exception;
    sget-object v25, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-static {v0, v13}, Lyx;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 2574
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v4    # "bodyDisposition":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    :cond_10
    const-string/jumbo v25, "text"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_d

    .line 2575
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_d

    const/16 v25, 0x8

    .line 2576
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move/from16 v25, v0

    if-eqz v25, :cond_d

    .line 2578
    const/16 v25, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move-result-object v4

    goto/16 :goto_6

    .line 2610
    .restart local v8    # "contentDisposition":Ljava/lang/String;
    :cond_11
    const-string/jumbo v25, "size"

    move-object/from16 v0, v25

    invoke-static {v8, v0}, Lvj;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_13

    .line 2612
    const-string/jumbo v25, "message/rfc822"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lvj;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 2613
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_14

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v24, v25, v26

    const/16 v26, 0x1

    const-string/jumbo v27, ".eml"

    aput-object v27, v25, v26

    invoke-static/range {v25 .. v25}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2614
    .local v19, "name":Ljava/lang/String;
    :goto_8
    const-string/jumbo v25, ";\n %s=\"%s\""

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string/jumbo v28, "filename"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    aput-object v19, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2616
    .end local v19    # "name":Ljava/lang/String;
    :cond_12
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ";\n size=%d"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2623
    :cond_13
    const-string/jumbo v25, "Content-Disposition"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v8}, Lvs;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;

    move/from16 v25, v0

    if-eqz v25, :cond_15

    move-object/from16 v25, p2

    .line 2627
    check-cast v25, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->a(I)V

    .line 2639
    :goto_9
    const-string/jumbo v25, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lvs;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2613
    :cond_14
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v12, v25, v26

    const/16 v26, 0x1

    const-string/jumbo v27, ".eml"

    aput-object v27, v25, v26

    invoke-static/range {v25 .. v25}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_8

    .line 2629
    :cond_15
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$d;

    move/from16 v25, v0

    if-eqz v25, :cond_16

    move-object/from16 v25, p2

    .line 2631
    check-cast v25, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$d;

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$d;->a(I)V

    goto :goto_9

    .line 2635
    :cond_16
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string/jumbo v27, "Unknown part type "

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v25 .. v25}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2636
    .local v15, "errorMsg":Ljava/lang/String;
    sget-object v25, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-static {v0, v15}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    new-instance v25, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v26, Lcom/alibaba/alimei/framework/SDKError;->UNKNOW_PART_TYPE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v15}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v25

    .line 2641
    .end local v4    # "bodyDisposition":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v6    # "bodyParams":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v8    # "contentDisposition":Ljava/lang/String;
    .end local v10    # "contentType":Ljava/lang/String;
    .end local v12    # "description":Ljava/lang/String;
    .end local v15    # "errorMsg":Ljava/lang/String;
    .end local v17    # "mimeType":Ljava/lang/String;
    .end local v20    # "size":I
    .end local v22    # "subType":Ljava/lang/String;
    .end local v24    # "type":Ljava/lang/String;
    :cond_17
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-string/jumbo v27, "body struct error:"

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->toString()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v25 .. v25}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2642
    .restart local v15    # "errorMsg":Ljava/lang/String;
    const-string/jumbo v25, "parseBodyStructure"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a:Lcom/alibaba/alimei/emailcommon/Account;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/alimei/emailcommon/Account;->e()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v27

    sget-object v28, Lcom/alibaba/alimei/framework/SDKError;->PARSE_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-virtual/range {v28 .. v28}, Lcom/alibaba/alimei/framework/SDKError;->getErrorCode()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-static {v0, v1, v2, v3, v15}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    sget-object v25, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-static {v0, v15}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V
    .locals 4
    .param p1, "response"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2363
    iget-object v0, p1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 2365
    invoke-virtual {p1, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "EXISTS"

    invoke-static {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2367
    invoke-virtual {p1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->getNumber(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d:I

    .line 2369
    sget-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Got untagged EXISTS with value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8330
    :cond_0
    invoke-virtual {p1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "OK"

    invoke-static {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 8332
    invoke-virtual {p1, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 8333
    instance-of v1, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    if-eqz v1, :cond_1

    .line 8335
    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    .line 8337
    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 8339
    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 8340
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 8342
    check-cast v1, Ljava/lang/String;

    .line 8343
    const-string/jumbo v2, "UIDNEXT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8345
    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getNumber(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->e:I

    .line 8346
    sget-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 8347
    sget-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Got UidNext = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2373
    :cond_1
    invoke-virtual {p1, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "EXPUNGE"

    invoke-static {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d:I

    if-lez v0, :cond_2

    .line 2375
    iget v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d:I

    .line 2376
    sget-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 2377
    sget-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Got untagged EXPUNGE with mMessageCount "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2409
    :cond_2
    return-void
.end method

.method private a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$g;Luu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .locals 17
    .param p1, "searcher"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$g;
    .param p2, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1617
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->l()V

    .line 1618
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1621
    .local v9, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1622
    .local v13, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1623
    .local v3, "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;>;"
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$g;->a()Ljava/util/List;

    move-result-object v11

    .line 1624
    .local v11, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 1626
    .local v10, "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    if-eqz v10, :cond_0

    iget-object v15, v10, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v15, :cond_0

    .line 1628
    const-string/jumbo v15, "FETCH"

    invoke-virtual {v10, v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->getKeyedList(Ljava/lang/Object;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move-result-object v6

    .line 1629
    .local v6, "imapList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 1630
    const-string/jumbo v15, "UID"

    invoke-virtual {v6, v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1631
    .local v12, "uid":Ljava/lang/Integer;
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1632
    const-string/jumbo v15, "FLAGS"

    invoke-virtual {v6, v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getKeyedList(Ljava/lang/Object;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move-result-object v2

    .line 1633
    .local v2, "flagValue":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    invoke-interface {v3, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1667
    .end local v2    # "flagValue":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v3    # "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;>;"
    .end local v6    # "imapList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v10    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .end local v11    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v12    # "uid":Ljava/lang/Integer;
    .end local v13    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v7

    .line 1669
    .local v7, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    move-result-object v14

    throw v14

    .line 1639
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v3    # "flags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;>;"
    .restart local v11    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    .restart local v13    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1640
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "count":I
    :goto_1
    if-ge v5, v1, :cond_6

    .line 1642
    if-eqz p2, :cond_2

    .line 1644
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v5, v1}, Luu;->messageStarted(Ljava/lang/String;II)V

    .line 1646
    :cond_2
    new-instance v8, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v8, v14, v15, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;-><init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    .line 1648
    .local v8, "message":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    .line 1649
    .local v4, "flagsList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    sget-object v14, Lcom/alibaba/alimei/emailcommon/mail/Flag;->SEEN:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->b(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 1650
    sget-object v14, Lcom/alibaba/alimei/emailcommon/mail/Flag;->FLAGGED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->b(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 1651
    if-eqz v4, :cond_4

    .line 1652
    const-string/jumbo v14, "\\Seen"

    invoke-virtual {v4, v14}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1653
    sget-object v14, Lcom/alibaba/alimei/emailcommon/mail/Flag;->SEEN:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    const/4 v15, 0x1

    invoke-virtual {v8, v14, v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->b(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 1655
    :cond_3
    const-string/jumbo v14, "\\Flagged"

    invoke-virtual {v4, v14}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1656
    sget-object v14, Lcom/alibaba/alimei/emailcommon/mail/Flag;->FLAGGED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    const/4 v15, 0x1

    invoke-virtual {v8, v14, v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->b(Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    .line 1660
    :cond_4
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1661
    if-eqz p2, :cond_5

    .line 1663
    move-object/from16 v0, p2

    invoke-interface {v0, v8, v5, v1}, Luu;->messageFinished(Lcom/alibaba/alimei/emailcommon/mail/Message;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1640
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1671
    .end local v4    # "flagsList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v8    # "message":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    :cond_6
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->f()[Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    return-object v14
.end method

.method private b(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)Ljava/util/List;
    .locals 19
    .param p1, "mode"    # Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1017
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->k()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->i:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, p1

    if-ne v14, v0, :cond_0

    .line 1021
    :try_start_0
    const-string/jumbo v14, "NOOP"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->b(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1095
    :goto_0
    return-object v12

    .line 1022
    :catch_0
    move-exception v7

    .line 1023
    .local v7, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    .line 1024
    sget-boolean v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v14, :cond_0

    .line 1025
    sget-object v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, " \u8fde\u63a5\u88ab\u65ad\u6389 "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    .end local v7    # "ioe":Ljava/io/IOException;
    :cond_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1045
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-static {v14}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->l(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    .line 1046
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1047
    :try_start_3
    sget-boolean v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v14, :cond_1

    .line 1048
    sget-object v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, " \u83b7\u5f97\u65b0\u8fde\u63a5 "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->g:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->clear()V

    .line 1052
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_4

    const-string/jumbo v14, "SELECT"

    :goto_1
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " %s"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    move-object/from16 v17, v0

    .line 1053
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->j()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->d(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 1052
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1055
    .local v4, "command":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 1061
    .local v12, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->i:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    .line 1063
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 1065
    .local v11, "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    iget-object v15, v11, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v15, :cond_2

    invoke-virtual {v11}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-lt v15, v0, :cond_2

    .line 1067
    const/4 v15, 0x1

    invoke-virtual {v11, v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1068
    .local v3, "bracketedObj":Ljava/lang/Object;
    instance-of v15, v3, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    if-eqz v15, :cond_2

    .line 1070
    move-object v0, v3

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    move-object v2, v0

    .line 1072
    .local v2, "bracketed":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v15

    if-lez v15, :cond_2

    .line 1074
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 1075
    .local v9, "keyObj":Ljava/lang/Object;
    instance-of v15, v9, Ljava/lang/String;

    if-eqz v15, :cond_2

    .line 1077
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 1079
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v15, "READ-ONLY"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1081
    sget-object v15, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->i:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1097
    .end local v2    # "bracketed":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v3    # "bracketedObj":Ljava/lang/Object;
    .end local v4    # "command":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "keyObj":Ljava/lang/Object;
    .end local v11    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .end local v12    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    :catch_1
    move-exception v7

    .line 1099
    .restart local v7    # "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    move-result-object v14

    throw v14

    .line 1046
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v14
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1101
    :catch_2
    move-exception v10

    .line 1103
    .local v10, "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    invoke-virtual {v10}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 1104
    .local v5, "errorMsg":Ljava/lang/String;
    sget-object v14, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v14, v5}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    sget-boolean v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v14, :cond_3

    .line 1106
    sget-object v14, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    invoke-static {v14, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1109
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    if-eqz v14, :cond_7

    .line 1110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v14}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a()Lwl;

    move-result-object v13

    .line 1112
    .local v13, "server":Lwl;
    if-eqz v13, :cond_7

    invoke-interface {v13}, Lwl;->a()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_7

    .line 1114
    if-eqz v5, :cond_7

    .line 1115
    const-string/jumbo v14, ","

    const-string/jumbo v15, ""

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 1116
    .local v6, "formatMessage":Ljava/lang/String;
    const-string/jumbo v14, "SELECT Unsafe Login. Please contact kefu@188.com for help"

    invoke-virtual {v6, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_7

    .line 1117
    new-instance v14, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v15, Lcom/alibaba/alimei/framework/SDKError;->NETEASE_PULL_MAIL_PREVENT_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v14, v15, v5, v10}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 1052
    .end local v5    # "errorMsg":Ljava/lang/String;
    .end local v6    # "formatMessage":Ljava/lang/String;
    .end local v10    # "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    .end local v13    # "server":Lwl;
    :cond_4
    :try_start_6
    const-string/jumbo v14, "EXAMINE"

    goto/16 :goto_1

    .line 1083
    .restart local v2    # "bracketed":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .restart local v3    # "bracketedObj":Ljava/lang/Object;
    .restart local v4    # "command":Ljava/lang/String;
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v9    # "keyObj":Ljava/lang/Object;
    .restart local v11    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .restart local v12    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_5
    const-string/jumbo v15, "READ-WRITE"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1085
    sget-object v15, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->i:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    goto/16 :goto_2

    .line 1094
    .end local v2    # "bracketed":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v3    # "bracketedObj":Ljava/lang/Object;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "keyObj":Ljava/lang/Object;
    .end local v11    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    :cond_6
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->j:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 1123
    .end local v4    # "command":Ljava/lang/String;
    .end local v12    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    .restart local v5    # "errorMsg":Ljava/lang/String;
    .restart local v10    # "me":Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
    :cond_7
    throw v10
.end method

.method private b(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$g;Luu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .locals 11
    .param p1, "searcher"    # Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$g;
    .param p2, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1795
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->l()V

    .line 1796
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1799
    .local v4, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1800
    .local v7, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$g;->a()Ljava/util/List;

    move-result-object v6

    .line 1801
    .local v6, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 1803
    .local v5, "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    iget-object v9, v5, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 1805
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string/jumbo v10, "SEARCH"

    invoke-static {v9, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1807
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-virtual {v5}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1809
    invoke-virtual {v5, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1807
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1816
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v5    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    :cond_1
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1817
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .restart local v0    # "count":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1823
    new-instance v3, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;

    iget-object v8, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9, p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;-><init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    .line 1824
    .local v3, "message":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1817
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1831
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "message":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    .end local v6    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v7    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    .line 1833
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v8, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v8, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    move-result-object v8

    throw v8

    .line 1835
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v6    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;>;"
    .restart local v7    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->f()[Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/alibaba/alimei/emailcommon/mail/Message;

    return-object v8
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1789
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "\\"

    const-string/jumbo v2, "\\\\"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\""

    const-string/jumbo v3, "\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 7
    .param p1, "folderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1185
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    const-string/jumbo v4, "STATUS %s (RECENT)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1194
    :goto_0
    return v1

    .line 1188
    :catch_0
    move-exception v0

    .line 1190
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    move-result-object v1

    throw v1

    .line 1194
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v1

    move v1, v2

    goto :goto_0
.end method

.method private j()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 965
    const-string/jumbo v2, ""

    .line 966
    .local v2, "prefixedName":Ljava/lang/String;
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->INBOX:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 970
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_0

    .line 974
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-static {v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->l(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    .line 976
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 978
    :try_start_2
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->b()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 986
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-static {v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->m(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v2

    .line 989
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 990
    return-object v2

    .line 976
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 980
    :catch_0
    move-exception v1

    .line 982
    .local v1, "ioe":Ljava/io/IOException;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, ", Unable to get IMAP prefix."

    aput-object v5, v3, v4

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, "errorMsg":Ljava/lang/String;
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    new-instance v3, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->INCOMING_CONNECTION_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v3, v4, v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private k()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2896
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2898
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->IMAP_FOLDER_NOT_OPEN_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Folder "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not open."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v0

    .line 2900
    :cond_0
    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->g()Lcom/alibaba/alimei/emailcommon/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/alimei/emailcommon/Account;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13165
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c:Ljava/lang/String;

    .line 2950
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2951
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    if-eqz v1, :cond_0

    .line 2953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    .line 14037
    iget-object v2, v2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->i:Ljava/lang/String;

    .line 2953
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2955
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Message;
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1476
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;

    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-direct {v0, v1, p1, p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;-><init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .locals 6
    .param p1, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Flag;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Flag;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "requiredFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/alimei/emailcommon/mail/Flag;>;"
    .local p3, "forbiddenFlags":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/alimei/emailcommon/mail/Flag;>;"
    const/4 v1, 0x0

    .line 1677
    new-instance v3, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e$4;

    invoke-direct {v3, p0, p2, p3, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e$4;-><init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    .line 1761
    .local v3, "searcher":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$g;
    sget-object v4, Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V

    .line 1762
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->l()V

    .line 1763
    invoke-direct {p0, v3, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->b(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$g;Luu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v2

    .line 1764
    .local v2, "messages":[Lcom/alibaba/alimei/emailcommon/mail/Message;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 1765
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1766
    .local v1, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 1767
    .local v0, "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1766
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1771
    .end local v0    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v1    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    :cond_0
    return-object v1
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1006
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->b(Lcom/alibaba/alimei/emailcommon/mail/Folder$OpenMode;)Ljava/util/List;

    .line 1008
    iget v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1010
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const-string/jumbo v1, "Did not find message count during open"

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->MESSAGE_COUNT_NOT_FOUND_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v2, "Did not find message count during open"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v0

    .line 1013
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/emailcommon/mail/Message;Lvs;Luu;)V
    .locals 33
    .param p1, "message"    # Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "part"    # Lvs;
    .param p3, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2096
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->l()V

    .line 2098
    const-wide/16 v28, -0x1

    .line 2099
    .local v28, "range":J
    const-string/jumbo v6, "Content-RANGE"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 2100
    .local v27, "ranges":[Ljava/lang/String;
    if-eqz v27, :cond_0

    move-object/from16 v0, v27

    array-length v6, v0

    const/4 v10, 0x1

    if-ne v6, v10, :cond_0

    .line 2102
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v27, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v28

    .line 2110
    :cond_0
    :goto_0
    const-wide/16 v8, -0x1

    .line 2111
    .local v8, "size":J
    const-string/jumbo v6, "Attachment_SIZE"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 2112
    .local v31, "sizes":[Ljava/lang/String;
    if-eqz v31, :cond_1

    move-object/from16 v0, v31

    array-length v6, v0

    const/4 v10, 0x1

    if-ne v6, v10, :cond_1

    .line 2114
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v31, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    .line 2122
    :cond_1
    :goto_1
    const-string/jumbo v6, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 2123
    .local v26, "parts":[Ljava/lang/String;
    if-nez v26, :cond_3

    .line 2223
    :cond_2
    return-void

    .line 2103
    .end local v8    # "size":J
    .end local v26    # "parts":[Ljava/lang/String;
    .end local v31    # "sizes":[Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 2104
    .local v17, "e":Ljava/lang/Exception;
    sget-boolean v6, Lzb;->b:Z

    if-eqz v6, :cond_0

    .line 2105
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2115
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v8    # "size":J
    .restart local v31    # "sizes":[Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 2116
    .restart local v17    # "e":Ljava/lang/Exception;
    sget-boolean v6, Lzb;->b:Z

    if-eqz v6, :cond_1

    .line 2117
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2129
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v26    # "parts":[Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    .line 2130
    .local v7, "partId":Ljava/lang/String;
    if-eqz v26, :cond_4

    move-object/from16 v0, v26

    array-length v6, v0

    if-lez v6, :cond_4

    .line 2131
    const/4 v6, 0x0

    aget-object v7, v26, v6

    .line 2134
    :cond_4
    const-wide/16 v14, 0x0

    cmp-long v6, v28, v14

    if-lez v6, :cond_6

    .line 2135
    const-string/jumbo v6, "BODY.PEEK[%s]<0.%d>"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v10, v13

    const/4 v13, 0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v10, v13

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 2142
    .local v18, "fetch":Ljava/lang/String;
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    const-string/jumbo v10, "UID FETCH %s (UID %s)"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 2143
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v18, v13, v14

    invoke-static {v10, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    .line 7837
    invoke-virtual {v6, v10, v13}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 2147
    const/16 v24, 0x0

    .line 2149
    .local v24, "messageNumber":I
    new-instance v5, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$c;

    move-object/from16 v6, p2

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$c;-><init>(Lvs;Ljava/lang/String;JLuu;)V

    .local v5, "callback":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    move/from16 v25, v24

    .line 2153
    .end local v24    # "messageNumber":I
    .local v25, "messageNumber":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v6, v5}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v30

    .line 2155
    .local v30, "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v6, :cond_c

    const/4 v6, 0x1

    .line 2156
    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string/jumbo v10, "FETCH"

    invoke-static {v6, v10}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2158
    const-string/jumbo v6, "FETCH"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    .line 2159
    .local v19, "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    const-string/jumbo v6, "UID"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 2161
    .local v32, "uid":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2163
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_5

    .line 2164
    sget-object v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Did not ask for UID "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, " for "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->m()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2166
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V

    move/from16 v24, v25

    .line 2218
    .end local v19    # "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v25    # "messageNumber":I
    .end local v32    # "uid":Ljava/lang/String;
    .restart local v24    # "messageNumber":I
    :goto_4
    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v6, :cond_2

    move/from16 v25, v24

    .end local v24    # "messageNumber":I
    .restart local v25    # "messageNumber":I
    goto :goto_3

    .line 2137
    .end local v5    # "callback":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    .end local v18    # "fetch":Ljava/lang/String;
    .end local v25    # "messageNumber":I
    .end local v30    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    :cond_6
    const-string/jumbo v6, "BODY.PEEK[%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v10, v13

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "fetch":Ljava/lang/String;
    goto/16 :goto_2

    .line 2169
    .restart local v5    # "callback":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    .restart local v19    # "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .restart local v25    # "messageNumber":I
    .restart local v30    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .restart local v32    # "uid":Ljava/lang/String;
    :cond_7
    if-eqz p3, :cond_d

    .line 2171
    add-int/lit8 v24, v25, 0x1

    .end local v25    # "messageNumber":I
    .restart local v24    # "messageNumber":I
    const/4 v6, 0x1

    :try_start_3
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    move/from16 v2, v25

    invoke-interface {v0, v1, v2, v6}, Luu;->messageStarted(Ljava/lang/String;II)V

    .line 2174
    :goto_5
    move-object/from16 v0, p1

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;

    move-object/from16 v21, v0

    .line 2176
    .local v21, "imapMessage":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;)Ljava/lang/Object;

    move-result-object v23

    .line 2178
    .local v23, "literal":Ljava/lang/Object;
    if-eqz v23, :cond_8

    .line 2180
    move-object/from16 v0, v23

    instance-of v6, v0, Lvp;

    if-eqz v6, :cond_a

    .line 2183
    check-cast v23, Lvp;

    .end local v23    # "literal":Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lvs;->a(Lvp;)V

    .line 2205
    :cond_8
    :goto_6
    if-eqz p3, :cond_9

    .line 2207
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-interface {v0, v1, v2, v6}, Luu;->messageFinished(Lcom/alibaba/alimei/emailcommon/mail/Message;II)V

    .line 2215
    .end local v19    # "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v21    # "imapMessage":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    .end local v32    # "uid":Ljava/lang/String;
    :cond_9
    :goto_7
    invoke-virtual/range {v30 .. v30}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->more()Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_4

    .line 2185
    .restart local v19    # "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .restart local v21    # "imapMessage":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    .restart local v23    # "literal":Ljava/lang/Object;
    .restart local v32    # "uid":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v23

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_b

    .line 2187
    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 2188
    .local v4, "bodyString":Ljava/lang/String;
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v11, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2190
    .local v11, "bodyStream":Ljava/io/InputStream;
    const-string/jumbo v6, "Content-Transfer-Encoding"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lvs;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 2192
    .local v20, "header":[Ljava/lang/String;
    if-eqz v20, :cond_8

    .line 2193
    const/4 v6, 0x0

    aget-object v12, v20, v6

    .local v12, "contentTransferEncoding":Ljava/lang/String;
    move-object v13, v7

    move-wide v14, v8

    move-object/from16 v16, p3

    .line 2194
    invoke-static/range {v11 .. v16}, Lvj;->a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;JLuu;)Lvp;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lvs;->a(Lvp;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    .line 2220
    .end local v4    # "bodyString":Ljava/lang/String;
    .end local v5    # "callback":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    .end local v11    # "bodyStream":Ljava/io/InputStream;
    .end local v12    # "contentTransferEncoding":Ljava/lang/String;
    .end local v19    # "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v20    # "header":[Ljava/lang/String;
    .end local v21    # "imapMessage":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    .end local v23    # "literal":Ljava/lang/Object;
    .end local v24    # "messageNumber":I
    .end local v30    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .end local v32    # "uid":Ljava/lang/String;
    :catch_2
    move-exception v22

    .line 2222
    .local v22, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v6, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    move-result-object v6

    throw v6

    .line 2199
    .end local v22    # "ioe":Ljava/io/IOException;
    .restart local v5    # "callback":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    .restart local v19    # "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .restart local v21    # "imapMessage":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    .restart local v23    # "literal":Ljava/lang/Object;
    .restart local v24    # "messageNumber":I
    .restart local v30    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .restart local v32    # "uid":Ljava/lang/String;
    :cond_b
    :try_start_4
    sget-object v6, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const-string/jumbo v10, "fetchPart Got FETCH response with bogus parameters"

    invoke-static {v6, v10}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    new-instance v6, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v10, Lcom/alibaba/alimei/framework/SDKError;->IMAP_FETCH_RESPONSE_PARAMETER_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v13, "Got FETCH response with bogus parameters"

    invoke-direct {v6, v10, v13}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v6

    .line 2212
    .end local v19    # "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v21    # "imapMessage":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    .end local v23    # "literal":Ljava/lang/Object;
    .end local v24    # "messageNumber":I
    .end local v32    # "uid":Ljava/lang/String;
    .restart local v25    # "messageNumber":I
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v24, v25

    .end local v25    # "messageNumber":I
    .restart local v24    # "messageNumber":I
    goto :goto_7

    .end local v24    # "messageNumber":I
    .restart local v19    # "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .restart local v25    # "messageNumber":I
    .restart local v32    # "uid":Ljava/lang/String;
    :cond_d
    move/from16 v24, v25

    .end local v25    # "messageNumber":I
    .restart local v24    # "messageNumber":I
    goto/16 :goto_5
.end method

.method public final a([Lcom/alibaba/alimei/emailcommon/mail/Message;)V
    .locals 14
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 2717
    .line 8652
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->l()V

    .line 8655
    :try_start_0
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_a

    aget-object v4, p1, v2

    .line 8657
    new-instance v5, Lvx;

    invoke-direct {v5}, Lvx;-><init>()V

    .line 8658
    new-instance v0, Lvy;

    invoke-direct {v0, v5}, Lvy;-><init>(Ljava/io/OutputStream;)V

    .line 8659
    invoke-virtual {v4, v0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/io/OutputStream;)V

    .line 8660
    invoke-virtual {v0}, Lvy;->flush()V

    .line 8662
    const-string/jumbo v6, "APPEND %s (%s) {%d}"

    const/4 v0, 0x3

    new-array v7, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v8, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .line 8663
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->j()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->d(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v8, 0x1

    .line 8664
    invoke-virtual {v4}, Lcom/alibaba/alimei/emailcommon/mail/Message;->r()[Lcom/alibaba/alimei/emailcommon/mail/Flag;

    move-result-object v9

    .line 8779
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 8780
    array-length v11, v9

    move v0, v1

    :goto_1
    if-ge v0, v11, :cond_4

    aget-object v12, v9, v0

    .line 8782
    sget-object v13, Lcom/alibaba/alimei/emailcommon/mail/Flag;->SEEN:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    if-ne v12, v13, :cond_1

    .line 8784
    const-string/jumbo v12, "\\Seen"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8780
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8786
    :cond_1
    sget-object v13, Lcom/alibaba/alimei/emailcommon/mail/Flag;->DELETED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    if-ne v12, v13, :cond_2

    .line 8788
    const-string/jumbo v12, "\\Deleted"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 8702
    :catch_0
    move-exception v0

    .line 8704
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0

    .line 8790
    :cond_2
    :try_start_1
    sget-object v13, Lcom/alibaba/alimei/emailcommon/mail/Flag;->ANSWERED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    if-ne v12, v13, :cond_3

    .line 8792
    const-string/jumbo v12, "\\Answered"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8794
    :cond_3
    sget-object v13, Lcom/alibaba/alimei/emailcommon/mail/Flag;->FLAGGED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    if-ne v12, v13, :cond_0

    .line 8796
    const-string/jumbo v12, "\\Flagged"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8800
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const/16 v9, 0x20

    invoke-static {v0, v9}, Lva;->a([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v0

    .line 8664
    aput-object v0, v7, v8

    const/4 v0, 0x2

    .line 9020
    iget-wide v8, v5, Lvx;->a:J

    .line 8665
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v0

    .line 8662
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8667
    sget-boolean v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 8668
    sget-object v5, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "commond : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8671
    :cond_5
    iget-object v5, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    const/4 v6, 0x0

    .line 9837
    invoke-virtual {v5, v0, v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 8675
    :cond_6
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->e()Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v0

    .line 8676
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V

    .line 8677
    iget-boolean v5, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mCommandContinuationRequested:Z

    if-eqz v5, :cond_7

    .line 8679
    new-instance v5, Lvy;

    iget-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    iget-object v6, v6, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->c:Ljava/io/OutputStream;

    invoke-direct {v5, v6}, Lvy;-><init>(Ljava/io/OutputStream;)V

    .line 8681
    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/emailcommon/mail/Message;->a(Ljava/io/OutputStream;)V

    .line 8682
    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lvy;->write(I)V

    .line 8683
    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lvy;->write(I)V

    .line 8684
    invoke-virtual {v5}, Lvy;->flush()V

    .line 8686
    :cond_7
    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->more()Z

    move-result v5

    if-nez v5, :cond_7

    .line 8688
    iget-object v0, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 8690
    invoke-direct {p0, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v0

    .line 8691
    sget-boolean v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 8692
    sget-object v5, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Got UID "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for message for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8694
    :cond_8
    if-eqz v0, :cond_9

    .line 8696
    invoke-virtual {v4, v0}, Lcom/alibaba/alimei/emailcommon/mail/Message;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8655
    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 8705
    :cond_a
    return-void
.end method

.method public final a([Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;Luu;)V
    .locals 1
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "fp"    # Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;
    .param p3, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2089
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;Luu;)V

    .line 2090
    return-void
.end method

.method public final a([Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/emailcommon/mail/Folder;)V
    .locals 8
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "folder"    # Lcom/alibaba/alimei/emailcommon/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 1347
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1351
    :goto_0
    return-void

    .line 5294
    :cond_0
    instance-of v0, p2, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    if-nez v0, :cond_1

    .line 5296
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const-string/jumbo v1, "ImapFolder.copyMessages passed non-ImapFolder"

    invoke-static {v0, v1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5297
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->NOT_IMAP_FOLDER_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v2, "ImapFolder.copyMessages passed non-ImapFolder"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v0

    .line 5300
    :cond_1
    array-length v0, p1

    if-eqz v0, :cond_5

    move-object v0, p2

    .line 5303
    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    .line 5304
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->l()V

    .line 5305
    array-length v1, p1

    new-array v3, v1, [Ljava/lang/String;

    .line 5306
    array-length v4, p1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_2

    .line 5308
    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 5306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5312
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-direct {v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->d(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5314
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 5319
    sget-boolean v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 5320
    sget-object v4, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "IMAPMessage.copyMessages: attempting to create remote \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' folder for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5321
    :cond_3
    sget-object v4, Lcom/alibaba/alimei/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/alibaba/alimei/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a()Z

    .line 5324
    :cond_4
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5326
    const-string/jumbo v0, "UID COPY %s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x2c

    .line 5327
    invoke-static {v3, v6}, Lva;->a([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v1, v4, v3

    .line 5326
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->b(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    :cond_5
    new-array v0, v7, [Lcom/alibaba/alimei/emailcommon/mail/Flag;

    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/Flag;->DELETED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0, v7}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;[Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    goto/16 :goto_0

    .line 5332
    :cond_6
    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "IMAPMessage.copyMessages: remote destination folder "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/alibaba/alimei/emailcommon/mail/Folder;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " does not exist and could not be created for "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 5333
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 5332
    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5334
    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5335
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->REMOTE_FOLDER_NOT_CREATED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Z)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5338
    :catch_0
    move-exception v0

    .line 5340
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
.end method

.method public final a([Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;)V
    .locals 7
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "trashFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1356
    array-length v3, p1

    if-nez v3, :cond_0

    .line 1383
    :goto_0
    return-void

    .line 1359
    :cond_0
    if-eqz p2, :cond_1

    .line 6165
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c:Ljava/lang/String;

    .line 1359
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1361
    :cond_1
    new-array v3, v6, [Lcom/alibaba/alimei/emailcommon/mail/Flag;

    sget-object v4, Lcom/alibaba/alimei/emailcommon/mail/Flag;->DELETED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    aput-object v4, v3, v5

    invoke-virtual {p0, p1, v3, v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;[Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V

    goto :goto_0

    .line 6945
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->k:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .line 1365
    invoke-virtual {v3, p2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a(Ljava/lang/String;)Lcom/alibaba/alimei/emailcommon/mail/Folder;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    .line 1366
    .local v1, "remoteTrashFolder":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-direct {v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->d(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1368
    .local v2, "remoteTrashName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1373
    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 1374
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "IMAPMessage.delete: attempting to create remote \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' folder for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    :cond_3
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/alibaba/alimei/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a()Z

    .line 1378
    :cond_4
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1380
    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v3, :cond_5

    .line 1381
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "IMAPMessage.delete: copying remote "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " messages to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a([Lcom/alibaba/alimei/emailcommon/mail/Message;Lcom/alibaba/alimei/emailcommon/mail/Folder;)V

    goto/16 :goto_0

    .line 1387
    :cond_6
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "IMAPMessage.delete: remote Trash folder "

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, " does not exist and could not be created for "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1388
    .local v0, "errorMsg":Ljava/lang/String;
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v3, v0}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    new-instance v3, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v4, Lcom/alibaba/alimei/framework/SDKError;->TRASH_FOLDER_NOT_CREATEDED_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v3, v4, v0, v6}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;Z)V

    throw v3
.end method

.method public final a([Lcom/alibaba/alimei/emailcommon/mail/Message;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;Luu;)V
    .locals 31
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "fp"    # Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;
    .param p4, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1901
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v3, v0

    if-nez v3, :cond_1

    .line 2077
    :cond_0
    return-void

    .line 1905
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->l()V

    .line 1906
    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1907
    .local v29, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 1908
    .local v22, "messageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    move-object/from16 v0, p1

    array-length v12, v0

    .local v12, "count":I
    :goto_0
    if-ge v15, v12, :cond_2

    .line 1911
    aget-object v3, p1, v15

    invoke-virtual {v3}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v27

    .line 1912
    .local v27, "uid":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1913
    aget-object v3, p1, v15

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1908
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1922
    .end local v27    # "uid":Ljava/lang/String;
    :cond_2
    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1923
    .local v13, "fetchFields":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const-string/jumbo v3, "UID"

    invoke-virtual {v13, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1924
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->EML:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1926
    const-string/jumbo v3, "FLAGS"

    invoke-virtual {v13, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1928
    :cond_3
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1930
    const-string/jumbo v3, "INTERNALDATE"

    invoke-virtual {v13, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1931
    const-string/jumbo v3, "RFC822.SIZE"

    invoke-virtual {v13, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1932
    const-string/jumbo v3, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc reply-to Message-ID References Received alimei)]"

    invoke-virtual {v13, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1935
    :cond_4
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1937
    const-string/jumbo v3, "BODYSTRUCTURE"

    invoke-virtual {v13, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1939
    :cond_5
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1941
    const-string/jumbo v3, "BODY.PEEK[]<0.%d>"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a:Lcom/alibaba/alimei/emailcommon/Account;

    invoke-virtual {v7}, Lcom/alibaba/alimei/emailcommon/Account;->n()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1943
    :cond_6
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1945
    const-string/jumbo v3, "BODY.PEEK[1]"

    invoke-virtual {v13, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1947
    :cond_7
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->EML:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1950
    const-string/jumbo v3, "BODY.PEEK[]"

    invoke-virtual {v13, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1955
    :cond_8
    const/16 v30, 0x0

    .local v30, "windowStart":I
    :goto_1
    move-object/from16 v0, p1

    array-length v3, v0

    move/from16 v0, v30

    if-gt v0, v3, :cond_0

    .line 1956
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->g()I

    move-result v3

    add-int v3, v3, v30

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v28

    .line 1961
    .local v28, "uidWindow":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->EML:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1962
    const-string/jumbo v3, "UID FETCH %s BODY.PEEK[]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1963
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x2c

    invoke-static {v7, v8}, Lva;->a([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1962
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1973
    .local v11, "command":Ljava/lang/String;
    :goto_2
    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v3, :cond_9

    .line 1974
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "command : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v11, v5}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1978
    const/16 v23, 0x0

    .line 1980
    .local v23, "messageNumber":I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1983
    .local v21, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    const/4 v4, 0x0

    .line 1984
    .local v4, "callback":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1985
    :cond_a
    new-instance v4, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$a;

    .end local v4    # "callback":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$a;-><init>(Ljava/util/HashMap;)V

    .restart local v4    # "callback":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    move/from16 v24, v23

    .line 1991
    .end local v23    # "messageNumber":I
    .local v24, "messageNumber":I
    :goto_3
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->EML:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1992
    const/4 v3, 0x0

    aget-object v19, p1, v3

    .line 1993
    .local v19, "m":Lcom/alibaba/alimei/emailcommon/mail/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    const/4 v5, 0x1

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a:Lcom/alibaba/alimei/emailcommon/Account;

    move-object/from16 v6, p2

    invoke-virtual/range {v3 .. v8}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/emailcommon/Account;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v26

    .line 1994
    .local v26, "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    const/4 v3, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v3, v5}, Luu;->messageFinished(Lcom/alibaba/alimei/emailcommon/mail/Message;II)V

    move/from16 v23, v24

    .line 2064
    .end local v19    # "m":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v24    # "messageNumber":I
    .restart local v23    # "messageNumber":I
    :goto_4
    if-eqz v26, :cond_b

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v3, :cond_18

    .line 2066
    :cond_b
    if-eqz p4, :cond_c

    .line 2067
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v3

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-interface {v0, v1, v2, v3}, Luu;->messagesFinished(Ljava/util/List;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1955
    :cond_c
    invoke-static {}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->g()I

    move-result v3

    add-int v30, v30, v3

    goto/16 :goto_1

    .line 1966
    .end local v4    # "callback":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    .end local v11    # "command":Ljava/lang/String;
    .end local v21    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    .end local v23    # "messageNumber":I
    .end local v26    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    :cond_d
    :try_start_1
    const-string/jumbo v3, "UID FETCH %s (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1967
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x2c

    invoke-static {v7, v8}, Lva;->a([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 1968
    invoke-virtual {v13}, Ljava/util/LinkedHashSet;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x20

    invoke-static {v7, v8}, Lva;->a([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1966
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "command":Ljava/lang/String;
    goto/16 :goto_2

    .line 1986
    .restart local v4    # "callback":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    .restart local v21    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    .restart local v23    # "messageNumber":I
    :cond_e
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;->EML:Lcom/alibaba/alimei/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1987
    new-instance v4, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$b;

    .end local v4    # "callback":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    const/4 v3, 0x0

    invoke-direct {v4, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$b;-><init>(B)V

    .restart local v4    # "callback":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    move/from16 v24, v23

    .end local v23    # "messageNumber":I
    .restart local v24    # "messageNumber":I
    goto/16 :goto_3

    .line 1996
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v26

    .line 1998
    .restart local v26    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v3, :cond_17

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v5, "FETCH"

    invoke-static {v3, v5}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2000
    const-string/jumbo v3, "FETCH"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;

    .line 2001
    .local v14, "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    const-string/jumbo v3, "UID"

    invoke-virtual {v14, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 2002
    .restart local v27    # "uid":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->getNumber(I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v25

    .line 2003
    .local v25, "msgSeq":I
    if-eqz v27, :cond_10

    .line 2005
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->g:Ljava/util/Map;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v3, :cond_10

    .line 2007
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Stored uid \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\' for msgSeq "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " into map "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2017
    :cond_10
    :goto_5
    :try_start_3
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/alibaba/alimei/emailcommon/mail/Message;

    .line 2018
    .local v20, "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    if-nez v20, :cond_13

    .line 2019
    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v3, :cond_11

    .line 2020
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Do not have message in messageMap for UID "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2022
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V

    move/from16 v23, v24

    .line 2023
    .end local v24    # "messageNumber":I
    .restart local v23    # "messageNumber":I
    goto/16 :goto_4

    .line 2011
    .end local v20    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v23    # "messageNumber":I
    .restart local v24    # "messageNumber":I
    :catch_0
    move-exception v3

    sget-boolean v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v3, :cond_10

    .line 2012
    sget-object v3, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Unable to store uid \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' for msgSeq "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 2070
    .end local v4    # "callback":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    .end local v11    # "command":Ljava/lang/String;
    .end local v14    # "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v21    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    .end local v24    # "messageNumber":I
    .end local v25    # "msgSeq":I
    .end local v26    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .end local v27    # "uid":Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 2071
    .local v17, "ioe":Ljava/io/IOException;
    sget-boolean v3, Lzb;->b:Z

    if-eqz v3, :cond_12

    .line 2072
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    .line 2074
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3

    .line 2025
    .end local v17    # "ioe":Ljava/io/IOException;
    .restart local v4    # "callback":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$a;
    .restart local v11    # "command":Ljava/lang/String;
    .restart local v14    # "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .restart local v20    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .restart local v21    # "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/emailcommon/mail/Message;>;"
    .restart local v24    # "messageNumber":I
    .restart local v25    # "msgSeq":I
    .restart local v26    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .restart local v27    # "uid":Ljava/lang/String;
    :cond_13
    if-eqz p4, :cond_19

    .line 2026
    add-int/lit8 v23, v24, 0x1

    .end local v24    # "messageNumber":I
    .restart local v23    # "messageNumber":I
    :try_start_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v3

    move-object/from16 v0, p4

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-interface {v0, v1, v2, v3}, Luu;->messageStarted(Ljava/lang/String;II)V

    .line 2029
    :goto_6
    move-object/from16 v0, v20

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;

    move-object/from16 v16, v0

    .line 2031
    .local v16, "imapMessage":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;)Ljava/lang/Object;

    move-result-object v18

    .line 2033
    .local v18, "literal":Ljava/lang/Object;
    if-eqz v18, :cond_14

    .line 2034
    move-object/from16 v0, v18

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_16

    .line 2036
    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 2037
    .local v10, "bodyString":Ljava/lang/String;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2038
    .local v9, "bodyStream":Ljava/io/InputStream;
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;->a(Ljava/io/InputStream;)V

    .line 2040
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;)Ljava/lang/Object;

    .line 2052
    .end local v9    # "bodyStream":Ljava/io/InputStream;
    .end local v10    # "bodyString":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2060
    .end local v14    # "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v16    # "imapMessage":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    .end local v18    # "literal":Ljava/lang/Object;
    .end local v20    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v25    # "msgSeq":I
    .end local v27    # "uid":Ljava/lang/String;
    :cond_15
    :goto_7
    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;->more()Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_4

    .line 2042
    .restart local v14    # "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .restart local v16    # "imapMessage":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    .restart local v18    # "literal":Ljava/lang/Object;
    .restart local v20    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .restart local v25    # "msgSeq":I
    .restart local v27    # "uid":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v18

    instance-of v3, v0, Ljava/lang/Integer;

    if-nez v3, :cond_14

    .line 2047
    sget-object v3, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const-string/jumbo v5, "Got FETCH response with bogus parameters"

    invoke-static {v3, v5}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    new-instance v3, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v5, Lcom/alibaba/alimei/framework/SDKError;->IMAP_FETCH_RESPONSE_PARAMETER_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    const-string/jumbo v6, "Got FETCH response with bogus parameters"

    invoke-direct {v3, v5, v6}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v3

    .line 2057
    .end local v14    # "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .end local v16    # "imapMessage":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$f;
    .end local v18    # "literal":Ljava/lang/Object;
    .end local v20    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .end local v23    # "messageNumber":I
    .end local v25    # "msgSeq":I
    .end local v27    # "uid":Ljava/lang/String;
    .restart local v24    # "messageNumber":I
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move/from16 v23, v24

    .end local v24    # "messageNumber":I
    .restart local v23    # "messageNumber":I
    goto :goto_7

    .end local v26    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    :cond_18
    move/from16 v24, v23

    .end local v23    # "messageNumber":I
    .restart local v24    # "messageNumber":I
    goto/16 :goto_3

    .restart local v14    # "fetchList":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapList;
    .restart local v20    # "message":Lcom/alibaba/alimei/emailcommon/mail/Message;
    .restart local v25    # "msgSeq":I
    .restart local v26    # "response":Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;
    .restart local v27    # "uid":Ljava/lang/String;
    :cond_19
    move/from16 v23, v24

    .end local v24    # "messageNumber":I
    .restart local v23    # "messageNumber":I
    goto :goto_6
.end method

.method public final a([Lcom/alibaba/alimei/emailcommon/mail/Message;[Lcom/alibaba/alimei/emailcommon/mail/Flag;Z)V
    .locals 11
    .param p1, "messages"    # [Lcom/alibaba/alimei/emailcommon/mail/Message;
    .param p2, "flags"    # [Lcom/alibaba/alimei/emailcommon/mail/Flag;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 2855
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->l()V

    .line 2856
    array-length v7, p1

    new-array v5, v7, [Ljava/lang/String;

    .line 2857
    .local v5, "uids":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v0, p1

    .local v0, "count":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 2859
    aget-object v7, p1, v3

    invoke-virtual {v7}, Lcom/alibaba/alimei/emailcommon/mail/Message;->o()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    .line 2857
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2861
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2862
    .local v2, "flagNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-gtz v6, :cond_5

    aget-object v1, p2, v6

    .line 2864
    .local v1, "flag":Lcom/alibaba/alimei/emailcommon/mail/Flag;
    sget-object v7, Lcom/alibaba/alimei/emailcommon/mail/Flag;->SEEN:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    if-ne v1, v7, :cond_2

    .line 2866
    const-string/jumbo v7, "\\Seen"

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2862
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2868
    :cond_2
    sget-object v7, Lcom/alibaba/alimei/emailcommon/mail/Flag;->DELETED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    if-ne v1, v7, :cond_3

    .line 2870
    const-string/jumbo v7, "\\Deleted"

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2872
    :cond_3
    sget-object v7, Lcom/alibaba/alimei/emailcommon/mail/Flag;->ANSWERED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    if-ne v1, v7, :cond_4

    .line 2874
    const-string/jumbo v7, "\\Answered"

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2876
    :cond_4
    sget-object v7, Lcom/alibaba/alimei/emailcommon/mail/Flag;->FLAGGED:Lcom/alibaba/alimei/emailcommon/mail/Flag;

    if-ne v1, v7, :cond_1

    .line 2878
    const-string/jumbo v7, "\\Flagged"

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2883
    .end local v1    # "flag":Lcom/alibaba/alimei/emailcommon/mail/Flag;
    :cond_5
    :try_start_0
    const-string/jumbo v7, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v9, 0x2c

    .line 2884
    invoke-static {v5, v9}, Lva;->a([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v9, 0x1

    if-eqz p3, :cond_6

    const-string/jumbo v6, "+"

    :goto_3
    aput-object v6, v8, v9

    const/4 v6, 0x2

    .line 2886
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    const/16 v10, 0x20

    invoke-static {v9, v10}, Lva;->a([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    .line 2883
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->b(Ljava/lang/String;)Ljava/util/List;

    .line 2891
    return-void

    .line 2884
    :cond_6
    const-string/jumbo v6, "-"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 2888
    :catch_0
    move-exception v4

    .line 2890
    .local v4, "ioe":Ljava/io/IOException;
    iget-object v6, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v6, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    move-result-object v6

    throw v6
.end method

.method public final a()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1255
    const/4 v0, 0x0

    .line 1258
    .local v0, "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1260
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_1

    .line 1262
    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-static {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->l(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 1268
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1270
    :try_start_2
    const-string/jumbo v4, "CREATE %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .line 1271
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->j()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->d(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1270
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Ljava/lang/String;)Ljava/util/List;
    :try_end_2
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1284
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_0

    .line 1286
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;)V

    :cond_0
    :goto_1
    return v2

    .line 1266
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    goto :goto_0

    .line 1268
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1284
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    if-nez v2, :cond_2

    .line 1286
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;)V

    :cond_2
    move v2, v3

    goto :goto_1

    .line 1278
    :catch_1
    move-exception v1

    .line 1280
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_5
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v2, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    move-result-object v2

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1284
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_3

    .line 1286
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;)V

    :cond_3
    throw v2
.end method

.method public final a(IIILuu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .locals 2
    .param p1, "syncType"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1500
    const/4 v0, 0x0

    .line 7514
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e$2;-><init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;III)V

    .line 7539
    invoke-direct {p0, v1, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$g;Luu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v0

    .line 1500
    return-object v0
.end method

.method public final a(IILuu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .locals 2
    .param p1, "startUid"    # I
    .param p2, "endUid"    # I
    .param p3, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1482
    new-instance v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e$1;-><init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;II)V

    .line 1494
    .local v0, "searcher":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$g;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$g;Luu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v1

    return-object v1
.end method

.method protected final b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 995
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4321
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;

    .line 4323
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapResponseParser$ImapResponse;)V

    goto :goto_0

    .line 995
    :cond_0
    return-object v1
.end method

.method public final b()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1201
    iget-boolean v4, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->j:Z

    if-eqz v4, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return v2

    .line 1210
    :cond_1
    const/4 v0, 0x0

    .line 1213
    .local v0, "connection":Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1215
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_2

    .line 1217
    iget-object v4, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-static {v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->l(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;)Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 1223
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1225
    :try_start_2
    const-string/jumbo v4, "STATUS %s (UIDVALIDITY)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    .line 1226
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->j()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->d(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1225
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;->a(Ljava/lang/String;)Ljava/util/List;

    .line 1227
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->j:Z
    :try_end_2
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1240
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_0

    .line 1242
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;)V

    goto :goto_0

    .line 1221
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    goto :goto_1

    .line 1223
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Lcom/alibaba/alimei/emailcommon/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1240
    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    if-nez v2, :cond_3

    .line 1242
    iget-object v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;)V

    :cond_3
    move v2, v3

    goto :goto_0

    .line 1234
    :catch_1
    move-exception v1

    .line 1236
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_5
    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    move-result-object v2

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1240
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_4

    .line 1242
    iget-object v3, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;)V

    :cond_4
    throw v2
.end method

.method public final b(IILuu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "listener"    # Luu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1552
    const/4 v0, 0x0

    .line 7559
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-ge p2, p1, :cond_1

    .line 7561
    :cond_0
    const-string/jumbo v0, "Invalid message set %d %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7562
    sget-object v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7563
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->INVALID_MESSAGE_SET_ERROR:Lcom/alibaba/alimei/framework/SDKError;

    invoke-direct {v1, v2, v0}, Lcom/alibaba/alimei/emailcommon/mail/MessagingException;-><init>(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/String;)V

    throw v1

    .line 7566
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e$3;-><init>(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;II)V

    .line 7578
    invoke-direct {p0, v1, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$g;Luu;)[Lcom/alibaba/alimei/emailcommon/mail/Message;

    move-result-object v0

    .line 1552
    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 1398
    iget v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d:I

    return v0
.end method

.method public final d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/emailcommon/mail/MessagingException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2766
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->l()V

    .line 2769
    :try_start_0
    const-string/jumbo v1, "EXPUNGE"

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->b(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2774
    return-void

    .line 2771
    :catch_0
    move-exception v0

    .line 2773
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/alibaba/alimei/emailcommon/mail/MessagingException;

    move-result-object v1

    throw v1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2930
    instance-of v0, p1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    if-eqz v0, :cond_0

    .line 2932
    check-cast p1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;

    .line 10165
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c:Ljava/lang/String;

    .line 11165
    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c:Ljava/lang/String;

    .line 2932
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2934
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 2940
    .line 12165
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->c:Ljava/lang/String;

    .line 2940
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, -0x1

    .line 1143
    sget-boolean v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1144
    sget-object v0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->b:Ljava/lang/String;

    const-string/jumbo v1, " folder close "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    :cond_0
    iget v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d:I

    if-eq v0, v2, :cond_1

    .line 1148
    iput v2, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->d:I

    .line 1150
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->k()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1159
    :goto_0
    return-void

    .line 1155
    :cond_2
    monitor-enter p0

    .line 1157
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->h:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;

    iget-object v1, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore;->a(Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;)V

    .line 1158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$e;->f:Lcom/alibaba/alimei/emailcommon/mail/store/ImapStore$ImapConnection;

    .line 1159
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.class public abstract Lcom/alibaba/doraemon/impl/request/RequestClient;
.super Ljava/lang/Object;
.source "RequestClient.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/Request;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;
    }
.end annotation


# static fields
.field private static final AUTH_BIZENTITY:Ljava/lang/String; = "auth_bizEntity"

.field private static final AUTH_BIZTYPE:Ljava/lang/String; = "auth_bizType"

.field private static final HTTP_HEADER_KEY_COOKIE:Ljava/lang/String; = "Cookie"

.field private static final LWP_COOKIE_KEY:Ljava/lang/String; = "dd_sid"

.field private static final TAG:Ljava/lang/String; = "RequestClient"

.field static sLwpRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/impl/request/VolleyRequest;",
            ">;"
        }
    .end annotation
.end field

.field static sStatisticsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/doraemon/request/RequestStatisticsListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBinded2SomeReq:Z

.field private mDeliverThread:Lcom/alibaba/doraemon/threadpool/Thread;

.field private mGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancel:Z

.field private mIsHugeDownload:Z

.field private mIsPaused:Z

.field private mIsReadCacheOnly:Z

.field private mPausedGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPerfTag:Ljava/lang/String;

.field private mPrority:Lcom/alibaba/doraemon/Priority;

.field private mProtocol:Ljava/lang/String;

.field private mReceiver:Lcom/alibaba/doraemon/request/ResponseReceiver;

.field private mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

.field protected mResponse:Lcom/alibaba/doraemon/request/Response;

.field private mRunThread:Lcom/alibaba/doraemon/threadpool/Thread;

.field private mStartThread:Lcom/alibaba/doraemon/threadpool/Thread;

.field private mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

.field private final mTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTriggerThread:Lcom/alibaba/doraemon/threadpool/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mTags:Landroid/util/SparseArray;

    .line 57
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Composing:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    .line 60
    iput-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    .line 63
    iput-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    .line 66
    iput-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mReceiver:Lcom/alibaba/doraemon/request/ResponseReceiver;

    .line 70
    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsPaused:Z

    .line 72
    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mBinded2SomeReq:Z

    .line 74
    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsHugeDownload:Z

    .line 75
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mPerfTag:Ljava/lang/String;

    .line 84
    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsReadCacheOnly:Z

    .line 86
    const-string/jumbo v0, "http"

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mProtocol:Ljava/lang/String;

    .line 440
    new-instance v0, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-direct {v0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    .line 441
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0, p0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setRequest(Lcom/alibaba/doraemon/request/Request;)V

    .line 442
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mPerfTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setTag(Ljava/lang/Object;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 443
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestClient$6;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/request/RequestClient$6;-><init>(Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setErrorListener(Lcom/alibaba/doraemon/impl/request/VolleyResponse$ErrorListener;)V

    .line 467
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestClient$7;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/request/RequestClient$7;-><init>(Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setListener(Lcom/alibaba/doraemon/impl/request/VolleyResponse$Listener;)V

    .line 490
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/impl/request/InputStreamRequest;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/doraemon/impl/request/RequestClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/RequestClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mProtocol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;Lcom/alibaba/doraemon/request/Request;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/RequestClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/doraemon/request/Request;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getAuthMediaUrl(Ljava/lang/String;Lcom/alibaba/doraemon/request/Request;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/RequestClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/request/RequestClient;->handleNonLWPSync(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/RequestClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/request/RequestClient;->handleNonLWP(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/doraemon/impl/request/RequestClient;)Lcom/alibaba/doraemon/request/ResponseReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/RequestClient;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mReceiver:Lcom/alibaba/doraemon/request/ResponseReceiver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alibaba/doraemon/impl/request/RequestClient;Lcom/alibaba/doraemon/request/Response;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/doraemon/impl/request/RequestClient;
    .param p1, "x1"    # Lcom/alibaba/doraemon/request/Response;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/doraemon/impl/request/RequestClient;->sendResponse(Lcom/alibaba/doraemon/request/Response;)V

    return-void
.end method

.method private getAuthMediaUrl(Ljava/lang/String;Lcom/alibaba/doraemon/request/Request;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/alibaba/doraemon/request/Request;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 883
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 911
    .end local p1    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 887
    .restart local p1    # "url":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v5}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->getParams()Ljava/util/Map;

    move-result-object v4

    .line 888
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 892
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 894
    .local v3, "builder":Landroid/net/Uri$Builder;
    const/4 v0, 0x0

    .line 895
    .local v0, "appendAuthInfo":Z
    const-string/jumbo v5, "auth_bizType"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 896
    .local v2, "bizType":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 897
    const-string/jumbo v5, "auth_bizType"

    invoke-virtual {v3, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 898
    const/4 v0, 0x1

    .line 901
    :cond_2
    const-string/jumbo v5, "auth_bizEntity"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 902
    .local v1, "bizEntity":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 903
    const-string/jumbo v5, "auth_bizEntity"

    invoke-virtual {v3, v5, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 904
    const/4 v0, 0x1

    .line 907
    :cond_3
    if-eqz v0, :cond_4

    .line 908
    invoke-interface {p2, p1}, Lcom/alibaba/doraemon/request/Request;->setNotifyAuthUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 911
    :cond_4
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private declared-synchronized handleHttpRequest()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 273
    monitor-enter p0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "handleNonLWP, http "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 275
    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsHugeDownload:Z

    if-eqz v1, :cond_1

    .line 276
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getHugeHttpDownloadThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 280
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    :goto_0
    if-eqz v0, :cond_2

    .line 281
    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRunThread:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 282
    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestClient$3;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/request/RequestClient$3;-><init>(Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_0
    monitor-exit p0

    return-void

    .line 278
    .end local v0    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    :cond_1
    :try_start_1
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getHttpRequestThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .restart local v0    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    goto :goto_0

    .line 290
    :cond_2
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 291
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Doraemon request get Http Launch thread error !!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    .end local v0    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private handleNonLWP(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 253
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "handleNonLWP "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 254
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v0

    .line 255
    .local v0, "volley":Lcom/alibaba/doraemon/impl/request/Volley;
    const-string/jumbo v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    const-string/jumbo v1, "http"

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mProtocol:Ljava/lang/String;

    .line 257
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->handleHttpRequest()V

    .line 270
    :goto_0
    return-void

    .line 258
    :cond_1
    const-string/jumbo v1, "file://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 259
    :cond_2
    const-string/jumbo v1, "file"

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mProtocol:Ljava/lang/String;

    .line 260
    new-instance v1, Lcom/alibaba/doraemon/impl/request/LocalFileDispatcher;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->delivery()Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/doraemon/impl/request/LocalFileDispatcher;-><init>(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/ResponseDelivery;)V

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/request/LocalFileDispatcher;->run()V

    goto :goto_0

    .line 261
    :cond_3
    const-string/jumbo v1, "cache:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 262
    const-string/jumbo v1, "cache"

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mProtocol:Ljava/lang/String;

    .line 263
    new-instance v1, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->delivery()Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;-><init>(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/ResponseDelivery;)V

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/request/CacheFileDispatcher;->run()V

    goto :goto_0

    .line 264
    :cond_4
    const-string/jumbo v1, "data:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 265
    const-string/jumbo v1, "data"

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mProtocol:Ljava/lang/String;

    .line 266
    new-instance v1, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->delivery()Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;-><init>(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/ResponseDelivery;)V

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/request/DataUriDispatcher;->run()V

    goto :goto_0

    .line 268
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->delivery()Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    new-instance v3, Lcom/alibaba/doraemon/impl/request/VolleyError;

    const-string/jumbo v4, "scheme is not support !"

    invoke-direct {v3, v4}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V

    goto :goto_0
.end method

.method private declared-synchronized handleNonLWPSync(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsCancel:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsPaused:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mBinded2SomeReq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 229
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsHugeDownload:Z

    if-eqz v1, :cond_3

    .line 230
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getHugeDownloadThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 235
    .local v0, "launchThread":Lcom/alibaba/doraemon/threadpool/Thread;
    :goto_1
    if-eqz v0, :cond_4

    .line 236
    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRunThread:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 237
    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestClient$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/doraemon/impl/request/RequestClient$2;-><init>(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 249
    :cond_2
    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Started:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    .end local v0    # "launchThread":Lcom/alibaba/doraemon/threadpool/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 232
    :cond_3
    :try_start_2
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/RequestThreadFactory;->getRequestThread(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .restart local v0    # "launchThread":Lcom/alibaba/doraemon/threadpool/Thread;
    goto :goto_1

    .line 244
    :cond_4
    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 245
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Doraemon request get launch thread error !!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static notifyHitCacheFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "perfTag"    # Ljava/lang/String;

    .prologue
    .line 970
    sget-object v2, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    monitor-enter v2

    .line 971
    :try_start_0
    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 972
    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/RequestStatisticsListener;

    .line 973
    .local v0, "listener":Lcom/alibaba/doraemon/request/RequestStatisticsListener;
    invoke-interface {v0, p0, p1}, Lcom/alibaba/doraemon/request/RequestStatisticsListener;->onHitCacheFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 976
    .end local v0    # "listener":Lcom/alibaba/doraemon/request/RequestStatisticsListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static notifyHitCacheSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "perfTag"    # Ljava/lang/String;

    .prologue
    .line 959
    sget-object v2, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    monitor-enter v2

    .line 960
    :try_start_0
    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 961
    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/RequestStatisticsListener;

    .line 962
    .local v0, "listener":Lcom/alibaba/doraemon/request/RequestStatisticsListener;
    invoke-interface {v0, p0, p1}, Lcom/alibaba/doraemon/request/RequestStatisticsListener;->onHitCacheSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 965
    .end local v0    # "listener":Lcom/alibaba/doraemon/request/RequestStatisticsListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static notifyRequestStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "perfTag"    # Ljava/lang/String;

    .prologue
    .line 980
    sget-object v2, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    monitor-enter v2

    .line 981
    :try_start_0
    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 982
    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/RequestStatisticsListener;

    .line 983
    .local v0, "listener":Lcom/alibaba/doraemon/request/RequestStatisticsListener;
    invoke-interface {v0, p0, p1}, Lcom/alibaba/doraemon/request/RequestStatisticsListener;->onRequestStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 986
    .end local v0    # "listener":Lcom/alibaba/doraemon/request/RequestStatisticsListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static notifyResultFailed(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "httpErrCode"    # J
    .param p2, "duration"    # J
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "perfTag"    # Ljava/lang/String;
    .param p6, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 948
    sget-object v9, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    monitor-enter v9

    .line 949
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 950
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/request/RequestStatisticsListener;

    .local v1, "listener":Lcom/alibaba/doraemon/request/RequestStatisticsListener;
    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    .line 951
    invoke-interface/range {v1 .. v8}, Lcom/alibaba/doraemon/request/RequestStatisticsListener;->onRequestFailed(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    invoke-interface {v1, p4, p5}, Lcom/alibaba/doraemon/request/RequestStatisticsListener;->onRequestEnd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 955
    .end local v1    # "listener":Lcom/alibaba/doraemon/request/RequestStatisticsListener;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static notifyResultSuccess(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "size"    # J
    .param p2, "duration"    # J
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "perfTag"    # Ljava/lang/String;

    .prologue
    .line 936
    sget-object v8, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    monitor-enter v8

    .line 937
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 938
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/request/RequestStatisticsListener;

    .local v1, "listener":Lcom/alibaba/doraemon/request/RequestStatisticsListener;
    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    .line 939
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/doraemon/request/RequestStatisticsListener;->onRequestSuccess(JJLjava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-interface {v1, p4, p5}, Lcom/alibaba/doraemon/request/RequestStatisticsListener;->onRequestEnd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 943
    .end local v1    # "listener":Lcom/alibaba/doraemon/request/RequestStatisticsListener;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static notifyTrafficState(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "txDataLen"    # J
    .param p2, "rxDataLen"    # J
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "perfTag"    # Ljava/lang/String;

    .prologue
    .line 925
    sget-object v8, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    monitor-enter v8

    .line 926
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 927
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/request/RequestStatisticsListener;

    .local v1, "listener":Lcom/alibaba/doraemon/request/RequestStatisticsListener;
    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    .line 928
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/doraemon/request/RequestStatisticsListener;->onRequestTraffic(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 931
    .end local v1    # "listener":Lcom/alibaba/doraemon/request/RequestStatisticsListener;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private sendResponse(Lcom/alibaba/doraemon/request/Response;)V
    .locals 4
    .param p1, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 493
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Request sendResponse url="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 494
    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->RequestFinsh:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    iput-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    .line 495
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    .line 496
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v0

    .line 497
    .local v0, "instance":Lcom/alibaba/doraemon/impl/request/Volley;
    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->queue()Lcom/alibaba/doraemon/impl/request/RequestQueue;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->onRequestFinished(Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    .line 498
    return-void
.end method


# virtual methods
.method public addReqest2Group(Ljava/lang/String;)V
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->isDead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Composing:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    if-eq v0, v1, :cond_0

    .line 635
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->queue()Lcom/alibaba/doraemon/impl/request/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->addRequest2Group(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bind2Request(Z)V
    .locals 0
    .param p1, "binded"    # Z

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mBinded2SomeReq:Z

    .line 435
    if-eqz p1, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->resume()V

    .line 437
    :cond_0
    return-void
.end method

.method public declared-synchronized cancel(Z)Z
    .locals 4
    .param p1, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 503
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Request cancel url="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 504
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsCancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 528
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 506
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsCancel:Z

    .line 507
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mStartThread:Lcom/alibaba/doraemon/threadpool/Thread;

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mStartThread:Lcom/alibaba/doraemon/threadpool/Thread;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->cancel(Z)V

    .line 510
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mTriggerThread:Lcom/alibaba/doraemon/threadpool/Thread;

    if-eqz v0, :cond_3

    .line 511
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mTriggerThread:Lcom/alibaba/doraemon/threadpool/Thread;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->cancel(Z)V

    .line 513
    :cond_3
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mDeliverThread:Lcom/alibaba/doraemon/threadpool/Thread;

    if-eqz v0, :cond_4

    .line 514
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mDeliverThread:Lcom/alibaba/doraemon/threadpool/Thread;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->cancel(Z)V

    .line 516
    :cond_4
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRunThread:Lcom/alibaba/doraemon/threadpool/Thread;

    if-eqz v0, :cond_5

    .line 517
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRunThread:Lcom/alibaba/doraemon/threadpool/Thread;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/threadpool/Thread;->cancel(Z)V

    .line 519
    :cond_5
    const-string/jumbo v0, "lwp"

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 520
    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    :try_start_2
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 522
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 525
    :cond_6
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->queue()Lcom/alibaba/doraemon/impl/request/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->cancelRequest(Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    .line 526
    if-eqz p1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 522
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public cancelGroupRequest(Z)V
    .locals 3
    .param p1, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 707
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->queue()Lcom/alibaba/doraemon/impl/request/RequestQueue;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->cancelRequestsInGroup(Ljava/lang/String;Z)V

    .line 708
    return-void
.end method

.method protected cancelReqInGroup(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 679
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 687
    :cond_0
    :goto_0
    return v0

    .line 683
    :cond_1
    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 684
    invoke-virtual {p0, p2}, Lcom/alibaba/doraemon/impl/request/RequestClient;->cancel(Z)Z

    .line 685
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearProtocolRequest(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 845
    const-string/jumbo v1, "lwp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 846
    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient;->sLwpRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 847
    const-string/jumbo v1, "THREAD"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 848
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    sget-object v1, Lcom/alibaba/doraemon/Priority;->IMMEDIATE:Lcom/alibaba/doraemon/Priority;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 849
    const-string/jumbo v1, "RequestClient"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 850
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 851
    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestClient$8;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/request/RequestClient$8;-><init>(Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 872
    .end local v0    # "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    :cond_0
    return-void
.end method

.method protected declared-synchronized deliver(Lcom/alibaba/doraemon/threadpool/Thread;)V
    .locals 7
    .param p1, "thread"    # Lcom/alibaba/doraemon/threadpool/Thread;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mDeliverThread:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 323
    iget-boolean v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 428
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 327
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsCancel:Z

    if-eqz v2, :cond_2

    .line 328
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    invoke-interface {v2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 330
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    invoke-interface {v2}, Lcom/alibaba/doraemon/request/Response;->getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/request/RequestInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 321
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 341
    :cond_2
    :try_start_4
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    invoke-interface {v2}, Lcom/alibaba/doraemon/request/Response;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 342
    const-string/jumbo v1, " success"

    .line 349
    .local v1, "tips":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "RequestClient"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "Request deliver url="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getRequestUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 350
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mDeliverThread:Lcom/alibaba/doraemon/threadpool/Thread;

    new-instance v3, Lcom/alibaba/doraemon/impl/request/RequestClient$5;

    invoke-direct {v3, p0}, Lcom/alibaba/doraemon/impl/request/RequestClient$5;-><init>(Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 425
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mDeliverThread:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 427
    sget-object v2, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Completed:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    iput-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    goto :goto_0

    .line 344
    .end local v1    # "tips":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, " failed"

    .line 345
    .restart local v1    # "tips":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    if-eqz v2, :cond_3

    .line 346
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ",statusCode:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    invoke-interface {v4}, Lcom/alibaba/doraemon/request/Response;->getStatusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ",desc"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    invoke-interface {v4}, Lcom/alibaba/doraemon/request/Response;->getErrorDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    goto :goto_1
.end method

.method protected deliverWithResponse(Lcom/alibaba/doraemon/threadpool/Thread;Lcom/alibaba/doraemon/request/Response;)V
    .locals 3
    .param p1, "thread"    # Lcom/alibaba/doraemon/threadpool/Thread;
    .param p2, "response"    # Lcom/alibaba/doraemon/request/Response;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 316
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "RequestClient deliverWithResponse url="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 317
    iput-object p2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mResponse:Lcom/alibaba/doraemon/request/Response;

    .line 318
    invoke-virtual {p0, p1}, Lcom/alibaba/doraemon/impl/request/RequestClient;->deliver(Lcom/alibaba/doraemon/threadpool/Thread;)V

    .line 319
    return-void
.end method

.method protected declared-synchronized execute(Lcom/alibaba/doraemon/threadpool/Thread;)V
    .locals 1
    .param p1, "thread"    # Lcom/alibaba/doraemon/threadpool/Thread;

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mStartThread:Lcom/alibaba/doraemon/threadpool/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    return-object v0
.end method

.method public getNotifyAuthUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->getAuthNotifyUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/alibaba/doraemon/Priority;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mPrority:Lcom/alibaba/doraemon/Priority;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->ordinal()I

    move-result v0

    return v0
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 624
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mTags:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCacheable()Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->shouldCache()Z

    move-result v0

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsCancel:Z

    return v0
.end method

.method public isDead()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsCancel:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Completed:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->RequestFinsh:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHugeDownload()Z
    .locals 1

    .prologue
    .line 767
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsHugeDownload:Z

    return v0
.end method

.method public isReadCacheOnly()Z
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsReadCacheOnly:Z

    return v0
.end method

.method protected declared-synchronized launch(Lcom/alibaba/doraemon/threadpool/Thread;)V
    .locals 3
    .param p1, "thread"    # Lcom/alibaba/doraemon/threadpool/Thread;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRunThread:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 130
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "Request launch url="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->getRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/UrlUtil;->getDesensitizationData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " mIsCancel="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsCancel:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, " mIsPaused="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsPaused:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, " mBinded2SomeReq="

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mBinded2SomeReq:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 130
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Util;->networkLog([Ljava/lang/Object;)V

    .line 132
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsCancel:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsPaused:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mBinded2SomeReq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 136
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alibaba/doraemon/impl/request/RequestClient$1;

    invoke-direct {v0, p0}, Lcom/alibaba/doraemon/impl/request/RequestClient$1;-><init>(Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    invoke-interface {p1, v0}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 220
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Started:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markHugeDownload()Lcom/alibaba/doraemon/request/Request;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 760
    iput-boolean v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsHugeDownload:Z

    .line 761
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setSurpportRange(Z)V

    .line 762
    return-object p0
.end method

.method public pauseGroupRequset()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 712
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->queue()Lcom/alibaba/doraemon/impl/request/RequestQueue;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->pauseRequestInGroup(Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method protected pauseReqInGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 660
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mPausedGroup:Ljava/util/List;

    if-nez v0, :cond_2

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mPausedGroup:Ljava/util/List;

    .line 666
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mPausedGroup:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mPausedGroup:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mPausedGroup:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->pauseRequset()V

    goto :goto_0
.end method

.method public declared-synchronized pauseRequset()V
    .locals 1

    .prologue
    .line 727
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    monitor-exit p0

    return-void

    .line 727
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerStatisticsListener(Lcom/alibaba/doraemon/request/RequestStatisticsListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/request/RequestStatisticsListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 826
    if-eqz p1, :cond_0

    .line 827
    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    monitor-enter v1

    .line 828
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    monitor-exit v1

    .line 832
    :cond_0
    return-void

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeReqFromGroup(Ljava/lang/String;)V
    .locals 2
    .param p1, "groupName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->isDead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Composing:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    if-eq v0, v1, :cond_2

    .line 649
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->queue()Lcom/alibaba/doraemon/impl/request/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->removeRequestFromGroup(Lcom/alibaba/doraemon/impl/request/RequestClient;Ljava/lang/String;)V

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mPausedGroup:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mPausedGroup:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 741
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient$9;->$SwitchMap$com$alibaba$doraemon$impl$request$RequestClient$RequestState:[I

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 743
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRunThread:Lcom/alibaba/doraemon/threadpool/Thread;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRunThread:Lcom/alibaba/doraemon/threadpool/Thread;

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->launch(Lcom/alibaba/doraemon/threadpool/Thread;)V

    goto :goto_0

    .line 747
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mTriggerThread:Lcom/alibaba/doraemon/threadpool/Thread;

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mTriggerThread:Lcom/alibaba/doraemon/threadpool/Thread;

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->trigger(Lcom/alibaba/doraemon/threadpool/Thread;)V

    goto :goto_0

    .line 752
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mDeliverThread:Lcom/alibaba/doraemon/threadpool/Thread;

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mDeliverThread:Lcom/alibaba/doraemon/threadpool/Thread;

    invoke-virtual {p0, v0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->deliver(Lcom/alibaba/doraemon/threadpool/Thread;)V

    goto :goto_0

    .line 741
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public resumeGroupRequest()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 717
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->queue()Lcom/alibaba/doraemon/impl/request/RequestQueue;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->resumeRequestsInGroup(Ljava/lang/String;)V

    .line 718
    return-void
.end method

.method protected resumeReqInGroup(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mPausedGroup:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mPausedGroup:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 702
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->resumeRequest()V

    goto :goto_0
.end method

.method public declared-synchronized resumeRequest()V
    .locals 1

    .prologue
    .line 732
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsCancel:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 735
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsPaused:Z

    .line 736
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 732
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCacheClient(Lcom/alibaba/doraemon/request/CacheClient;)Lcom/alibaba/doraemon/request/Request;
    .locals 1
    .param p1, "client"    # Lcom/alibaba/doraemon/request/CacheClient;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setCacheClient(Lcom/alibaba/doraemon/request/CacheClient;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 817
    return-object p0
.end method

.method public setCacheKey(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 799
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setCacheKey(Ljava/lang/String;)V

    .line 800
    return-object p0
.end method

.method public setCacheable(Z)Lcom/alibaba/doraemon/request/Request;
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 601
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setShouldCache(Z)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 602
    return-object p0
.end method

.method public setMethod(I)V
    .locals 1
    .param p1, "method"    # I

    .prologue
    .line 607
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setMethod(I)V

    .line 608
    return-void
.end method

.method public setNotifyAuthUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setAuthNotifyUrl(Ljava/lang/String;)V

    .line 550
    return-object p0
.end method

.method public setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;
    .locals 2
    .param p1, "perfTag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 772
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mPerfTag:Ljava/lang/String;

    .line 773
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mPerfTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setTag(Ljava/lang/Object;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 776
    :cond_0
    return-object p0
.end method

.method public setPriority(Lcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/request/Request;
    .locals 0
    .param p1, "prority"    # Lcom/alibaba/doraemon/Priority;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mPrority:Lcom/alibaba/doraemon/Priority;

    .line 613
    return-object p0
.end method

.method public setReadCacheOnly(Z)Lcom/alibaba/doraemon/request/Request;
    .locals 2
    .param p1, "readCacheOnly"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 787
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Composing:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    if-ne v0, v1, :cond_0

    .line 788
    iput-boolean p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsReadCacheOnly:Z

    .line 789
    :cond_0
    return-object p0
.end method

.method public setRequestBody([B)Lcom/alibaba/doraemon/request/Request;
    .locals 1
    .param p1, "body"    # [B

    .prologue
    .line 584
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setRequestBody([B)V

    .line 585
    return-object p0
.end method

.method public setRequestHeaders(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/doraemon/request/Request;"
        }
    .end annotation

    .prologue
    .line 575
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->addRequestHeaders(Ljava/util/Map;)V

    .line 579
    :cond_0
    return-object p0
.end method

.method public setRequestParam(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->addRequestParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-object p0
.end method

.method public setRequestParams(Ljava/util/Map;)Lcom/alibaba/doraemon/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/doraemon/request/Request;"
        }
    .end annotation

    .prologue
    .line 566
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->addReqeustParams(Ljava/util/Map;)V

    .line 570
    :cond_0
    return-object p0
.end method

.method public setRequestPolicy(Lcom/alibaba/doraemon/request/RetryPolicy;)Lcom/alibaba/doraemon/request/Request;
    .locals 1
    .param p1, "policy"    # Lcom/alibaba/doraemon/request/RetryPolicy;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setRetryPolicy(Lcom/alibaba/doraemon/request/RetryPolicy;)Lcom/alibaba/doraemon/impl/request/VolleyRequest;

    .line 591
    return-object p0
.end method

.method public setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->setUrl(Ljava/lang/String;)V

    .line 544
    return-object p0
.end method

.method public setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;
    .locals 0
    .param p1, "receiver"    # Lcom/alibaba/doraemon/request/ResponseReceiver;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mReceiver:Lcom/alibaba/doraemon/request/ResponseReceiver;

    .line 806
    return-object p0
.end method

.method public setTag(ILjava/lang/Object;)Lcom/alibaba/doraemon/request/Request;
    .locals 1
    .param p1, "key"    # I
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 619
    return-object p0
.end method

.method public setUrlRewriter(Lcom/alibaba/doraemon/request/UrlRewriter;)V
    .locals 1
    .param p1, "urlRewriter"    # Lcom/alibaba/doraemon/request/UrlRewriter;

    .prologue
    .line 722
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/impl/request/Volley;->setUrlRewriter(Lcom/alibaba/doraemon/request/UrlRewriter;)V

    .line 723
    return-void
.end method

.method public declared-synchronized start()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Composing:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 118
    :goto_0
    monitor-exit p0

    return-void

    .line 108
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->queue()Lcom/alibaba/doraemon/impl/request/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/doraemon/impl/request/RequestQueue;->execute(Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    .line 109
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/InputStreamRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->instance(Landroid/content/Context;)Lcom/alibaba/doraemon/impl/request/Volley;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/impl/request/Volley;->delivery()Lcom/alibaba/doraemon/impl/request/ResponseDelivery;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mRequest:Lcom/alibaba/doraemon/impl/request/InputStreamRequest;

    new-instance v2, Lcom/alibaba/doraemon/impl/request/VolleyError;

    const-string/jumbo v3, "request url is null !"

    invoke-direct {v2, v3}, Lcom/alibaba/doraemon/impl/request/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/impl/request/ResponseDelivery;->postError(Lcom/alibaba/doraemon/impl/request/VolleyRequest;Lcom/alibaba/doraemon/impl/request/VolleyError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 114
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mReceiver:Lcom/alibaba/doraemon/request/ResponseReceiver;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mReceiver:Lcom/alibaba/doraemon/request/ResponseReceiver;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/request/ResponseReceiver;->onRequestStarted(Lcom/alibaba/doraemon/request/Request;)V

    .line 117
    :cond_2
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Waiting:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized trigger(Lcom/alibaba/doraemon/threadpool/Thread;)V
    .locals 2
    .param p1, "thread"    # Lcom/alibaba/doraemon/threadpool/Thread;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mTriggerThread:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 300
    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsCancel:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mIsPaused:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mBinded2SomeReq:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 306
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mTriggerThread:Lcom/alibaba/doraemon/threadpool/Thread;

    new-instance v1, Lcom/alibaba/doraemon/impl/request/RequestClient$4;

    invoke-direct {v1, p0}, Lcom/alibaba/doraemon/impl/request/RequestClient$4;-><init>(Lcom/alibaba/doraemon/impl/request/RequestClient;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 312
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;->Triggered:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;

    iput-object v0, p0, Lcom/alibaba/doraemon/impl/request/RequestClient;->mState:Lcom/alibaba/doraemon/impl/request/RequestClient$RequestState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterStatisticsListener(Lcom/alibaba/doraemon/request/RequestStatisticsListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/doraemon/request/RequestStatisticsListener;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 835
    sget-object v1, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    monitor-enter v1

    .line 836
    :try_start_0
    sget-object v0, Lcom/alibaba/doraemon/impl/request/RequestClient;->sStatisticsListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 837
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

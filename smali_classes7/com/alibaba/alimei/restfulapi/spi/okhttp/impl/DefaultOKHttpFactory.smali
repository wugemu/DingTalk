.class public Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;
.super Ljava/lang/Object;
.source "DefaultOKHttpFactory.java"

# interfaces
.implements Lcom/alibaba/alimei/restfulapi/spi/okhttp/OKHttpFactory;


# static fields
.field private static final CONNNECTION_TIME_OUT:J = 0x5L

.field private static final SO_TIME_OUT:J = 0x3cL

.field private static final TAG:Ljava/lang/String; = "DefaultOKHttpFactory"

.field private static volatile sInstance:Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;


# instance fields
.field private mOKHttpClient:Lkna;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lkna$a;

    invoke-direct {v0}, Lkna$a;-><init>()V

    .line 46
    .local v0, "okBuilder":Lkna$a;
    sget-object v2, Lcom/alibaba/alimei/restfulapi/spi/okhttp/dns/OKHttpDns;->instance:Lcom/alibaba/alimei/restfulapi/spi/okhttp/dns/OKHttpDns;

    invoke-virtual {v0, v2}, Lkna$a;->a(Lkmr;)Lkna$a;

    .line 47
    new-instance v1, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory$1;-><init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;)V

    .line 60
    .local v1, "okhttpEventListener":Lkms;
    invoke-virtual {v0, v1}, Lkna$a;->a(Lkms;)Lkna$a;

    .line 61
    invoke-virtual {v0}, Lkna$a;->a()Lkna;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;->mOKHttpClient:Lkna;

    .line 62
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;
    .locals 3

    .prologue
    .line 34
    const-class v1, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;->sInstance:Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;

    if-nez v0, :cond_1

    .line 35
    const-class v2, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    sget-object v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;->sInstance:Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;->sInstance:Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;

    .line 39
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :cond_1
    :try_start_2
    sget-object v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;->sInstance:Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 34
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getOKHttpClient()Lkna;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v4, 0x3c

    .line 66
    iget-object v1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;->mOKHttpClient:Lkna;

    invoke-virtual {v1}, Lkna;->a()Lkna$a;

    move-result-object v0

    .line 67
    .local v0, "okBuilder":Lkna$a;
    const-wide/16 v2, 0x5

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lkna$a;->a(JLjava/util/concurrent/TimeUnit;)Lkna$a;

    .line 68
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lkna$a;->b(JLjava/util/concurrent/TimeUnit;)Lkna$a;

    .line 69
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lkna$a;->c(JLjava/util/concurrent/TimeUnit;)Lkna$a;

    .line 70
    invoke-virtual {v0}, Lkna$a;->a()Lkna;

    move-result-object v1

    return-object v1
.end method

.class public Lcom/alibaba/alimei/restfulapi/spi/okhttp/dns/OKHttpDns;
.super Ljava/lang/Object;
.source "OKHttpDns.java"

# interfaces
.implements Lkmr;


# static fields
.field public static final instance:Lcom/alibaba/alimei/restfulapi/spi/okhttp/dns/OKHttpDns;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/dns/OKHttpDns;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/spi/okhttp/dns/OKHttpDns;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/dns/OKHttpDns;->instance:Lcom/alibaba/alimei/restfulapi/spi/okhttp/dns/OKHttpDns;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 22
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getConfiguration()Lcom/alibaba/alimei/restfulapi/ApiConfiguration;

    move-result-object v0

    .line 23
    .local v0, "apiConfiguration":Lcom/alibaba/alimei/restfulapi/ApiConfiguration;
    if-eqz v0, :cond_0

    .line 24
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Lcom/alibaba/alimei/restfulapi/ApiConfiguration;->getIpByHttpDns(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/spi/OpenApiMethods;)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "ip":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/net/InetAddress;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 27
    .end local v1    # "ip":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lkmr;->a:Lkmr;

    invoke-interface {v2, p1}, Lkmr;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

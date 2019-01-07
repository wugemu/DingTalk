.class Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory$1;
.super Lkms;
.source "DefaultOKHttpFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory$1;->this$0:Lcom/alibaba/alimei/restfulapi/spi/okhttp/impl/DefaultOKHttpFactory;

    invoke-direct {p0}, Lkms;-><init>()V

    return-void
.end method


# virtual methods
.method public dnsEnd(Lkmi;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "call"    # Lkmi;
    .param p2, "domainName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkmi;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 56
    .local p3, "inetAddressList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const-string/jumbo v0, "DefaultOKHttpFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dnsEnd domainName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", ips: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-super {p0, p1, p2, p3}, Lkms;->dnsEnd(Lkmi;Ljava/lang/String;Ljava/util/List;)V

    .line 58
    return-void
.end method

.method public dnsStart(Lkmi;Ljava/lang/String;)V
    .locals 4
    .param p1, "call"    # Lkmi;
    .param p2, "domainName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 50
    const-string/jumbo v0, "DefaultOKHttpFactory"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "dnsStart domainName: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v1}, Lcom/alibaba/alimei/restfulapi/utils/StringUtils;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/support/RFTraceUtils;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-super {p0, p1, p2}, Lkms;->dnsStart(Lkmi;Ljava/lang/String;)V

    .line 52
    return-void
.end method

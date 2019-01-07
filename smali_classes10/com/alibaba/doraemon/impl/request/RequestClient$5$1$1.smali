.class Lcom/alibaba/doraemon/impl/request/RequestClient$5$1$1;
.super Ljava/lang/Object;
.source "RequestClient.java"

# interfaces
.implements Lcom/alibaba/doraemon/request/Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;


# direct methods
.method constructor <init>(Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1$1;->this$2:Lcom/alibaba/doraemon/impl/request/RequestClient$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/alibaba/doraemon/request/Response;
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/alibaba/doraemon/impl/request/RequestClient$5$1$1;->clone()Lcom/alibaba/doraemon/request/Response;

    move-result-object v0

    return-object v0
.end method

.method public dataLength()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 394
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getErrorDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    const-string/jumbo v0, "deliver response is null !"

    return-object v0
.end method

.method public getResponseBody()Lcom/alibaba/doraemon/request/RequestInputStream;
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 384
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

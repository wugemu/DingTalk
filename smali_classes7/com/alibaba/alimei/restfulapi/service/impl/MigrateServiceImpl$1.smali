.class Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl$1;
.super Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;
.source "MigrateServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;->importMail(Lcom/alibaba/alimei/restfulapi/request/data/migrate/ImportMail;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl$1;->this$0:Lcom/alibaba/alimei/restfulapi/service/impl/MigrateServiceImpl;

    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/ServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public buildRequestNameValuePairs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestResultReference()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

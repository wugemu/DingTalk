.class Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl$CompanyContactHttpResponseParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "ContactServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompanyContactHttpResponseParser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;",
        ">;"
    }
.end annotation


# static fields
.field public static parser:Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl$CompanyContactHttpResponseParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl$CompanyContactHttpResponseParser;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl$CompanyContactHttpResponseParser;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl$CompanyContactHttpResponseParser;->parser:Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl$CompanyContactHttpResponseParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;
    .locals 4
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 137
    .local v1, "object":Lcom/google/gson/JsonObject;
    const-string/jumbo v2, "companyContact"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 138
    .local v0, "companyContact":Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl$CompanyContactHttpResponseParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;

    .line 142
    .end local v0    # "companyContact":Lcom/google/gson/JsonElement;
    .end local v1    # "object":Lcom/google/gson/JsonObject;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/service/impl/ContactServiceImpl$CompanyContactHttpResponseParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/data/contact/CompanyContact;

    move-result-object v0

    return-object v0
.end method

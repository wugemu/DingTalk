.class public final Lth;
.super Ljava/lang/Object;
.source "CSpaceSDK.java"


# static fields
.field private static a:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    sput-object v0, Lth;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/cspace/openapi/impl/DentryAPIImpl;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    return-object v0
.end method

.method public static a()Lya;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Lxm;)V
    .locals 0
    .param p1, "observer"    # Lxm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lxm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    invoke-static {p0, p1}, Lxn;->a(Ljava/lang/Class;Lxm;)V

    .line 30
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/fav/openapi/impl/FavoriteApiImpl;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/fav/openapi/IFavoriteApi;

    return-object v0
.end method

.method public static b(Ljava/lang/Class;Lxm;)V
    .locals 0
    .param p1, "observer"    # Lxm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/alimei/framework/datasource/DataGroupModel;",
            ">;",
            "Lxm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/alimei/framework/datasource/DataGroupModel;>;"
    invoke-static {p0, p1}, Lxn;->b(Ljava/lang/Class;Lxm;)V

    .line 39
    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;
    .locals 2
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {}, Lxn;->i()Lcom/alibaba/alimei/framework/api/ApiFactory;

    move-result-object v0

    const-class v1, Lcom/alibaba/alimei/cspace/openapi/impl/RecentOperationAPIImpl;

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/alimei/framework/api/ApiFactory;->getApiInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/alimei/framework/api/AbsApiImpl;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/openapi/IRecentOperationAPI;

    return-object v0
.end method

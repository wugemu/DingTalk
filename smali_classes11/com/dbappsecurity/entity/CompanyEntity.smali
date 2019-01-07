.class public Lcom/dbappsecurity/entity/CompanyEntity;
.super Ljava/lang/Object;
.source "CompanyEntity.java"


# instance fields
.field private mapVers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dbappsecurity/entity/Versns;",
            ">;"
        }
    .end annotation
.end field

.field private refreshKey:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/dbappsecurity/entity/CompanyEntity;->refreshKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMapVers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dbappsecurity/entity/Versns;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dbappsecurity/entity/CompanyEntity;->mapVers:Ljava/util/Map;

    return-object v0
.end method

.method public getRefreshKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/dbappsecurity/entity/CompanyEntity;->refreshKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/dbappsecurity/entity/CompanyEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setMapVers(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dbappsecurity/entity/Versns;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "mapVers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/dbappsecurity/entity/Versns;>;"
    iput-object p1, p0, Lcom/dbappsecurity/entity/CompanyEntity;->mapVers:Ljava/util/Map;

    .line 36
    return-void
.end method

.method public setRefreshKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "refreshKey"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/dbappsecurity/entity/CompanyEntity;->refreshKey:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/dbappsecurity/entity/CompanyEntity;->url:Ljava/lang/String;

    .line 20
    return-void
.end method

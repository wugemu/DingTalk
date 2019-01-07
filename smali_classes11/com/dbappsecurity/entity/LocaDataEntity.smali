.class public Lcom/dbappsecurity/entity/LocaDataEntity;
.super Lcom/dbappsecurity/entity/ResultEntity;
.source "LocaDataEntity.java"


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dbappsecurity/entity/CompanyEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/dbappsecurity/entity/ResultEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dbappsecurity/entity/CompanyEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/dbappsecurity/entity/LocaDataEntity;->map:Ljava/util/Map;

    return-object v0
.end method

.method public setMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/dbappsecurity/entity/CompanyEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/dbappsecurity/entity/CompanyEntity;>;"
    iput-object p1, p0, Lcom/dbappsecurity/entity/LocaDataEntity;->map:Ljava/util/Map;

    .line 18
    return-void
.end method

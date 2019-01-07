.class Lcom/amap/api/services/a/ci;
.super Lcom/amap/api/services/a/cz;
.source "DexDownLoadRequest.java"


# instance fields
.field private a:Lcom/amap/api/services/a/ce;


# direct methods
.method constructor <init>(Lcom/amap/api/services/a/ce;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/amap/api/services/a/cz;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amap/api/services/a/ci;->a:Lcom/amap/api/services/a/ce;

    .line 36
    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map;
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
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/util/Map;
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
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amap/api/services/a/ci;->a:Lcom/amap/api/services/a/ce;

    invoke-virtual {v0}, Lcom/amap/api/services/a/ce;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

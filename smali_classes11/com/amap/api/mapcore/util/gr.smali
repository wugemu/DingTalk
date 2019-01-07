.class Lcom/amap/api/mapcore/util/gr;
.super Lcom/amap/api/mapcore/util/hi;
.source "DexDownLoadRequest.java"


# instance fields
.field private a:Lcom/amap/api/mapcore/util/gn;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/gn;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/hi;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amap/api/mapcore/util/gr;->a:Lcom/amap/api/mapcore/util/gn;

    .line 36
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
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

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amap/api/mapcore/util/gr;->a:Lcom/amap/api/mapcore/util/gn;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/gn;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

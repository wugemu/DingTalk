.class public Lcom/amap/api/mapcore/util/dr;
.super Ljava/lang/Object;
.source "NumberToStyleMap.java"


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/amap/api/mapcore/util/dp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dr;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dr;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/dp;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dr;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/dp;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/amap/api/mapcore/util/dp;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dr;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

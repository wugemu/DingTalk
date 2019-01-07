.class public final Lbyr;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/taobao/taolive/sdk/model/common/UrlInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/taobao/taolive/sdk/model/common/UrlInfo;",
            ">;)",
            "Lcom/taobao/taolive/sdk/model/common/UrlInfo;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "urlInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/taolive/sdk/model/common/UrlInfo;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 56
    :cond_0
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    .line 59
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    .line 60
    .local v0, "info":Lcom/taobao/taolive/sdk/model/common/UrlInfo;
    if-eqz v0, :cond_2

    iget v2, v0, Lcom/taobao/taolive/sdk/model/common/UrlInfo;->level:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    goto :goto_0

    .line 64
    .end local v0    # "info":Lcom/taobao/taolive/sdk/model/common/UrlInfo;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/taolive/sdk/model/common/UrlInfo;

    move-object v0, v1

    goto :goto_0
.end method

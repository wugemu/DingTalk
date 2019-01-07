.class public final Lcom/alibaba/android/search/utils/log/SearchStatisticUtils$1;
.super Ljava/util/LinkedHashMap;
.source "SearchStatisticUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Letb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$maxEntries:I


# direct methods
.method public constructor <init>(IFZI)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # F
    .param p3, "x2"    # Z

    .prologue
    .line 128
    iput p4, p0, Lcom/alibaba/android/search/utils/log/SearchStatisticUtils$1;->val$maxEntries:I

    invoke-direct {p0, p1, p2, p3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 131
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/alibaba/android/search/utils/log/SearchStatisticUtils$1;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/android/search/utils/log/SearchStatisticUtils$1;->val$maxEntries:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

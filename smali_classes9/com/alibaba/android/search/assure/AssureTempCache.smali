.class public Lcom/alibaba/android/search/assure/AssureTempCache;
.super Ljava/util/LinkedHashSet;
.source "AssureTempCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashSet",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    .local p0, "this":Lcom/alibaba/android/search/assure/AssureTempCache;, "Lcom/alibaba/android/search/assure/AssureTempCache<TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 8
    .local p0, "this":Lcom/alibaba/android/search/assure/AssureTempCache;, "Lcom/alibaba/android/search/assure/AssureTempCache<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    invoke-super {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 9
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/assure/AssureTempCache;->onEntryAdded(Ljava/lang/Object;)V

    .line 12
    :cond_0
    return v0
.end method

.method protected onEntryAdded(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/alibaba/android/search/assure/AssureTempCache;, "Lcom/alibaba/android/search/assure/AssureTempCache<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    return-void
.end method

.method protected onEntryRemoved(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lcom/alibaba/android/search/assure/AssureTempCache;, "Lcom/alibaba/android/search/assure/AssureTempCache<TE;>;"
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 21
    .local p0, "this":Lcom/alibaba/android/search/assure/AssureTempCache;, "Lcom/alibaba/android/search/assure/AssureTempCache<TE;>;"
    invoke-super {p0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 22
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, p1}, Lcom/alibaba/android/search/assure/AssureTempCache;->onEntryRemoved(Ljava/lang/Object;)V

    .line 25
    :cond_0
    return v0
.end method

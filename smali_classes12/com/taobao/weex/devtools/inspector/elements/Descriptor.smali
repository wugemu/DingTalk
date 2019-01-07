.class public abstract Lcom/taobao/weex/devtools/inspector/elements/Descriptor;
.super Ljava/lang/Object;
.source "Descriptor.java"

# interfaces
.implements Lcom/taobao/weex/devtools/inspector/elements/NodeDescriptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;
    }
.end annotation


# instance fields
.field private mHost:Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method protected static parseSetAttributesAsTextArg(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 78
    const-string/jumbo v7, ""

    .line 79
    .local v7, "value":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 80
    .local v5, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v1, "buffer":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v6, "keyValuePairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 83
    .local v4, "isInsideQuotes":Z
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v3, v0, :cond_5

    .line 84
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 85
    .local v2, "c":C
    const/16 v9, 0x3d

    if-ne v2, v9, :cond_0

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 83
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 88
    :cond_0
    const/16 v9, 0x22

    if-ne v2, v9, :cond_3

    .line 89
    if-eqz v4, :cond_1

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 91
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 93
    :cond_1
    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    goto :goto_1

    :cond_2
    move v4, v8

    goto :goto_2

    .line 94
    :cond_3
    const/16 v9, 0x20

    if-ne v2, v9, :cond_4

    if-nez v4, :cond_4

    .line 95
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 97
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 100
    .end local v2    # "c":C
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 101
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_6
    return-object v6
.end method


# virtual methods
.method public final checkThreadAccess()Z
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getHost()Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;->checkThreadAccess()Z

    move-result v0

    return v0
.end method

.method protected final getHost()Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->mHost:Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;

    return-object v0
.end method

.method protected final initialize(Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;)V
    .locals 1
    .param p1, "host"    # Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;

    .prologue
    .line 28
    invoke-static {p1}, Lcom/taobao/weex/devtools/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->mHost:Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;

    invoke-static {v0}, Lcom/taobao/weex/devtools/common/Util;->throwIfNotNull(Ljava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->mHost:Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;

    .line 31
    return-void
.end method

.method protected final isInitialized()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->mHost:Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final postAndWait(Lcom/taobao/weex/devtools/common/UncheckedCallable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/taobao/weex/devtools/common/UncheckedCallable",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "c":Lcom/taobao/weex/devtools/common/UncheckedCallable;, "Lcom/taobao/weex/devtools/common/UncheckedCallable<TV;>;"
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getHost()Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;->postAndWait(Lcom/taobao/weex/devtools/common/UncheckedCallable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final postAndWait(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getHost()Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;->postAndWait(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getHost()Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;->postDelayed(Ljava/lang/Runnable;J)V

    .line 64
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getHost()Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public final verifyThreadAccess()V
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor;->getHost()Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/devtools/inspector/elements/Descriptor$Host;->verifyThreadAccess()V

    .line 49
    return-void
.end method

.class public abstract Lcom/ut/mini/module/plugin/UTPlugin;
.super Ljava/lang/Object;
.source "UTPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEventIDInRange([II)Z
    .locals 6
    .param p0, "aUserPluginEventA"    # [I
    .param p1, "aLogEventID"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 18
    if-eqz p0, :cond_2

    .line 19
    aget v4, p0, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v2

    .line 22
    :cond_1
    array-length v1, p0

    .line 23
    .local v1, "lALength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 24
    aget v4, p0, v0

    if-eq v4, p1, :cond_0

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "lALength":I
    :cond_2
    move v2, v3

    .line 29
    goto :goto_0
.end method


# virtual methods
.method public abstract getAttentionEventIds()[I
.end method

.method public onEventDispatch(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "aPageName"    # Ljava/lang/String;
    .param p2, "aEventID"    # I
    .param p3, "aArg1"    # Ljava/lang/String;
    .param p4, "aArg2"    # Ljava/lang/String;
    .param p5, "aArg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 10
    const/4 v0, 0x0

    return-object v0
.end method

.method public onEventDispatch(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "aPageName"    # Ljava/lang/String;
    .param p2, "aEventID"    # I
    .param p3, "aArg1"    # Ljava/lang/String;
    .param p4, "aArg2"    # Ljava/lang/String;
    .param p5, "aArg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    .local p6, "aPluginLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p5}, Lcom/ut/mini/module/plugin/UTPlugin;->onEventDispatch(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

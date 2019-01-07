.class public Lcom/taobao/statistic/TBS$Network;
.super Ljava/lang/Object;
.source "TBS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Network"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "timeConsumer"    # J
    .param p6, "start"    # Ljava/lang/String;
    .param p7, "finish"    # Ljava/lang/String;
    .param p8, "isContinue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1267
    return-void
.end method

.method public static download(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "size"    # J
    .param p4, "timeConsumer"    # J
    .param p6, "isContinue"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1252
    return-void
.end method

.method public static pushArrive(Ljava/lang/String;)V
    .locals 0
    .param p0, "pushCategoryName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1182
    return-void
.end method

.method public static pushDisplay(Ljava/lang/String;)V
    .locals 0
    .param p0, "pushCategoryName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1191
    return-void
.end method

.method public static pushView(Ljava/lang/String;)V
    .locals 0
    .param p0, "pushCategoryName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1200
    return-void
.end method

.method public static searchKeyword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "keywordCategory"    # Ljava/lang/String;
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1210
    return-void
.end method

.method public static updateUTCookie(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "aUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1229
    .local p1, "kvs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public static updateUTSIDToCookie(Ljava/lang/String;)V
    .locals 0
    .param p0, "aUrl"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1219
    return-void
.end method

.method public static weiboShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "weiboType"    # Ljava/lang/String;
    .param p1, "shareContent"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1239
    return-void
.end method

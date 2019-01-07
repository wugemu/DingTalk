.class public final Lhmw;
.super Ljava/lang/Object;
.source "Performance.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v2, 0x0

    .line 261
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-wide v2

    .line 265
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1109
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 14
    .param p0, "params"    # Ljava/lang/String;
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
    .line 273
    if-nez p0, :cond_1

    .line 274
    const/4 v0, 0x0

    .line 320
    :cond_0
    :goto_0
    return-object v0

    .line 277
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "\\^"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, "kvs":[Ljava/lang/String;
    if-nez v3, :cond_2

    .line 280
    const/4 v0, 0x0

    goto :goto_0

    .line 283
    :cond_2
    array-length v10, v3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_0

    aget-object v2, v3, v9

    .line 284
    .local v2, "kv":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 288
    const-string/jumbo v11, "="

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "pair":[Ljava/lang/String;
    if-eqz v4, :cond_5

    array-length v11, v4

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    const/4 v11, 0x0

    aget-object v11, v4, v11

    .line 290
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 294
    const/4 v11, 0x1

    aget-object v11, v4, v11

    const-string/jumbo v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 295
    const/4 v11, 0x1

    aget-object v11, v4, v11

    const-string/jumbo v12, "\\|"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "secondLevelString":[Ljava/lang/String;
    if-eqz v5, :cond_5

    array-length v11, v5

    if-lez v11, :cond_5

    .line 300
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v11, v5

    if-ge v1, v11, :cond_5

    .line 301
    aget-object v6, v5, v1

    .line 302
    .local v6, "target":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string/jumbo v11, "_"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 306
    const-string/jumbo v11, "_"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 307
    .local v8, "thirdLevelString":[Ljava/lang/String;
    if-eqz v8, :cond_3

    array-length v11, v8

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    const/4 v11, 0x0

    aget-object v11, v8, v11

    .line 308
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x1

    aget-object v11, v8, v11

    .line 309
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 311
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-object v13, v8, v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "_"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string/jumbo v13, "sub"

    aput-object v13, v11, v12

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 312
    .local v7, "targetKey":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-interface {v0, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .end local v7    # "targetKey":Ljava/lang/String;
    .end local v8    # "thirdLevelString":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 316
    .end local v1    # "i":I
    .end local v5    # "secondLevelString":[Ljava/lang/String;
    .end local v6    # "target":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    aget-object v11, v4, v11

    const/4 v12, 0x1

    aget-object v12, v4, v12

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .end local v4    # "pair":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p0, "procData"    # Ljava/lang/String;
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

    .prologue
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 161
    if-nez p0, :cond_1

    .line 184
    :cond_0
    return-void

    .line 164
    :cond_1
    const-string/jumbo v5, "\\|"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "secondLevelString":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v1

    if-ge v0, v5, :cond_0

    .line 170
    aget-object v2, v1, v0

    .line 171
    .local v2, "target":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string/jumbo v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 175
    const-string/jumbo v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "thirdLevelString":[Ljava/lang/String;
    if-eqz v4, :cond_2

    array-length v5, v4

    if-ne v5, v9, :cond_2

    aget-object v5, v4, v7

    .line 177
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v4, v8

    .line 178
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 180
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aget-object v6, v4, v7

    aput-object v6, v5, v7

    const-string/jumbo v6, "_"

    aput-object v6, v5, v8

    const-string/jumbo v6, "sub"

    aput-object v6, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "targetKey":Ljava/lang/String;
    aget-object v5, v4, v8

    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v3    # "targetKey":Ljava/lang/String;
    .end local v4    # "thirdLevelString":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
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

    .prologue
    .line 188
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;-><init>()V

    .line 189
    .local v0, "timing":Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;
    const-string/jumbo v1, "srcClick"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->srcClick:J

    .line 190
    const-string/jumbo v1, "containerVisible"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->containerVisible:J

    .line 191
    const-string/jumbo v1, "blankScreen"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->blankScreen:J

    .line 192
    const-string/jumbo v1, "headScreen"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->headScreen:J

    .line 193
    const-string/jumbo v1, "create"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->create:J

    .line 194
    const-string/jumbo v1, "start"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->start:J

    .line 195
    const-string/jumbo v1, "end"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->end:J

    .line 196
    const-string/jumbo v1, "serverResponse"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->serverResponse:J

    .line 197
    const-string/jumbo v1, "stopLoadingWithoutLocating"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->stopLoadingWithoutLocating:J

    .line 198
    const-string/jumbo v1, "stopLoading"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->stopLoading:J

    .line 199
    const-string/jumbo v1, "pageNetLoad"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->pageNetLoad:J

    .line 200
    const-string/jumbo v1, "finishLoad"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->finishLoad:J

    .line 201
    const-string/jumbo v1, "domReady"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->domReady:J

    .line 202
    const-string/jumbo v1, "pageLoad"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->pageLoad:J

    .line 203
    const-string/jumbo v1, "startRender"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->startRender:J

    .line 204
    const-string/jumbo v1, "startRenderFromNative"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->startRenderFromNative:J

    .line 205
    const-string/jumbo v1, "firstByte"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;->firstByte:J

    .line 207
    invoke-static {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniappTiming(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppTiming;)V

    .line 208
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
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

    .prologue
    .line 212
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;-><init>()V

    .line 213
    .local v0, "num":Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;
    const-string/jumbo v1, "requestNum"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->requestNum:J

    .line 214
    const-string/jumbo v1, "cssReqNum"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->cssReqNum:J

    .line 215
    const-string/jumbo v1, "jsReqNum"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->jsReqNum:J

    .line 216
    const-string/jumbo v1, "imgReqNum"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->imgReqNum:J

    .line 217
    const-string/jumbo v1, "otherReqNum"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->otherReqNum:J

    .line 218
    const-string/jumbo v1, "pageSize"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->pageSize:J

    .line 219
    const-string/jumbo v1, "imageSizeLimit60"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->imageSizeLimit60:J

    .line 220
    const-string/jumbo v1, "sizeLimit50"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->sizeLimit50:J

    .line 221
    const-string/jumbo v1, "sizeLimit200"

    invoke-static {p1, v1}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;->sizeLimit200:J

    .line 223
    invoke-static {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniappNum(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppNum;)V

    .line 224
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p0, "appId"    # Ljava/lang/String;
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

    .prologue
    .line 232
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;-><init>()V

    .line 233
    .local v0, "appPrepareData":Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;
    const-string/jumbo v2, "db_version_time"

    invoke-static {p1, v2}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->checkDBVersionTime:J

    .line 234
    const-string/jumbo v2, "err"

    invoke-static {p1, v2}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->errorCode:J

    .line 235
    const-string/jumbo v2, "off"

    invoke-static {p1, v2}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->offlineMode:J

    .line 236
    const-string/jumbo v2, "req"

    invoke-static {p1, v2}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->reqMode:J

    .line 237
    const-string/jumbo v2, "page"

    invoke-static {p1, v2}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->pageStatus:J

    .line 238
    const-string/jumbo v2, "all_sub"

    invoke-static {p1, v2}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeAll:J

    .line 239
    const-string/jumbo v2, "req_sub"

    invoke-static {p1, v2}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeReq:J

    .line 240
    const-string/jumbo v2, "down_sub"

    invoke-static {p1, v2}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeDownload:J

    .line 241
    const-string/jumbo v2, "zip_sub"

    invoke-static {p1, v2}, Lhmw;->a(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeUnzip:J

    .line 242
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v2, v3, :cond_0

    .line 243
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "checkDBVersionTime : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->checkDBVersionTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " errorCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->errorCode:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " offlineMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->offlineMode:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " reqMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->reqMode:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " pageStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->pageStatus:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " procTimeAll : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeAll:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " procTimeReq : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeReq:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " procTimeDownload : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeDownload:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " procTimeUnzip : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;->procTimeUnzip:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "combinationLog":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " combination app prepare data : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .end local v1    # "combinationLog":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniAppPrepareDataTime(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics$MiniAppPrepareData;)V

    .line 257
    return-void
.end method

.class public Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;
.super Ljava/lang/Object;
.source "MarketActivitySearchEntryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityConfig"
.end annotation


# instance fields
.field public bannerMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "banner"
    .end annotation
.end field

.field public celebrateImages:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "images"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public end:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "end"
    .end annotation
.end field

.field public globalized:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "globalized"
    .end annotation
.end field

.field public jumpUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "jumpUrl"
    .end annotation
.end field

.field public keywords:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "keywords"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public os:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "os"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public queryHintClickImg:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "placeholder_click_img"
    .end annotation
.end field

.field public queryHints:Ljava/util/Map;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "placeholder"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public start:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "start"
    .end annotation
.end field

.field public ver:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ver"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x5

    .line 316
    iget-object v1, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->queryHints:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 317
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "lang":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 319
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->queryHints:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 325
    .end local v0    # "lang":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getQueryHintClickImgUrl()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 253
    iget-object v1, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->queryHintClickImg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    :goto_0
    return-object v0

    .line 258
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->queryHintClickImg:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Exception parse mediaId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->queryHintClickImg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 3050
    const-string/jumbo v3, "search"

    invoke-static {v3, v1, v2}, Letc;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getQueryHintString()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->a()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "localizedQueryHint":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    .end local v0    # "localizedQueryHint":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "localizedQueryHint":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lemt$g;->global_search:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasActivityKeywords()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 271
    iget-object v1, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->keywords:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->keywords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    .local v0, "keyword":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    const/4 v1, 0x1

    .line 278
    .end local v0    # "keyword":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasActivityQueryHints()Z
    .locals 1

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOsMatch()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 185
    iget-object v6, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->os:Ljava/util/List;

    invoke-static {v6}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v2

    .line 186
    .local v2, "isNullOrEmpty":Z
    if-eqz v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v5

    .line 190
    :cond_1
    const/4 v0, 0x0

    .line 191
    .local v0, "emptyLen":I
    iget-object v6, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->os:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 192
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 193
    iget-object v6, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->os:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 194
    .local v4, "o":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 192
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 199
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 204
    .end local v4    # "o":Ljava/lang/String;
    :cond_4
    if-eq v0, v3, :cond_0

    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isVerMatch()Z
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 210
    :try_start_0
    iget-object v11, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->ver:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 211
    const-string/jumbo v11, "ver is empty"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    :cond_0
    :goto_0
    return v9

    .line 216
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 217
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_2

    .line 218
    const-string/jumbo v11, "context = null"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    .end local v1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 247
    .local v3, "e":Ljava/lang/Throwable;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const-string/jumbo v12, "isVerMatch, error: "

    aput-object v12, v11, v10

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v9, v11}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move v9, v10

    .line 248
    goto :goto_0

    .line 222
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 223
    .local v8, "versionName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 224
    const-string/jumbo v11, "versionName is empty"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Letc;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    :cond_3
    const-string/jumbo v11, "[.]"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "curVersionArray":[Ljava/lang/String;
    iget-object v11, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->ver:Ljava/lang/String;

    const-string/jumbo v12, "[.]"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 233
    .local v7, "verArray":[Ljava/lang/String;
    array-length v11, v2

    array-length v12, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 234
    .local v5, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_5

    .line 235
    aget-object v11, v2, v4

    .line 1150
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v0

    .line 236
    .local v0, "c":I
    aget-object v11, v7, v4

    .line 2150
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcoc;->a(Ljava/lang/String;I)I

    move-result v6

    .line 237
    .local v6, "v":I
    if-gt v0, v6, :cond_0

    .line 239
    if-ge v0, v6, :cond_4

    move v9, v10

    .line 240
    goto :goto_0

    .line 234
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 244
    .end local v0    # "c":I
    .end local v6    # "v":I
    :cond_5
    array-length v11, v2

    array-length v12, v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v11, v12, :cond_0

    move v9, v10

    goto/16 :goto_0
.end method

.method public matchKeywords(Ljava/lang/String;)Z
    .locals 6
    .param p1, "query"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v2

    .line 290
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->a()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "localizedQueryHint":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 292
    goto :goto_0

    .line 295
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->keywords:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 296
    iget-object v4, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->keywords:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    .local v0, "keyword":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 298
    goto :goto_0
.end method

.method public showQuickHintActionBtn()Z
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->hasActivityQueryHints()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->jumpUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/search/service/MarketActivitySearchEntryManager$ActivityConfig;->queryHintClickImg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

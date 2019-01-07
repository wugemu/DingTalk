.class public final Lavw;
.super Ljava/lang/Object;
.source "CalendarStatisticUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 283
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v1, "calendar_list_delete"

    invoke-static {v1, v0}, Lavw;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 285
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4
    .param p0, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    .line 43
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    .line 47
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "Calendar"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, p0, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "point"    # Ljava/lang/String;
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 77
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    .line 83
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    .line 86
    invoke-static {p0, p1}, Lcps;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static a(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string/jumbo v1, "ding_bluepop_show"

    invoke-static {v1, v0}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 322
    return-void

    .line 320
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .param p0, "point"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    .line 57
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    .line 60
    invoke-static {p0}, Lcps;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "point"    # Ljava/lang/String;
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    .line 96
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    .line 99
    invoke-static {p0, p1}, Lcps;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 326
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string/jumbo v1, "ding_bluepop_post_show"

    invoke-static {v1, v0}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 329
    return-void

    .line 327
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1
    .param p0, "point"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    .line 70
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    .line 73
    invoke-static {p0}, Lcps;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static c(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 333
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string/jumbo v1, "ding_bluepop_show"

    invoke-static {v1, v0}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 336
    return-void

    .line 334
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method static d(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 340
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "10"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string/jumbo v1, "ding_bluepop_show"

    invoke-static {v1, v0}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 343
    return-void

    .line 341
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method static e(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 346
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 347
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string/jumbo v1, "ding_bluepop_show"

    invoke-static {v1, v0}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 350
    return-void

    .line 348
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method static f(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 402
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "other"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "card"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string/jumbo v1, "ding_bluepop_enter_click"

    invoke-static {v1, v0}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 406
    return-void

    .line 404
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method static g(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 410
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "log"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "card"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string/jumbo v1, "ding_bluepop_enter_click"

    invoke-static {v1, v0}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 414
    return-void

    .line 412
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method static h(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 418
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "other"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "detail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string/jumbo v1, "ding_bluepop_enter_click"

    invoke-static {v1, v0}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 422
    return-void

    .line 420
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method static i(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 425
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 426
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "other"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "ok"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string/jumbo v1, "ding_bluepop_enter_click"

    invoke-static {v1, v0}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 430
    return-void

    .line 428
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method static j(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 434
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "log"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "now"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string/jumbo v1, "ding_bluepop_enter_click"

    invoke-static {v1, v0}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 438
    return-void

    .line 436
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method static k(Z)V
    .locals 3
    .param p0, "isFloat"    # Z

    .prologue
    .line 441
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 442
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "log"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string/jumbo v1, "ref"

    const-string/jumbo v2, "later"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const-string/jumbo v2, "isFloat"

    if-eqz p0, :cond_0

    const-string/jumbo v1, "1"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string/jumbo v1, "ding_bluepop_enter_click"

    invoke-static {v1, v0}, Lavw;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 446
    return-void

    .line 444
    :cond_0
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

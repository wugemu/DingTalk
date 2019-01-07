.class public final Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;
.super Ljava/lang/Object;
.source "WMLLogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$a;,
        Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$c;,
        Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$d;,
        Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$b;,
        Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    return-void
.end method

.method public static varargs a([Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4
    .param p0, "kvs"    # [Ljava/lang/String;

    .prologue
    .line 337
    if-eqz p0, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p0

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 338
    :cond_0
    const/4 v1, 0x0

    .line 347
    :cond_1
    return-object v1

    .line 340
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 341
    .local v1, "lSB":Lcom/alibaba/fastjson/JSONObject;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 342
    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 343
    aget-object v2, p0, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static varargs a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "logLevel"    # I
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "stage"    # Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "kvs"    # [Ljava/lang/String;

    .prologue
    .line 310
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 311
    .local v0, "content":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "stage"

    invoke-virtual {p2}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string/jumbo v2, "code"

    invoke-virtual {v0, v2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v2, "msg"

    invoke-virtual {v0, v2, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string/jumbo v2, "data"

    invoke-static {p5}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a([Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v2

    .line 1129
    iget-object v2, v2, Ljpo;->c:Ljpo$a;

    iget-object v1, v2, Ljpo$a;->c:Ljpt;

    .line 317
    .local v1, "logAdapter":Ljpt;
    if-nez v1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    const/4 v2, 0x3

    if-ne v2, p0, :cond_2

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "windmill."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    .line 322
    invoke-interface {v1, v2, v3}, Ljpt;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_2
    const/4 v2, 0x4

    if-ne v2, p0, :cond_3

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "windmill."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 326
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-interface {v1, v2, v3}, Ljpt;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_3
    const/4 v2, 0x5

    if-ne v2, p0, :cond_4

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "windmill."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-interface {v1, v2, v3}, Ljpt;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_4
    const/4 v2, 0x6

    if-ne v2, p0, :cond_0

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "windmill."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-interface {v1, v2, v3}, Ljpt;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

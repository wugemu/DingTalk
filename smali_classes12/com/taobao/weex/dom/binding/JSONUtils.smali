.class public Lcom/taobao/weex/dom/binding/JSONUtils;
.super Ljava/lang/Object;
.source "JSONUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isJSON(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "json"    # Ljava/lang/Object;

    .prologue
    .line 31
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 37
    .end local p0    # "json":Ljava/lang/Object;
    :goto_0
    return v0

    .line 34
    .restart local p0    # "json":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 35
    check-cast p0, Ljava/lang/String;

    .end local p0    # "json":Ljava/lang/Object;
    const-string/jumbo v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 37
    .restart local p0    # "json":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJSON(Ljava/lang/String;)Z
    .locals 1
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string/jumbo v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static toJSON(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p0, "json"    # Ljava/lang/Object;

    .prologue
    .line 41
    instance-of v0, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    .line 44
    .end local p0    # "json":Ljava/lang/Object;
    :goto_0
    return-object p0

    .restart local p0    # "json":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    goto :goto_0
.end method

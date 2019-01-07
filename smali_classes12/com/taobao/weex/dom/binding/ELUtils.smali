.class public Lcom/taobao/weex/dom/binding/ELUtils;
.super Ljava/lang/Object;
.source "ELUtils.java"


# static fields
.field public static final BINDING:Ljava/lang/String; = "@binding"

.field public static final COMPONENT_PROPS:Ljava/lang/String; = "@componentProps"

.field public static final EXCLUDES_BINDING:[Ljava/lang/String;

.field public static final IS_COMPONENT_ROOT:Ljava/lang/String; = "@isComponentRoot"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "clickEventParams"

    aput-object v2, v0, v1

    sput-object v0, Lcom/taobao/weex/dom/binding/ELUtils;->EXCLUDES_BINDING:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindingBlock(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 74
    .local v3, "json":Ljava/lang/String;
    :goto_0
    instance-of v8, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v8, :cond_2

    move-object v5, p0

    .line 75
    check-cast v5, Lcom/alibaba/fastjson/JSONObject;

    .line 76
    .local v5, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "@binding"

    .end local v3    # "json":Ljava/lang/String;
    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 77
    const-string/jumbo v8, "@binding"

    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 78
    .local v1, "binding":Ljava/lang/Object;
    instance-of v8, v1, Lcom/taobao/weex/el/parse/Token;

    if-nez v8, :cond_0

    .line 79
    const-string/jumbo v8, "@binding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/taobao/weex/el/parse/Parser;->parse(Ljava/lang/String;)Lcom/taobao/weex/el/parse/Token;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .end local v1    # "binding":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 83
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 84
    .local v6, "propsKey":Ljava/lang/Object;
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v8, :cond_1

    .line 85
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v10, "@binding"

    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 86
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/JSONObject;

    .line 87
    .local v7, "propsValue":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "@binding"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 88
    .restart local v1    # "binding":Ljava/lang/Object;
    instance-of v8, v1, Lcom/taobao/weex/el/parse/Token;

    if-nez v8, :cond_1

    .line 89
    const-string/jumbo v8, "@binding"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/taobao/weex/el/parse/Parser;->parse(Ljava/lang/String;)Lcom/taobao/weex/el/parse/Token;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 93
    .end local v1    # "binding":Ljava/lang/Object;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "propsKey":Ljava/lang/Object;
    .end local v7    # "propsValue":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "json":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v8, p0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v8, :cond_3

    move-object v0, p0

    .line 94
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 95
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v2, 0x0

    .end local v3    # "json":Ljava/lang/String;
    .end local p0    # "value":Ljava/lang/Object;
    .local v2, "i":I
    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_5

    .line 96
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/taobao/weex/dom/binding/ELUtils;->bindingBlock(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 98
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "i":I
    .restart local v3    # "json":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v8, p0, Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    const-string/jumbo v8, "{"

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 101
    invoke-static {v3}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .local p0, "value":Lcom/alibaba/fastjson/JSONObject;
    goto/16 :goto_0

    .line 102
    .end local p0    # "value":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    const-string/jumbo v8, "["

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 103
    invoke-static {v3}, Lgxk;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p0

    .local p0, "value":Lcom/alibaba/fastjson/JSONArray;
    goto/16 :goto_0

    .line 106
    .end local p0    # "value":Lcom/alibaba/fastjson/JSONArray;
    :cond_5
    return-object p0
.end method

.method public static isBinding(Ljava/lang/Object;)Z
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 52
    instance-of v5, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_1

    move-object v2, p0

    .line 53
    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .line 54
    .local v2, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "@binding"

    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 67
    .end local v2    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local p0    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 57
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, p0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v5, :cond_2

    move-object v0, p0

    .line 58
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 59
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 60
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/taobao/weex/dom/binding/ELUtils;->isBinding(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v1    # "i":I
    :cond_2
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 65
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    const-string/jumbo v5, "@binding"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_0

    move v3, v4

    goto :goto_0

    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    move v3, v4

    .line 67
    goto :goto_0
.end method

.method public static vforBlock(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "vfor"    # Ljava/lang/Object;

    .prologue
    .line 110
    :goto_0
    instance-of v1, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_1

    move-object v1, p0

    .line 111
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "@expression"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 112
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "@expression"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    .local v0, "list":Ljava/lang/Object;
    instance-of v1, v0, Lcom/taobao/weex/el/parse/Token;

    if-nez v1, :cond_0

    move-object v1, p0

    .line 114
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "@expression"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/el/parse/Parser;->parse(Ljava/lang/String;)Lcom/taobao/weex/el/parse/Token;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v0    # "list":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object p0

    .line 117
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 120
    .end local p0    # "vfor":Ljava/lang/Object;
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const-string/jumbo v1, "weex"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "weex vfor is illegal "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

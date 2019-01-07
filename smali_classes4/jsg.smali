.class public final Ljsg;
.super Lcom/taobao/weex/bridge/NativeInvokeHelper;
.source "WMLNativeInvokeHelper.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/taobao/weex/bridge/NativeInvokeHelper;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Ljsg;->a:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method protected final prepareArguments([Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/JSONArray;)[Ljava/lang/Object;
    .locals 6
    .param p1, "paramClazzs"    # [Ljava/lang/reflect/Type;
    .param p2, "args"    # Lcom/alibaba/fastjson/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 23
    array-length v4, p1

    new-array v2, v4, [Ljava/lang/Object;

    .line 26
    .local v2, "params":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_9

    .line 27
    aget-object v1, p1, v0

    .line 28
    .local v1, "paramClazz":Ljava/lang/reflect/Type;
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_1

    .line 30
    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 26
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_1
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "[prepareArguments] method argument list not match."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 36
    :cond_2
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 38
    .local v3, "value":Ljava/lang/Object;
    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    if-ne v1, v4, :cond_5

    .line 39
    instance-of v4, v3, Lcom/alibaba/fastjson/JSONObject;

    if-nez v4, :cond_3

    if-nez v3, :cond_4

    .line 40
    :cond_3
    aput-object v3, v2, v0

    goto :goto_1

    .line 41
    :cond_4
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    aput-object v4, v2, v0

    goto :goto_1

    .line 44
    :cond_5
    const-class v4, Lcom/taobao/weex/bridge/JSCallback;

    if-ne v4, v1, :cond_8

    .line 45
    instance-of v4, v3, Lcom/taobao/weex/bridge/JSCallback;

    if-eqz v4, :cond_6

    .line 46
    aput-object v3, v2, v0

    goto :goto_1

    .line 47
    :cond_6
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 48
    new-instance v4, Lcom/taobao/weex/bridge/SimpleJSCallback;

    iget-object v5, p0, Ljsg;->a:Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-direct {v4, v5, v3}, Lcom/taobao/weex/bridge/SimpleJSCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v0

    goto :goto_1

    .line 50
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_7
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "Parameter type not match."

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 53
    :cond_8
    invoke-static {v1, v3}, Lcom/taobao/weex/utils/WXReflectionUtils;->parseArgument(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    goto :goto_1

    .line 56
    .end local v1    # "paramClazz":Ljava/lang/reflect/Type;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_9
    return-object v2
.end method

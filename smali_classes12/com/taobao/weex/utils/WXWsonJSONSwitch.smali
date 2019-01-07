.class public Lcom/taobao/weex/utils/WXWsonJSONSwitch;
.super Ljava/lang/Object;
.source "WXWsonJSONSwitch.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WXSwitch"

.field public static USE_WSON:Z = false

.field public static final WSON_OFF:Ljava/lang/String; = "wson_off"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->USE_WSON:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final convertJSONToWsonIfUseWson([B)[B
    .locals 2
    .param p0, "json"    # [B

    .prologue
    .line 40
    sget-boolean v1, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->USE_WSON:Z

    if-nez v1, :cond_0

    .line 50
    .end local p0    # "json":[B
    .local v0, "str":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 43
    .end local v0    # "str":Ljava/lang/String;
    .restart local p0    # "json":[B
    :cond_0
    if-nez p0, :cond_1

    .line 44
    const/4 p0, 0x0

    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 47
    .restart local v0    # "str":Ljava/lang/String;
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-static {v0}, Lgxk;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/wson/WsonUtils;->toWson(Ljava/lang/Object;)[B

    move-result-object p0

    goto :goto_0

    .line 50
    :cond_2
    invoke-static {v0}, Lgxk;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/wson/WsonUtils;->toWson(Ljava/lang/Object;)[B

    move-result-object p0

    goto :goto_0
.end method

.method public static final convertWXJSObjectDataToJSON(Lcom/taobao/weex/bridge/WXJSObject;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Lcom/taobao/weex/bridge/WXJSObject;

    .prologue
    .line 95
    iget v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/taobao/weex/wson/Wson;->parse([B)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgxk;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgxk;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static fromObjectToJSONString(Lcom/taobao/weex/bridge/WXJSObject;)Ljava/lang/String;
    .locals 3
    .param p0, "obj"    # Lcom/taobao/weex/bridge/WXJSObject;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 117
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/taobao/weex/bridge/WXJSObject;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 118
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXJSObject;->data:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/taobao/weex/wson/Wson;->parse([B)Ljava/lang/Object;

    move-result-object v0

    .line 119
    .local v0, "data":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .end local v0    # "data":Ljava/lang/Object;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final parseWsonOrJSON([B)Ljava/lang/Object;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v1, 0x0

    .line 71
    :goto_0
    return-object v1

    .line 61
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->USE_WSON:Z

    if-eqz v1, :cond_1

    .line 62
    invoke-static {p0}, Lcom/taobao/weex/wson/Wson;->parse([B)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 64
    :cond_1
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lgxk;->parse(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WXSwitch"

    invoke-static {v1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    sget-boolean v1, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->USE_WSON:Z

    if-eqz v1, :cond_2

    .line 69
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lgxk;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {p0}, Lcom/taobao/weex/wson/Wson;->parse([B)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static final toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;
    .locals 3
    .param p0, "tasks"    # Ljava/lang/Object;

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    new-instance p0, Lcom/taobao/weex/bridge/WXJSObject;

    .end local p0    # "tasks":Ljava/lang/Object;
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(Ljava/lang/Object;)V

    .line 89
    :goto_0
    return-object p0

    .line 83
    .restart local p0    # "tasks":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/taobao/weex/bridge/WXJSObject;

    if-ne v0, v1, :cond_1

    .line 84
    check-cast p0, Lcom/taobao/weex/bridge/WXJSObject;

    goto :goto_0

    .line 86
    :cond_1
    sget-boolean v0, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->USE_WSON:Z

    if-eqz v0, :cond_2

    .line 87
    new-instance v0, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v1, 0x4

    invoke-static {p0}, Lcom/taobao/weex/wson/Wson;->toWson(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 89
    :cond_2
    new-instance v0, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v1, 0x3

    invoke-static {p0}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    move-object p0, v0

    goto :goto_0
.end method

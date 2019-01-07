.class public final Lfxb;
.super Ljava/lang/Object;
.source "NewMsgUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 8

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "brand":Ljava/lang/String;
    const/4 v5, 0x0

    .line 66
    .local v5, "osVersion":Ljava/lang/String;
    const/4 v6, 0x0

    .line 67
    .local v6, "romVersion":Ljava/lang/String;
    const/4 v4, 0x0

    .line 68
    .local v4, "model":Ljava/lang/String;
    const/4 v3, 0x0

    .line 70
    .local v3, "locale":Ljava/lang/String;
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 71
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcms;->b()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {}, Lcof;->i()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 79
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 81
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string/jumbo v7, "brand="

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .end local v0    # "brand":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v7, "os_version="

    if-nez v5, :cond_1

    const-string/jumbo v5, ""

    .end local v5    # "osVersion":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v7, "model="

    if-nez v4, :cond_2

    const-string/jumbo v4, ""

    .end local v4    # "model":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v7, "rom_version="

    if-nez v6, :cond_3

    const-string/jumbo v6, ""

    .end local v6    # "romVersion":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string/jumbo v7, "locale="

    if-nez v3, :cond_4

    const-string/jumbo v3, ""

    .end local v3    # "locale":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 75
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v0    # "brand":Ljava/lang/String;
    .restart local v3    # "locale":Ljava/lang/String;
    .restart local v4    # "model":Ljava/lang/String;
    .restart local v5    # "osVersion":Ljava/lang/String;
    .restart local v6    # "romVersion":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v0    # "brand":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "locale":Ljava/lang/String;
    .end local v4    # "model":Ljava/lang/String;
    .end local v5    # "osVersion":Ljava/lang/String;
    .end local v6    # "romVersion":Ljava/lang/String;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 87
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    :try_start_0
    const-string/jumbo v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 99
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 96
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_0
    move-exception v0

    .line 97
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

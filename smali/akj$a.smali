.class final Lakj$a;
.super Ljava/lang/Object;
.source "UTStreamConfBiz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/Map;
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

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lakj$a;->a:Ljava/util/Map;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lakj$a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lakj$a;
    .locals 8
    .param p0, "aJsonStr"    # Ljava/lang/String;

    .prologue
    .line 155
    :try_start_0
    new-instance v6, Lakj$a;

    invoke-direct {v6}, Lakj$a;-><init>()V

    .line 156
    .local v6, "lSampleItem":Lakj$a;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, "lDataJson":Lorg/json/JSONObject;
    const-string/jumbo v7, "stm"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 158
    const-string/jumbo v7, "stm"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lakj$a;->b:Ljava/lang/String;

    .line 161
    :cond_0
    const-string/jumbo v7, "arg1"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v1, "lArg1Stm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "arg1"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 164
    .local v3, "lJsonArg1":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 165
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 166
    .local v5, "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 167
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 168
    .local v4, "lKey":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v1    # "lArg1Stm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "lDataJson":Lorg/json/JSONObject;
    .end local v3    # "lJsonArg1":Lorg/json/JSONObject;
    .end local v4    # "lKey":Ljava/lang/String;
    .end local v5    # "lKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "lSampleItem":Lakj$a;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    const/4 v6, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v6

    .line 171
    .restart local v1    # "lArg1Stm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "lDataJson":Lorg/json/JSONObject;
    .restart local v3    # "lJsonArg1":Lorg/json/JSONObject;
    .restart local v6    # "lSampleItem":Lakj$a;
    :cond_2
    :try_start_1
    iput-object v1, v6, Lakj$a;->a:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

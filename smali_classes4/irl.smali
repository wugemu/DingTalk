.class final Lirl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lirk;


# direct methods
.method constructor <init>(Lirk;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lirl;->b:Lirk;

    iput-object p2, p0, Lirl;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 122
    :try_start_0
    new-instance v0, Lisb;

    invoke-direct {v0}, Lisb;-><init>()V

    .line 123
    iget-object v1, p0, Lirl;->a:Landroid/content/Context;

    .line 1231
    const-string/jumbo v2, ""

    invoke-static {v1}, Lisp;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Liry;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lirw;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_1

    .line 125
    iget-object v1, p0, Lirl;->b:Lirk;

    .line 2045
    iget-object v0, v0, Lirw;->b:Ljava/lang/String;

    .line 3102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 3107
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3108
    const-string/jumbo v0, "st_sdk_config"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3109
    const-string/jumbo v2, "timeout"

    const/16 v3, 0xdac

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lirk;->a:I

    .line 3110
    const-string/jumbo v2, "tbreturl"

    const-string/jumbo v3, "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lirk;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 126
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lirl;->b:Lirk;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 4089
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4090
    const-string/jumbo v2, "timeout"

    invoke-virtual {v0}, Lirk;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4091
    const-string/jumbo v2, "tbreturl"

    .line 5053
    iget-object v0, v0, Lirk;->b:Ljava/lang/String;

    .line 4091
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4094
    invoke-static {}, Lisf;->a()Lisf;

    move-result-object v0

    .line 6042
    iget-object v0, v0, Lisf;->a:Landroid/content/Context;

    .line 4095
    const-string/jumbo v2, "alipay_cashier_dynamic_config"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lisn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 4098
    :cond_1
    :goto_1
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

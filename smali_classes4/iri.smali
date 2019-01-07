.class final Liri;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/alipay/sdk/authjs/a;

.field final synthetic b:Lirg;


# direct methods
.method constructor <init>(Lirg;Lcom/alipay/sdk/authjs/a;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Liri;->b:Lirg;

    iput-object p2, p0, Liri;->a:Lcom/alipay/sdk/authjs/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 156
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 158
    :try_start_0
    const-string/jumbo v1, "toastCallBack"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    new-instance v1, Lcom/alipay/sdk/authjs/a;

    const-string/jumbo v2, "callback"

    invoke-direct {v1, v2}, Lcom/alipay/sdk/authjs/a;-><init>(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Liri;->a:Lcom/alipay/sdk/authjs/a;

    .line 1073
    iget-object v2, v2, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    .line 1077
    iput-object v2, v1, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    .line 1109
    iput-object v0, v1, Lcom/alipay/sdk/authjs/a;->e:Lorg/json/JSONObject;

    .line 164
    iget-object v0, p0, Liri;->b:Lirg;

    .line 2018
    iget-object v0, v0, Lirg;->a:Lirf;

    .line 164
    invoke-interface {v0, v1}, Lirf;->a(Lcom/alipay/sdk/authjs/a;)V

    .line 165
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

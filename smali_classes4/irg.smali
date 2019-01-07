.class public final Lirg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lirf;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lirf;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lirg;->b:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lirg;->a:Lirf;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    const-string/jumbo v1, "error"

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    new-instance v1, Lcom/alipay/sdk/authjs/a;

    const-string/jumbo v2, "callback"

    invoke-direct {v1, v2}, Lcom/alipay/sdk/authjs/a;-><init>(Ljava/lang/String;)V

    .line 4109
    iput-object v0, v1, Lcom/alipay/sdk/authjs/a;->e:Lorg/json/JSONObject;

    .line 5077
    iput-object p1, v1, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lirg;->a:Lirf;

    invoke-interface {v0, v1}, Lirf;->a(Lcom/alipay/sdk/authjs/a;)V

    goto :goto_0
.end method

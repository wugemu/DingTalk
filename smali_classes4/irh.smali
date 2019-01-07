.class public final Lirh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/sdk/authjs/a;

.field final synthetic b:Lirg;


# direct methods
.method public constructor <init>(Lirg;Lcom/alipay/sdk/authjs/a;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lirh;->b:Lirg;

    iput-object p2, p0, Lirh;->a:Lcom/alipay/sdk/authjs/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    iget-object v1, p0, Lirh;->b:Lirg;

    iget-object v2, p0, Lirh;->a:Lcom/alipay/sdk/authjs/a;

    .line 1132
    if-eqz v2, :cond_1

    const-string/jumbo v0, "toast"

    .line 2089
    iget-object v3, v2, Lcom/alipay/sdk/authjs/a;->c:Ljava/lang/String;

    .line 1132
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3105
    iget-object v0, v2, Lcom/alipay/sdk/authjs/a;->e:Lorg/json/JSONObject;

    .line 2140
    const-string/jumbo v3, "content"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2142
    const-string/jumbo v4, "duration"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 2146
    const/4 v0, 0x1

    .line 2147
    const/16 v5, 0x9c4

    if-ge v4, v5, :cond_0

    .line 2148
    const/4 v0, 0x0

    .line 2150
    :cond_0
    iget-object v4, v1, Lirg;->b:Landroid/content/Context;

    invoke-static {v4, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2152
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 2153
    new-instance v4, Liri;

    invoke-direct {v4, v1, v2}, Liri;-><init>(Lirg;Lcom/alipay/sdk/authjs/a;)V

    int-to-long v0, v0

    invoke-virtual {v3, v4, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1135
    :cond_1
    sget v0, Lcom/alipay/sdk/authjs/a$a;->a:I

    .line 90
    sget v1, Lcom/alipay/sdk/authjs/a$a;->a:I

    if-eq v0, v1, :cond_2

    .line 92
    :try_start_0
    iget-object v1, p0, Lirh;->b:Lirg;

    iget-object v2, p0, Lirh;->a:Lcom/alipay/sdk/authjs/a;

    .line 4073
    iget-object v2, v2, Lcom/alipay/sdk/authjs/a;->a:Ljava/lang/String;

    .line 5018
    invoke-virtual {v1, v2, v0}, Lirg;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

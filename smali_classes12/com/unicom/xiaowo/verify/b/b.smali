.class final Lcom/unicom/xiaowo/verify/b/b;
.super Ljava/lang/Object;
.source "AccountOpen.java"

# interfaces
.implements Lcom/unicom/xiaowo/verify/c/f;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/unicom/xiaowo/verify/ResultListener;

.field final synthetic c:Lcom/unicom/xiaowo/verify/b/a;


# direct methods
.method constructor <init>(Lcom/unicom/xiaowo/verify/b/a;Landroid/content/Context;Lcom/unicom/xiaowo/verify/ResultListener;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/unicom/xiaowo/verify/b/b;->c:Lcom/unicom/xiaowo/verify/b/a;

    iput-object p2, p0, Lcom/unicom/xiaowo/verify/b/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/unicom/xiaowo/verify/b/b;->b:Lcom/unicom/xiaowo/verify/ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 67
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string/jumbo v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    const-string/jumbo v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/unicom/xiaowo/verify/d/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unicom/xiaowo/verify/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "data:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unicom/xiaowo/verify/d/e;->a(Ljava/lang/String;)V

    .line 75
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "accessCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string/jumbo v3, "operatorType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-static {}, Lcom/unicom/xiaowo/verify/b/c;->a()Lcom/unicom/xiaowo/verify/b/c;

    const-string/jumbo v0, "accessCode\u83b7\u53d6\u5931\u8d25"

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/b/b;->b:Lcom/unicom/xiaowo/verify/ResultListener;

    invoke-static {v0, v1}, Lcom/unicom/xiaowo/verify/b/c;->a(Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V

    .line 93
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/unicom/xiaowo/verify/b/c;->a()Lcom/unicom/xiaowo/verify/b/c;

    iget-object v3, p0, Lcom/unicom/xiaowo/verify/b/b;->b:Lcom/unicom/xiaowo/verify/ResultListener;

    invoke-static {v2, v0, v1, v3}, Lcom/unicom/xiaowo/verify/b/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/unicom/xiaowo/verify/b/c;->a()Lcom/unicom/xiaowo/verify/b/c;

    const-string/jumbo v0, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/b/b;->b:Lcom/unicom/xiaowo/verify/ResultListener;

    invoke-static {v0, v1}, Lcom/unicom/xiaowo/verify/b/c;->a(Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V

    goto :goto_0

    .line 85
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/unicom/xiaowo/verify/b/c;->a()Lcom/unicom/xiaowo/verify/b/c;

    iget-object v0, p0, Lcom/unicom/xiaowo/verify/b/b;->b:Lcom/unicom/xiaowo/verify/ResultListener;

    invoke-static {v2, v0}, Lcom/unicom/xiaowo/verify/b/c;->a(Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 91
    :cond_2
    invoke-static {}, Lcom/unicom/xiaowo/verify/b/c;->a()Lcom/unicom/xiaowo/verify/b/c;

    const-string/jumbo v0, "\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25"

    iget-object v1, p0, Lcom/unicom/xiaowo/verify/b/b;->b:Lcom/unicom/xiaowo/verify/ResultListener;

    invoke-static {v0, v1}, Lcom/unicom/xiaowo/verify/b/c;->a(Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V

    goto :goto_0
.end method

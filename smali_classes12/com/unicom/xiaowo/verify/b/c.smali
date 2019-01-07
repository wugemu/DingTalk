.class public Lcom/unicom/xiaowo/verify/b/c;
.super Ljava/lang/Object;
.source "PopResultUtils.java"


# static fields
.field private static volatile a:Lcom/unicom/xiaowo/verify/b/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static a()Lcom/unicom/xiaowo/verify/b/c;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/unicom/xiaowo/verify/b/c;->a:Lcom/unicom/xiaowo/verify/b/c;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/unicom/xiaowo/verify/b/c;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/unicom/xiaowo/verify/b/c;->a:Lcom/unicom/xiaowo/verify/b/c;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/unicom/xiaowo/verify/b/c;

    invoke-direct {v0}, Lcom/unicom/xiaowo/verify/b/c;-><init>()V

    sput-object v0, Lcom/unicom/xiaowo/verify/b/c;->a:Lcom/unicom/xiaowo/verify/b/c;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/unicom/xiaowo/verify/b/c;->a:Lcom/unicom/xiaowo/verify/b/c;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V
    .locals 3

    .prologue
    .line 60
    :try_start_0
    invoke-static {}, Lcom/unicom/xiaowo/verify/b/c;->b()V

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    const-string/jumbo v1, "resultCode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string/jumbo v1, "resultMsg"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string/jumbo v1, "accessCode"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string/jumbo v1, "operatorType"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/unicom/xiaowo/verify/ResultListener;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/verify/ResultListener;)V
    .locals 3

    .prologue
    .line 40
    :try_start_0
    invoke-static {}, Lcom/unicom/xiaowo/verify/b/c;->b()V

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    const-string/jumbo v1, "resultCode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    const-string/jumbo v1, "resultMsg"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string/jumbo v1, "accessCode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string/jumbo v1, "operatorType"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/unicom/xiaowo/verify/ResultListener;->onResult(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b()V
    .locals 1

    .prologue
    .line 114
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/f;->c(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/f;->d(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/f;->b(Ljava/lang/String;)V

    .line 117
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/unicom/xiaowo/verify/d/f;->e(Ljava/lang/String;)V

    .line 118
    return-void
.end method

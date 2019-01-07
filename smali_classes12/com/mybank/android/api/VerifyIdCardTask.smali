.class public Lcom/mybank/android/api/VerifyIdCardTask;
.super Ljava/lang/Object;
.source "VerifyIdCardTask.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:I

.field public h:Lorg/json/JSONObject;

.field public i:Ljfa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mybank/android/api/VerifyIdCardTask;->b:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mybank/android/api/VerifyIdCardTask;->c:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/mybank/android/api/VerifyIdCardTask;->d:Ljava/lang/String;

    .line 36
    iput v1, p0, Lcom/mybank/android/api/VerifyIdCardTask;->e:I

    .line 37
    iput v1, p0, Lcom/mybank/android/api/VerifyIdCardTask;->f:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/mybank/android/api/VerifyIdCardTask;->g:I

    .line 46
    iput-object p1, p0, Lcom/mybank/android/api/VerifyIdCardTask;->a:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/mybank/android/api/VerifyIdCardTask;)V
    .locals 4
    .param p0, "x0"    # Lcom/mybank/android/api/VerifyIdCardTask;

    .prologue
    const/4 v3, 0x1

    .line 23
    .line 2163
    iget-object v0, p0, Lcom/mybank/android/api/VerifyIdCardTask;->i:Ljfa;

    if-eqz v0, :cond_0

    .line 2165
    :try_start_0
    iget-object v0, p0, Lcom/mybank/android/api/VerifyIdCardTask;->h:Lorg/json/JSONObject;

    const-string/jumbo v1, "bisToken"

    iget-object v2, p0, Lcom/mybank/android/api/VerifyIdCardTask;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2166
    iget-object v0, p0, Lcom/mybank/android/api/VerifyIdCardTask;->h:Lorg/json/JSONObject;

    const-string/jumbo v1, "drmJson"

    iget-object v2, p0, Lcom/mybank/android/api/VerifyIdCardTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2167
    iget-object v0, p0, Lcom/mybank/android/api/VerifyIdCardTask;->h:Lorg/json/JSONObject;

    const-string/jumbo v1, "success"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2171
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "verifyIDCard  success:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mybank/android/api/VerifyIdCardTask;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    iget-object v0, p0, Lcom/mybank/android/api/VerifyIdCardTask;->i:Ljfa;

    iget-object v1, p0, Lcom/mybank/android/api/VerifyIdCardTask;->h:Lorg/json/JSONObject;

    invoke-interface {v0, v3, v1}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 23
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/mybank/android/api/VerifyIdCardTask;I)V
    .locals 3
    .param p0, "x0"    # Lcom/mybank/android/api/VerifyIdCardTask;
    .param p1, "x1"    # I

    .prologue
    .line 23
    .line 1176
    iget-object v0, p0, Lcom/mybank/android/api/VerifyIdCardTask;->i:Ljfa;

    if-eqz v0, :cond_0

    .line 1178
    :try_start_0
    iget-object v0, p0, Lcom/mybank/android/api/VerifyIdCardTask;->h:Lorg/json/JSONObject;

    const-string/jumbo v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "verifyIDCard  error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mybank/android/api/VerifyIdCardTask;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    iget-object v0, p0, Lcom/mybank/android/api/VerifyIdCardTask;->i:Ljfa;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mybank/android/api/VerifyIdCardTask;->h:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 23
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class public Lcom/mybank/android/api/MyConfigTask;
.super Ljava/lang/Object;
.source "MyConfigTask.java"


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:Ljfa;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mybank/android/api/MyConfigTask;->c:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .param p1, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mybank/android/api/MyConfigTask;->b:Ljfa;

    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/mybank/android/api/MyConfigTask;->a:Lorg/json/JSONObject;

    const-string/jumbo v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "verifyIDCard  error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mybank/android/api/MyConfigTask;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v0, p0, Lcom/mybank/android/api/MyConfigTask;->b:Ljfa;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mybank/android/api/MyConfigTask;->a:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 87
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

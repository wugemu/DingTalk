.class public Lcom/mybank/android/api/EncryptTask;
.super Ljava/lang/Object;
.source "EncryptTask.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/mybank/android/api/EncryptTask;->a:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljfa;)V
    .locals 7
    .param p0, "param"    # Lorg/json/JSONObject;
    .param p1, "listener"    # Ljfa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 22
    const-string/jumbo v4, "text"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "encText":Ljava/lang/String;
    const-string/jumbo v4, "key"

    const-string/jumbo v5, ""

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    const-class v4, Lcom/mybank/android/phone/common/service/api/CipherService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mybank/android/phone/common/service/api/ServiceManager;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mybank/android/phone/common/service/api/CipherService;

    .line 25
    .local v0, "cipherService":Lcom/mybank/android/phone/common/service/api/CipherService;
    invoke-virtual {v0, v2}, Lcom/mybank/android/phone/common/service/api/CipherService;->encrypt_Hard_RSA_Base64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "encResult":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .local v3, "jsonResult":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 29
    const-string/jumbo v4, "errorMessage"

    const-string/jumbo v5, "encrypt error."

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string/jumbo v4, "error"

    const/16 v5, 0xa

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 34
    :cond_0
    const-string/jumbo v4, "text"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string/jumbo v4, "success"

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 36
    invoke-interface {p1, v6, v3}, Ljfa;->onResult(ZLorg/json/JSONObject;)V

    .line 37
    return-void
.end method

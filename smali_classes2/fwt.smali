.class public final Lfwt;
.super Ljava/lang/Object;
.source "DeviceObject.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcfo;)V
    .locals 1
    .param p1, "model"    # Lcfo;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-eqz p1, :cond_3

    .line 27
    iget-object v0, p1, Lcfo;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p1, Lcfo;->a:Ljava/lang/String;

    iput-object v0, p0, Lfwt;->a:Ljava/lang/String;

    .line 30
    :cond_0
    iget-object v0, p1, Lcfo;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p1, Lcfo;->b:Ljava/lang/String;

    iput-object v0, p0, Lfwt;->b:Ljava/lang/String;

    .line 33
    :cond_1
    iget-object v0, p1, Lcfo;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p1, Lcfo;->c:Ljava/lang/String;

    iput-object v0, p0, Lfwt;->c:Ljava/lang/String;

    .line 36
    :cond_2
    iget-object v0, p1, Lcfo;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p1, Lcfo;->d:Ljava/lang/String;

    iput-object v0, p0, Lfwt;->d:Ljava/lang/String;

    .line 40
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "model"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lfwt;->a:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lfwt;->b:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lfwt;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfwt;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lfwt;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfwt;->b:Ljava/lang/String;

    .line 48
    :cond_0
    iput-object p3, p0, Lfwt;->c:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lfwt;->d:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static a(Ljava/lang/String;)Lfwt;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "deviceObject":Lfwt;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    new-instance v0, Lfwt;

    .end local v0    # "deviceObject":Lfwt;
    invoke-direct {v0}, Lfwt;-><init>()V

    .line 70
    .restart local v0    # "deviceObject":Lfwt;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "deviceId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfwt;->a:Ljava/lang/String;

    .line 72
    const-string/jumbo v3, "deviceTitle"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfwt;->b:Ljava/lang/String;

    .line 73
    const-string/jumbo v3, "deviceModel"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfwt;->c:Ljava/lang/String;

    .line 74
    const-string/jumbo v3, "deviceToken"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lfwt;->d:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcfo;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 57
    new-instance v0, Lcfo;

    invoke-direct {v0}, Lcfo;-><init>()V

    .line 58
    .local v0, "model":Lcfo;
    iget-object v1, p0, Lfwt;->a:Ljava/lang/String;

    iput-object v1, v0, Lcfo;->a:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lfwt;->b:Ljava/lang/String;

    iput-object v1, v0, Lcfo;->b:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lfwt;->c:Ljava/lang/String;

    iput-object v1, v0, Lcfo;->c:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lfwt;->d:Ljava/lang/String;

    iput-object v1, v0, Lcfo;->d:Ljava/lang/String;

    .line 62
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 83
    const/4 v2, 0x0

    .line 84
    .local v2, "ret":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "deviceId"

    iget-object v4, p0, Lfwt;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v3, "deviceTitle"

    iget-object v4, p0, Lfwt;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v3, "deviceModel"

    iget-object v4, p0, Lfwt;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v3, "deviceToken"

    iget-object v4, p0, Lfwt;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 95
    :goto_0
    return-object v2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

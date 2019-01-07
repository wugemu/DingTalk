.class public abstract Lcom/alibaba/wukong/auth/bi;
.super Ljava/lang/Object;
.source "UploaderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/auth/bi$a;
    }
.end annotation


# instance fields
.field protected bK:Lifu;

.field protected final bL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lifv",
            "<",
            "Lifx;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final bM:Lcom/laiwang/protocol/upload/UploaderExtra;


# direct methods
.method public constructor <init>(Lcom/laiwang/protocol/upload/UploaderExtra;)V
    .locals 1
    .param p1, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wukong/auth/bi;->bK:Lifu;

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/auth/bi;->bL:Ljava/util/Set;

    .line 18
    iput-object p1, p0, Lcom/alibaba/wukong/auth/bi;->bM:Lcom/laiwang/protocol/upload/UploaderExtra;

    .line 19
    return-void
.end method

.method public static b(Lcom/laiwang/protocol/upload/UploaderExtra;)Ljava/lang/String;
    .locals 6
    .param p0, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;

    .prologue
    const/4 v1, 0x0

    .line 65
    if-nez p0, :cond_0

    .line 83
    :goto_0
    return-object v1

    .line 68
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v0, "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "filePath"

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string/jumbo v2, "upId"

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->getUpId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string/jumbo v2, "upIdx"

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->getUpIdx()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    const-string/jumbo v2, "upFrag"

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->getUpFrag()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string/jumbo v2, "uip"

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->getUip()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v2, "mimeType"

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string/jumbo v2, "isHd"

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->isHd()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 76
    const-string/jumbo v2, "isLarge"

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->isLarge()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 77
    const-string/jumbo v2, "mediaIdVer"

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->getMediaIdVer()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v2, "authType"

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->getAuthType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    const-string/jumbo v2, "expiredTime"

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->getExpiredTime()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    const-string/jumbo v2, "isNg"

    invoke-virtual {p0}, Lcom/laiwang/protocol/upload/UploaderExtra;->isNg()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 81
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 83
    .end local v0    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public static j(Ljava/lang/String;)Lcom/laiwang/protocol/upload/UploaderExtra;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 107
    :goto_0
    return-object v0

    .line 91
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "obj":Lorg/json/JSONObject;
    new-instance v0, Lcom/laiwang/protocol/upload/UploaderExtra;

    invoke-direct {v0}, Lcom/laiwang/protocol/upload/UploaderExtra;-><init>()V

    .line 93
    .local v0, "extra":Lcom/laiwang/protocol/upload/UploaderExtra;
    const-string/jumbo v3, "filePath"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/upload/UploaderExtra;->setFilePath(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v3, "upId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/upload/UploaderExtra;->setUpId(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v3, "upIdx"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/upload/UploaderExtra;->setUpIdx(I)V

    .line 96
    const-string/jumbo v3, "upFrag"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/upload/UploaderExtra;->setUpFrag(I)V

    .line 97
    const-string/jumbo v3, "uip"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/laiwang/protocol/upload/UploaderExtra;->setUip(J)V

    .line 98
    const-string/jumbo v3, "mimeType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/upload/UploaderExtra;->setMimeType(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v3, "isHd"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/upload/UploaderExtra;->setHd(Z)V

    .line 100
    const-string/jumbo v3, "isLarge"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/upload/UploaderExtra;->setLarge(Z)V

    .line 101
    const-string/jumbo v3, "mediaIdVer"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/upload/UploaderExtra;->setMediaIdVer(I)V

    .line 102
    const-string/jumbo v3, "authType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/upload/UploaderExtra;->setAuthType(I)V

    .line 103
    const-string/jumbo v3, "expiredTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/upload/UploaderExtra;->setExpiredTime(I)V

    .line 104
    const-string/jumbo v3, "isNg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/laiwang/protocol/upload/UploaderExtra;->setNg(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 107
    .end local v0    # "extra":Lcom/laiwang/protocol/upload/UploaderExtra;
    .end local v1    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    move-object v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lifu;)V
    .locals 0
    .param p1, "controller"    # Lifu;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/wukong/auth/bi;->bK:Lifu;

    .line 49
    return-void
.end method

.method public a(Lifv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lifv",
            "<",
            "Lifx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "listener":Lifv;, "Lifv<Lifx;>;"
    iget-object v0, p0, Lcom/alibaba/wukong/auth/bi;->bL:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public a(Lcom/laiwang/protocol/upload/UploaderExtra;)Z
    .locals 1
    .param p1, "extra"    # Lcom/laiwang/protocol/upload/UploaderExtra;

    .prologue
    .line 25
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laiwang/protocol/upload/UploaderExtra;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

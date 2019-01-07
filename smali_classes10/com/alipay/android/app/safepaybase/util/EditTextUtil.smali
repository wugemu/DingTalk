.class public Lcom/alipay/android/app/safepaybase/util/EditTextUtil;
.super Ljava/lang/Object;
.source "EditTextUtil.java"


# instance fields
.field private textMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->textMap:Ljava/util/Map;

    .line 27
    return-void
.end method


# virtual methods
.method public OnTextChanged(ILjava/lang/String;III)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "before"    # I
    .param p5, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 30
    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->textMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    .local v1, "editText":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 32
    const-string/jumbo v1, ""

    .line 35
    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "header":Ljava/lang/String;
    add-int v5, p3, p4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "tail":Ljava/lang/String;
    add-int v5, p3, p5

    invoke-virtual {p2, p3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "target":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->textMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v2    # "header":Ljava/lang/String;
    .end local v3    # "tail":Ljava/lang/String;
    .end local v4    # "target":Ljava/lang/String;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public clear(I)V
    .locals 2
    .param p1, "id"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->textMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public getText(ILjava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "rsaPublicKey"    # Ljava/lang/String;
    .param p3, "stampString"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/util/EditTextUtil;->textMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    .local v0, "text":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 47
    const-string/jumbo v1, ""

    .line 55
    :goto_0
    return-object v1

    .line 49
    :cond_0
    sget-object v1, Lcom/alipay/android/app/safepaybase/EncryptRandomType;->randombefore:Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    if-ne p4, v1, :cond_1

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_1
    invoke-static {v0, p2}, Lcom/alipay/android/app/safepaybase/encrypt/Rsa;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 55
    goto :goto_0

    .line 52
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

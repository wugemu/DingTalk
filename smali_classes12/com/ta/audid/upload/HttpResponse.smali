.class public Lcom/ta/audid/upload/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# instance fields
.field public data:[B

.field public httpResponseCode:I

.field public rt:J

.field public signature:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/ta/audid/upload/HttpResponse;->httpResponseCode:I

    .line 14
    iput-wide v2, p0, Lcom/ta/audid/upload/HttpResponse;->timestamp:J

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ta/audid/upload/HttpResponse;->signature:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ta/audid/upload/HttpResponse;->data:[B

    .line 17
    iput-wide v2, p0, Lcom/ta/audid/upload/HttpResponse;->rt:J

    return-void
.end method

.method public static checkSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "result"    # Ljava/lang/String;
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 21
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 22
    const-string/jumbo v5, ""

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "result"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "signature"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lcom/ta/audid/utils/UtdidLogger;->sd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {p0}, Lcom/ta/audid/utils/MD5Utils;->getHmacMd5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "md5":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "sign":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 26
    const-string/jumbo v5, ""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "signature is ok"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .end local v1    # "md5":Ljava/lang/String;
    .end local v2    # "sign":Ljava/lang/String;
    :goto_0
    return v3

    .line 29
    .restart local v1    # "md5":Ljava/lang/String;
    .restart local v2    # "sign":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, ""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "signature is error"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "md5":Ljava/lang/String;
    .end local v2    # "sign":Ljava/lang/String;
    :cond_1
    :goto_1
    move v3, v4

    .line 35
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, ""

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v5, v3}, Lcom/ta/audid/utils/UtdidLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.class public Lcom/alibaba/doraemon/impl/image/UrlWithDataParser;
.super Ljava/lang/Object;
.source "UrlWithDataParser.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/UrlParser;


# static fields
.field public static final PROTOCOL_PREFIX:Ljava/lang/String; = "data:"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMd5([B)[B
    .locals 4
    .param p1, "source"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 38
    :try_start_0
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 39
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 40
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 47
    .end local v0    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v2

    .line 43
    .local v2, "var3":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 47
    .end local v2    # "var3":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public url2Key(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "data:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alibaba/doraemon/impl/image/UrlWithDataParser;->getMd5([B)[B

    move-result-object v1

    .line 23
    .local v1, "md5Bytes":[B
    if-nez v1, :cond_1

    .line 32
    .end local v1    # "md5Bytes":[B
    .end local p2    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 26
    .restart local v1    # "md5Bytes":[B
    .restart local p2    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lamv;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object p2, v0

    .line 30
    goto :goto_0
.end method

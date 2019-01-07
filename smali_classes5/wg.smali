.class public final Lwg;
.super Ljava/lang/Object;
.source "TrustManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwg$a;,
        Lwg$b;
    }
.end annotation


# static fields
.field private static a:Ljavax/net/ssl/X509TrustManager;

.field private static b:Ljavax/net/ssl/X509TrustManager;

.field private static c:Ljavax/net/ssl/X509TrustManager;

.field private static d:[Ljava/security/cert/X509Certificate;

.field private static e:Ljava/io/File;

.field private static f:Ljava/security/KeyStore;

.field private static g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 36
    sput-object v6, Lwg;->d:[Ljava/security/cert/X509Certificate;

    .line 41
    sput-object v6, Lwg;->g:Ljava/util/HashSet;

    .line 165
    :try_start_0
    const-string/jumbo v6, "X509"

    invoke-static {v6}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 166
    .local v4, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    sget-object v0, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->app:Landroid/content/Context;

    .line 167
    .local v0, "app":Landroid/content/Context;
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "KeyStore"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "KeyStore.bks"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v6, Lwg;->e:Ljava/io/File;

    .line 168
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    sput-object v6, Lwg;->f:Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4

    .line 172
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v6, Lwg;->e:Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_4

    .line 180
    .local v2, "fis":Ljava/io/FileInputStream;
    :goto_0
    :try_start_2
    sget-object v6, Lwg;->f:Ljava/security/KeyStore;

    const-string/jumbo v8, ""

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-virtual {v6, v2, v8}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 181
    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_4

    .line 200
    :cond_0
    :goto_1
    :try_start_3
    sget-object v6, Lwg;->f:Ljava/security/KeyStore;

    invoke-virtual {v4, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 201
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    .line 202
    .local v5, "tms":[Ljavax/net/ssl/TrustManager;
    if-eqz v5, :cond_1

    .line 204
    array-length v8, v5

    move v6, v7

    :goto_2
    if-ge v6, v8, :cond_1

    aget-object v3, v5, v6

    .line 206
    .local v3, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v9, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v9, :cond_5

    .line 208
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    .end local v3    # "tm":Ljavax/net/ssl/TrustManager;
    sput-object v3, Lwg;->c:Ljavax/net/ssl/X509TrustManager;

    .line 213
    :cond_1
    const-string/jumbo v6, "X509"

    invoke-static {v6}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 214
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 215
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    .line 216
    if-eqz v5, :cond_2

    .line 218
    array-length v8, v5

    move v6, v7

    :goto_3
    if-ge v6, v8, :cond_2

    aget-object v3, v5, v6

    .line 220
    .restart local v3    # "tm":Ljavax/net/ssl/TrustManager;
    instance-of v9, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v9, :cond_6

    .line 222
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    .end local v3    # "tm":Ljavax/net/ssl/TrustManager;
    sput-object v3, Lwg;->a:Ljavax/net/ssl/X509TrustManager;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_4

    .line 241
    .end local v0    # "app":Landroid/content/Context;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "tms":[Ljavax/net/ssl/TrustManager;
    :cond_2
    :goto_4
    new-instance v6, Lwg$b;

    invoke-direct {v6, v7}, Lwg$b;-><init>(B)V

    sput-object v6, Lwg;->b:Ljavax/net/ssl/X509TrustManager;

    .line 242
    return-void

    .line 176
    .restart local v0    # "app":Landroid/content/Context;
    :catch_0
    move-exception v6

    const/4 v2, 0x0

    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 185
    :catch_1
    move-exception v1

    .line 187
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 188
    const-string/jumbo v6, "TrustManagerFactory"

    const-string/jumbo v8, "KeyStore IOException while initializing TrustManagerFactory "

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    :cond_3
    const/4 v6, 0x0

    sput-object v6, Lwg;->f:Ljava/security/KeyStore;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 229
    .end local v0    # "app":Landroid/content/Context;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 231
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 232
    const-string/jumbo v6, "TrustManagerFactory"

    const-string/jumbo v8, "Unable to get X509 Trust Manager "

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 193
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "app":Landroid/content/Context;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 195
    .local v1, "e":Ljava/security/cert/CertificateException;
    :try_start_5
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_4

    .line 196
    const-string/jumbo v6, "TrustManagerFactory"

    const-string/jumbo v8, "KeyStore CertificateException while initializing TrustManagerFactory "

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    :cond_4
    const/4 v6, 0x0

    sput-object v6, Lwg;->f:Ljava/security/KeyStore;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 235
    .end local v0    # "app":Landroid/content/Context;
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .line 237
    .local v1, "e":Ljava/security/KeyStoreException;
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 238
    const-string/jumbo v6, "TrustManagerFactory"

    const-string/jumbo v8, "Key Store exception while initializing TrustManagerFactory "

    invoke-static {v6, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 204
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local v0    # "app":Landroid/content/Context;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "tm":Ljavax/net/ssl/TrustManager;
    .restart local v5    # "tms":[Ljavax/net/ssl/TrustManager;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 218
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    .prologue
    .line 250
    if-eqz p1, :cond_0

    invoke-static {p0}, Lwg$a;->a(Ljava/lang/String;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lwg;->b:Ljavax/net/ssl/X509TrustManager;

    goto :goto_0
.end method

.method public static a([Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;

    .prologue
    .line 261
    sput-object p0, Lwg;->d:[Ljava/security/cert/X509Certificate;

    .line 262
    return-void
.end method

.method public static a()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lwg;->d:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method static synthetic b()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lwg;->a:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public static b([Ljava/security/cert/X509Certificate;)V
    .locals 12
    .param p0, "chain"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 272
    :try_start_0
    const-string/jumbo v7, "X509"

    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v4

    .line 273
    .local v4, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    if-eqz p0, :cond_1

    .line 274
    array-length v8, p0

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v1, p0, v7

    .line 276
    .local v1, "element":Ljava/security/cert/X509Certificate;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "add certifcate: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v11

    invoke-interface {v11}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lyx;->b(Ljava/lang/String;)I

    .line 278
    sget-object v9, Lwg;->g:Ljava/util/HashSet;

    if-nez v9, :cond_0

    .line 279
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    sput-object v9, Lwg;->g:Ljava/util/HashSet;

    .line 282
    :cond_0
    sget-object v9, Lwg;->g:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v9, Lwg;->f:Ljava/security/KeyStore;

    .line 285
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v10

    invoke-interface {v10}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 274
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "element":Ljava/security/cert/X509Certificate;
    :cond_1
    sget-object v7, Lwg;->f:Ljava/security/KeyStore;

    invoke-virtual {v4, v7}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 290
    invoke-virtual {v4}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    .line 291
    .local v5, "tms":[Ljavax/net/ssl/TrustManager;
    if-eqz v5, :cond_2

    .line 293
    array-length v7, v5

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v3, v5, v6

    .line 295
    .local v3, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v8, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v8, :cond_4

    .line 297
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    .end local v3    # "tm":Ljavax/net/ssl/TrustManager;
    sput-object v3, Lwg;->c:Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3

    .line 305
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v6, Lwg;->e:Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 306
    .local v2, "keyStoreStream":Ljava/io/FileOutputStream;
    sget-object v6, Lwg;->f:Ljava/security/KeyStore;

    const-string/jumbo v7, ""

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 307
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 309
    const-string/jumbo v6, "Key store save successfule"

    invoke-static {v6}, Lyx;->b(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_3

    .line 337
    .end local v2    # "keyStoreStream":Ljava/io/FileOutputStream;
    .end local v4    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v5    # "tms":[Ljavax/net/ssl/TrustManager;
    :cond_3
    :goto_2
    return-void

    .line 293
    .restart local v3    # "tm":Ljavax/net/ssl/TrustManager;
    .restart local v4    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v5    # "tms":[Ljavax/net/ssl/TrustManager;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 311
    .end local v3    # "tm":Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v6, Ljava/security/cert/CertificateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unable to write KeyStore: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_3

    .line 325
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v5    # "tms":[Ljavax/net/ssl/TrustManager;
    :catch_1
    move-exception v0

    .line 327
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 328
    const-string/jumbo v6, "TrustManagerFactory"

    const-string/jumbo v7, "Unable to get X509 Trust Manager "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 315
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v4    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v5    # "tms":[Ljavax/net/ssl/TrustManager;
    :catch_2
    move-exception v0

    .line 317
    .local v0, "e":Ljava/security/cert/CertificateException;
    :try_start_3
    new-instance v6, Ljava/security/cert/CertificateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unable to write KeyStore: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_3

    .line 331
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    .end local v4    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v5    # "tms":[Ljavax/net/ssl/TrustManager;
    :catch_3
    move-exception v0

    .line 333
    .local v0, "e":Ljava/security/KeyStoreException;
    sget-boolean v6, Lcom/alibaba/alimei/emailcommon/api/CommonEmailSdk;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 334
    const-string/jumbo v6, "TrustManagerFactory"

    const-string/jumbo v7, "Key Store exception while initializing TrustManagerFactory "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 319
    .end local v0    # "e":Ljava/security/KeyStoreException;
    .restart local v4    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v5    # "tms":[Ljavax/net/ssl/TrustManager;
    :catch_4
    move-exception v0

    .line 321
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v6, Ljava/security/cert/CertificateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Unable to write KeyStore: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_3
.end method

.method static synthetic c()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lwg;->c:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method static synthetic d()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lwg;->g:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic e()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lwg;->f:Ljava/security/KeyStore;

    return-object v0
.end method

.class public Lcom/alipay/euler/andfix/security/SecurityChecker;
.super Ljava/lang/Object;
.source "SecurityChecker.java"


# static fields
.field private static final CLASSES_DEX:Ljava/lang/String; = "classes.dex"

.field public static final SP_MD5:Ljava/lang/String; = "-md5"

.field private static final SP_NAME:Ljava/lang/String; = "_andfix_"

.field private static final TAG:Ljava/lang/String; = "SecurityChecker"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDebuggable:Z

.field private mPublicKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debuggable"    # Z

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mContext:Landroid/content/Context;

    .line 71
    iget-object v0, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/alipay/euler/andfix/security/SecurityChecker;->init(Landroid/content/Context;Z)V

    .line 72
    return-void
.end method

.method private check(Ljava/io/File;[Ljava/security/cert/Certificate;)Z
    .locals 4
    .param p1, "path"    # Ljava/io/File;
    .param p2, "certs"    # [Ljava/security/cert/Certificate;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    array-length v2, p2

    if-lez v2, :cond_0

    .line 153
    array-length v2, p2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 155
    :try_start_0
    aget-object v2, p2, v1

    iget-object v3, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mPublicKey:Ljava/security/PublicKey;

    invoke-virtual {v2, v3}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    const/4 v2, 0x1

    .line 162
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 157
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p1, "file"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 166
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-object v7

    .line 170
    :cond_1
    const/4 v4, 0x0

    .line 171
    .local v4, "in":Ljava/io/FileInputStream;
    const/16 v8, 0x2000

    new-array v1, v8, [B

    .line 174
    .local v1, "buffer":[B
    :try_start_0
    const-string/jumbo v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 175
    .local v2, "digest":Ljava/security/MessageDigest;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 177
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 179
    .end local v6    # "len":I
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 180
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    const-string/jumbo v8, "SecurityChecker"

    const-string/jumbo v9, "getFileMD5"

    invoke-static {v8, v9, v3}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    if-eqz v4, :cond_0

    .line 185
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 186
    :catch_1
    move-exception v3

    .line 187
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v8, "SecurityChecker"

    const-string/jumbo v9, "getFileMD5"

    invoke-static {v8, v9, v3}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 185
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    :cond_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 190
    :goto_3
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/math/BigInteger;-><init>([B)V

    .line 191
    .local v0, "bigInt":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 186
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    :catch_2
    move-exception v3

    .line 187
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "SecurityChecker"

    const-string/jumbo v8, "getFileMD5"

    invoke-static {v7, v8, v3}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 183
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    .line 184
    :goto_4
    if-eqz v4, :cond_3

    .line 185
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 188
    :cond_3
    :goto_5
    throw v7

    .line 186
    :catch_3
    move-exception v3

    .line 187
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "SecurityChecker"

    const-string/jumbo v9, "getFileMD5"

    invoke-static {v8, v9, v3}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 183
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_4

    .line 179
    .end local v2    # "digest":Ljava/security/MessageDigest;
    :catch_4
    move-exception v3

    goto :goto_2
.end method

.method private getFingerprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    iget-object v1, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "_andfix_"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 206
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-md5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "debuggable"    # Z

    .prologue
    .line 211
    if-eqz p2, :cond_0

    .line 212
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mDebuggable:Z

    .line 233
    :goto_0
    return-void

    .line 215
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 216
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "packageName":Ljava/lang/String;
    const/16 v7, 0x40

    invoke-virtual {v5, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 220
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v7, "X.509"

    .line 221
    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 222
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    .line 223
    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 225
    .local v6, "stream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 226
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    iput-object v7, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mPublicKey:Ljava/security/PublicKey;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 227
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "SecurityChecker"

    const-string/jumbo v8, "init"

    invoke-static {v7, v8, v2}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 229
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 230
    .local v2, "e":Ljava/security/cert/CertificateException;
    const-string/jumbo v7, "SecurityChecker"

    const-string/jumbo v8, "init"

    invoke-static {v7, v8, v2}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadDigestes(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    .locals 3
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;
    .param p2, "je"    # Ljava/util/jar/JarEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 139
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 140
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 141
    .local v0, "bytes":[B
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_0

    .line 144
    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 148
    :cond_1
    return-void

    .line 144
    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 145
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v2
.end method

.method private saveFingerprint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "md5"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    iget-object v2, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "_andfix_"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 198
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-md5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    return-void
.end method


# virtual methods
.method public isDebug()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mDebuggable:Z

    return v0
.end method

.method public saveOptSig(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/alipay/euler/andfix/security/SecurityChecker;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "fingerprint":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/alipay/euler/andfix/security/SecurityChecker;->saveFingerprint(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public verifyApk(Ljava/io/File;)Z
    .locals 8
    .param p1, "path"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 103
    iget-boolean v6, p0, Lcom/alipay/euler/andfix/security/SecurityChecker;->mDebuggable:Z

    if-eqz v6, :cond_1

    .line 104
    const-string/jumbo v5, "SecurityChecker"

    const-string/jumbo v6, "mDebuggable = true"

    invoke-static {v5, v6}, Lcom/alipay/euler/andfix/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v5, 0x1

    .line 132
    :cond_0
    :goto_0
    return v5

    .line 108
    :cond_1
    const/4 v3, 0x0

    .line 110
    .local v3, "jarFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v3    # "jarFile":Ljava/util/jar/JarFile;
    .local v4, "jarFile":Ljava/util/jar/JarFile;
    :try_start_1
    const-string/jumbo v6, "classes.dex"

    invoke-virtual {v4, v6}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 113
    .local v2, "jarEntry":Ljava/util/jar/JarEntry;
    if-nez v2, :cond_2

    .line 128
    :try_start_2
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 116
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-direct {p0, v4, v2}, Lcom/alipay/euler/andfix/security/SecurityChecker;->loadDigestes(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V

    .line 117
    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 118
    .local v0, "certs":[Ljava/security/cert/Certificate;
    if-nez v0, :cond_3

    .line 128
    :try_start_4
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 130
    :catch_1
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 121
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_5
    invoke-direct {p0, p1, v0}, Lcom/alipay/euler/andfix/security/SecurityChecker;->check(Ljava/io/File;[Ljava/security/cert/Certificate;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v5

    .line 128
    :try_start_6
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 130
    :catch_2
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 122
    .end local v0    # "certs":[Ljava/security/cert/Certificate;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v4    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "jarFile":Ljava/util/jar/JarFile;
    :catch_3
    move-exception v1

    .line 123
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_7
    const-string/jumbo v6, "SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 127
    if-eqz v3, :cond_0

    .line 128
    :try_start_8
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 130
    :catch_4
    move-exception v1

    .line 131
    const-string/jumbo v6, "SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 127
    :goto_2
    if-eqz v3, :cond_4

    .line 128
    :try_start_9
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 132
    :cond_4
    :goto_3
    throw v5

    .line 130
    :catch_5
    move-exception v1

    .line 131
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "SecurityChecker"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/alipay/euler/andfix/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 126
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v4    # "jarFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "jarFile":Ljava/util/jar/JarFile;
    goto :goto_2

    .line 122
    .end local v3    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v4    # "jarFile":Ljava/util/jar/JarFile;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v3    # "jarFile":Ljava/util/jar/JarFile;
    goto :goto_1
.end method

.method public verifyOpt(Ljava/io/File;)Z
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/alipay/euler/andfix/security/SecurityChecker;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "fingerprint":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/euler/andfix/security/SecurityChecker;->getFingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "saved":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const/4 v2, 0x1

    .line 85
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

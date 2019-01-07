.class public Lcom/android/dingtalk/share/ddsharemodule/plugin/SignatureCheck;
.super Ljava/lang/Object;
.source "SignatureCheck.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMD5Signature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p0, p1}, Lcom/android/dingtalk/share/ddsharemodule/plugin/SignatureCheck;->getRawSignature(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 17
    .local v0, "arrayOfSignature":[Landroid/content/pm/Signature;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-nez v4, :cond_1

    .line 18
    :cond_0
    const/4 v4, 0x0

    .line 25
    :goto_0
    return-object v4

    .line 20
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 22
    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/dingtalk/share/ddsharemodule/algorithm/MD5;->getMessageDigest([B)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static getRawSignature(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 4
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 31
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-nez p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-object v2

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 37
    .local v1, "localPackageManager":Landroid/content/pm/PackageManager;
    const/16 v3, 0x40

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 38
    .local v0, "localPackageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 44
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_0

    .line 42
    .end local v0    # "localPackageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

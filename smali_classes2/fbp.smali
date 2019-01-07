.class public Lfbp;
.super Ljava/lang/Object;
.source "CertifyHelper.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lfbp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfbp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 112
    new-instance v1, Lhvj;

    invoke-direct {v1}, Lhvj;-><init>()V

    .line 113
    .local v1, "paramsHelper":Lhvj;
    invoke-virtual {v1}, Lhvj;->b()V

    .line 114
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lhvj;->a(Z)V

    .line 115
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lhvj;->a(I)V

    .line 1000
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v1, Lhxd;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 118
    .local v0, "params":Landroid/os/Bundle;
    const-string/jumbo v2, "KEY_ACTIVE_ACTION_THRESHOLD"

    const v3, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 119
    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "biometric"    # I

    .prologue
    .line 82
    packed-switch p0, :pswitch_data_0

    .line 94
    :pswitch_0
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 84
    :pswitch_1
    const-string/jumbo v0, "Blink"

    goto :goto_0

    .line 86
    :pswitch_2
    const-string/jumbo v0, "OpenMouth"

    goto :goto_0

    .line 88
    :pswitch_3
    const-string/jumbo v0, "ShakeHead"

    goto :goto_0

    .line 90
    :pswitch_4
    const-string/jumbo v0, "RaiseHeadDown"

    goto :goto_0

    .line 92
    :pswitch_5
    const-string/jumbo v0, "KeepStill"

    goto :goto_0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "encryptImgUrl"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-static {p1}, Lcom/alibaba/doraemon/utils/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    const/4 v4, 0x0

    .line 171
    :goto_0
    return-object v4

    .line 166
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local v3, "encryptFile":Ljava/io/File;
    invoke-static {v3}, Lcom/alibaba/doraemon/utils/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object v2

    .line 168
    .local v2, "encryptData":[B
    invoke-static {p0, v2}, Lfbp;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 169
    .local v0, "decryptData":[B
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "decryptFile":Ljava/io/File;
    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Lhcs;->a([BLjava/io/File;Z)V

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[B)[B
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "cipher"    # [B

    .prologue
    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 149
    const/4 v2, 0x0

    .line 151
    .local v2, "inputData":[B
    if-eqz p1, :cond_1

    .line 152
    :try_start_0
    invoke-static {p0}, Lhyu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3000
    .local v0, "decryptKey":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lhv;->a(Ljava/lang/String;I)[B

    move-result-object v4

    .line 2000
    invoke-static {v4}, Lhyu;->a([B)Ljava/security/Key;

    move-result-object v4

    const-string/jumbo v5, "DES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/16 v6, 0x8

    new-array v6, v6, [B

    :goto_0
    if-ge v3, v8, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    if-ge v3, v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    aget-byte v7, v7, v3

    aput-byte v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v5, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 158
    .end local v0    # "decryptKey":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v2

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static b()Ljava/lang/String;
    .locals 6

    .prologue
    .line 125
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    .line 126
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 127
    .local v3, "supportAbis":[Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 128
    .local v2, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz v3, :cond_0

    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 130
    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .end local v2    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v3    # "supportAbis":[Ljava/lang/String;
    .local v0, "cpu":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 135
    .end local v0    # "cpu":Ljava/lang/String;
    :cond_1
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .restart local v0    # "cpu":Ljava/lang/String;
    goto :goto_1
.end method

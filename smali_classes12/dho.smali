.class public Ldho;
.super Ljava/lang/Object;
.source "EncryptManager.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile c:Ldho;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Ldho;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldho;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 7
    .param p0, "corpId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    .line 1189
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-wide v4

    .line 1194
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 1195
    .local v2, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_0

    .line 1199
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 1200
    .local v1, "orgEmployeeExtensionObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v1, :cond_0

    .line 1204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1205
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1206
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    goto :goto_0
.end method

.method public static a()Ldho;
    .locals 3

    .prologue
    .line 85
    sget-object v1, Ldho;->c:Ldho;

    if-nez v1, :cond_1

    .line 86
    const-class v2, Ldho;

    monitor-enter v2

    .line 87
    :try_start_0
    sget-object v1, Ldho;->c:Ldho;

    if-nez v1, :cond_0

    .line 88
    new-instance v0, Ldho;

    invoke-direct {v0}, Ldho;-><init>()V

    .line 89
    .local v0, "temp":Ldho;
    sput-object v0, Ldho;->c:Ldho;

    .line 91
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    sget-object v1, Ldho;->c:Ldho;

    return-object v1

    .line 91
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static a(J)Ljava/lang/String;
    .locals 12
    .param p0, "orgId"    # J

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 447
    const/4 v0, 0x0

    .line 449
    .local v0, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v3

    .line 450
    .local v3, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    invoke-static {}, Ldhp;->a()Ldhp;

    move-result-object v4

    .line 6050
    iget-object v1, v4, Ldhp;->b:Ljava/util/List;

    .line 451
    .local v1, "appIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v5, "crypto"

    sget-object v6, Ldho;->a:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/String;

    const-string/jumbo v4, "getEncryptAppId appIds="

    aput-object v4, v7, v8

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    aput-object v4, v7, v9

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 453
    iget-object v4, v3, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 454
    .local v2, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    iget-wide v6, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 455
    iget-wide v4, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 456
    const-string/jumbo v4, "crypto"

    sget-object v5, Ldho;->a:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/String;

    const-string/jumbo v7, "getEncryptAppId appId="

    aput-object v7, v6, v8

    aput-object v0, v6, v9

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    .end local v2    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_1
    return-object v0

    .line 451
    :cond_2
    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;)Ljava/lang/String;
    .locals 7
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "strToEncrypt"    # Ljava/lang/String;
    .param p3, "encryptSequence"    # Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;,
            Lcom/dingtalk/cryptokit/CryptoException;
        }
    .end annotation

    .prologue
    const/16 v4, -0x1fb

    const/16 v6, -0x1fd

    .line 474
    invoke-static {}, Ldhp;->a()Ldhp;

    move-result-object v2

    invoke-virtual {v2, p0}, Ldhp;->a(Ljava/lang/String;)Lcom/alibaba/android/dtencrypt/IDTEncrypt;

    move-result-object v0

    .line 475
    .local v0, "encryptSdk":Lcom/alibaba/android/dtencrypt/IDTEncrypt;
    if-nez v0, :cond_0

    .line 476
    new-instance v2, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v3, -0x1f8

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "no 3th sdk:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 480
    :cond_0
    sget-object v2, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->FIRST_DD:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    if-ne p3, v2, :cond_2

    .line 482
    invoke-static {}, Ldlc;->a()Ldlc;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ldlc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "resultStr":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 484
    new-instance v2, Lcom/dingtalk/cryptokit/CryptoException;

    const-string/jumbo v3, "dd crypto no result"

    invoke-direct {v2, v4, v3}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 487
    :cond_1
    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/dtencrypt/IDTEncrypt;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    if-nez v1, :cond_4

    .line 489
    new-instance v2, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    const-string/jumbo v3, "3th crypto no result"

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_NULL:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v2

    .line 494
    .end local v1    # "resultStr":Ljava/lang/String;
    :cond_2
    invoke-interface {v0, p1, p2}, Lcom/alibaba/android/dtencrypt/IDTEncrypt;->encryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 495
    .restart local v1    # "resultStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 496
    new-instance v2, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    const-string/jumbo v3, "3th crypto no result"

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_NULL:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v2

    .line 499
    :cond_3
    invoke-static {}, Ldlc;->a()Ldlc;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Ldlc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 501
    new-instance v2, Lcom/dingtalk/cryptokit/CryptoException;

    const-string/jumbo v3, "dd crypto no result"

    invoke-direct {v2, v4, v3}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 505
    :cond_4
    return-object v1
.end method

.method private static a(JJ)Z
    .locals 4
    .param p0, "tag"    # J
    .param p2, "orgId"    # J

    .prologue
    const/4 v1, 0x1

    .line 390
    const-wide/16 v2, 0x4

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 391
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v0

    .line 392
    .local v0, "setting":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->thirdPartyEncryptBurn:Z

    if-eqz v2, :cond_1

    .line 394
    .end local v0    # "setting":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    :cond_0
    :goto_0
    return v1

    .line 392
    .restart local v0    # "setting":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Ljava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException;)Z
    .locals 8
    .param p0, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "e"    # Lcom/alibaba/android/dtencrypt/DTEncryptException;

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1215
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->appId:Ljava/lang/String;

    const-string/jumbo v2, "1289"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {p2}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    invoke-virtual {p2}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getWarningCode()I

    move-result v0

    const/16 v2, -0x5025

    if-ne v0, v2, :cond_0

    .line 1222
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v2, "f_im_anheng_hash_ignore"

    invoke-virtual {v0, v2, v5}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    const-string/jumbo v0, "crypto"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "validDTExceptionOfThird spaceId: "

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->spaceId:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-string/jumbo v7, ", fileId: "

    aput-object v7, v3, v4

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->fileId:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 1224
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1223
    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    sget-object v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->AnHengHashFail:Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;

    iget v3, v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptWarningCode;->code:I

    invoke-virtual {p2}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Ldhq;->c(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;ILjava/lang/String;ILjava/lang/String;Z)V

    move v5, v6

    .line 1231
    :cond_0
    return v5
.end method

.method static b(J)Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    .locals 2
    .param p0, "orgId"    # J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1183
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v0

    .line 1184
    .local v0, "organizationSettingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->thirdPartyEcryptPriority:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->FIRST_THIRD_PARTY:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->FIRST_DD:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    goto :goto_0
.end method

.method public static b()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 103
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 104
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v3, v2

    .line 108
    .local v0, "abi":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/system/lib/libhoudini.so"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "file":Ljava/io/File;
    const-string/jumbo v3, "x86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    .line 106
    .end local v0    # "abi":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .restart local v0    # "abi":Ljava/lang/String;
    goto :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 9
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 339
    invoke-static {}, Ldho;->a()Ldho;

    move-result-object v5

    invoke-virtual {v5, p0}, Ldho;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 340
    invoke-static {p0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    .line 341
    .local v0, "orgId":J
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lccr;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;

    move-result-object v2

    .line 342
    .local v2, "organizationSettingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    if-eqz v2, :cond_0

    iget-boolean v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;->thirdPartyEncryptFileAudioImage:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 4022
    invoke-static {v5, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    .line 342
    if-eqz v5, :cond_0

    .line 343
    const-string/jumbo v5, "crypto"

    const-string/jumbo v6, "EncryptUtil"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "Conversation cid="

    aput-object v8, v7, v4

    .line 344
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v4, 0x2

    const-string/jumbo v8, " encrypt multimedia file."

    aput-object v8, v7, v4

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-static {v5, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .end local v0    # "orgId":J
    .end local v2    # "organizationSettingsObject":Lcom/alibaba/android/dingtalk/userbase/model/OrganizationSettingsObject;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private static c(J)Z
    .locals 6
    .param p0, "orgId"    # J

    .prologue
    .line 403
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 404
    .local v1, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 405
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 407
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v3, :cond_0

    .line 408
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    cmp-long v3, p0, v4

    if-nez v3, :cond_0

    .line 409
    const/4 v2, 0x1

    .line 414
    .end local v0    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static d(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const/4 v0, 0x0

    .line 440
    if-nez p0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-object v0

    .line 5963
    :cond_1
    if-eqz p0, :cond_0

    const-wide/16 v2, 0x2

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const-wide/16 v2, 0x9

    .line 5964
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const-wide/16 v2, 0x4

    .line 5965
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 5966
    :cond_2
    invoke-static {p0}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    .line 5967
    invoke-static {}, Ldho;->a()Ldho;

    invoke-static {v0, v1}, Ldho;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "text"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 1040
    invoke-static {p1}, Ldjl;->s(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v1

    .line 1041
    .local v1, "corpId":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1051
    :goto_0
    return-object v3

    .line 1044
    :cond_0
    invoke-static {p1}, Ldho;->d(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    .local v0, "appId":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->FIRST_DD:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    invoke-static {v0, v1, p2, v4}, Ldho;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1048
    :catch_0
    move-exception v2

    .line 1049
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 24
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;,
            Lcom/dingtalk/cryptokit/CryptoException;
        }
    .end annotation

    .prologue
    .line 1123
    const/4 v15, 0x0

    .line 1125
    .local v15, "ret":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 1126
    new-instance v17, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v18, -0x1f9

    const-string/jumbo v19, "message_type false"

    invoke-direct/range {v17 .. v19}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 1129
    :cond_0
    invoke-static/range {p1 .. p1}, Ldkc;->x(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v6

    .line 1130
    .local v6, "corpId":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 1131
    const-string/jumbo v17, "crypto"

    sget-object v18, Ldho;->a:Ljava/lang/String;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "tryToDecryptMsg getCorpIdFromMessage failed. orgId="

    aput-object v21, v19, v20

    const/16 v20, 0x1

    .line 1133
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    .line 1132
    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1131
    invoke-static/range {v17 .. v19}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    new-instance v17, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v18, -0x1fa

    const-string/jumbo v19, "corpId null"

    invoke-direct/range {v17 .. v19}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 1137
    :cond_1
    const-string/jumbo v17, "safety_app_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1138
    .local v4, "appId":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1139
    new-instance v17, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v18, -0x1f8

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "appId null"

    aput-object v21, v19, v20

    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 1144
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v11

    .line 1145
    .local v11, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 1175
    new-instance v17, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v18, -0x1f9

    const-string/jumbo v19, "message_type false"

    invoke-direct/range {v17 .. v19}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 1147
    :pswitch_0
    check-cast v11, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .end local v11    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface {v11}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v16

    .line 1148
    .local v16, "strToDecrypt":Ljava/lang/String;
    const-string/jumbo v17, "safety_priority"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1149
    .local v8, "encryptPriorityExtension":Ljava/lang/String;
    if-nez v8, :cond_3

    sget-object v17, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->FIRST_DD:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    .line 1150
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 1149
    .end local v8    # "encryptPriorityExtension":Ljava/lang/String;
    :cond_3
    invoke-static {v8}, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->fromValue(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    move-result-object v9

    .line 6764
    .local v9, "encryptSequence":Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    invoke-static {}, Ldhp;->a()Ldhp;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ldhp;->a(Ljava/lang/String;)Lcom/alibaba/android/dtencrypt/IDTEncrypt;

    move-result-object v17

    .line 6765
    if-nez v17, :cond_4

    .line 6766
    new-instance v17, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v18, -0x1f8

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "no 3th sdk:"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object v4, v19, v20

    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 6770
    :cond_4
    sget-object v18, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->FIRST_DD:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    move-object/from16 v0, v18

    if-ne v9, v0, :cond_6

    .line 6772
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v6, v1}, Lcom/alibaba/android/dtencrypt/IDTEncrypt;->decryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 6773
    if-nez v17, :cond_5

    .line 6774
    new-instance v17, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    const/16 v18, -0x1fd

    const-string/jumbo v19, "3th crypto no result"

    sget-object v20, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_NULL:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v21, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct/range {v17 .. v21}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v17

    .line 6777
    :cond_5
    invoke-static {}, Ldlc;->a()Ldlc;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Ldlc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 6778
    if-nez v14, :cond_8

    .line 6779
    new-instance v17, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v18, -0x1fb

    const-string/jumbo v19, "dd crypto no result"

    invoke-direct/range {v17 .. v19}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 6783
    :cond_6
    invoke-static {}, Ldlc;->a()Ldlc;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Ldlc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 6784
    if-nez v18, :cond_7

    .line 6785
    new-instance v17, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v18, -0x1fb

    const-string/jumbo v19, "dd crypto no result"

    invoke-direct/range {v17 .. v19}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v17

    .line 6788
    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v6, v1}, Lcom/alibaba/android/dtencrypt/IDTEncrypt;->decryptMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 6789
    if-nez v14, :cond_8

    .line 6790
    new-instance v17, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    const/16 v18, -0x1fd

    const-string/jumbo v19, "3th crypto no result"

    sget-object v20, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_NULL:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v21, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct/range {v17 .. v21}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v17

    .line 1155
    .local v14, "resultStr":Ljava/lang/String;
    :cond_8
    :try_start_0
    invoke-static/range {p1 .. p1}, Ldkc;->w(Lcom/alibaba/wukong/im/Message;)J

    move-result-wide v12

    .line 1156
    .local v12, "orgId":J
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "first_time_of_org_success_to_decrypt"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1157
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "first_time_of_org_success_to_decrypt"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1159
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v17, "action_decrypt_last_msg_of_conversation"

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1160
    .local v10, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1161
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v17, "org_id"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1162
    invoke-virtual {v10, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1163
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcid;->c()Landroid/app/Application;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ldq;->a(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_9
    move-object v15, v14

    .line 1178
    .end local v12    # "orgId":J
    :goto_0
    return-object v15

    .line 1168
    :catch_0
    move-exception v7

    .line 7151
    .local v7, "e":Ljava/lang/Throwable;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 7152
    const-string/jumbo v18, "type"

    const-string/jumbo v19, "7"

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7153
    const-string/jumbo v18, "code"

    const-string/jumbo v19, "-1"

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7156
    const-string/jumbo v18, "error"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7159
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ldhq;->a(Lcom/alibaba/wukong/im/Message;Ljava/util/HashMap;)V

    .line 7160
    const/16 v18, 0x5de

    const-string/jumbo v19, "\u6d88\u606f\u89e3\u5bc6\u5931\u8d25"

    const/16 v20, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Ldhq;->a(ILjava/lang/String;Ljava/util/Map;Z)V

    .line 1171
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(JLjava/util/Map;)Z
    .locals 7
    .param p1, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 376
    invoke-static {p1, p2, p3}, Ldjl;->a(JLjava/util/Map;)J

    move-result-wide v0

    .line 377
    .local v0, "oid":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gtz v3, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {v0, v1}, Ldho;->c(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4973
    const/4 v3, 0x0

    .line 4974
    const-wide/16 v4, 0x2

    cmp-long v4, v4, p1

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x9

    cmp-long v4, v4, p1

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x4

    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    .line 4977
    :cond_2
    invoke-static {p1, p2, p3}, Ldjl;->a(JLjava/util/Map;)J

    move-result-wide v4

    .line 4978
    invoke-static {}, Ldho;->a()Ldho;

    invoke-static {v4, v5}, Ldho;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 380
    :cond_3
    if-eqz v3, :cond_0

    invoke-static {p1, p2, v0, v1}, Ldho;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)Z
    .locals 34
    .param p1, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    .prologue
    .line 515
    if-nez p1, :cond_0

    .line 516
    const/4 v4, 0x0

    .line 751
    :goto_0
    return v4

    .line 519
    :cond_0
    invoke-static {}, Ldho;->b()Z

    move-result v4

    if-nez v4, :cond_1

    .line 520
    const-string/jumbo v4, "crypto"

    sget-object v5, Ldho;->a:Ljava/lang/String;

    const-string/jumbo v7, "helper decrypt no .so"

    invoke-static {v4, v5, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const/4 v4, -0x2

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 522
    const/4 v4, 0x0

    goto :goto_0

    .line 525
    :cond_1
    const/16 v16, 0x0

    .line 526
    .local v16, "encryptFileOutputStream":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 527
    .local v14, "encryptFileInputStream":Ljava/io/FileInputStream;
    const/16 v23, 0x0

    .line 528
    .local v23, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v21, 0x0

    .line 529
    .local v21, "fileInputStream":Ljava/io/FileInputStream;
    const/16 v26, 0x0

    .line 531
    .local v26, "tempFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 533
    .local v6, "corpId":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->srcPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->srcPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 534
    :cond_2
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 535
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fc

    const-string/jumbo v7, "encrypt with invalid src path"

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    :catch_0
    move-exception v11

    .line 711
    .local v11, "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    :goto_1
    :try_start_1
    invoke-virtual {v11}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorCode()I

    move-result v4

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    if-eq v4, v5, :cond_3

    invoke-virtual {v11}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorCode()I

    move-result v4

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->KeyLoading:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    if-ne v4, v5, :cond_23

    .line 712
    :cond_3
    const/4 v4, -0x5

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 716
    :goto_2
    const/4 v5, 0x3

    invoke-virtual {v11}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorCode()I

    move-result v7

    invoke-virtual {v11}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorMsg()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Ldhq;->a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;ILjava/lang/String;ILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 741
    if-eqz v26, :cond_4

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 742
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 745
    :cond_4
    invoke-static {v14}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 746
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 747
    invoke-static/range {v21 .. v21}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 748
    invoke-static/range {v23 .. v23}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 751
    .end local v11    # "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 537
    :cond_5
    :try_start_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 538
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 539
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fc

    const-string/jumbo v7, "encrypt invalid dst path"

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_2
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 718
    :catch_1
    move-exception v11

    .line 720
    .local v11, "e":Lcom/dingtalk/cryptokit/CryptoException;
    :goto_4
    :try_start_3
    invoke-virtual {v11}, Lcom/dingtalk/cryptokit/CryptoException;->getCode()I

    move-result v4

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    if-eq v4, v5, :cond_6

    invoke-virtual {v11}, Lcom/dingtalk/cryptokit/CryptoException;->getCode()I

    move-result v4

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->KeyLoading:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    if-ne v4, v5, :cond_24

    .line 721
    :cond_6
    const/4 v4, -0x5

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 725
    :goto_5
    const/4 v4, 0x4

    invoke-virtual {v11}, Lcom/dingtalk/cryptokit/CryptoException;->getCode()I

    move-result v5

    invoke-virtual {v11}, Lcom/dingtalk/cryptokit/CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-static {v0, v4, v6, v5, v7}, Ldhq;->a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 741
    if-eqz v26, :cond_7

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 742
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 745
    :cond_7
    invoke-static {v14}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 746
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 747
    invoke-static/range {v21 .. v21}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 748
    invoke-static/range {v23 .. v23}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_3

    .line 542
    .end local v11    # "e":Lcom/dingtalk/cryptokit/CryptoException;
    :cond_8
    :try_start_4
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->orgId:J

    invoke-static {v4, v5}, Ldho;->b(J)Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    move-result-object v19

    .line 543
    .local v19, "encryptSequence":Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    const-string/jumbo v4, "crypto"

    sget-object v5, Ldho;->a:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "decrypt cryptionDo encryptSequence:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->getValue()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->getValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->priority:Ljava/lang/String;

    .line 545
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->orgId:J

    invoke-static {v4, v5}, Ldho;->a(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->appId:Ljava/lang/String;

    .line 546
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->appId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 547
    const/4 v4, -0x3

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 548
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1f8

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "appId null:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->appId:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_4
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 727
    .end local v19    # "encryptSequence":Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    :catch_2
    move-exception v11

    .line 729
    .local v11, "e":Ljava/lang/Throwable;
    :goto_6
    const/4 v4, -0x2

    :try_start_5
    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 730
    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-static {v11}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-static {v0, v4, v6, v5, v7}, Ldhq;->a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;ILjava/lang/String;ILjava/lang/String;)V

    .line 733
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    sget v5, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eq v4, v5, :cond_9

    .line 735
    :try_start_6
    throw v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 736
    :catch_3
    move-exception v13

    .line 737
    .local v13, "e2":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 741
    .end local v13    # "e2":Ljava/io/IOException;
    :cond_9
    if-eqz v26, :cond_a

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 742
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 745
    :cond_a
    invoke-static {v14}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 746
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 747
    invoke-static/range {v21 .. v21}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 748
    invoke-static/range {v23 .. v23}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_3

    .line 551
    .end local v11    # "e":Ljava/lang/Throwable;
    .restart local v19    # "encryptSequence":Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    :cond_b
    :try_start_8
    invoke-static {}, Ldhp;->a()Ldhp;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ldhp;->a(Ljava/lang/String;)Lcom/alibaba/android/dtencrypt/IDTEncrypt;

    move-result-object v18

    .line 552
    .local v18, "encryptSdk":Lcom/alibaba/android/dtencrypt/IDTEncrypt;
    if-nez v18, :cond_d

    .line 553
    const/4 v4, -0x3

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 554
    const-string/jumbo v4, "crypto"

    sget-object v5, Ldho;->a:Ljava/lang/String;

    const-string/jumbo v7, "no 3th sdk"

    invoke-static {v4, v5, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1f8

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "no 3th sdk:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->appId:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_8
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 741
    .end local v18    # "encryptSdk":Lcom/alibaba/android/dtencrypt/IDTEncrypt;
    .end local v19    # "encryptSequence":Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    :catchall_0
    move-exception v4

    :goto_7
    if-eqz v26, :cond_c

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 742
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 745
    :cond_c
    invoke-static {v14}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 746
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 747
    invoke-static/range {v21 .. v21}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 748
    invoke-static/range {v23 .. v23}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v4

    .line 558
    .restart local v18    # "encryptSdk":Lcom/alibaba/android/dtencrypt/IDTEncrypt;
    .restart local v19    # "encryptSequence":Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    :cond_d
    :try_start_9
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->orgId:J

    invoke-static {v4, v5}, Ldjl;->c(J)Ljava/lang/String;

    move-result-object v6

    .line 559
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 560
    const/4 v4, -0x4

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 561
    const-string/jumbo v4, "crypto"

    sget-object v5, Ldho;->a:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "encrypt cryptionDo getCorpId failed orgId:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->orgId:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fa

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "corpId null:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->orgId:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 568
    :cond_e
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v32, 0x64

    mul-long v8, v8, v32

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v7, ".crypt"

    aput-object v7, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 569
    .local v29, "tmpDstPath":Ljava/lang/String;
    sget-object v4, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->FIRST_DD:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    move-object/from16 v0, v19

    if-ne v0, v4, :cond_18

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Ldho;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 572
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ldho;->b:Ljava/lang/String;

    .line 575
    :cond_f
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Ldho;->b:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v7, ".crypt"

    aput-object v7, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 576
    .local v30, "tmpPath":Ljava/lang/String;
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 579
    .end local v26    # "tempFile":Ljava/io/File;
    .local v27, "tempFile":Ljava/io/File;
    :try_start_a
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_a .. :try_end_a} :catch_13
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .end local v16    # "encryptFileOutputStream":Ljava/io/FileOutputStream;
    .local v17, "encryptFileOutputStream":Ljava/io/FileOutputStream;
    move-object/from16 v26, v27

    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    move-object/from16 v16, v17

    .line 593
    .end local v17    # "encryptFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "encryptFileOutputStream":Ljava/io/FileOutputStream;
    :goto_8
    if-nez v16, :cond_11

    .line 741
    if-eqz v26, :cond_10

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 742
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 745
    :cond_10
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 746
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 747
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 748
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 580
    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v27    # "tempFile":Ljava/io/File;
    :catch_4
    move-exception v11

    .line 581
    .local v11, "e":Ljava/io/FileNotFoundException;
    :try_start_b
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 583
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ldho;->b:Ljava/lang/String;

    .line 584
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Ldho;->b:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v7, ".crypt"

    aput-object v7, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 585
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_b .. :try_end_b} :catch_13
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_b .. :try_end_b} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_e
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 587
    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    :try_start_c
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .end local v16    # "encryptFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v17    # "encryptFileOutputStream":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .line 590
    .end local v17    # "encryptFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "encryptFileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 588
    :catch_5
    move-exception v12

    .line 589
    .local v12, "e1":Ljava/io/FileNotFoundException;
    :try_start_d
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fc

    invoke-static {v12}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_d
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_d .. :try_end_d} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 598
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "e1":Ljava/io/FileNotFoundException;
    :cond_11
    :try_start_e
    new-instance v22, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->srcPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_7
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 602
    .end local v21    # "fileInputStream":Ljava/io/FileInputStream;
    .local v22, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 603
    invoke-static {}, Ldlc;->a()Ldlc;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v4, v6, v0, v1}, Ldlc;->a(Ljava/lang/String;Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)J

    .line 605
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 608
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gez v4, :cond_13

    .line 609
    :cond_12
    const/4 v4, -0x2

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 610
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fb

    const-string/jumbo v7, "dd crypto no result"

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_f
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_f .. :try_end_f} :catch_6
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 709
    :catch_6
    move-exception v11

    move-object/from16 v21, v22

    .end local v22    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v21    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 599
    :catch_7
    move-exception v20

    .line 600
    .local v20, "fex":Ljava/io/FileNotFoundException;
    :try_start_10
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fc

    invoke-static/range {v20 .. v20}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_10
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 613
    .end local v20    # "fex":Ljava/io/FileNotFoundException;
    .end local v21    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v22    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_13
    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 614
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-interface {v0, v6, v1, v2}, Lcom/alibaba/android/dtencrypt/IDTEncrypt;->encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 616
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    .line 619
    new-instance v28, Ljava/io/File;

    invoke-direct/range {v28 .. v29}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 620
    .local v28, "tmpDstFile":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gez v4, :cond_15

    .line 621
    :cond_14
    const/4 v4, -0x2

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 622
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    const/16 v5, -0x1fd

    const-string/jumbo v7, "3th crypto no result"

    sget-object v8, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_NULL:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v9, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v4, v5, v7, v8, v9}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4

    .line 718
    .end local v28    # "tmpDstFile":Ljava/io/File;
    :catch_8
    move-exception v11

    move-object/from16 v21, v22

    .end local v22    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v21    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 625
    .end local v21    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v22    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v28    # "tmpDstFile":Ljava/io/File;
    :cond_15
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    .local v10, "dstFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 627
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 629
    :cond_16
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_11
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_f
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    move-object/from16 v21, v22

    .line 741
    .end local v22    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v21    # "fileInputStream":Ljava/io/FileInputStream;
    :goto_9
    if-eqz v26, :cond_17

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 742
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 745
    :cond_17
    invoke-static {v14}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 746
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 747
    invoke-static/range {v21 .. v21}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 748
    invoke-static/range {v23 .. v23}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 632
    .end local v10    # "dstFile":Ljava/io/File;
    .end local v28    # "tmpDstFile":Ljava/io/File;
    .end local v30    # "tmpPath":Ljava/lang/String;
    :cond_18
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Ldho;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ldho;->b:Ljava/lang/String;

    .line 636
    :cond_19
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Ldho;->b:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v7, ".crypt"

    aput-object v7, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 637
    .restart local v30    # "tmpPath":Ljava/lang/String;
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 639
    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v27    # "tempFile":Ljava/io/File;
    :try_start_13
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 640
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->createNewFile()Z

    .line 643
    :cond_1a
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_13 .. :try_end_13} :catch_13
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_13 .. :try_end_13} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .end local v14    # "encryptFileInputStream":Ljava/io/FileInputStream;
    .local v15, "encryptFileInputStream":Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    move-object v14, v15

    .line 661
    .end local v15    # "encryptFileInputStream":Ljava/io/FileInputStream;
    .restart local v14    # "encryptFileInputStream":Ljava/io/FileInputStream;
    :goto_a
    if-nez v14, :cond_1d

    .line 741
    if-eqz v26, :cond_1b

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 742
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 745
    :cond_1b
    invoke-static {v14}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 746
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 747
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 748
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 644
    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v27    # "tempFile":Ljava/io/File;
    :catch_9
    move-exception v11

    .line 645
    .restart local v11    # "e":Ljava/io/FileNotFoundException;
    :try_start_14
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ldho;->b:Ljava/lang/String;

    .line 648
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Ldho;->b:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v7, ".crypt"

    aput-object v7, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 649
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_14 .. :try_end_14} :catch_13
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_14 .. :try_end_14} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_e
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 651
    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    :try_start_15
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 652
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->createNewFile()Z

    .line 655
    :cond_1c
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, v26

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_a
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .end local v14    # "encryptFileInputStream":Ljava/io/FileInputStream;
    .restart local v15    # "encryptFileInputStream":Ljava/io/FileInputStream;
    move-object v14, v15

    .line 658
    .end local v15    # "encryptFileInputStream":Ljava/io/FileInputStream;
    .restart local v14    # "encryptFileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_a

    .line 656
    :catch_a
    move-exception v12

    .line 657
    .restart local v12    # "e1":Ljava/io/FileNotFoundException;
    :try_start_16
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fc

    invoke-static {v12}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_16
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_2
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 667
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "e1":Ljava/io/FileNotFoundException;
    :cond_1d
    :try_start_17
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->srcPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 672
    :goto_b
    :try_start_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 673
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->srcPath:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-interface {v0, v6, v4, v1}, Lcom/alibaba/android/dtencrypt/IDTEncrypt;->encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 678
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gez v4, :cond_1f

    .line 679
    :cond_1e
    const/4 v4, -0x2

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 680
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    const/16 v5, -0x1fd

    const-string/jumbo v7, "3th crypto no result"

    sget-object v8, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_NULL:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v9, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v4, v5, v7, v8, v9}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4

    .line 668
    :catch_b
    move-exception v25

    .line 669
    .local v25, "t":Ljava/lang/Throwable;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_18
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_2
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_b

    .line 684
    .end local v25    # "t":Ljava/lang/Throwable;
    :cond_1f
    :try_start_19
    new-instance v24, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_19 .. :try_end_19} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_2
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 689
    .end local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v24, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 690
    invoke-static {}, Ldlc;->a()Ldlc;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v6, v14, v0}, Ldlc;->a(Ljava/lang/String;Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)J

    .line 691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 695
    new-instance v28, Ljava/io/File;

    invoke-direct/range {v28 .. v29}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 696
    .restart local v28    # "tmpDstFile":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gez v4, :cond_21

    .line 697
    :cond_20
    const/4 v4, -0x2

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 698
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fb

    const-string/jumbo v7, "dd crypto no result"

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1a
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_1a .. :try_end_1a} :catch_c
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_1a .. :try_end_1a} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_10
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 709
    .end local v28    # "tmpDstFile":Ljava/io/File;
    :catch_c
    move-exception v11

    move-object/from16 v23, v24

    .end local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 685
    :catch_d
    move-exception v20

    .line 686
    .restart local v20    # "fex":Ljava/io/FileNotFoundException;
    :try_start_1b
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fc

    invoke-static/range {v20 .. v20}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1b
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 701
    .end local v20    # "fex":Ljava/io/FileNotFoundException;
    .end local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v28    # "tmpDstFile":Ljava/io/File;
    :cond_21
    :try_start_1c
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 702
    .restart local v10    # "dstFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 703
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 705
    :cond_22
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1c
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_1c .. :try_end_1c} :catch_c
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_1c .. :try_end_1c} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    move-object/from16 v23, v24

    .end local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .line 714
    .end local v10    # "dstFile":Ljava/io/File;
    .end local v18    # "encryptSdk":Lcom/alibaba/android/dtencrypt/IDTEncrypt;
    .end local v19    # "encryptSequence":Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    .end local v28    # "tmpDstFile":Ljava/io/File;
    .end local v29    # "tmpDstPath":Ljava/lang/String;
    .end local v30    # "tmpPath":Ljava/lang/String;
    .local v11, "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    :cond_23
    const/4 v4, -0x2

    :try_start_1d
    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    goto/16 :goto_2

    .line 723
    .local v11, "e":Lcom/dingtalk/cryptokit/CryptoException;
    :cond_24
    const/4 v4, -0x2

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto/16 :goto_5

    .line 741
    .end local v11    # "e":Lcom/dingtalk/cryptokit/CryptoException;
    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v18    # "encryptSdk":Lcom/alibaba/android/dtencrypt/IDTEncrypt;
    .restart local v19    # "encryptSequence":Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    .restart local v27    # "tempFile":Ljava/io/File;
    .restart local v29    # "tmpDstPath":Ljava/lang/String;
    .restart local v30    # "tmpPath":Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object/from16 v26, v27

    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    goto/16 :goto_7

    .end local v21    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v22    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v4

    move-object/from16 v21, v22

    .end local v22    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v21    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_7

    .end local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v4

    move-object/from16 v23, v24

    .end local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 727
    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v27    # "tempFile":Ljava/io/File;
    :catch_e
    move-exception v11

    move-object/from16 v26, v27

    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    goto/16 :goto_6

    .end local v21    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v22    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_f
    move-exception v11

    move-object/from16 v21, v22

    .end local v22    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v21    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .end local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_10
    move-exception v11

    move-object/from16 v23, v24

    .end local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 718
    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v27    # "tempFile":Ljava/io/File;
    :catch_11
    move-exception v11

    move-object/from16 v26, v27

    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    goto/16 :goto_4

    .end local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_12
    move-exception v11

    move-object/from16 v23, v24

    .end local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 709
    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v27    # "tempFile":Ljava/io/File;
    :catch_13
    move-exception v11

    move-object/from16 v26, v27

    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    goto/16 :goto_1
.end method

.method public final a(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 8
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 329
    invoke-static {p1}, Ldho;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2066
    invoke-static {}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$a;->a()Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;

    move-result-object v3

    .line 330
    invoke-static {p1}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 2076
    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 330
    :goto_0
    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    return v0

    .line 2088
    :cond_0
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v6, "f_crypto_encrypt_file_auto_degree_enable"

    .line 3083
    invoke-virtual {v0, v6, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 2088
    if-nez v0, :cond_1

    move v0, v2

    .line 2089
    goto :goto_0

    .line 2092
    :cond_1
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a:Lfp;

    .line 3096
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2092
    check-cast v0, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;

    .line 2095
    sget-object v6, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;->SUCCESS:Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;

    if-ne v0, v6, :cond_2

    move v0, v2

    .line 2096
    goto :goto_0

    .line 2101
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 2102
    const-string/jumbo v6, "EncryptDegradeManager"

    sget-object v7, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    invoke-static {v6, v1, v7}, Lhcn;->a(Ljava/lang/String;ILcom/alibaba/doraemon/Priority;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v6

    new-instance v7, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$1;

    invoke-direct {v7, v3, v4, v5}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$1;-><init>(Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;J)V

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 2109
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a(Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;)Z

    move-result v0

    goto :goto_0

    .line 2111
    :cond_3
    invoke-virtual {v3, v4, v5}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->b(J)Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;

    move-result-object v0

    .line 2112
    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a:Lfp;

    invoke-virtual {v3, v4, v5, v0}, Lfp;->b(JLjava/lang/Object;)V

    .line 2113
    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager;->a(Lcom/alibaba/android/dingtalkim/encrypt/EncryptDegradeManager$FileEncryptTestResult;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v2

    .line 330
    goto :goto_1
.end method

.method public final b(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)Z
    .locals 34
    .param p1, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    .prologue
    .line 798
    invoke-static {}, Ldho;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 799
    const-string/jumbo v4, "crypto"

    sget-object v5, Ldho;->a:Ljava/lang/String;

    const-string/jumbo v7, "helper decrypt no .so"

    invoke-static {v4, v5, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const/4 v4, -0x2

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 801
    const/4 v4, 0x0

    .line 1035
    :goto_0
    return v4

    .line 804
    :cond_0
    if-nez p1, :cond_1

    .line 805
    const/4 v4, 0x0

    goto :goto_0

    .line 808
    :cond_1
    const/16 v16, 0x0

    .line 809
    .local v16, "encryptFileOutputStream":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 810
    .local v14, "encryptFileInputStream":Ljava/io/FileInputStream;
    const/16 v23, 0x0

    .line 811
    .local v23, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v21, 0x0

    .line 812
    .local v21, "fileInputStream":Ljava/io/FileInputStream;
    const/16 v26, 0x0

    .line 814
    .local v26, "tempFile":Ljava/io/File;
    const/4 v6, 0x0

    .line 818
    .local v6, "corpId":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->srcPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->srcPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    .line 819
    :cond_2
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 820
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fc

    const-string/jumbo v7, "decrypt with invalid src path"

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1001
    :catch_0
    move-exception v12

    .line 1003
    .local v12, "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    :goto_1
    :try_start_1
    invoke-virtual {v12}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorCode()I

    move-result v4

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    if-eq v4, v5, :cond_3

    invoke-virtual {v12}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorCode()I

    move-result v4

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->KeyLoading:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    if-ne v4, v5, :cond_23

    .line 1004
    :cond_3
    const/4 v4, -0x5

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 1008
    :goto_2
    const/4 v5, 0x3

    invoke-virtual {v12}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorCode()I

    move-result v7

    invoke-virtual {v12}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorMsg()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Ldhq;->b(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;ILjava/lang/String;ILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1025
    if-eqz v26, :cond_4

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1026
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 1029
    :cond_4
    invoke-static {v14}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1030
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1031
    invoke-static/range {v21 .. v21}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1032
    invoke-static/range {v23 .. v23}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1035
    .end local v12    # "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    :goto_3
    const/4 v4, 0x0

    goto :goto_0

    .line 822
    :cond_5
    :try_start_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 823
    const/4 v4, -0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 824
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fc

    const-string/jumbo v7, "decrypt invalid dst path"

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_2
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1010
    :catch_1
    move-exception v12

    .line 1012
    .local v12, "e":Lcom/dingtalk/cryptokit/CryptoException;
    :goto_4
    :try_start_3
    invoke-virtual {v12}, Lcom/dingtalk/cryptokit/CryptoException;->getCode()I

    move-result v4

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    if-eq v4, v5, :cond_6

    invoke-virtual {v12}, Lcom/dingtalk/cryptokit/CryptoException;->getCode()I

    move-result v4

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->KeyLoading:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    if-ne v4, v5, :cond_24

    .line 1013
    :cond_6
    const/4 v4, -0x5

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 1017
    :goto_5
    const/4 v4, 0x4

    invoke-virtual {v12}, Lcom/dingtalk/cryptokit/CryptoException;->getCode()I

    move-result v5

    invoke-virtual {v12}, Lcom/dingtalk/cryptokit/CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-static {v0, v4, v6, v5, v7}, Ldhq;->b(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1025
    if-eqz v26, :cond_7

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1026
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 1029
    :cond_7
    invoke-static {v14}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1030
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1031
    invoke-static/range {v21 .. v21}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1032
    invoke-static/range {v23 .. v23}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_3

    .line 827
    .end local v12    # "e":Lcom/dingtalk/cryptokit/CryptoException;
    :cond_8
    :try_start_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->priority:Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->fromValue(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    move-result-object v19

    .line 828
    .local v19, "encryptSequence":Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    const-string/jumbo v4, "crypto"

    sget-object v5, Ldho;->a:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "decrypt cryptionDo encryptSequence:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->getValue()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-static {}, Ldhp;->a()Ldhp;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ldhp;->a(Ljava/lang/String;)Lcom/alibaba/android/dtencrypt/IDTEncrypt;

    move-result-object v18

    .line 830
    .local v18, "encryptSdk":Lcom/alibaba/android/dtencrypt/IDTEncrypt;
    if-nez v18, :cond_a

    .line 831
    const/4 v4, -0x3

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 832
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1f8

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "no 3th sdk:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->appId:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_4
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1019
    .end local v18    # "encryptSdk":Lcom/alibaba/android/dtencrypt/IDTEncrypt;
    .end local v19    # "encryptSequence":Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    :catch_2
    move-exception v12

    .line 1021
    .local v12, "e":Ljava/lang/Throwable;
    :goto_6
    const/4 v4, -0x2

    :try_start_5
    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 1022
    const/4 v4, 0x4

    const/4 v5, -0x1

    invoke-static {v12}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-static {v0, v4, v6, v5, v7}, Ldhq;->b(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1025
    if-eqz v26, :cond_9

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1026
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 1029
    :cond_9
    invoke-static {v14}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1030
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1031
    invoke-static/range {v21 .. v21}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1032
    invoke-static/range {v23 .. v23}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_3

    .line 835
    .end local v12    # "e":Ljava/lang/Throwable;
    .restart local v18    # "encryptSdk":Lcom/alibaba/android/dtencrypt/IDTEncrypt;
    .restart local v19    # "encryptSequence":Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    :cond_a
    :try_start_6
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->orgId:J

    invoke-static {v4, v5}, Ldjl;->c(J)Ljava/lang/String;

    move-result-object v6

    .line 836
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 837
    const/4 v4, -0x4

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 838
    const-string/jumbo v4, "crypto"

    const-string/jumbo v5, "decrypt"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "decrypt cryptionDo getCorpId failed orgId:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->orgId:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fa

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "corpId null:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->orgId:J

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_6
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1025
    .end local v18    # "encryptSdk":Lcom/alibaba/android/dtencrypt/IDTEncrypt;
    .end local v19    # "encryptSequence":Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    :catchall_0
    move-exception v4

    :goto_7
    if-eqz v26, :cond_b

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1026
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 1029
    :cond_b
    invoke-static {v14}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1030
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1031
    invoke-static/range {v21 .. v21}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1032
    invoke-static/range {v23 .. v23}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    throw v4

    .line 846
    .restart local v18    # "encryptSdk":Lcom/alibaba/android/dtencrypt/IDTEncrypt;
    .restart local v19    # "encryptSequence":Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    :cond_c
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Ldho;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 847
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ldho;->b:Ljava/lang/String;
    :try_end_7
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 853
    :cond_d
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v11

    .line 858
    .local v11, "dstPathDirStr":Ljava/lang/String;
    :goto_8
    const/4 v4, 0x4

    :try_start_9
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v32, 0x64

    mul-long v8, v8, v32

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const-string/jumbo v7, ".crypt"

    aput-object v7, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 859
    .local v29, "tmpDstPath":Ljava/lang/String;
    sget-object v4, Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;->FIRST_DD:Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;

    move-object/from16 v0, v19

    if-ne v0, v4, :cond_19

    .line 861
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Ldho;->b:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v7, ".crypt"

    aput-object v7, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 862
    .local v30, "tmpPath":Ljava/lang/String;
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 864
    .end local v26    # "tempFile":Ljava/io/File;
    .local v27, "tempFile":Ljava/io/File;
    :try_start_a
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e

    .line 865
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->createNewFile()Z

    .line 867
    :cond_e
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_a .. :try_end_a} :catch_15
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_a .. :try_end_a} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_11
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .end local v14    # "encryptFileInputStream":Ljava/io/FileInputStream;
    .local v15, "encryptFileInputStream":Ljava/io/FileInputStream;
    move-object/from16 v26, v27

    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    move-object v14, v15

    .line 884
    .end local v15    # "encryptFileInputStream":Ljava/io/FileInputStream;
    .restart local v14    # "encryptFileInputStream":Ljava/io/FileInputStream;
    :goto_9
    if-nez v14, :cond_11

    .line 1025
    if-eqz v26, :cond_f

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1026
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 1029
    :cond_f
    invoke-static {v14}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1030
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1031
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1032
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 855
    .end local v11    # "dstPathDirStr":Ljava/lang/String;
    .end local v29    # "tmpDstPath":Ljava/lang/String;
    .end local v30    # "tmpPath":Ljava/lang/String;
    :catch_3
    move-exception v4

    :try_start_b
    move-object/from16 v0, p0

    iget-object v11, v0, Ldho;->b:Ljava/lang/String;
    :try_end_b
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_b .. :try_end_b} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .restart local v11    # "dstPathDirStr":Ljava/lang/String;
    goto/16 :goto_8

    .line 868
    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v27    # "tempFile":Ljava/io/File;
    .restart local v29    # "tmpDstPath":Ljava/lang/String;
    .restart local v30    # "tmpPath":Ljava/lang/String;
    :catch_4
    move-exception v12

    .line 869
    .local v12, "e":Ljava/io/FileNotFoundException;
    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 871
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ldho;->b:Ljava/lang/String;

    .line 872
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Ldho;->b:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v7, ".crypt"

    aput-object v7, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 873
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_c .. :try_end_c} :catch_15
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_11
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 875
    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    :try_start_d
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_10

    .line 876
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->createNewFile()Z

    .line 878
    :cond_10
    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v0, v26

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_d .. :try_end_d} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .end local v14    # "encryptFileInputStream":Ljava/io/FileInputStream;
    .restart local v15    # "encryptFileInputStream":Ljava/io/FileInputStream;
    move-object v14, v15

    .line 881
    .end local v15    # "encryptFileInputStream":Ljava/io/FileInputStream;
    .restart local v14    # "encryptFileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 879
    :catch_5
    move-exception v13

    .line 880
    .local v13, "e1":Ljava/io/FileNotFoundException;
    :try_start_e
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fc

    invoke-static {v13}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_e
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_e .. :try_end_e} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 889
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "e1":Ljava/io/FileNotFoundException;
    :cond_11
    :try_start_f
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_f .. :try_end_f} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 893
    :goto_a
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_10
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 895
    :try_start_11
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->srcPath:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-interface {v0, v6, v4, v1}, Lcom/alibaba/android/dtencrypt/IDTEncrypt;->decryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_11
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 901
    :cond_12
    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 904
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gez v4, :cond_14

    .line 905
    :cond_13
    const/4 v4, -0x2

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 906
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    const/16 v5, -0x1fd

    const-string/jumbo v7, "3th crypto no result"

    sget-object v8, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_NULL:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v9, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v4, v5, v7, v8, v9}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4

    .line 890
    :catch_6
    move-exception v25

    .line 891
    .local v25, "t":Ljava/lang/Throwable;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 896
    .end local v25    # "t":Ljava/lang/Throwable;
    :catch_7
    move-exception v12

    .line 897
    .local v12, "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    move-object/from16 v0, p1

    invoke-static {v0, v6, v12}, Ldho;->a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Ljava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 898
    throw v12
    :try_end_12
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 910
    .end local v12    # "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    :cond_14
    :try_start_13
    new-instance v24, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 915
    .end local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v24, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 916
    invoke-static {}, Ldlc;->a()Ldlc;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v6, v14, v0}, Ldlc;->b(Ljava/lang/String;Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)J

    .line 917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 920
    new-instance v28, Ljava/io/File;

    invoke-direct/range {v28 .. v29}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v28, "tmpDstFile":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gez v4, :cond_16

    .line 922
    :cond_15
    const/4 v4, -0x2

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 923
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fb

    const-string/jumbo v7, "dd crypto no result"

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_14
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_14 .. :try_end_14} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_12
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1001
    .end local v28    # "tmpDstFile":Ljava/io/File;
    :catch_8
    move-exception v12

    move-object/from16 v23, v24

    .end local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 911
    :catch_9
    move-exception v20

    .line 912
    .local v20, "fex":Ljava/io/FileNotFoundException;
    :try_start_15
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fc

    invoke-static/range {v20 .. v20}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_15
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_15 .. :try_end_15} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 926
    .end local v20    # "fex":Ljava/io/FileNotFoundException;
    .end local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v28    # "tmpDstFile":Ljava/io/File;
    :cond_16
    :try_start_16
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 927
    .local v10, "dstFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 928
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 930
    :cond_17
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_16
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_16 .. :try_end_16} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_12
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    move-object/from16 v23, v24

    .line 1025
    .end local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_b
    if-eqz v26, :cond_18

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1026
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 1029
    :cond_18
    invoke-static {v14}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1030
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1031
    invoke-static/range {v21 .. v21}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1032
    invoke-static/range {v23 .. v23}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 933
    .end local v10    # "dstFile":Ljava/io/File;
    .end local v28    # "tmpDstFile":Ljava/io/File;
    .end local v30    # "tmpPath":Ljava/lang/String;
    :cond_19
    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Ldho;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 934
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lhcs;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ldho;->b:Ljava/lang/String;

    .line 937
    :cond_1a
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Ldho;->b:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v7, ".crypt"

    aput-object v7, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 938
    .restart local v30    # "tmpPath":Ljava/lang/String;
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 941
    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v27    # "tempFile":Ljava/io/File;
    :try_start_18
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_a
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_18 .. :try_end_18} :catch_15
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_18 .. :try_end_18} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_11
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    .end local v16    # "encryptFileOutputStream":Ljava/io/FileOutputStream;
    .local v17, "encryptFileOutputStream":Ljava/io/FileOutputStream;
    move-object/from16 v26, v27

    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    move-object/from16 v16, v17

    .line 955
    .end local v17    # "encryptFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "encryptFileOutputStream":Ljava/io/FileOutputStream;
    :goto_c
    if-nez v16, :cond_1c

    .line 1025
    if-eqz v26, :cond_1b

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1026
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->delete()Z

    .line 1029
    :cond_1b
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1030
    invoke-static/range {v16 .. v16}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1031
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    .line 1032
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/IOUtils;->close(Ljava/io/Closeable;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 942
    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v27    # "tempFile":Ljava/io/File;
    :catch_a
    move-exception v12

    .line 943
    .local v12, "e":Ljava/io/FileNotFoundException;
    :try_start_19
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 945
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ldho;->b:Ljava/lang/String;

    .line 946
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Ldho;->b:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v7, ".crypt"

    aput-object v7, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 947
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_19 .. :try_end_19} :catch_15
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_19 .. :try_end_19} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_11
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 949
    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    :try_start_1a
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_b
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_1a .. :try_end_1a} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_2
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .end local v16    # "encryptFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v17    # "encryptFileOutputStream":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .line 952
    .end local v17    # "encryptFileOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "encryptFileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_c

    .line 950
    :catch_b
    move-exception v13

    .line 951
    .restart local v13    # "e1":Ljava/io/FileNotFoundException;
    :try_start_1b
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fc

    invoke-static {v13}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1b
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_1b .. :try_end_1b} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 960
    .end local v12    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "e1":Ljava/io/FileNotFoundException;
    :cond_1c
    :try_start_1c
    new-instance v22, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->srcPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_2
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 965
    .end local v21    # "fileInputStream":Ljava/io/FileInputStream;
    .local v22, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 966
    invoke-static {}, Ldlc;->a()Ldlc;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v4, v6, v0, v1}, Ldlc;->b(Ljava/lang/String;Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)J

    .line 967
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 970
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gez v4, :cond_1e

    .line 971
    :cond_1d
    const/4 v4, -0x2

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 972
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fb

    const-string/jumbo v7, "dd crypto no result"

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1d
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_1d .. :try_end_1d} :catch_c
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_1d .. :try_end_1d} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_10
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 1001
    :catch_c
    move-exception v12

    move-object/from16 v21, v22

    .end local v22    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v21    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 961
    :catch_d
    move-exception v20

    .line 962
    .restart local v20    # "fex":Ljava/io/FileNotFoundException;
    :try_start_1e
    new-instance v4, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v5, -0x1fc

    invoke-static/range {v20 .. v20}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1e
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_2
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 975
    .end local v20    # "fex":Ljava/io/FileNotFoundException;
    .end local v21    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v22    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_1e
    :try_start_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1f
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_1f .. :try_end_1f} :catch_c
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_1f .. :try_end_1f} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_10
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 977
    :try_start_20
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-interface {v0, v6, v1, v2}, Lcom/alibaba/android/dtencrypt/IDTEncrypt;->decryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_20
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_20 .. :try_end_20} :catch_f
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_20 .. :try_end_20} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_10
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 984
    :cond_1f
    :try_start_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 985
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    .line 987
    new-instance v28, Ljava/io/File;

    invoke-direct/range {v28 .. v29}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 988
    .restart local v28    # "tmpDstFile":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gez v4, :cond_21

    .line 989
    :cond_20
    const/4 v4, -0x2

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    .line 990
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    const/16 v5, -0x1fd

    const-string/jumbo v7, "3th crypto no result"

    sget-object v8, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_NULL:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v9, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v4, v5, v7, v8, v9}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4

    .line 1010
    .end local v28    # "tmpDstFile":Ljava/io/File;
    :catch_e
    move-exception v12

    move-object/from16 v21, v22

    .end local v22    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v21    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_4

    .line 978
    .end local v21    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v22    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_f
    move-exception v12

    .line 979
    .local v12, "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    move-object/from16 v0, p1

    invoke-static {v0, v6, v12}, Ldho;->a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Ljava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 980
    throw v12

    .line 1019
    .end local v12    # "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    :catch_10
    move-exception v12

    move-object/from16 v21, v22

    .end local v22    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v21    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_6

    .line 993
    .end local v21    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v22    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v28    # "tmpDstFile":Ljava/io/File;
    :cond_21
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 994
    .restart local v10    # "dstFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_22

    .line 995
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 997
    :cond_22
    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_21
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_21 .. :try_end_21} :catch_c
    .catch Lcom/dingtalk/cryptokit/CryptoException; {:try_start_21 .. :try_end_21} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_10
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    move-object/from16 v21, v22

    .end local v22    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v21    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_b

    .line 1006
    .end local v10    # "dstFile":Ljava/io/File;
    .end local v11    # "dstPathDirStr":Ljava/lang/String;
    .end local v18    # "encryptSdk":Lcom/alibaba/android/dtencrypt/IDTEncrypt;
    .end local v19    # "encryptSequence":Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    .end local v28    # "tmpDstFile":Ljava/io/File;
    .end local v29    # "tmpDstPath":Ljava/lang/String;
    .end local v30    # "tmpPath":Ljava/lang/String;
    .restart local v12    # "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    :cond_23
    const/4 v4, -0x2

    :try_start_22
    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I

    goto/16 :goto_2

    .line 1015
    .local v12, "e":Lcom/dingtalk/cryptokit/CryptoException;
    :cond_24
    const/4 v4, -0x2

    move-object/from16 v0, p1

    iput v4, v0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->status:I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto/16 :goto_5

    .line 1025
    .end local v12    # "e":Lcom/dingtalk/cryptokit/CryptoException;
    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v11    # "dstPathDirStr":Ljava/lang/String;
    .restart local v18    # "encryptSdk":Lcom/alibaba/android/dtencrypt/IDTEncrypt;
    .restart local v19    # "encryptSequence":Lcom/alibaba/android/dingtalkim/IMConstant$ENCRYPT_SEQUENCE;
    .restart local v27    # "tempFile":Ljava/io/File;
    .restart local v29    # "tmpDstPath":Ljava/lang/String;
    .restart local v30    # "tmpPath":Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object/from16 v26, v27

    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    goto/16 :goto_7

    .end local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object/from16 v23, v24

    .end local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .end local v21    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v22    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v4

    move-object/from16 v21, v22

    .end local v22    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v21    # "fileInputStream":Ljava/io/FileInputStream;
    goto/16 :goto_7

    .line 1019
    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v27    # "tempFile":Ljava/io/File;
    :catch_11
    move-exception v12

    move-object/from16 v26, v27

    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    goto/16 :goto_6

    .end local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_12
    move-exception v12

    move-object/from16 v23, v24

    .end local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 1010
    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v27    # "tempFile":Ljava/io/File;
    :catch_13
    move-exception v12

    move-object/from16 v26, v27

    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    goto/16 :goto_4

    .end local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_14
    move-exception v12

    move-object/from16 v23, v24

    .end local v24    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v23    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 1001
    .end local v26    # "tempFile":Ljava/io/File;
    .restart local v27    # "tempFile":Ljava/io/File;
    :catch_15
    move-exception v12

    move-object/from16 v26, v27

    .end local v27    # "tempFile":Ljava/io/File;
    .restart local v26    # "tempFile":Ljava/io/File;
    goto/16 :goto_1
.end method

.method public final c()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 422
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 423
    .local v1, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 424
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 425
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    .line 427
    invoke-static {v4, v5}, Ldho;->a(J)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 428
    const/4 v2, 0x1

    .line 432
    .end local v0    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/alibaba/wukong/im/Conversation;)Z
    .locals 8
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 357
    if-nez p1, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v2

    .line 360
    :cond_1
    invoke-static {p1}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v0

    .line 361
    .local v0, "oid":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 365
    const-string/jumbo v4, "crypto"

    sget-object v5, Ldho;->a:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "isEncryptConversation cid="

    aput-object v7, v6, v2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {v0, v1}, Ldho;->c(J)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Ldho;->d(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Ldho;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method

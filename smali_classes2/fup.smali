.class public final Lfup;
.super Lfuo;
.source "BiometricTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfup$a;
    }
.end annotation


# instance fields
.field c:Lchv;

.field d:Lcom/alibaba/android/user/outverify/TaskStatus;

.field e:Landroid/app/Activity;

.field f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lfup$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:[B

.field private i:[B

.field private j:Ljava/lang/String;

.field private k:Lfur;


# direct methods
.method public constructor <init>(Lchv;)V
    .locals 1
    .param p1, "certifyRequest"    # Lchv;

    .prologue
    .line 45
    invoke-direct {p0}, Lfuo;-><init>()V

    .line 251
    new-instance v0, Lfup$2;

    invoke-direct {v0, p0}, Lfup$2;-><init>(Lfup;)V

    iput-object v0, p0, Lfup;->k:Lfur;

    .line 46
    iput-object p1, p0, Lfup;->c:Lchv;

    .line 47
    sget-object v0, Lcom/alibaba/android/user/outverify/TaskStatus;->INIT:Lcom/alibaba/android/user/outverify/TaskStatus;

    iput-object v0, p0, Lfup;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfup;->f:Ljava/util/HashMap;

    .line 49
    return-void
.end method

.method static synthetic a(Lfup;)V
    .locals 9
    .param p0, "x0"    # Lfup;

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 33
    .line 7283
    iget-object v0, p0, Lfup;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7284
    iget-object v4, p0, Lfup;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfup$a;

    .line 7285
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lfup$a;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 7290
    :goto_0
    if-eqz v0, :cond_4

    .line 7291
    sget-object v0, Lcom/alibaba/android/user/outverify/TaskStatus;->DONE:Lcom/alibaba/android/user/outverify/TaskStatus;

    iput-object v0, p0, Lfup;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 7292
    iget-object v0, p0, Lfup;->e:Landroid/app/Activity;

    invoke-static {v0}, Lfup;->c(Landroid/app/Activity;)V

    .line 7293
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;-><init>()V

    .line 7294
    invoke-virtual {v3, v2}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->setSucceed(Z)V

    .line 7295
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->setCertifyType(I)V

    .line 7296
    iget-object v0, p0, Lfup;->c:Lchv;

    .line 8047
    iget-object v0, v0, Lchv;->d:Ljava/lang/String;

    .line 7296
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->setAttachInfo(Ljava/lang/String;)V

    .line 7298
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7299
    iget-object v0, p0, Lfup;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7300
    iget-object v6, p0, Lfup;->f:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfup$a;

    .line 7301
    if-eqz v0, :cond_1

    .line 7302
    iget-boolean v6, v0, Lfup$a;->c:Z

    if-eqz v6, :cond_2

    .line 7303
    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;-><init>()V

    .line 7304
    iget v7, v0, Lfup$a;->g:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;->setActionType(I)V

    .line 7305
    iget-object v0, v0, Lfup$a;->f:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;->setImage(Ljava/lang/String;)V

    .line 7306
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7309
    :cond_2
    invoke-virtual {v3, v8}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->setErrorCode(Ljava/lang/String;)V

    .line 7310
    invoke-virtual {v3, v8}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->setErrorMsg(Ljava/lang/String;)V

    move v0, v1

    .line 7315
    :goto_2
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->setSucceed(Z)V

    .line 7316
    if-eqz v0, :cond_3

    .line 7317
    iget-object v0, p0, Lfup;->g:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->setEncryptedKey(Ljava/lang/String;)V

    .line 7318
    iget-object v0, p0, Lfup;->j:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->setIvParameter(Ljava/lang/String;)V

    .line 7319
    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->setMovementList(Ljava/util/List;)V

    .line 7321
    :cond_3
    iget-object v0, p0, Lfup;->e:Landroid/app/Activity;

    invoke-static {v0, v3}, Lfup;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;)V

    .line 33
    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method private a(Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;)Z
    .locals 11
    .param p1, "livenessResult"    # Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;
    .param p2, "actionResult"    # Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 183
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 184
    :cond_0
    const-string/jumbo v3, "outverify"

    const-string/jumbo v4, "[BiometricTask] parse2Task params invalid"

    invoke-static {v3, v5, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v9

    .line 206
    :goto_0
    return v3

    .line 187
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getIs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    .line 188
    .local v0, "image1":Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;
    if-nez v0, :cond_2

    move v3, v9

    .line 189
    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getP()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfbp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "img1LocalPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    const-string/jumbo v3, "outverify"

    const-string/jumbo v4, "[BiometricTask] parse2Task img1LocalPath is empty"

    invoke-static {v3, v5, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v9

    .line 194
    goto :goto_0

    .line 197
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getAt()I

    move-result v3

    .line 2014
    if-eq v3, v10, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    const/16 v4, 0xb

    if-eq v3, v4, :cond_4

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    :cond_4
    move v3, v10

    .line 197
    :goto_1
    if-eqz v3, :cond_6

    .line 198
    new-instance v1, Lfus;

    iget-object v3, p0, Lfup;->c:Lchv;

    .line 2035
    iget-object v3, v3, Lchv;->a:Ljava/lang/String;

    .line 198
    iget-object v4, p0, Lfup;->h:[B

    iget-object v5, p0, Lfup;->i:[B

    iget-object v6, p0, Lfup;->c:Lchv;

    .line 2043
    iget-wide v6, v6, Lchv;->c:J

    .line 198
    invoke-direct/range {v1 .. v7}, Lfus;-><init>(Ljava/lang/String;Ljava/lang/String;[B[BJ)V

    .line 199
    .local v1, "task1":Lfus;
    new-instance v8, Lfup$a;

    invoke-direct {v8, v9}, Lfup$a;-><init>(B)V

    .line 200
    .local v8, "taskResult1":Lfup$a;
    iput-object v1, v8, Lfup$a;->b:Lfus;

    .line 201
    iget-object v3, p0, Lfup;->k:Lfur;

    .line 2063
    iput-object v3, v1, Lfus;->a:Lfur;

    .line 202
    invoke-virtual {p2}, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;->getAt()I

    move-result v3

    iput v3, v8, Lfup$a;->g:I

    .line 203
    iget-object v3, p0, Lfup;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v10

    .line 204
    goto :goto_0

    .end local v1    # "task1":Lfus;
    .end local v8    # "taskResult1":Lfup$a;
    :cond_5
    move v3, v9

    .line 2019
    goto :goto_1

    :cond_6
    move v3, v9

    .line 206
    goto :goto_0
.end method

.method private b()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 226
    iget-object v5, p0, Lfup;->c:Lchv;

    .line 4039
    iget-object v5, v5, Lchv;->b:Ljava/lang/String;

    .line 226
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 228
    const/16 v5, 0x80

    :try_start_0
    invoke-static {v5}, Lfun;->a(I)Lfun$a;

    move-result-object v2

    .line 229
    .local v2, "randomAESInfo":Lfun$a;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lfun$a;->a()Z

    move-result v5

    if-nez v5, :cond_2

    .line 230
    :cond_0
    const-string/jumbo v5, "outverify"

    const/4 v6, 0x0

    const-string/jumbo v7, "[BiometricTask] genRandomAESInfo error"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 246
    .end local v2    # "randomAESInfo":Lfun$a;
    :cond_1
    :goto_0
    return v3

    .line 233
    .restart local v2    # "randomAESInfo":Lfun$a;
    :cond_2
    iget-object v5, v2, Lfun$a;->a:[B

    iget-object v6, p0, Lfup;->c:Lchv;

    .line 5039
    iget-object v6, v6, Lchv;->b:Ljava/lang/String;

    .line 233
    invoke-static {v5, v6}, Lfut;->a([BLjava/lang/String;)[B

    move-result-object v1

    .line 6021
    .local v1, "encryptedRSAKeyBytes":[B
    const/4 v5, 0x2

    invoke-static {v1, v5}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    .line 234
    iput-object v5, p0, Lfup;->g:Ljava/lang/String;

    .line 235
    iget-object v5, v2, Lfun$a;->a:[B

    iput-object v5, p0, Lfup;->h:[B

    .line 236
    iget-object v5, v2, Lfun$a;->b:[B

    iput-object v5, p0, Lfup;->i:[B

    .line 237
    iget-object v5, v2, Lfun$a;->b:[B

    .line 7021
    const/4 v6, 0x2

    invoke-static {v5, v6}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v5

    .line 237
    iput-object v5, p0, Lfup;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v1    # "encryptedRSAKeyBytes":[B
    .end local v2    # "randomAESInfo":Lfun$a;
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    const-string/jumbo v5, "outverify"

    new-array v6, v8, [Ljava/lang/String;

    const-string/jumbo v7, "[BiometricTask] checkGenAesKeyAndSave exception:"

    aput-object v7, v6, v4

    .line 242
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-static {v5, v9, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 244
    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 211
    iget-object v2, p0, Lfup;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    sget-object v3, Lcom/alibaba/android/user/outverify/TaskStatus;->DOING:Lcom/alibaba/android/user/outverify/TaskStatus;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lfup;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    sget-object v3, Lcom/alibaba/android/user/outverify/TaskStatus;->INIT:Lcom/alibaba/android/user/outverify/TaskStatus;

    if-ne v2, v3, :cond_2

    .line 212
    :cond_0
    sget-object v2, Lcom/alibaba/android/user/outverify/TaskStatus;->CANCELED:Lcom/alibaba/android/user/outverify/TaskStatus;

    iput-object v2, p0, Lfup;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 214
    iget-object v2, p0, Lfup;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lfup;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfup$a;

    .line 216
    .local v1, "taskResult":Lfup$a;
    if-eqz v1, :cond_1

    iget-object v3, v1, Lfup$a;->b:Lfus;

    if-eqz v3, :cond_1

    .line 217
    iget-object v3, v1, Lfup$a;->b:Lfus;

    const/4 v4, 0x0

    .line 3063
    iput-object v4, v3, Lfus;->a:Lfur;

    .line 218
    iget-object v3, v1, Lfup$a;->b:Lfus;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lfus;->a(Z)V

    goto :goto_0

    .line 222
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "taskResult":Lfup$a;
    :cond_2
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 57
    iget-object v1, p0, Lfup;->c:Lchv;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iput-object p1, p0, Lfup;->e:Landroid/app/Activity;

    .line 61
    iget-object v1, p0, Lfup;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    sget-object v2, Lcom/alibaba/android/user/outverify/TaskStatus;->INIT:Lcom/alibaba/android/user/outverify/TaskStatus;

    if-ne v1, v2, :cond_0

    .line 62
    sget-object v1, Lcom/alibaba/android/user/outverify/TaskStatus;->DOING:Lcom/alibaba/android/user/outverify/TaskStatus;

    iput-object v1, p0, Lfup;->d:Lcom/alibaba/android/user/outverify/TaskStatus;

    .line 63
    invoke-direct {p0}, Lfup;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    const-string/jumbo v1, "outverify"

    const-string/jumbo v2, "[BiometricTask] genAesKeyError"

    invoke-static {v1, v4, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lfup;->a()V

    .line 66
    iget-object v1, p0, Lfup;->e:Landroid/app/Activity;

    const-string/jumbo v2, "key generate error"

    iget-object v3, p0, Lfup;->c:Lchv;

    invoke-static {v1, v4, v2, v3}, Lfup;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lchv;)V

    goto :goto_0

    .line 69
    :cond_2
    new-instance v0, Lcom/alibaba/security/biometrics/AuthContext;

    iget-object v1, p0, Lfup;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/security/biometrics/AuthContext;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "authContext":Lcom/alibaba/security/biometrics/AuthContext;
    sget-object v1, Lcom/alibaba/security/biometrics/AuthContext$AuthType;->BIO_FACE:Lcom/alibaba/security/biometrics/AuthContext$AuthType;

    invoke-static {}, Lfbp;->a()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lfup$1;

    invoke-direct {v3, p0}, Lfup$1;-><init>(Lfup;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/security/biometrics/AuthContext;->a(Lcom/alibaba/security/biometrics/AuthContext$AuthType;Landroid/os/Bundle;Lcom/alibaba/security/biometrics/AuthContext$b;)Z

    goto :goto_0
.end method

.method a(Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;)Z
    .locals 12
    .param p1, "livenessResult"    # Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 134
    :cond_0
    const/4 v3, 0x0

    .line 179
    :goto_0
    return v3

    .line 138
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getQi()Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/security/biometrics/face/auth/result/ImageResult;->getP()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lfbp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "bigLocalPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    const-string/jumbo v3, "outverify"

    const/4 v4, 0x0

    const-string/jumbo v5, "[BiometricTask] handleLivenessResult bigLocalPath is not exists:"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const/4 v3, 0x0

    goto :goto_0

    .line 143
    :cond_2
    new-instance v1, Lfus;

    iget-object v3, p0, Lfup;->c:Lchv;

    .line 1035
    iget-object v3, v3, Lchv;->a:Ljava/lang/String;

    .line 143
    iget-object v4, p0, Lfup;->h:[B

    iget-object v5, p0, Lfup;->i:[B

    iget-object v6, p0, Lfup;->c:Lchv;

    .line 1043
    iget-wide v6, v6, Lchv;->c:J

    .line 143
    invoke-direct/range {v1 .. v7}, Lfus;-><init>(Ljava/lang/String;Ljava/lang/String;[B[BJ)V

    .line 144
    .local v1, "task1":Lfus;
    new-instance v11, Lfup$a;

    const/4 v3, 0x0

    invoke-direct {v11, v3}, Lfup$a;-><init>(B)V

    .line 145
    .local v11, "taskResult1":Lfup$a;
    iput-object v1, v11, Lfup$a;->b:Lfus;

    .line 146
    iget-object v3, p0, Lfup;->k:Lfur;

    .line 1063
    iput-object v3, v1, Lfus;->a:Lfur;

    .line 147
    const/16 v3, -0x64

    iput v3, v11, Lfup$a;->g:I

    .line 148
    iget-object v3, p0, Lfup;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    .line 152
    .local v0, "actionResult":Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;
    invoke-direct {p0, p1, v0}, Lfup;->a(Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 153
    const-string/jumbo v3, "outverify"

    const/4 v4, 0x0

    const-string/jumbo v5, "[BiometricTask] handleLivenessResult action1 invalid"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v3, 0x0

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;->getAs()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "actionResult":Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;
    check-cast v0, Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;

    .line 158
    .restart local v0    # "actionResult":Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;
    invoke-direct {p0, p1, v0}, Lfup;->a(Lcom/alibaba/security/biometrics/face/auth/result/LivenessResult;Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 159
    const-string/jumbo v3, "outverify"

    const/4 v4, 0x0

    const-string/jumbo v5, "[BiometricTask] handleLivenessResult action2 invalid"

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 163
    :cond_4
    iget-object v3, p0, Lfup;->e:Landroid/app/Activity;

    invoke-static {v3}, Lfup;->b(Landroid/app/Activity;)V

    .line 165
    iget-object v3, p0, Lfup;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 166
    iget-object v3, p0, Lfup;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 167
    .local v9, "key":Ljava/lang/String;
    iget-object v4, p0, Lfup;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lfup$a;

    .line 168
    .local v10, "taskResult":Lfup$a;
    if-eqz v10, :cond_5

    iget-object v4, v10, Lfup$a;->b:Lfus;

    if-eqz v4, :cond_5

    .line 169
    iget-object v4, v10, Lfup$a;->b:Lfus;

    invoke-virtual {v4}, Lfus;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 174
    .end local v0    # "actionResult":Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;
    .end local v1    # "task1":Lfus;
    .end local v2    # "bigLocalPath":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "taskResult":Lfup$a;
    .end local v11    # "taskResult1":Lfup$a;
    :catch_0
    move-exception v8

    .line 175
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const-string/jumbo v3, "outverify"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "[BiometricTask] handleLivenessResult exception:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 177
    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 173
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "actionResult":Lcom/alibaba/security/biometrics/face/auth/result/ActionResult;
    .restart local v1    # "task1":Lfus;
    .restart local v2    # "bigLocalPath":Ljava/lang/String;
    .restart local v11    # "taskResult1":Lfup$a;
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

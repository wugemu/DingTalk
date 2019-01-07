.class public Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Verify.java"


# static fields
.field private static final ACTION_TYPE_BLINK:Ljava/lang/String; = "Blink"

.field private static final ACTION_TYPE_KEEP_STILL:Ljava/lang/String; = "KeepStill"

.field private static final ACTION_TYPE_OPEN_MOUTH:Ljava/lang/String; = "OpenMouth"

.field private static final ACTION_TYPE_RAISE_HEAD_DOWN:Ljava/lang/String; = "RaiseHeadDown"

.field private static final ACTION_TYPE_SHAKE_HEAD:Ljava/lang/String; = "ShakeHead"

.field private static final EXPIRE_TIMES:J = 0x927c0L

.field private static final KEY_ACTION_TYPE:Ljava/lang/String; = "actionType"

.field private static final KEY_BIG_IMAGE_URL_KEY:Ljava/lang/String; = "bigImage"

.field private static final KEY_ENCRYPTED_AES_IV_PARAMETER:Ljava/lang/String; = "initVector"

.field private static final KEY_ENCRYPTED_AES_KEY:Ljava/lang/String; = "encryptedAESKey"

.field private static final KEY_IMAGE_URL:Ljava/lang/String; = "image"

.field private static final KEY_MOVEMENTS:[Ljava/lang/String;

.field private static final REALPERSONAUTH_ERRORCODE_IDCARDNOTBIND:I = 0x5208

.field private static final REALPERSONAUTH_ERRORCODE_USERREJECT:I = 0x2710

.field private static final REALPERSONAUTH_ERRORCODE_ZIMIDFAILED:I = 0x4e20

.field private static final REALPERSONAUTH_ERRORCODE_ZOLOZFAIL:I = 0x2f44

.field private static final TAKE_PHOTO_TYPE_CERT_BACK:I = 0x2

.field private static final TAKE_PHOTO_TYPE_CERT_FRONT:I = 0x1


# instance fields
.field private mBiometricCallbackId:Ljava/lang/String;

.field private mBiometricTask:Lchw;

.field private mCertificationBackCallbackId:Ljava/lang/String;

.field private mCertificationBackTask:Lchw;

.field private mCertificationFrontCallbackId:Ljava/lang/String;

.field private mCertificationFrontTask:Lchw;

.field private mVerifyReceiver:Landroid/content/BroadcastReceiver;

.field private startAuthReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "movement_1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "movement_2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->KEY_MOVEMENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->unregStartAuthReceiver()V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->handleResponse(Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private clearLastBackTask()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationBackTask:Lchw;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationBackTask:Lchw;

    invoke-interface {v0}, Lchw;->a()V

    .line 168
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationBackTask:Lchw;

    .line 169
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationBackCallbackId:Ljava/lang/String;

    .line 171
    :cond_0
    return-void
.end method

.method private clearLastFrontTask()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationFrontTask:Lchw;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationFrontTask:Lchw;

    invoke-interface {v0}, Lchw;->a()V

    .line 176
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationFrontTask:Lchw;

    .line 177
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationFrontCallbackId:Ljava/lang/String;

    .line 179
    :cond_0
    return-void
.end method

.method private getActionTypeString(I)Ljava/lang/String;
    .locals 1
    .param p1, "actionType"    # I

    .prologue
    .line 472
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 473
    const-string/jumbo v0, "Blink"

    .line 483
    :goto_0
    return-object v0

    .line 474
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 475
    const-string/jumbo v0, "OpenMouth"

    goto :goto_0

    .line 476
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 477
    const-string/jumbo v0, "ShakeHead"

    goto :goto_0

    .line 478
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 479
    const-string/jumbo v0, "KeepStill"

    goto :goto_0

    .line 480
    :cond_3
    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    .line 481
    const-string/jumbo v0, "RaiseHeadDown"

    goto :goto_0

    .line 483
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleBiometricResponse(Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;Ljava/lang/String;)Z
    .locals 11
    .param p1, "biometricResponse"    # Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;
    .param p2, "biometricCallbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 417
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->getAttachInfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 419
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->isSucceed()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 421
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->getMovementList()Ljava/util/List;

    move-result-object v5

    .line 422
    .local v5, "movementList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;>;"
    const/4 v3, 0x0

    .line 423
    .local v3, "jsonObject":Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 424
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 425
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 427
    .local v2, "index":I
    :try_start_0
    const-string/jumbo v6, "encryptedAESKey"

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->getEncryptedKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    const-string/jumbo v6, "initVector"

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->getIvParameter()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 429
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;

    .line 430
    .local v4, "movement":Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;
    if-eqz v4, :cond_0

    .line 431
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;->getActionType()I

    move-result v7

    const/16 v8, -0x64

    if-ne v7, v8, :cond_2

    .line 432
    const-string/jumbo v7, "bigImage"

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;->getImage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 451
    .end local v4    # "movement":Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;
    :catch_0
    move-exception v1

    .line 452
    .local v1, "ex":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 453
    const/4 v3, 0x0

    .line 454
    const-string/jumbo v6, "lightapp"

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "[verify] handleBiometricResponse error:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .end local v1    # "ex":Lorg/json/JSONException;
    .end local v2    # "index":I
    :cond_1
    if-eqz v3, :cond_4

    .line 458
    invoke-virtual {p0, v3, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 459
    const/4 v6, 0x1

    .line 467
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "movementList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;>;"
    :goto_1
    return v6

    .line 433
    .restart local v2    # "index":I
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "movement":Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;
    .restart local v5    # "movementList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;->getActionType()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    .line 434
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;->getActionType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    .line 435
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;->getActionType()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 436
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;->getActionType()I

    move-result v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_3

    .line 437
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;->getActionType()I

    move-result v7

    const/16 v8, 0xb

    if-ne v7, v8, :cond_0

    .line 439
    :cond_3
    sget-object v7, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->KEY_MOVEMENTS:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_0

    .line 442
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 443
    .local v0, "currentJson":Lorg/json/JSONObject;
    const-string/jumbo v7, "actionType"

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;->getActionType()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->getActionTypeString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    const-string/jumbo v7, "image"

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;->getImage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    sget-object v7, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->KEY_MOVEMENTS:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v3, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 446
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 461
    .end local v0    # "currentJson":Lorg/json/JSONObject;
    .end local v2    # "index":I
    .end local v4    # "movement":Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;
    :cond_4
    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 465
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "movementList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/outcertify/Movement;>;"
    :goto_2
    const/4 v6, 0x1

    goto :goto_1

    .line 463
    :cond_5
    const/4 v6, 0x3

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_2

    .line 467
    :cond_6
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private handleCertificationResponse(Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;Ljava/lang/String;)Z
    .locals 9
    .param p1, "certificationResponse"    # Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;
    .param p2, "responseId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 487
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->getAttachInfo()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 488
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->isSucceed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 490
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 491
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 493
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "image"

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    const-string/jumbo v4, "encryptedAESKey"

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->getEncryptedKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    const-string/jumbo v4, "initVector"

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->getIvParameter()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    if-eqz v1, :cond_0

    .line 502
    invoke-virtual {p0, v1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 512
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    return v2

    .line 496
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 497
    .local v0, "ex":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 498
    const/4 v1, 0x0

    .line 499
    const-string/jumbo v4, "lightapp"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "[verify] handleCertificationResponse error:"

    aput-object v6, v5, v3

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v8, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 506
    .end local v0    # "ex":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 508
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v2, v3

    .line 512
    goto :goto_1
.end method

.method private handleResponse(Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 393
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->getAttachInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->getCertifyType()I

    move-result v2

    if-ne v2, v4, :cond_3

    instance-of v2, p1, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;

    if-eqz v2, :cond_3

    move-object v1, p1

    .line 397
    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;

    .line 398
    .local v1, "certificationResponse":Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->getType()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 399
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationFrontCallbackId:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->handleCertificationResponse(Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationFrontCallbackId:Ljava/lang/String;

    goto :goto_0

    .line 402
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;->getType()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 403
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationBackCallbackId:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->handleCertificationResponse(Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationBackCallbackId:Ljava/lang/String;

    goto :goto_0

    .line 407
    .end local v1    # "certificationResponse":Lcom/alibaba/android/dingtalk/userbase/outcertify/CertificationResponse;
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/outcertify/CertifyResponse;->getCertifyType()I

    move-result v2

    if-ne v2, v5, :cond_0

    instance-of v2, p1, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 408
    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;

    .line 409
    .local v0, "biometricResponse":Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mBiometricCallbackId:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->handleBiometricResponse(Lcom/alibaba/android/dingtalk/userbase/outcertify/BiometricResponse;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    iput-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mBiometricCallbackId:Ljava/lang/String;

    goto :goto_0
.end method

.method private makeSureVerifyReceiver()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mVerifyReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$2;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mVerifyReceiver:Landroid/content/BroadcastReceiver;

    .line 387
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mVerifyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "dd_action_out_certify"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 389
    :cond_0
    return-void
.end method

.method private unregStartAuthReceiver()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 530
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->startAuthReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->startAuthReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->startAuthReceiver:Landroid/content/BroadcastReceiver;

    .line 534
    :cond_0
    return-void
.end method


# virtual methods
.method public biometric(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x3

    .line 204
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_js_api_biz_verify"

    .line 9083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 204
    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v2, "verify closed by server"

    invoke-static {v3, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 211
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v1, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 518
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mVerifyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mVerifyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mVerifyReceiver:Landroid/content/BroadcastReceiver;

    .line 522
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->unregStartAuthReceiver()V

    .line 523
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->clearLastBackTask()V

    .line 524
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->clearLastFrontTask()V

    .line 526
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 527
    return-void
.end method

.method public openBindIDCard(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 354
    :try_start_0
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v2

    .line 355
    .local v2, "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 356
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "url"

    const-string/jumbo v4, "https://h5.dingtalk.com/personalFaceAuth/index.html"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 359
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 362
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    :goto_0
    return-object v3

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAuth(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 20
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 238
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "bizId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, "bizId":Ljava/lang/String;
    const-string/jumbo v17, ""

    .line 240
    .local v17, "tmpMiniAppId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->miniAppInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$b;

    if-eqz v2, :cond_0

    .line 241
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->miniAppInfo:Lcom/alibaba/lightapp/runtime/ActionRequest$b;

    iget-object v0, v2, Lcom/alibaba/lightapp/runtime/ActionRequest$b;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 243
    :cond_0
    move-object/from16 v6, v17

    .line 244
    .local v6, "miniAppId":Ljava/lang/String;
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v14

    .line 245
    .local v14, "session":Lhqe$d;
    const/4 v15, 0x0

    .line 246
    .local v15, "tmpAgentId":Ljava/lang/Long;
    const-string/jumbo v16, ""

    .line 247
    .local v16, "tmpCorpId":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 248
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v2

    .line 9492
    iget-object v2, v2, Lhqe$d;->c:Ljava/lang/String;

    .line 248
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    .line 249
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lhqe;->b(Ljava/lang/String;)Lhqe$d;

    move-result-object v2

    .line 10488
    iget-object v0, v2, Lhqe$d;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 251
    :cond_1
    move-object v9, v15

    .line 252
    .local v9, "agentId":Ljava/lang/Long;
    move-object/from16 v8, v16

    .line 253
    .local v8, "corpId":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 254
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x2

    const-string/jumbo v18, "\u5165\u53c2\u65e0\u6548"

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 347
    .end local v6    # "miniAppId":Ljava/lang/String;
    .end local v7    # "bizId":Ljava/lang/String;
    .end local v8    # "corpId":Ljava/lang/String;
    .end local v9    # "agentId":Ljava/lang/Long;
    .end local v14    # "session":Lhqe$d;
    .end local v15    # "tmpAgentId":Ljava/lang/Long;
    .end local v16    # "tmpCorpId":Ljava/lang/String;
    .end local v17    # "tmpMiniAppId":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 256
    .restart local v6    # "miniAppId":Ljava/lang/String;
    .restart local v7    # "bizId":Ljava/lang/String;
    .restart local v8    # "corpId":Ljava/lang/String;
    .restart local v9    # "agentId":Ljava/lang/Long;
    .restart local v14    # "session":Lhqe$d;
    .restart local v15    # "tmpAgentId":Ljava/lang/Long;
    .restart local v16    # "tmpCorpId":Ljava/lang/String;
    .restart local v17    # "tmpMiniAppId":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "callbackId":Ljava/lang/String;
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 258
    .local v12, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "action_realPersonAuth_startAuth"

    invoke-virtual {v12, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->unregStartAuthReceiver()V

    .line 260
    new-instance v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/ActionRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->startAuthReceiver:Landroid/content/BroadcastReceiver;

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->startAuthReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v12}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 338
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v13

    .line 339
    .local v13, "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v10, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v18, "http://h5.dingtalk.com/h5-verify-start-auth-confirm/index.html?callbackId="

    aput-object v18, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v5, 0x2

    const-string/jumbo v18, "&agentId="

    aput-object v18, v3, v5

    const/4 v5, 0x3

    .line 341
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v3, v5

    const/4 v5, 0x4

    const-string/jumbo v18, "&corpId="

    aput-object v18, v3, v5

    const/4 v5, 0x5

    aput-object v8, v3, v5

    const/4 v5, 0x6

    const-string/jumbo v18, "&miniAppId="

    aput-object v18, v3, v5

    const/4 v5, 0x7

    aput-object v6, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v13, v2, v10}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 344
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 345
    .end local v4    # "callbackId":Ljava/lang/String;
    .end local v6    # "miniAppId":Ljava/lang/String;
    .end local v7    # "bizId":Ljava/lang/String;
    .end local v8    # "corpId":Ljava/lang/String;
    .end local v9    # "agentId":Ljava/lang/Long;
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v12    # "filter":Landroid/content/IntentFilter;
    .end local v13    # "lightAppRuntimeReverseInterface":Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;
    .end local v14    # "session":Lhqe$d;
    .end local v15    # "tmpAgentId":Ljava/lang/Long;
    .end local v16    # "tmpCorpId":Ljava/lang/String;
    .end local v17    # "tmpMiniAppId":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 346
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public takePhoto(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/android/dingtalk/permission/annotation/NeedsPermission;
        value = {
            "android.permission.CAMERA"
        }
    .end annotation

    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 115
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v6

    const-string/jumbo v7, "f_js_api_biz_verify"

    .line 1083
    invoke-virtual {v6, v7, v10}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v6

    .line 115
    if-nez v6, :cond_0

    .line 116
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v8, "verify closed by server"

    invoke-static {v12, v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 161
    :goto_0
    return-object v6

    .line 121
    :cond_0
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-nez v6, :cond_1

    .line 122
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {v12, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "type"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 125
    .local v5, "type":I
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v7, "publicKey"

    invoke-virtual {v6, v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "publicKey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 127
    .local v2, "matched":Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 128
    if-eq v5, v10, :cond_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 130
    :cond_2
    if-ne v5, v10, :cond_4

    .line 131
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->clearLastFrontTask()V

    .line 132
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationFrontCallbackId:Ljava/lang/String;

    .line 133
    const/4 v4, 0x1

    .line 139
    .local v4, "subType":I
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->makeSureVerifyReceiver()V

    .line 141
    new-instance v0, Lchv$a;

    invoke-direct {v0}, Lchv$a;-><init>()V

    .line 2067
    .local v0, "builder":Lchv$a;
    iget-object v6, v0, Lchv$a;->a:Lchv;

    .line 3011
    iput-object v11, v6, Lchv;->a:Ljava/lang/String;

    .line 3072
    iget-object v6, v0, Lchv$a;->a:Lchv;

    .line 4011
    iput-object v3, v6, Lchv;->b:Ljava/lang/String;

    .line 4077
    iget-object v6, v0, Lchv$a;->a:Lchv;

    const-wide/32 v8, 0x927c0

    .line 5011
    iput-wide v8, v6, Lchv;->c:J

    .line 142
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    .line 5082
    iget-object v7, v0, Lchv$a;->a:Lchv;

    .line 6011
    iput-object v6, v7, Lchv;->d:Ljava/lang/String;

    .line 6092
    iget-object v6, v0, Lchv$a;->a:Lchv;

    .line 7011
    iput v4, v6, Lchv;->f:I

    .line 7087
    iget-object v6, v0, Lchv$a;->a:Lchv;

    .line 8011
    iput v10, v6, Lchv;->e:I

    .line 145
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v6

    .line 8097
    iget-object v7, v0, Lchv$a;->a:Lchv;

    .line 145
    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lchv;)Lchw;

    move-result-object v1

    .line 146
    .local v1, "iVerifyTask":Lchw;
    if-ne v5, v10, :cond_5

    .line 147
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationFrontTask:Lchw;

    .line 152
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    .line 153
    const/4 v2, 0x1

    .line 154
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-interface {v1, v6}, Lchw;->a(Landroid/app/Activity;)V

    .line 158
    .end local v0    # "builder":Lchv$a;
    .end local v1    # "iVerifyTask":Lchw;
    .end local v4    # "subType":I
    :cond_3
    if-nez v2, :cond_6

    .line 159
    new-instance v6, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v7, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-static {v12, v11}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 135
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->clearLastBackTask()V

    .line 136
    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationBackCallbackId:Ljava/lang/String;

    .line 137
    const/4 v4, 0x2

    .restart local v4    # "subType":I
    goto :goto_1

    .line 149
    .restart local v0    # "builder":Lchv$a;
    .restart local v1    # "iVerifyTask":Lchw;
    :cond_5
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Verify;->mCertificationBackTask:Lchw;

    goto :goto_2

    .line 161
    .end local v0    # "builder":Lchv$a;
    .end local v1    # "iVerifyTask":Lchw;
    .end local v4    # "subType":I
    :cond_6
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v6

    goto/16 :goto_0
.end method

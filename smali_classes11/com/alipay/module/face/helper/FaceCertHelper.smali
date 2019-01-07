.class public Lcom/alipay/module/face/helper/FaceCertHelper;
.super Ljava/lang/Object;
.source "FaceCertHelper.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/os/Bundle;

.field c:Lcom/alipay/mobile/security/bio/api/BioCallback;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

.field private g:Landroid/os/Handler;

.field private h:Lcom/alipay/mobile/security/bio/api/BioDetector;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/verifyidentity/module/MicroModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->g:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->h:Lcom/alipay/mobile/security/bio/api/BioDetector;

    .line 104
    new-instance v0, Lcom/alipay/module/face/helper/a;

    invoke-direct {v0, p0}, Lcom/alipay/module/face/helper/a;-><init>(Lcom/alipay/module/face/helper/FaceCertHelper;)V

    iput-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->c:Lcom/alipay/mobile/security/bio/api/BioCallback;

    .line 57
    const-string/jumbo v0, "FaceCertHelper"

    const-string/jumbo v1, "FaceCertHelper onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->f:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 59
    iput-object p2, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->d:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->e:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->a:Ljava/lang/String;

    .line 62
    iput-object p5, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->b:Landroid/os/Bundle;

    .line 63
    iget-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->b:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->b:Landroid/os/Bundle;

    .line 66
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alipay/module/face/helper/FaceCertHelper;)Lcom/alipay/mobile/security/bio/api/BioDetector;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->h:Lcom/alipay/mobile/security/bio/api/BioDetector;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/bio/api/BioResponse;)Ljava/util/HashMap;
    .locals 3

    .prologue
    .line 33
    .line 1215
    if-nez p0, :cond_0

    .line 1216
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1218
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1219
    const-string/jumbo v1, "isSuccess"

    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/api/BioResponse;->isSuccess()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    const-string/jumbo v1, "result"

    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    const-string/jumbo v1, "tag"

    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    const-string/jumbo v1, "token"

    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    const-string/jumbo v1, "resultMessage"

    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResultMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/security/bio/api/BioResponse;Z)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->g:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/module/face/helper/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/module/face/helper/b;-><init>(Lcom/alipay/module/face/helper/FaceCertHelper;Lcom/alipay/mobile/security/bio/api/BioResponse;Z)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    return-void
.end method

.method static synthetic a(Lcom/alipay/module/face/helper/FaceCertHelper;Lcom/alipay/mobile/security/bio/api/BioResponse;)V
    .locals 5

    .prologue
    .line 3168
    const/16 v0, 0x68

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0xc9

    .line 3169
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0xcc

    .line 3170
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0xce

    .line 3171
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v1

    if-ne v0, v1, :cond_5

    :cond_0
    const-string/jumbo v0, "1006"

    .line 3174
    :goto_0
    new-instance v1, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    .line 3175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3176
    const-string/jumbo v2, "faceResult"

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3177
    const-string/jumbo v2, "faceMemo"

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v3

    invoke-static {v3}, Lcom/alipay/module/common/FaceDetectUtils;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3178
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getExt()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3179
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getExt()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3181
    :cond_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;->setExtInfo(Ljava/util/HashMap;)V

    .line 3182
    const-string/jumbo v0, "FaceCertHelper"

    const-string/jumbo v2, "response.isSuccess() = false"

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->f:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 3184
    const/16 v0, 0x12c

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/16 v0, 0xd0

    .line 3185
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/16 v0, 0xd1

    .line 3186
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 3187
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/module/face/helper/FaceCertHelper;->a(Lcom/alipay/mobile/security/bio/api/BioResponse;Z)V

    .line 3189
    :cond_3
    const/16 v0, 0x12d

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 3191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3192
    const-string/jumbo v1, "extype"

    const-string/jumbo v2, "bio_face"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3193
    const-string/jumbo v1, "exinfo"

    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getResult()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3194
    const-string/jumbo v1, "AS-EXCEPTION-161206-01"

    const-string/jumbo v2, "visdk"

    invoke-direct {p0, v1, v2, v0}, Lcom/alipay/module/face/helper/FaceCertHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 33
    :cond_4
    return-void

    .line 3171
    :cond_5
    const-string/jumbo v0, "1003"

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alipay/module/face/helper/FaceCertHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/module/face/helper/FaceCertHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v2, "20000666"

    iget-object v4, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->d:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 201
    return-void
.end method

.method static synthetic b(Lcom/alipay/module/face/helper/FaceCertHelper;)Lcom/alipay/mobile/security/bio/api/BioDetector;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->h:Lcom/alipay/mobile/security/bio/api/BioDetector;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/module/face/helper/FaceCertHelper;Lcom/alipay/mobile/security/bio/api/BioResponse;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/module/face/helper/FaceCertHelper;->a(Lcom/alipay/mobile/security/bio/api/BioResponse;Z)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/module/face/helper/FaceCertHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9

    .prologue
    .line 2204
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v2, "20000666"

    iget-object v4, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->d:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p1

    move-object v3, p2

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 33
    return-void
.end method

.method static synthetic c(Lcom/alipay/module/face/helper/FaceCertHelper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/module/face/helper/FaceCertHelper;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/module/face/helper/FaceCertHelper;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->f:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    const-string/jumbo v0, "FaceCertHelper"

    const-string/jumbo v1, "FaceCertHelper onStart"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v0, "FaceCertHelper"

    const-string/jumbo v1, "mModuleData is empty"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->f:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v5, "2002"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 102
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 78
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getInstance()Lcom/alipay/mobile/verifyidentity/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/info/AppInfo;->getApdid()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->b:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 80
    const-string/jumbo v1, "viModuleData"

    iget-object v3, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v3, "verifyid"

    iget-object v1, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v1, "APDID"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v0, ""

    :cond_1
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "TOKEN_ID"

    iget-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->b:Landroid/os/Bundle;

    const-string/jumbo v3, "popupErrMsg"

    const-string/jumbo v4, "popupErrMsg"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_3
    iget-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->f:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getMicroModuleContext()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/alipay/mobile/security/bio/module/MicroModule;

    invoke-direct {v1}, Lcom/alipay/mobile/security/bio/module/MicroModule;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/bio/api/BioDetectorBuilder;->create(Landroid/content/Context;Lcom/alipay/mobile/security/bio/module/MicroModule;)Lcom/alipay/mobile/security/bio/api/BioDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->h:Lcom/alipay/mobile/security/bio/api/BioDetector;

    .line 93
    const-string/jumbo v0, "FaceCertHelper"

    const-string/jumbo v1, "start AP_ACTION"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v1, Lcom/alipay/mobile/security/bio/api/BioParameter;

    invoke-direct {v1}, Lcom/alipay/mobile/security/bio/api/BioParameter;-><init>()V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/bio/api/BioParameter;->setAutoClose(Z)V

    .line 96
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/bio/api/BioParameter;->setBundle(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->b:Landroid/os/Bundle;

    const-string/jumbo v2, "pubkey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string/jumbo v2, "pubkey"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v0, ""

    :cond_2
    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/security/bio/api/BioParameter;->addExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->h:Lcom/alipay/mobile/security/bio/api/BioDetector;

    iget-object v2, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->c:Lcom/alipay/mobile/security/bio/api/BioCallback;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/security/bio/api/BioDetector;->auth(Lcom/alipay/mobile/security/bio/api/BioParameter;Lcom/alipay/mobile/security/bio/api/BioCallback;)V

    .line 101
    const-string/jumbo v0, "UC-MobileIC-151016-01"

    const-string/jumbo v1, "mdhxdyrl"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/module/face/helper/FaceCertHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 81
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->d:Ljava/lang/String;

    goto/16 :goto_1

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/alipay/module/face/helper/FaceCertHelper;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string/jumbo v1, "FaceCertHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

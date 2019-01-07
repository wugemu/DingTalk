.class public Lcom/alipay/module/face/helper/FaceRpcRunnable;
.super Ljava/lang/Object;
.source "FaceRpcRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Ljava/lang/String;

.field private static f:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private g:Landroid/os/Bundle;

.field private h:Lcom/alipay/mobile/security/bio/api/BioResponse;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/alipay/mobile/verifyidentity/module/MicroModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "FaceRpcRunnable"

    sput-object v0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "aliveImgUrl"

    sput-object v0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/security/bio/api/BioResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZLcom/alipay/mobile/verifyidentity/module/MicroModule;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v2, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->i:Z

    .line 46
    iput-boolean v0, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->j:Z

    .line 51
    iput-boolean v0, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->k:Z

    .line 57
    iput-object p2, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->b:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->c:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->d:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->e:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->g:Landroid/os/Bundle;

    .line 62
    iput-boolean p7, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->j:Z

    .line 63
    iput-object p8, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->l:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    .line 64
    iput-object p1, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->h:Lcom/alipay/mobile/security/bio/api/BioResponse;

    .line 65
    if-eqz p6, :cond_0

    const-string/jumbo v0, "N"

    const-string/jumbo v1, "popupErrMsg"

    invoke-virtual {p6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iput-boolean v2, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->k:Z

    .line 68
    :cond_0
    sget-object v0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mNeedNoticeOnRpcError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 212
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->finishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :try_start_0
    sget-object v0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a:Ljava/lang/String;

    const-string/jumbo v1, "\u73b0\u5728\u5173\u95ed\u4eba\u8138"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/bio/module/MicroModule;

    invoke-direct {v1}, Lcom/alipay/mobile/security/bio/module/MicroModule;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/bio/api/BioDetectorBuilder;->create(Landroid/content/Context;Lcom/alipay/mobile/security/bio/module/MicroModule;)Lcom/alipay/mobile/security/bio/api/BioDetector;

    move-result-object v0

    .line 217
    const/16 v1, 0x1003

    invoke-interface {v0, v1}, Lcom/alipay/mobile/security/bio/api/BioDetector;->command(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    const-string/jumbo v1, "UC-MobileIC-170206-1"

    const-string/jumbo v3, "notifyBisSDKExit"

    .line 2246
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string/jumbo v2, "20000666"

    iget-object v4, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->b:Ljava/lang/String;

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 223
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    sget-object v1, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a:Ljava/lang/String;

    const-string/jumbo v2, "\u5173\u95ed\u4eba\u8138\u65f6\u51fa\u9519\uff01"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    sget-object v0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a:Ljava/lang/String;

    const-string/jumbo v1, "now we go to handleNotNullRpcRes"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-boolean v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifySuccess:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->finish:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->i:Z

    .line 145
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;-><init>()V

    .line 146
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setMICRpcResponse(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 147
    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 148
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 149
    if-eqz v1, :cond_0

    .line 150
    sget-object v3, Lcom/alipay/module/face/helper/FaceRpcRunnable;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    sget-object v3, Lcom/alipay/module/face/helper/FaceRpcRunnable;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->h:Lcom/alipay/mobile/security/bio/api/BioResponse;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->h:Lcom/alipay/mobile/security/bio/api/BioResponse;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getExt()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->h:Lcom/alipay/mobile/security/bio/api/BioResponse;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getExt()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 156
    :cond_1
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;->setExtInfo(Ljava/util/HashMap;)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 158
    return-void

    .line 144
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-boolean v0, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->k:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "LOGIN_FACE"

    iget-object v2, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->d:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    sget-object v0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a:Ljava/lang/String;

    const-string/jumbo v2, "need to ALERT when the result is failed!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, ""

    .line 106
    if-eqz p1, :cond_3

    .line 107
    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyMessage:Ljava/lang/String;

    .line 108
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    .line 117
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    const-string/jumbo v2, "NOT_SAME_PERSON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Ligh$h;->not_same_person:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    :cond_0
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    .line 125
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Ligh$h;->face_res_error_confirm:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/module/face/helper/c;

    invoke-direct {v4, p0, p1, p2}, Lcom/alipay/module/face/helper/c;-><init>(Lcom/alipay/module/face/helper/FaceRpcRunnable;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    move-object v5, v1

    move-object v6, v1

    .line 124
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 136
    :goto_2
    return-void

    .line 96
    :cond_1
    sget-object v0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a:Ljava/lang/String;

    const-string/jumbo v1, "no need to ALERT!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz p1, :cond_2

    .line 98
    invoke-direct {p0, p1}, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    goto :goto_2

    .line 100
    :cond_2
    invoke-virtual {p0, p2}, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    goto :goto_2

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->l:Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getPluginOrProxyMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    invoke-virtual {p0, p2}, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    goto :goto_2

    .line 115
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Ligh$h;->face_res_net_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 121
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Ligh$h;->other_face_res_error:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/module/face/helper/FaceRpcRunnable;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/module/face/helper/FaceRpcRunnable;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    .line 231
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyModuleResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    .line 232
    iget-object v0, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->g:Landroid/os/Bundle;

    const-string/jumbo v1, "face_delay_time"

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 233
    iget-boolean v2, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->i:Z

    if-eqz v2, :cond_0

    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 234
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 235
    new-instance v3, Lcom/alipay/module/face/helper/d;

    invoke-direct {v3, p0}, Lcom/alipay/module/face/helper/d;-><init>(Lcom/alipay/module/face/helper/FaceRpcRunnable;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a()V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 163
    .line 1182
    :try_start_0
    sget-object v0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "no need to show processdialog. mNeedProcessRes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mAutoClose: false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    new-instance v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;

    invoke-direct {v0}, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;-><init>()V

    .line 1187
    iget-object v1, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;

    .line 1188
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1189
    const-string/jumbo v2, "faceToken"

    iget-object v3, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    const-string/jumbo v2, "bisToken"

    iget-object v3, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    iget-object v2, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->g:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 1192
    iget-object v2, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->g:Landroid/os/Bundle;

    const-string/jumbo v3, "certName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1193
    iget-object v3, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->g:Landroid/os/Bundle;

    const-string/jumbo v4, "certNo"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1194
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1195
    const-string/jumbo v4, "certName"

    invoke-virtual {v1, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1198
    const-string/jumbo v2, "certNo"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->data:Ljava/lang/String;

    .line 1202
    iget-object v1, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->verifyId:Ljava/lang/String;

    .line 1203
    iget-object v1, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->token:Ljava/lang/String;

    .line 1204
    const-string/jumbo v1, "VERIFY_FACE"

    iput-object v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->action:Ljava/lang/String;

    .line 1205
    new-instance v1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;-><init>()V

    .line 1206
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object v0

    .line 1207
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V

    .line 2072
    iget-boolean v1, p0, Lcom/alipay/module/face/helper/FaceRpcRunnable;->j:Z

    if-eqz v1, :cond_2

    .line 2075
    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->success:Z

    if-eqz v1, :cond_4

    .line 2076
    iget-boolean v1, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifySuccess:Z

    if-eqz v1, :cond_3

    .line 2077
    invoke-direct {p0, v0}, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    .line 2079
    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    sget-object v1, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RpcException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V

    .line 167
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v1, "2003"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5, v0}, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    goto :goto_0

    .line 2082
    :cond_4
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v2, "2003"

    invoke-direct {v1, v2}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 169
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    .line 170
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->dismissProgressDialog()V

    .line 171
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v1, "2002"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5, v0}, Lcom/alipay/module/face/helper/FaceRpcRunnable;->a(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    goto :goto_0
.end method

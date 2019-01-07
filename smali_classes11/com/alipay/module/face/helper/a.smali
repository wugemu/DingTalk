.class final Lcom/alipay/module/face/helper/a;
.super Ljava/lang/Object;
.source "FaceCertHelper.java"

# interfaces
.implements Lcom/alipay/mobile/security/bio/api/BioCallback;


# instance fields
.field final synthetic a:Lcom/alipay/module/face/helper/FaceCertHelper;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/alipay/module/face/helper/FaceCertHelper;)V
    .locals 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alipay/module/face/helper/a;->a:Lcom/alipay/module/face/helper/FaceCertHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/module/face/helper/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final onResult(Lcom/alipay/mobile/security/bio/api/BioResponse;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/module/face/helper/a;->a:Lcom/alipay/module/face/helper/FaceCertHelper;

    invoke-static {v0}, Lcom/alipay/module/face/helper/FaceCertHelper;->a(Lcom/alipay/module/face/helper/FaceCertHelper;)Lcom/alipay/mobile/security/bio/api/BioDetector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v0, "FaceCertHelper"

    const-string/jumbo v1, "\u8c03\u7528BioDetector.destroy()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alipay/module/face/helper/a;->a:Lcom/alipay/module/face/helper/FaceCertHelper;

    invoke-static {v0}, Lcom/alipay/module/face/helper/FaceCertHelper;->a(Lcom/alipay/module/face/helper/FaceCertHelper;)Lcom/alipay/mobile/security/bio/api/BioDetector;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/security/bio/api/BioDetector;->destroy()V

    .line 113
    iget-object v0, p0, Lcom/alipay/module/face/helper/a;->a:Lcom/alipay/module/face/helper/FaceCertHelper;

    invoke-static {v0}, Lcom/alipay/module/face/helper/FaceCertHelper;->b(Lcom/alipay/module/face/helper/FaceCertHelper;)Lcom/alipay/mobile/security/bio/api/BioDetector;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alipay/module/face/helper/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const-string/jumbo v0, "FaceCertHelper"

    const-string/jumbo v1, "Bio has already callback and do nothing"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    const-string/jumbo v1, "extype"

    const-string/jumbo v2, "bio_face"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string/jumbo v1, "exinfo"

    const-string/jumbo v2, "face_callback_twice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/alipay/module/face/helper/a;->a:Lcom/alipay/module/face/helper/FaceCertHelper;

    const-string/jumbo v2, "AS-EXCEPTION-161206-01"

    const-string/jumbo v3, "visdk"

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/module/face/helper/FaceCertHelper;->a(Lcom/alipay/module/face/helper/FaceCertHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 147
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/alipay/module/face/helper/a;->a:Lcom/alipay/module/face/helper/FaceCertHelper;

    const-string/jumbo v1, "UC-MobileIC-160316-2"

    const-string/jumbo v2, "mdsdswkjhd"

    invoke-static {p1}, Lcom/alipay/module/face/helper/FaceCertHelper;->a(Lcom/alipay/mobile/security/bio/api/BioResponse;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/module/face/helper/FaceCertHelper;->b(Lcom/alipay/module/face/helper/FaceCertHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 126
    const-string/jumbo v0, ""

    .line 127
    if-eqz p1, :cond_2

    .line 129
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 134
    :cond_2
    :goto_1
    const-string/jumbo v1, "FaceCertHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "faceResult: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/alipay/module/face/helper/a;->a:Lcom/alipay/module/face/helper/FaceCertHelper;

    invoke-static {v0}, Lcom/alipay/module/face/helper/FaceCertHelper;->c(Lcom/alipay/module/face/helper/FaceCertHelper;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 136
    :cond_3
    const-string/jumbo v0, "FaceCertHelper"

    const-string/jumbo v1, "BioResponse or token is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/module/face/helper/a;->a:Lcom/alipay/module/face/helper/FaceCertHelper;

    invoke-static {v1}, Lcom/alipay/module/face/helper/FaceCertHelper;->d(Lcom/alipay/module/face/helper/FaceCertHelper;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/module/face/helper/a;->a:Lcom/alipay/module/face/helper/FaceCertHelper;

    invoke-static {v2}, Lcom/alipay/module/face/helper/FaceCertHelper;->c(Lcom/alipay/module/face/helper/FaceCertHelper;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/module/face/helper/a;->a:Lcom/alipay/module/face/helper/FaceCertHelper;

    invoke-static {v3}, Lcom/alipay/module/face/helper/FaceCertHelper;->e(Lcom/alipay/module/face/helper/FaceCertHelper;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;

    const-string/jumbo v5, "1006"

    invoke-direct {v4, v5}, Lcom/alipay/mobile/verifyidentity/data/DefaultModuleResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->notifyAndFinishModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/ModuleExecuteResult;)V

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    const-string/jumbo v2, "FaceCertHelper"

    invoke-static {v2, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 142
    :cond_4
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/api/BioResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_5

    .line 143
    iget-object v0, p0, Lcom/alipay/module/face/helper/a;->a:Lcom/alipay/module/face/helper/FaceCertHelper;

    invoke-static {v0, p1}, Lcom/alipay/module/face/helper/FaceCertHelper;->a(Lcom/alipay/module/face/helper/FaceCertHelper;Lcom/alipay/mobile/security/bio/api/BioResponse;)V

    goto :goto_0

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/alipay/module/face/helper/a;->a:Lcom/alipay/module/face/helper/FaceCertHelper;

    invoke-static {v0, p1}, Lcom/alipay/module/face/helper/FaceCertHelper;->b(Lcom/alipay/module/face/helper/FaceCertHelper;Lcom/alipay/mobile/security/bio/api/BioResponse;)V

    goto/16 :goto_0
.end method

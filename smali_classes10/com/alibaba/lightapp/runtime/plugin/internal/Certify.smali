.class public Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "Certify.java"


# instance fields
.field private mCertifyTask:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->postError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->success(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->success(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private postError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    const/4 v1, 0x3

    invoke-static {v1, p2}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 224
    .local v0, "object":Lorg/json/JSONObject;
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 225
    return-void
.end method


# virtual methods
.method public biometric(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->mCertifyTask:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$2;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;->b(Lcom/alibaba/wukong/Callback;)V

    .line 119
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onCreate()V

    .line 53
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "Certify"

    const-string/jumbo v2, "getCertifyTask"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(Landroid/app/Activity;)Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->mCertifyTask:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;

    .line 55
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->mCertifyTask:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->mCertifyTask:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;->a()V

    .line 62
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "Certify"

    const-string/jumbo v2, "finishCertify"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 65
    return-void
.end method

.method public step(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 2
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->mCertifyTask:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;

    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$1;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;->a(Lcom/alibaba/wukong/Callback;)V

    .line 98
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public submit(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 189
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "code":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v4, "Bad param, name or code is null"

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-object v2

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->mCertifyTask:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$4;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$4;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v2, v1, v0, v3}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 219
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0
.end method

.method public takePhoto(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v3, "type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 125
    .local v1, "type":I
    if-ltz v1, :cond_0

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 126
    :cond_0
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v4, "Bad param of type"

    invoke-direct {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-object v2

    .line 129
    :cond_1
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;->fromValue(I)Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    move-result-object v0

    .line 130
    .local v0, "takeMode":Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;->mCertifyTask:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;

    new-instance v3, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Certify$3;-><init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Certify;Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    invoke-interface {v2, v0, v3}, Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask;->a(Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;Lcom/alibaba/wukong/Callback;)V

    .line 184
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v2

    goto :goto_0
.end method

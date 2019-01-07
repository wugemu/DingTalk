.class final Lcom/alipay/module/face/helper/b;
.super Ljava/lang/Object;
.source "FaceCertHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/bio/api/BioResponse;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/module/face/helper/FaceCertHelper;


# direct methods
.method constructor <init>(Lcom/alipay/module/face/helper/FaceCertHelper;Lcom/alipay/mobile/security/bio/api/BioResponse;Z)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/module/face/helper/b;->c:Lcom/alipay/module/face/helper/FaceCertHelper;

    iput-object p2, p0, Lcom/alipay/module/face/helper/b;->a:Lcom/alipay/mobile/security/bio/api/BioResponse;

    iput-boolean p3, p0, Lcom/alipay/module/face/helper/b;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    new-instance v0, Lcom/alipay/module/face/helper/FaceRpcRunnable;

    iget-object v1, p0, Lcom/alipay/module/face/helper/b;->a:Lcom/alipay/mobile/security/bio/api/BioResponse;

    iget-object v2, p0, Lcom/alipay/module/face/helper/b;->c:Lcom/alipay/module/face/helper/FaceCertHelper;

    invoke-static {v2}, Lcom/alipay/module/face/helper/FaceCertHelper;->d(Lcom/alipay/module/face/helper/FaceCertHelper;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/module/face/helper/b;->c:Lcom/alipay/module/face/helper/FaceCertHelper;

    invoke-static {v3}, Lcom/alipay/module/face/helper/FaceCertHelper;->c(Lcom/alipay/module/face/helper/FaceCertHelper;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/module/face/helper/b;->c:Lcom/alipay/module/face/helper/FaceCertHelper;

    .line 156
    invoke-static {v4}, Lcom/alipay/module/face/helper/FaceCertHelper;->e(Lcom/alipay/module/face/helper/FaceCertHelper;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/verifyidentity/module/MicroModule;->getModuleName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/module/face/helper/b;->a:Lcom/alipay/mobile/security/bio/api/BioResponse;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/bio/api/BioResponse;->getToken()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/module/face/helper/b;->c:Lcom/alipay/module/face/helper/FaceCertHelper;

    iget-object v6, v6, Lcom/alipay/module/face/helper/FaceCertHelper;->b:Landroid/os/Bundle;

    iget-boolean v7, p0, Lcom/alipay/module/face/helper/b;->b:Z

    iget-object v8, p0, Lcom/alipay/module/face/helper/b;->c:Lcom/alipay/module/face/helper/FaceCertHelper;

    invoke-static {v8}, Lcom/alipay/module/face/helper/FaceCertHelper;->e(Lcom/alipay/module/face/helper/FaceCertHelper;)Lcom/alipay/mobile/verifyidentity/module/MicroModule;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/alipay/module/face/helper/FaceRpcRunnable;-><init>(Lcom/alipay/mobile/security/bio/api/BioResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZLcom/alipay/mobile/verifyidentity/module/MicroModule;)V

    .line 157
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object v1

    const-string/jumbo v2, "BioCallbak"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 158
    return-void
.end method

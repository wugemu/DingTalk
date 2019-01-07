.class public Lgrr;
.super Lgrx$a;
.source "FaceBoxRpcService.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lgrr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgrr;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lgrx$a;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lgrr;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 437
    if-eqz p1, :cond_0

    .line 438
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 440
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;Lgrw;)V
    .locals 3
    .param p1, "recognizeModel"    # Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;
    .param p2, "callback"    # Lgrw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 174
    if-nez p2, :cond_0

    .line 207
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v1, Lgrr$3;

    invoke-direct {v1, p0, p2}, Lgrr$3;-><init>(Lgrr;Lgrw;)V

    .line 2161
    const-class v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceAnalyzeIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceAnalyzeIService;

    .line 2162
    new-instance v2, Lgss$8;

    invoke-direct {v2, v1}, Lgss$8;-><init>(Lcma;)V

    invoke-interface {v0, p1, v2}, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceAnalyzeIService;->recognizeFace(Lcom/alibaba/dingtalk/facebox/idl/model/FaceAnalyzeModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;Lgrw;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;
    .param p2, "callback"    # Lgrw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 328
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    new-instance v1, Lgrr$7;

    invoke-direct {v1, p0, p2}, Lgrr$7;-><init>(Lgrr;Lgrw;)V

    .line 4064
    const-class v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    .line 4065
    new-instance v2, Lgss$3;

    invoke-direct {v2, v1}, Lgss$3;-><init>(Lcma;)V

    invoke-interface {v0, p1, v2}, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;->validUserFaceV2(Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lgrw;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    .param p2, "callback"    # Lgrw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 211
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    new-instance v1, Lgrr$4;

    invoke-direct {v1, p0, p2}, Lgrr$4;-><init>(Lgrr;Lgrw;)V

    .line 3025
    const-class v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    .line 3026
    new-instance v2, Lgss$1;

    invoke-direct {v2, v1}, Lgss$1;-><init>(Lcma;)V

    invoke-interface {v0, p1, v2}, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;->hasUserFace(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;Lgrw;)V
    .locals 6
    .param p1, "ipcUploadParams"    # Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;
    .param p2, "callback"    # Lgrw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 367
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 373
    .local v2, "start":J
    new-instance v0, Lcom/alibaba/wukong/upload/UploadParams;

    invoke-direct {v0}, Lcom/alibaba/wukong/upload/UploadParams;-><init>()V

    .line 374
    .local v0, "params":Lcom/alibaba/wukong/upload/UploadParams;
    iget-boolean v1, p1, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->isAuth:Z

    .line 4090
    iput-boolean v1, v0, Lcom/alibaba/wukong/upload/UploadParams;->e:Z

    .line 375
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->authType()Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/wukong/upload/UploadParams;->a(Lcom/alibaba/wukong/upload/UploadParams$AuthType;)V

    .line 376
    iget-object v1, p1, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->filePath:Ljava/lang/String;

    .line 5058
    iput-object v1, v0, Lcom/alibaba/wukong/upload/UploadParams;->a:Ljava/lang/String;

    .line 377
    iget v1, p1, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->expiredTime:I

    .line 5108
    iput v1, v0, Lcom/alibaba/wukong/upload/UploadParams;->g:I

    .line 379
    invoke-static {}, Lify;->a()Lify;

    move-result-object v1

    new-instance v4, Lgrr$8;

    invoke-direct {v4, p0, v2, v3, p2}, Lgrr$8;-><init>(Lgrr;JLgrw;)V

    .line 5128
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v4, v5}, Lify;->a(Lcom/alibaba/wukong/upload/UploadParams;Lifv;Lifu;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lgrw;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;
    .param p3, "callback"    # Lgrw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 51
    if-nez p3, :cond_0

    .line 132
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1119
    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    .line 1120
    if-nez v4, :cond_1

    .line 1121
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 1123
    :cond_1
    if-nez v4, :cond_2

    .line 1124
    const/4 v0, 0x0

    .line 55
    .local v0, "cacheImageFile":Ljava/io/File;
    :goto_1
    if-nez v0, :cond_3

    .line 57
    :try_start_0
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "cacheImageFile fail"

    invoke-interface {p3, v4, v5}, Lgrw;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FaceRecord"

    sget-object v5, Lgrr;->a:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "getCurrentUserFace fail callback error,"

    aput-object v7, v6, v9

    .line 60
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 59
    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1126
    .end local v0    # "cacheImageFile":Ljava/io/File;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 64
    .restart local v0    # "cacheImageFile":Ljava/io/File;
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 66
    :try_start_1
    new-instance v2, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 67
    .local v2, "imagePath":Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;, "Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult<Ljava/lang/String;>;"
    invoke-interface {p3, v2}, Lgrw;->a(Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 68
    .end local v2    # "imagePath":Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult;, "Lcom/alibaba/android/dingtalkbase/bizframework/ipc/IpcResult<Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    .line 69
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "FaceRecord"

    sget-object v5, Lgrr;->a:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "getCurrentUserFace fail callback error,"

    aput-object v7, v6, v9

    .line 70
    invoke-static {v1}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 69
    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v4, "REQUEST"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/request/Request;

    .line 75
    .local v3, "request":Lcom/alibaba/doraemon/request/Request;
    invoke-interface {v3, v8}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    move-result-object v4

    .line 76
    invoke-interface {v4, p1}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v4

    sget-object v5, Lgrr;->a:Ljava/lang/String;

    .line 77
    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/request/Request;->setPerfTag(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    move-result-object v4

    new-instance v5, Lgrr$1;

    invoke-direct {v5, p0, p3, v0}, Lgrr$1;-><init>(Lgrr;Lgrw;Ljava/io/File;)V

    .line 78
    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 131
    invoke-interface {v3}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto/16 :goto_0
.end method

.method public final b(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lgrw;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    .param p2, "callback"    # Lgrw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 250
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    new-instance v1, Lgrr$5;

    invoke-direct {v1, p0, p2}, Lgrr$5;-><init>(Lgrr;Lgrw;)V

    .line 3083
    const-class v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    .line 3084
    new-instance v2, Lgss$4;

    invoke-direct {v2, v1}, Lgss$4;-><init>(Lcma;)V

    invoke-interface {v0, p1, v2}, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;->registerUserFace(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Liyv;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lgrw;)V
    .locals 3
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "callback"    # Lgrw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 137
    if-nez p3, :cond_0

    .line 170
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v1, Lgrr$2;

    invoke-direct {v1, p0, p3}, Lgrr$2;-><init>(Lgrr;Lgrw;)V

    .line 1180
    const-class v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    .line 1181
    new-instance v2, Lgss$9;

    invoke-direct {v2, v1}, Lgss$9;-><init>(Lcma;)V

    invoke-interface {v0, p1, p2, v2}, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;->getCurrentUserFace(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public final c(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lgrw;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    .param p2, "callback"    # Lgrw;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 289
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    new-instance v1, Lgrr$6;

    invoke-direct {v1, p0, p2}, Lgrr$6;-><init>(Lgrr;Lgrw;)V

    .line 4045
    const-class v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    .line 4046
    new-instance v2, Lgss$2;

    invoke-direct {v2, v1}, Lgss$2;-><init>(Lcma;)V

    invoke-interface {v0, p1, v2}, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;->validUserFace(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Liyv;)V

    goto :goto_0
.end method

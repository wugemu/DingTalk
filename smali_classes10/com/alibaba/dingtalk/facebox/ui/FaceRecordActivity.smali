.class public Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "FaceRecordActivity.java"

# interfaces
.implements Lgsu;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I

.field private m:Landroid/content/Intent;

.field private n:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

.field private o:Z

.field private p:I

.field private q:I

.field private r:Z

.field private s:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 83
    iput v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->p:I

    .line 84
    iput v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->q:I

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->k:I

    return v0
.end method

.method private a(Lgsu$c;)Lcma;
    .locals 3
    .param p1, "listener"    # Lgsu$c;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 535
    .local v0, "start":J
    new-instance v2, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$6;-><init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;JLgsu$c;)V

    return-object v2
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;Ljava/lang/String;Lcma;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcma;
    .param p3, "x3"    # Z

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->a(Ljava/lang/String;Lcma;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILgsu$b;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Lgsu$b;

    .prologue
    const/4 v1, 0x0

    .line 48
    .line 2425
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v2, "FaceRecord"

    const-string/jumbo v3, "[FaceRecord] start validUserFace"

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    new-instance v2, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;

    invoke-direct {v2}, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;-><init>()V

    .line 2428
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->width:Ljava/lang/Integer;

    .line 2429
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->height:Ljava/lang/Integer;

    .line 2430
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->corpId:Ljava/lang/String;

    .line 2431
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, v2, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->deviceUid:Ljava/lang/String;

    .line 2432
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->d:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->userId:Ljava/lang/String;

    .line 2433
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-object v1, v2, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->groupId:Ljava/lang/String;

    .line 2434
    iput-object p3, v2, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->authMediaId:Ljava/lang/String;

    .line 2435
    iput-object p2, v2, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->mediaId:Ljava/lang/String;

    .line 2436
    iput-object p1, v2, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->bigAuthMediaId:Ljava/lang/String;

    .line 2437
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->h:Ljava/lang/String;

    iput-object v0, v2, Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;->source:Ljava/lang/String;

    .line 2439
    new-instance v0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$4;

    invoke-direct {v0, p0, v2, p6}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$4;-><init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lgsu$b;)V

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->a(Lgsu$c;)Lcma;

    move-result-object v0

    .line 2468
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    const-class v3, Lcma;

    invoke-static {v0, v3, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3219
    if-eqz v0, :cond_3

    .line 3223
    const-string/jumbo v3, "faceboxrpc"

    invoke-static {v3}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 3224
    invoke-static {v3}, Lgrx$a;->a(Landroid/os/IBinder;)Lgrx;

    move-result-object v3

    .line 3226
    if-nez v3, :cond_4

    .line 3227
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3228
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "validUserFace, IFaceBoxRpcService is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2431
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->c:Ljava/lang/String;

    goto :goto_0

    .line 2433
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->e:Ljava/lang/String;

    goto :goto_1

    .line 3230
    :cond_2
    const-string/jumbo v2, ""

    const-string/jumbo v3, "IFaceBoxRpcService is null"

    invoke-static {v1, v0, v2, v3}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 3232
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "rpc"

    const-string/jumbo v2, "validUserFace, IFaceBoxRpcService is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3261
    :cond_3
    :goto_2
    return-void

    .line 3238
    :cond_4
    :try_start_0
    new-instance v4, Lgst$6;

    invoke-direct {v4, v1, v0}, Lgst$6;-><init>(Landroid/os/Handler;Lcma;)V

    invoke-interface {v3, v2, v4}, Lgrx;->c(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lgrw;)V

    .line 3256
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3258
    :catch_0
    move-exception v2

    invoke-static {}, Lcja;->c()V

    .line 3259
    const-string/jumbo v2, ""

    const-string/jumbo v3, "validUserFace rpc error"

    invoke-static {v1, v0, v2, v3}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "rpc"

    const-string/jumbo v2, "validUserFace rpc error"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Lcma;Z)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "isBase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lifx;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 338
    .local p2, "apiEventListener":Lcma;, "Lcma<Lifx;>;"
    new-instance v1, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;-><init>()V

    .line 339
    .local v1, "ipcUploadParams":Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->isAuth:Z

    .line 340
    sget-object v4, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->STRICT_AUTH:Lcom/alibaba/wukong/upload/UploadParams$AuthType;

    invoke-virtual {v4}, Lcom/alibaba/wukong/upload/UploadParams$AuthType;->getValue()I

    move-result v4

    iput v4, v1, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->authType:I

    .line 341
    iput-object p1, v1, Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;->filePath:Ljava/lang/String;

    .line 343
    const-string/jumbo v4, "faceboxrpc"

    invoke-static {v4}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 344
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lgrx$a;->a(Landroid/os/IBinder;)Lgrx;

    move-result-object v2

    .line 346
    .local v2, "service":Lgrx;
    if-nez v2, :cond_2

    .line 347
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "IFaceBoxRpcService is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 351
    :cond_0
    if-eqz p2, :cond_1

    .line 352
    const-string/jumbo v4, ""

    const-string/jumbo v5, "IFaceBoxRpcService is null"

    invoke-interface {p2, v4, v5}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_1
    const-string/jumbo v4, "FaceRecord"

    const-string/jumbo v5, "rpc"

    const-string/jumbo v6, "[FaceRecord] uploadImage, IFaceBoxRpcService is null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_0
    return-void

    .line 360
    :cond_2
    :try_start_0
    new-instance v3, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;

    invoke-direct {v3, p0, p3, p2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$3;-><init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;ZLcma;)V

    .line 411
    .local v3, "uploadListener":Lgrw$a;
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v4

    const-class v5, Lgrw;

    invoke-interface {v4, v3, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgrw;

    invoke-interface {v2, v1, v4}, Lgrx;->a(Lcom/alibaba/dingtalk/facebox/model/IpcUploadParams;Lgrw;)V

    .line 413
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    .end local v3    # "uploadListener":Lgrw$a;
    :catch_0
    move-exception v4

    invoke-static {}, Lcja;->c()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILgsu$b;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Lgsu$b;

    .prologue
    const/4 v1, 0x0

    .line 48
    .line 3478
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v2, "FaceRecord"

    const-string/jumbo v3, "[FaceRecord] start validUserFaceV2 "

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    new-instance v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;

    invoke-direct {v8}, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;-><init>()V

    .line 3481
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b:Ljava/lang/String;

    iput-object v0, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;->corpId:Ljava/lang/String;

    .line 3482
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;->deviceUid:Ljava/lang/String;

    .line 3483
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->d:Ljava/lang/String;

    iput-object v0, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;->userId:Ljava/lang/String;

    .line 3484
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-object v1, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;->groupId:Ljava/lang/String;

    .line 3485
    iput-object p3, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;->authMediaId:Ljava/lang/String;

    .line 3486
    iput-object p1, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;->bigAuthMediaId:Ljava/lang/String;

    .line 3487
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->h:Ljava/lang/String;

    iput-object v0, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;->source:Ljava/lang/String;

    .line 3488
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->j:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v8, Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;->microAppAgentId:Ljava/lang/Long;

    .line 3490
    new-instance v0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;

    move-object v1, p0

    move v2, p4

    move v3, p5

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$5;-><init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgsu$b;)V

    invoke-direct {p0, v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->a(Lgsu$c;)Lcma;

    move-result-object v0

    .line 3529
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    const-class v2, Lcma;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4172
    if-eqz v0, :cond_3

    .line 4176
    const-string/jumbo v2, "faceboxrpc"

    invoke-static {v2}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 4177
    invoke-static {v2}, Lgrx$a;->a(Landroid/os/IBinder;)Lgrx;

    move-result-object v2

    .line 4179
    if-nez v2, :cond_4

    .line 4180
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4181
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "validUserFaceV2, IFaceBoxRpcService is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3482
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->c:Ljava/lang/String;

    goto :goto_0

    .line 3484
    :cond_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->e:Ljava/lang/String;

    goto :goto_1

    .line 4183
    :cond_2
    const-string/jumbo v2, ""

    const-string/jumbo v3, "IFaceBoxRpcService is null"

    invoke-static {v1, v0, v2, v3}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 4185
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "rpc"

    const-string/jumbo v2, "validUserFaceV2, IFaceBoxRpcService is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4214
    :cond_3
    :goto_2
    return-void

    .line 4191
    :cond_4
    :try_start_0
    new-instance v3, Lgst$5;

    invoke-direct {v3, v1, v0}, Lgst$5;-><init>(Landroid/os/Handler;Lcma;)V

    invoke-interface {v2, v8, v3}, Lgrx;->a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceValidModel;Lgrw;)V

    .line 4209
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4211
    :catch_0
    move-exception v2

    invoke-static {}, Lcja;->c()V

    .line 4212
    const-string/jumbo v2, ""

    const-string/jumbo v3, "validUserFace rpc error"

    invoke-static {v1, v0, v2, v3}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 4213
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "rpc"

    const-string/jumbo v2, "validUserFace rpc error"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->s:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->r:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 190
    iget v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->q:I

    if-ne v2, v3, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iput v3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->p:I

    .line 195
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->o:Z

    if-nez v2, :cond_0

    .line 196
    iput v3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->q:I

    .line 199
    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 200
    const-string/jumbo v2, "back"

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 201
    .local v0, "back":Z
    iget-boolean v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->r:Z

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->i:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->k:I

    iget v5, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->l:I

    invoke-static {v2, v0, v3, v4, v5}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;->a(ZZLjava/lang/String;II)Lcom/alibaba/dingtalk/facebox/ui/view/FaceCameraRecordFragment;

    move-result-object v1

    .line 206
    .end local v0    # "back":Z
    .local v1, "recordFragment":Landroid/support/v4/app/Fragment;
    :goto_1
    iput-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->s:Landroid/support/v4/app/Fragment;

    .line 207
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lgrv$d;->container:I

    const-string/jumbo v4, "record"

    .line 208
    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 209
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_0

    .line 203
    .end local v1    # "recordFragment":Landroid/support/v4/app/Fragment;
    :cond_2
    new-instance v1, Lcom/alibaba/dingtalk/facebox/ui/view/FacePictureRecordFragment;

    invoke-direct {v1}, Lcom/alibaba/dingtalk/facebox/ui/view/FacePictureRecordFragment;-><init>()V

    .restart local v1    # "recordFragment":Landroid/support/v4/app/Fragment;
    goto :goto_1
.end method

.method public final a(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lgsu$a;)V
    .locals 7
    .param p1, "registerUserModel"    # Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    .param p2, "listener"    # Lgsu$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 631
    .local v2, "start":J
    new-instance v0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;

    invoke-direct {v0, p0, v2, v3, p2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$7;-><init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;JLgsu$a;)V

    .line 713
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 2126
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 2168
    :cond_0
    :goto_0
    return-void

    .line 2130
    :cond_1
    const-string/jumbo v5, "faceboxrpc"

    invoke-static {v5}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 2131
    invoke-static {v5}, Lgrx$a;->a(Landroid/os/IBinder;)Lgrx;

    move-result-object v5

    .line 2133
    if-nez v5, :cond_3

    .line 2134
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2135
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "registerUserFace, IFaceBoxRpcService is null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2137
    :cond_2
    const-string/jumbo v5, ""

    const-string/jumbo v6, "IFaceBoxRpcService is null"

    invoke-static {v4, v1, v5, v6}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    const-string/jumbo v1, "FaceRecord"

    const-string/jumbo v4, "rpc"

    const-string/jumbo v5, "registerUserFace, IFaceBoxRpcService is null"

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2145
    :cond_3
    :try_start_0
    new-instance v6, Lgst$4;

    invoke-direct {v6, v4, v1}, Lgst$4;-><init>(Landroid/os/Handler;Lcma;)V

    invoke-interface {v5, p1, v6}, Lgrx;->b(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lgrw;)V

    .line 2163
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2165
    :catch_0
    move-exception v5

    invoke-static {}, Lcja;->c()V

    .line 2166
    const-string/jumbo v5, ""

    const-string/jumbo v6, "registerUserFace rpc error"

    invoke-static {v4, v1, v5, v6}, Lgst;->a(Landroid/os/Handler;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    const-string/jumbo v1, "FaceRecord"

    const-string/jumbo v4, "rpc"

    const-string/jumbo v5, "registerUserFace rpc error"

    invoke-static {v1, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->n:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->n:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setTitle(Ljava/lang/String;)V

    .line 227
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IILgsu$b;)V
    .locals 6
    .param p1, "bigImagePath"    # Ljava/lang/String;
    .param p2, "faceImagePath"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "listener"    # Lgsu$b;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 256
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->r:Z

    if-eqz v1, :cond_1

    .line 257
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "FaceRecord"

    const-string/jumbo v3, "oa_m2_attendance_faceid_employ_upload_click"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 261
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 262
    iget-boolean v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->r:Z

    if-eqz v1, :cond_2

    .line 263
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "FaceRecord"

    const-string/jumbo v3, "oa_m2_attendance_faceid_employ_error_neterror"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 269
    :goto_1
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    const-string/jumbo v2, "record_code"

    const-string/jumbo v3, "408"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    const-string/jumbo v2, "record_msg"

    const-string/jumbo v3, "network unavailable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    :cond_0
    const-string/jumbo v1, "408"

    invoke-interface {p5, v1, v4}, Lgsu$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_2
    return-void

    .line 259
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "FaceRecord"

    const-string/jumbo v3, "oa_m2_attendance_faceid_manager_upload_click"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 265
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "FaceRecord"

    const-string/jumbo v3, "oa_m2_attendance_faceid_manager_error_neterror"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 278
    :cond_3
    new-instance v0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$2;-><init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;Ljava/lang/String;IILgsu$b;)V

    .line 332
    .local v0, "uploadListener":Lcma;, "Lcma<Lifx;>;"
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->a(Ljava/lang/String;Lcma;Z)V

    goto :goto_2
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->r:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "FaceRecord"

    const-string/jumbo v2, "oa_m2_attendance_faceid_employ_error_overtime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 252
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "FaceRecord"

    const-string/jumbo v2, "oa_m2_attendance_faceid_manager_error_overtime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->n:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->n:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setSubTitleText(Ljava/lang/String;)V

    .line 234
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    const-string/jumbo v1, "record_code"

    const-string/jumbo v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    const-string/jumbo v1, "record_msg"

    const-string/jumbo v2, "cancel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onBackPressed()V

    .line 186
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sget v0, Lgrv$e;->activity_face_record_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->setContentView(I)V

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->hideToolbar()V

    .line 96
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->updateSystemUiVisibility()V

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 101
    .local v8, "intent":Landroid/content/Intent;
    :try_start_0
    const-string/jumbo v0, "uuid"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->g:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "corpId"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, "userId"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->d:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, "deviceUid"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->c:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, "groupId"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->e:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, "from"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->f:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, "cameraFacing"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->a:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, "source"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->h:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, "recordTips"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->i:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, "microAppAgentId"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->j:I

    .line 111
    const-string/jumbo v0, "settingMode"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->k:I

    .line 112
    const-string/jumbo v0, "faceMagic"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "face_record_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    .line 122
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    const-string/jumbo v1, "uuid"

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    const-string/jumbo v1, "record_code"

    const-string/jumbo v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    const-string/jumbo v1, "record_msg"

    const-string/jumbo v2, "cancel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    const-string/jumbo v1, "record_code"

    const-string/jumbo v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    const-string/jumbo v1, "record_msg"

    const-string/jumbo v2, "invalid arguments"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->finish()V

    .line 155
    :cond_2
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v7

    .line 114
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->finish()V

    goto :goto_0

    .line 137
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v0, "employee"

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->r:Z

    .line 139
    sget v0, Lgrv$d;->stub_onebox:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->n:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    .line 140
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->n:Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;

    new-instance v1, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity$1;-><init>(Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/OneBoxView;->setBackOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    if-nez p1, :cond_2

    .line 148
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->r:Z

    iget-object v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->e:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->k:I

    iget-object v6, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->h:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/alibaba/dingtalk/facebox/ui/view/FaceLoadingFragment;

    move-result-object v9

    .line 150
    .local v9, "loadingFragment":Landroid/support/v4/app/Fragment;
    iput-object v9, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->s:Landroid/support/v4/app/Fragment;

    .line 151
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->getSupportFragmentManager()Lcn;

    move-result-object v0

    invoke-virtual {v0}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lgrv$d;->loading:I

    const-string/jumbo v2, "loading"

    .line 152
    invoke-virtual {v0, v1, v9, v2}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 238
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 240
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->m:Landroid/content/Intent;

    .line 1313
    const-string/jumbo v1, "faceboxrpc"

    invoke-static {v1}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1314
    invoke-static {v1}, Lgrx$a;->a(Landroid/os/IBinder;)Lgrx;

    move-result-object v1

    .line 1316
    if-nez v1, :cond_2

    .line 1317
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1318
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "faceRegisterResultCallback, IFaceBoxRpcService is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :cond_0
    const-string/jumbo v0, "FaceRecord"

    const-string/jumbo v1, "rpc"

    const-string/jumbo v2, "faceRegisterResultCallback, IFaceBoxRpcService is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    :cond_1
    :goto_0
    return-void

    .line 1327
    :cond_2
    :try_start_0
    invoke-interface {v1, v0}, Lgrx;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    invoke-static {}, Lcja;->c()V

    .line 1330
    const-string/jumbo v1, "FaceRecord"

    const-string/jumbo v2, "rpc"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "faceRegisterResultCallback error,"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1331
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1330
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->onBackPressed()V

    .line 174
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 167
    const-string/jumbo v0, "currentUiStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->q:I

    .line 168
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 215
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->o:Z

    .line 217
    iget v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->q:I

    iget v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->p:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->a()V

    .line 220
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->o:Z

    .line 160
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 161
    const-string/jumbo v0, "currentUiStatus"

    iget v1, p0, Lcom/alibaba/dingtalk/facebox/ui/FaceRecordActivity;->q:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    return-void
.end method

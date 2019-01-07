.class public Lcom/alibaba/dingtalk/facebox/FaceBoxImpl;
.super Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;
.source "FaceBoxImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lgso$a;)Lgso;
    .locals 1
    .param p1, "listener"    # Lgso$a;

    .prologue
    .line 62
    new-instance v0, Lgsn;

    invoke-direct {v0, p1}, Lgsn;-><init>(Lgso$a;)V

    return-object v0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 286
    const-string/jumbo v0, "facebox"

    new-instance v1, Lgrs;

    invoke-direct {v1}, Lgrs;-><init>()V

    invoke-static {v0, v1}, Lcix;->a(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 287
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "detectObject"    # Lcom/alibaba/dingtalk/facebox/model/DetectObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    if-nez p2, :cond_0

    .line 282
    :goto_0
    return-void

    .line 274
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/face/face_detect.html"

    const/4 v2, 0x0

    .line 275
    invoke-static {}, Lciz;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$4;

    invoke-direct {v4, p0, p2}, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$4;-><init>(Lcom/alibaba/dingtalk/facebox/FaceBoxImpl;Lcom/alibaba/dingtalk/facebox/model/DetectObject;)V

    .line 274
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/face/face_record.html"

    const/4 v2, 0x0

    .line 68
    invoke-static {}, Lciz;->a()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-interface {v0, v1, v2, v3, p2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 69
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;Lgrt;)V
    .locals 5
    .param p1, "faceRecognizeModel"    # Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;
    .param p2, "frame"    # Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;
    .param p3, "argument"    # Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;
    .param p4, "listener"    # Lgrt;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    if-nez p4, :cond_0

    .line 264
    :goto_0
    return-void

    .line 165
    :cond_0
    const-string/jumbo v3, "facebox"

    invoke-static {v3}, Lcix;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 166
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lgry$a;->a(Landroid/os/IBinder;)Lgry;

    move-result-object v2

    .line 167
    .local v2, "service":Lgry;
    if-nez v2, :cond_1

    .line 168
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$1;

    invoke-direct {v4, p0, p4}, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$1;-><init>(Lcom/alibaba/dingtalk/facebox/FaceBoxImpl;Lgrt;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 178
    :cond_1
    :try_start_0
    new-instance v3, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;

    invoke-direct {v3, p0, p4, p2}, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$2;-><init>(Lcom/alibaba/dingtalk/facebox/FaceBoxImpl;Lgrt;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;)V

    invoke-interface {v2, p1, p2, p3, v3}, Lgry;->a(Lcom/alibaba/dingtalk/facebox/idl/model/FaceRecognizeModel;Lcom/alibaba/dingtalk/facebox/detector/FaceDetecteFrame;Lcom/alibaba/dingtalk/facebox/model/TransformFrameArgument;Lgru;)V

    .line 253
    invoke-static {}, Lcja;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception recognizeFace:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lciz;->a(Ljava/lang/String;Z)V

    .line 256
    invoke-static {}, Lcja;->c()V

    .line 257
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$3;

    invoke-direct {v4, p0, p4}, Lcom/alibaba/dingtalk/facebox/FaceBoxImpl$3;-><init>(Lcom/alibaba/dingtalk/facebox/FaceBoxImpl;Lgrt;)V

    invoke-virtual {v3, v4}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Lcma;)V
    .locals 2
    .param p1, "registerUserModel"    # Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    .line 3103
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    .line 3104
    new-instance v1, Lgss$5;

    invoke-direct {v1, p2}, Lgss$5;-><init>(Lcma;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;->removeUserFace(Lcom/alibaba/dingtalk/facebox/idl/model/RegisterUserModel;Liyv;)V

    .line 147
    return-void
.end method

.method public final a(Ljava/lang/String;ILcma;)V
    .locals 2
    .param p1, "deviceUid"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 136
    .line 1142
    .local p3, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    .line 1143
    new-instance v1, Lgss$7;

    invoke-direct {v1, p3}, Lgss$7;-><init>(Lcma;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;->setRecognitionModel(Ljava/lang/String;ILiyv;)V

    .line 137
    return-void
.end method

.method public final a(Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "deviceUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    .line 2123
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Integer;>;"
    const-class v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;

    .line 2124
    new-instance v1, Lgss$6;

    invoke-direct {v1, p2}, Lgss$6;-><init>(Lcma;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/dingtalk/facebox/idl/DidoFaceConfigIService;->getRecognitionModel(Ljava/lang/String;Liyv;)V

    .line 142
    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    .line 45
    .local v0, "measure":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v1, "RECOG_BF_TIME"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 46
    const-string/jumbo v1, "RECOGING_TIME"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 47
    const-string/jumbo v1, "RECOG_AF_TIME"

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 48
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "DD"

    const-string/jumbo v3, "FACE"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0    # "measure":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onApplicationCreate()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    invoke-super {p0}, Lcom/alibaba/dingtalk/facebox/FaceBoxInterface;->onApplicationCreate()V

    .line 57
    const-string/jumbo v0, "faceboxrpc"

    new-instance v1, Lgrr;

    invoke-direct {v1}, Lgrr;-><init>()V

    invoke-static {v0, v1}, Lcix;->a(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 58
    return-void
.end method

.class public Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;
.super Ljava/lang/Object;
.source "FaceCircleWorkspace.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/alipay/mobile/security/faceauth/circle/ui/BioActivityEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$LightSensorListener;,
        Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$FaceSensorEventListener;
    }
.end annotation


# static fields
.field public static final WHAT_DETECT_COMPLETE:I = 0x3

.field public static final WHAT_ERROR_NOT_ENOUGH:I = 0x4

.field public static final WHAT_FPPFACE:I = 0x2

.field public static final WHAT_ONLYFACE:I = 0x0

.field public static final WHAT_SELFFACE:I = 0x1

.field public static final WHAT_STOP_TIMER:I = 0x5

.field private static y:I

.field private static z:I


# instance fields
.field private A:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/alipay/mobile/security/bio/sensor/SensorData;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

.field private C:Ljava/lang/Object;

.field private D:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;

.field private E:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

.field private F:Ljava/lang/String;

.field private G:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;

.field private H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

.field private I:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

.field private J:Landroid/content/res/Resources;

.field private K:Z

.field private L:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

.field private M:Landroid/os/Handler;

.field a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

.field b:Lcom/alipay/mobile/security/faceauth/FaceService;

.field c:Landroid/content/Context;

.field d:Landroid/hardware/SensorManager;

.field e:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$FaceSensorEventListener;

.field f:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$LightSensorListener;

.field private g:Z

.field private h:Landroid/hardware/Sensor;

.field private i:Landroid/hardware/Sensor;

.field private j:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;

.field private k:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

.field private l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

.field private m:I

.field public mFaceCallback:Lcom/alipay/mobile/security/faceauth/api/FaceCallback;

.field private n:Z

.field private o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

.field private p:Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;

.field private q:I

.field private r:I

.field private s:I

.field private t:Z

.field private u:Lcom/alipay/mobile/security/bio/service/BioUploadService;

.field private v:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

.field private w:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

.field private x:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x3e8

    sput v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->y:I

    .line 93
    const/16 v0, 0x64

    sput v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->z:I

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->g:Z

    .line 78
    const/16 v0, 0x10e

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->m:I

    .line 79
    iput-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->n:Z

    .line 95
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->A:Ljava/util/Vector;

    .line 96
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->B:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->C:Ljava/lang/Object;

    .line 98
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->D:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;

    .line 100
    sget-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_INVALID:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->E:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 101
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->M:Landroid/os/Handler;

    .line 745
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$7;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$7;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->mFaceCallback:Lcom/alipay/mobile/security/faceauth/api/FaceCallback;

    .line 790
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$FaceSensorEventListener;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$FaceSensorEventListener;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->e:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$FaceSensorEventListener;

    .line 791
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$LightSensorListener;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$LightSensorListener;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->f:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$LightSensorListener;

    .line 111
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->p:Lcom/alipay/mobile/security/faceauth/circle/fragment/FaceCircleFragment;

    .line 112
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->q:I

    return p1
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;
    .param p1, "x1"    # Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->B:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->startTimerTask()V

    .line 966
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->resetTask()V

    .line 969
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 2
    .param p1, "error"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 980
    new-instance v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;-><init>()V

    .line 981
    .local v0, "bioFragmentResponse":Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->isSucess:Z

    .line 982
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 983
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->getAppDescription()Lcom/alipay/mobile/security/bio/service/BioAppDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioAppDescription;->getBistoken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->token:Ljava/lang/String;

    .line 985
    :cond_0
    iput p1, v0, Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;->errorCode:I

    .line 986
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v1, :cond_1

    .line 987
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->sendResponse(Lcom/alipay/mobile/security/bio/workspace/BioFragmentResponse;)V

    .line 989
    :cond_1
    return-void
.end method

.method private a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V
    .locals 5
    .param p1, "type"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1266
    iget-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->g:Z

    if-eqz v2, :cond_1

    .line 1306
    :cond_0
    :goto_0
    return-void

    .line 1269
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->g:Z

    .line 2972
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->stopTimerTask()V

    .line 2973
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    if-eqz v2, :cond_2

    .line 2974
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->stopTask()V

    .line 1273
    :cond_2
    const/4 v1, 0x0

    .line 1274
    .local v1, "retryTime":I
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    if-eqz v2, :cond_3

    .line 1275
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->getRetryTime()I

    move-result v1

    .line 1278
    :cond_3
    const/4 v0, 0x3

    .line 1279
    .local v0, "limitRetry":I
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1280
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getRetry()I

    move-result v0

    .line 1282
    :cond_4
    if-lt v1, v0, :cond_5

    .line 1283
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->L:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    sget-object v3, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;->LOGIN:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    if-ne v2, v3, :cond_7

    .line 1284
    sget-object p1, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_FACE_LOGIN_MAX_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 1290
    :cond_5
    :goto_1
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->E:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 3873
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->v:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    if-eqz v2, :cond_6

    .line 3877
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3878
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    .line 3880
    sget-object v3, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$9;->a:[I

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3957
    :goto_2
    :pswitch_0
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 3958
    const-string/jumbo v3, "reason"

    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3959
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->v:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v4, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ALERT_APPEAR:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v3, v4, v2}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 1292
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->j:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;

    if-eqz v2, :cond_0

    .line 1293
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->j:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->L:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    invoke-virtual {v2, p1, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;->getAlertMessage(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;)Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->G:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;

    .line 1294
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->M:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1296
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->M:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$8;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$8;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1286
    :cond_7
    sget-object p1, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_FACE_MAX_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    goto :goto_1

    .line 3882
    :pswitch_1
    const-string/jumbo v3, "loadAlgorithmErr"

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    goto :goto_2

    .line 3890
    :pswitch_2
    const-string/jumbo v3, "clickXback"

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    goto :goto_2

    .line 3894
    :pswitch_3
    const-string/jumbo v3, "systemInterrupt"

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    goto :goto_2

    .line 3898
    :pswitch_4
    const-string/jumbo v3, "timeout"

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    goto :goto_2

    .line 3904
    :pswitch_5
    const-string/jumbo v3, "errorCameraFront"

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    goto :goto_2

    .line 3910
    :pswitch_6
    const-string/jumbo v3, "errorCameraCPU"

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    goto :goto_2

    .line 3915
    :pswitch_7
    const-string/jumbo v3, "errorSystemVersion"

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    goto :goto_2

    .line 3921
    :pswitch_8
    const-string/jumbo v3, "cameraPermission"

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    goto :goto_2

    .line 3930
    :pswitch_9
    const-string/jumbo v3, "serverFail"

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    goto :goto_2

    .line 3936
    :pswitch_a
    const-string/jumbo v3, "faceFail"

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    goto/16 :goto_2

    .line 3942
    :pswitch_b
    const-string/jumbo v3, "retryLimit"

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    goto/16 :goto_2

    .line 3950
    :pswitch_c
    const-string/jumbo v3, "networkFail"

    iput-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    goto/16 :goto_2

    .line 3880
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;
    .param p1, "x1"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    return-void
.end method

.method private a(Z)V
    .locals 5
    .param p1, "isPositive"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0xd0

    const/16 v3, 0xca

    const/4 v2, 0x0

    .line 993
    sget-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$9;->a:[I

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->E:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1199
    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_INVALID:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->E:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    .line 1200
    iput-boolean v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->g:Z

    .line 1202
    return-void

    .line 997
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 998
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 999
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1000
    :cond_1
    const/16 v0, 0xcd

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    .line 1004
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->finishActivity(Z)V

    goto :goto_0

    .line 1002
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    goto :goto_1

    .line 1010
    :pswitch_1
    if-eqz p1, :cond_5

    .line 1011
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1012
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1013
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getExitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1014
    :cond_3
    invoke-direct {p0, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    .line 1018
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->finishActivity(Z)V

    goto :goto_0

    .line 1016
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getExitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    goto :goto_2

    .line 1022
    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a()V

    goto/16 :goto_0

    .line 1026
    :pswitch_2
    if-eqz p1, :cond_6

    .line 1027
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a()V

    goto/16 :goto_0

    .line 1029
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1030
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1031
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getInterruptAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1032
    :cond_7
    invoke-direct {p0, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    .line 1038
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->finishActivity(Z)V

    goto/16 :goto_0

    .line 1034
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getInterruptAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    goto :goto_3

    .line 1044
    :pswitch_3
    if-eqz p1, :cond_9

    .line 1045
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a()V

    goto/16 :goto_0

    .line 1047
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1048
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1049
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getTimeoutAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    if-nez v0, :cond_b

    .line 1050
    :cond_a
    const/16 v0, 0xcb

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    .line 1056
    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->finishActivity(Z)V

    goto/16 :goto_0

    .line 1052
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getTimeoutAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    goto :goto_4

    .line 1062
    :pswitch_4
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1063
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1064
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1065
    :cond_c
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    .line 1069
    :goto_5
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->finishActivity(Z)V

    goto/16 :goto_0

    .line 1067
    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    goto :goto_5

    .line 1074
    :pswitch_5
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v0, :cond_e

    .line 1075
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->gotoSettings()V

    .line 1078
    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1079
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1080
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getCameraNoPermissionAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    if-nez v0, :cond_10

    .line 1081
    :cond_f
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    .line 1085
    :goto_6
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->finishActivity(Z)V

    goto/16 :goto_0

    .line 1083
    :cond_10
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getCameraNoPermissionAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    goto :goto_6

    .line 1091
    :pswitch_6
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1092
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1093
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1094
    :cond_11
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    .line 1098
    :goto_7
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->finishActivity(Z)V

    goto/16 :goto_0

    .line 1096
    :cond_12
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getUnsurpportAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    goto :goto_7

    .line 1106
    :pswitch_7
    if-eqz p1, :cond_13

    .line 1107
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a()V

    goto/16 :goto_0

    .line 1109
    :cond_13
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1110
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1111
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getFailAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    if-nez v0, :cond_15

    .line 1112
    :cond_14
    invoke-direct {p0, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    .line 1116
    :goto_8
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->finishActivity(Z)V

    goto/16 :goto_0

    .line 1114
    :cond_15
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getFailAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    goto :goto_8

    .line 1124
    :pswitch_8
    if-eqz p1, :cond_16

    .line 1125
    invoke-direct {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a()V

    goto/16 :goto_0

    .line 1127
    :cond_16
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1128
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1129
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getFailAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    if-nez v0, :cond_18

    .line 1130
    :cond_17
    invoke-direct {p0, v4}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    .line 1136
    :goto_9
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->finishActivity(Z)V

    goto/16 :goto_0

    .line 1132
    :cond_18
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getFailAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    goto :goto_9

    .line 1145
    :pswitch_9
    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    if-eqz v0, :cond_19

    .line 1146
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->retryUpload()V

    goto/16 :goto_0

    .line 1148
    :cond_19
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1149
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1150
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getNetworkErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 1151
    :cond_1a
    const/16 v0, 0xcf

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    .line 1157
    :goto_a
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->finishActivity(Z)V

    goto/16 :goto_0

    .line 1153
    :cond_1b
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getNetworkErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    goto :goto_a

    .line 1169
    :pswitch_a
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1170
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1171
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getLimitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 1172
    :cond_1c
    const/16 v0, 0xd1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    .line 1178
    :goto_b
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->finishActivity(Z)V

    goto/16 :goto_0

    .line 1174
    :cond_1d
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getLimitAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    goto :goto_b

    .line 1184
    :pswitch_b
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1185
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 1186
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemVersionErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 1187
    :cond_1e
    const/16 v0, 0x69

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    .line 1191
    :goto_c
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->finishActivity(Z)V

    goto/16 :goto_0

    .line 1189
    :cond_1f
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getFaceTips()Lcom/alipay/mobile/security/bio/config/bean/FaceTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/FaceTips;->getSystemVersionErrorAlert()Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/AlertConfig;->getReturnCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(I)V

    goto :goto_c

    .line 993
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_b
        :pswitch_5
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic a(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->t:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->r:I

    return p1
.end method

.method static synthetic b(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->M:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->s:I

    return p1
.end method

.method static synthetic c(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V
    .locals 3
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    .line 4242
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->C:Ljava/lang/Object;

    monitor-enter v1

    .line 4243
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->B:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 4244
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4245
    if-eqz v0, :cond_0

    .line 4249
    invoke-static {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceFrameUtil;->getFaceParam(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)Ljava/util/Map;

    move-result-object v0

    .line 4250
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->v:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_FACE_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 4253
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4254
    const-string/jumbo v1, "sensor"

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->A:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4255
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->v:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_SENSOR_SLICE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 4256
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->A:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4260
    :cond_0
    :goto_0
    return-void

    .line 4244
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 4257
    :catch_0
    move-exception v0

    .line 4258
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->D:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->A:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->K:Z

    return v0
.end method

.method static synthetic g(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->n:Z

    return v0
.end method

.method static synthetic h(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->m:I

    return v0
.end method

.method static synthetic i(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->t:Z

    return v0
.end method

.method static synthetic j(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->q:I

    return v0
.end method

.method static synthetic k(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->r:I

    return v0
.end method

.method static synthetic l(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->v:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->L:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    return-object v0
.end method

.method static synthetic n(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->s:I

    return v0
.end method

.method static synthetic p(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->C:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->G:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;

    return-object v0
.end method


# virtual methods
.method public getServerCode(I)I
    .locals 1
    .param p1, "operationCode"    # I

    .prologue
    .line 656
    const/4 v0, 0x0

    .line 657
    .local v0, "code":I
    packed-switch p1, :pswitch_data_0

    .line 670
    :goto_0
    return v0

    .line 659
    :pswitch_0
    const/16 v0, 0x7d2

    .line 660
    goto :goto_0

    .line 662
    :pswitch_1
    const/16 v0, 0x7d1

    .line 663
    goto :goto_0

    .line 665
    :pswitch_2
    const/16 v0, 0x3e9

    goto :goto_0

    .line 657
    :pswitch_data_0
    .packed-switch 0xfa1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public init(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;)V
    .locals 11
    .param p1, "bioServiceManager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    .param p2, "faceCircle"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;
    .param p3, "faceCircleCallBack"    # Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    .prologue
    const/4 v10, 0x0

    .line 293
    invoke-virtual {p1}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->c:Landroid/content/Context;

    .line 294
    invoke-interface {p3}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->getRemoteConfig()Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    move-result-object v8

    iput-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 295
    invoke-interface {p3}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->getFaceCircleMode()Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    move-result-object v8

    iput-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->L:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    .line 298
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->startTimerTask()V

    .line 300
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v8}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getDeviceSettings()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/security/faceauth/util/DeviceSettingUtil;->getPropertyDeviceSetting([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    move-result-object v0

    .line 301
    .local v0, "deviceSetting":Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->getAlgorithmAngle()I

    move-result v8

    iput v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->m:I

    .line 302
    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;->isAlgorithmAuto()Z

    move-result v8

    iput-boolean v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->n:Z

    .line 303
    iput-object p2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->k:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    .line 304
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->I:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 305
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->I:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-virtual {v8}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->J:Landroid/content/res/Resources;

    .line 306
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->k:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->M:Landroid/os/Handler;

    invoke-interface {v8, v9}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->setWorkspaceHandler(Landroid/os/Handler;)V

    .line 307
    iput-object p3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    .line 308
    invoke-interface {p2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getCameraSurfaceView()Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    move-result-object v8

    iput-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    .line 309
    new-instance v8, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;

    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-direct {v8, p1, v9}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)V

    iput-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->j:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;

    .line 311
    const-class v8, Lcom/alipay/mobile/security/faceauth/FaceService;

    invoke-virtual {p1, v8}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/security/faceauth/FaceService;

    iput-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->b:Lcom/alipay/mobile/security/faceauth/FaceService;

    .line 313
    const-class v8, Lcom/alipay/mobile/security/bio/service/BioUploadService;

    invoke-virtual {p1, v8}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/security/bio/service/BioUploadService;

    iput-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->u:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    .line 314
    const-class v8, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {p1, v8}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    iput-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->v:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    .line 315
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->b:Lcom/alipay/mobile/security/faceauth/FaceService;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->u:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->v:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    if-nez v8, :cond_2

    .line 316
    :cond_0
    sget-object v8, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_SYSTEM_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-direct {p0, v8}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    .line 653
    :cond_1
    :goto_0
    return-void

    .line 320
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 321
    .local v4, "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 322
    .local v6, "startTime":J
    sget-object v5, Lcom/alipay/mobile/security/faceauth/api/RESULT;->START_SUCCESS:Lcom/alipay/mobile/security/faceauth/api/RESULT;

    .line 324
    .local v5, "result":Lcom/alipay/mobile/security/faceauth/api/RESULT;
    :try_start_0
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->b:Lcom/alipay/mobile/security/faceauth/FaceService;

    invoke-virtual {v8}, Lcom/alipay/mobile/security/faceauth/FaceService;->init()Lcom/alipay/mobile/security/faceauth/api/RESULT;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 329
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v6

    .line 330
    .local v2, "endTime":J
    const-string/jumbo v8, "inittime"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->v:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v9, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_FACE_ALGORITHM:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v8, v9, v4}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 333
    sget-object v8, Lcom/alipay/mobile/security/faceauth/api/RESULT;->START_SUCCESS:Lcom/alipay/mobile/security/faceauth/api/RESULT;

    if-eq v5, v8, :cond_3

    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->v:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    if-eqz v8, :cond_3

    .line 334
    sget-object v8, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_SYSTEM_ERROR:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-direct {p0, v8}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    goto :goto_0

    .line 325
    .end local v2    # "endTime":J
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 338
    .end local v1    # "e":Ljava/lang/Error;
    .restart local v2    # "endTime":J
    :cond_3
    new-instance v8, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->M:Landroid/os/Handler;

    invoke-direct {v8, p1, p2, v9, p3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Landroid/os/Handler;Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;)V

    iput-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    .line 340
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    if-eqz v8, :cond_4

    .line 341
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    new-instance v9, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;

    invoke-direct {v9, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$4;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->setSurfaceViewListener(Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;)V

    .line 410
    :cond_4
    invoke-interface {p2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;

    move-result-object v8

    new-instance v9, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$5;

    invoke-direct {v9, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$5;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V

    invoke-virtual {v8, v9}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->u:Lcom/alipay/mobile/security/bio/service/BioUploadService;

    new-instance v9, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;

    invoke-direct {v9, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$6;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/security/bio/service/BioUploadService;->addCallBack(Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;)V

    .line 630
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->c:Landroid/content/Context;

    const-string/jumbo v9, "sensor"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/SensorManager;

    iput-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->d:Landroid/hardware/SensorManager;

    .line 631
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->d:Landroid/hardware/SensorManager;

    if-eqz v8, :cond_5

    .line 636
    :try_start_1
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->d:Landroid/hardware/SensorManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v8

    iput-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->h:Landroid/hardware/Sensor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 643
    :goto_2
    :try_start_2
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->d:Landroid/hardware/SensorManager;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v8

    iput-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->i:Landroid/hardware/Sensor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2269
    :cond_5
    :goto_3
    new-instance v8, Lcom/alipay/mobile/security/faceauth/util/EnvCheck;

    iget-object v9, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v9}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getDeviceSettings()[Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    move-result-object v9

    invoke-static {v9}, Lcom/alipay/mobile/security/faceauth/util/DeviceSettingUtil;->getPropertyDeviceSetting([Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alipay/mobile/security/faceauth/util/EnvCheck;-><init>(Lcom/alipay/mobile/security/faceauth/circle/protocol/DeviceSetting;)V

    .line 2270
    invoke-virtual {v8}, Lcom/alipay/mobile/security/faceauth/util/EnvCheck;->check()Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    move-result-object v8

    .line 2271
    sget-object v9, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_INVALID:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    if-eq v8, v9, :cond_1

    .line 2276
    sget-object v9, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_NO_FRONT_CAMERA:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    if-ne v8, v9, :cond_6

    .line 2277
    sget-object v9, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_NO_FRONT_CAMERA:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-direct {p0, v9}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    .line 2281
    :cond_6
    sget-object v9, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_UNSUPPORTED_CPU:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    if-ne v8, v9, :cond_7

    .line 2282
    sget-object v9, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_UNSUPPORTED_CPU:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-direct {p0, v9}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    .line 2286
    :cond_7
    sget-object v9, Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;->ENV_ERROR_LOW_OS:Lcom/alipay/mobile/security/faceauth/util/EnvErrorType;

    if-ne v8, v9, :cond_1

    .line 2287
    sget-object v8, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_ANDROID_VERSION_LOW:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-direct {p0, v8}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    goto/16 :goto_0

    .line 637
    :catch_1
    move-exception v1

    .line 638
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 639
    iput-object v10, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->h:Landroid/hardware/Sensor;

    goto :goto_2

    .line 644
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 645
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    .line 646
    iput-object v10, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->i:Landroid/hardware/Sensor;

    goto :goto_3
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 836
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 837
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 838
    .local v0, "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "reason"

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->F:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->G:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;

    if-eqz v1, :cond_0

    .line 841
    const/4 v1, -0x2

    if-ne p2, v1, :cond_2

    .line 842
    const-string/jumbo v1, "choose"

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->G:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->getNegative()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->v:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    if-eqz v1, :cond_1

    .line 851
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->v:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    sget-object v2, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;->RECORD_ALERT_CHOOSE:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;->write(Lcom/alipay/mobile/security/faceauth/extservice/RecordExtAction;Ljava/util/Map;)V

    .line 855
    .end local v0    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 869
    :goto_1
    return-void

    .line 844
    .restart local v0    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v1, "choose"

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->G:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessage;->getPositive()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 858
    .end local v0    # "extParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Z)V

    goto :goto_1

    .line 862
    :pswitch_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Z)V

    goto :goto_1

    .line 855
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 675
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 698
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->stopTimerTask()V

    .line 699
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->destroy()V

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->setSurfaceViewListener(Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView$Listener;)V

    .line 706
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a:Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    .line 708
    :cond_1
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->mFaceCallback:Lcom/alipay/mobile/security/faceauth/api/FaceCallback;

    .line 709
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->M:Landroid/os/Handler;

    .line 710
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 711
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->b:Lcom/alipay/mobile/security/faceauth/FaceService;

    .line 712
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->v:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    .line 713
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->L:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    .line 714
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->c:Landroid/content/Context;

    .line 715
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->k:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    .line 716
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->I:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 717
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->J:Landroid/content/res/Resources;

    .line 718
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->k:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    .line 719
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    .line 721
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->j:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertMessageHelper;

    .line 722
    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    .line 724
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 727
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->hasCameraPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->K:Z

    .line 2783
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->d:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 2784
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->e:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$FaceSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2786
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->f:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$LightSensorListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->uploadNineShoot()V

    .line 736
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->stopTimerTask()V

    .line 739
    :cond_2
    return-void
.end method

.method public onReceiveAction(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 816
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.alipay.mobile.security.bio.server.success"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->finishActivity(Z)V

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    const-string/jumbo v1, "com.alipay.mobile.security.bio.server.continue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 824
    const-string/jumbo v1, "com.alipay.mobile.security.bio.server.fail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "com.alipay.mobile.security.bio.server.retry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 825
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->L:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    sget-object v2, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;->LOGIN:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleMode;

    if-ne v1, v2, :cond_3

    .line 826
    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_FACE_LOGIN_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    goto :goto_0

    .line 828
    :cond_3
    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_FACE_FAIL:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 679
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->H:Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;

    invoke-interface {v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/FaceCircleCallBack;->hasCameraPermission()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 680
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->setCameraVisible(Z)V

    .line 2772
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->d:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->h:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 2773
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->d:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->e:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$FaceSensorEventListener;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->h:Landroid/hardware/Sensor;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2777
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->d:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->i:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->f:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$LightSensorListener;

    if-eqz v1, :cond_1

    .line 2778
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->d:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->f:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$LightSensorListener;

    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->i:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->K:Z

    if-eqz v1, :cond_2

    .line 688
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->isInUploadProcess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 689
    sget-object v1, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_INTERRUPT_RESUME:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    .line 692
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->K:Z

    .line 695
    :cond_3
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 743
    return-void
.end method

.method public onWindowFocusChanged(Z)Z
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 810
    const/4 v0, 0x0

    return v0
.end method

.method public ontActivityEvent(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "type"    # Landroid/view/KeyEvent;

    .prologue
    .line 796
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 798
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->o:Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/TaskManager;->isInUploadProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    sget-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_BACK:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    .line 802
    :cond_0
    const/4 v0, 0x1

    .line 805
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openPermissionDialog()V
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;->ALERT_NO_PERMISSION_OF_CAMERA:Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->a(Lcom/alipay/mobile/security/faceauth/circle/workspace/AlertType;)V

    .line 151
    return-void
.end method

.method public setCameraVisible(Z)V
    .locals 2
    .param p1, "cameraVisible"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1205
    if-eqz p1, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->k:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getCameraSurfaceView()Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->setVisibility(I)V

    .line 1210
    :goto_0
    return-void

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->k:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getCameraSurfaceView()Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/faceauth/widget/CameraSurfaceView;->setVisibility(I)V

    goto :goto_0
.end method

.method public startTimerTask()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 188
    new-instance v1, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->D:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;

    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->D:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->startListening()V

    .line 191
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->A:Ljava/util/Vector;

    .line 193
    const/16 v0, 0x14

    .line 194
    .local v0, "time":I
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->l:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getColl()Lcom/alipay/mobile/security/bio/config/bean/Coll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/config/bean/Coll;->getTime()I

    move-result v0

    .line 198
    :cond_0
    new-instance v1, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    mul-int/lit16 v2, v0, 0x3e8

    sget v3, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->y:I

    invoke-direct {v1, v2, v4, v3}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;-><init>(III)V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->w:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    .line 199
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->w:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    new-instance v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$2;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->setTimerTaskListener(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;)V

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->w:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->start()V

    .line 219
    new-instance v1, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    mul-int/lit16 v2, v0, 0x3e8

    sget v3, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->z:I

    invoke-direct {v1, v2, v4, v3}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;-><init>(III)V

    iput-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->x:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    .line 220
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->x:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    new-instance v2, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$3;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->setTimerTaskListener(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;)V

    .line 236
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->x:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->start()V

    .line 237
    return-void
.end method

.method public stopTimerTask()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->w:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->w:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->setTimerTaskListener(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;)V

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->w:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->stop()V

    .line 157
    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->w:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->x:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->x:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->setTimerTaskListener(Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;)V

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->x:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;->stop()V

    .line 163
    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->x:Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask;

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->C:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->B:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    if-eqz v0, :cond_2

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->B:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 170
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->A:Ljava/util/Vector;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->A:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 175
    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->A:Ljava/util/Vector;

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->D:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;

    if-eqz v0, :cond_4

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->D:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->destroy()V

    .line 181
    iput-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->D:Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;

    .line 185
    :cond_4
    return-void

    .line 170
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

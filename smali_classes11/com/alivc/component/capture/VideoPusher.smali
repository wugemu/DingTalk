.class public Lcom/alivc/component/capture/VideoPusher;
.super Ljava/lang/Object;
.source "VideoPusher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;,
        Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;
    }
.end annotation


# static fields
.field private static final SCREEN_LANDSCAPE_LEFT:I = 0x5a

.field private static final SCREEN_LANDSCAPE_RIGHT:I = 0x10e

.field private static final SCREEN_PORTRAIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoPusher"

.field private static buffer:[B

.field private static buffer1:[B

.field private static buffer2:[B

.field private static sSupportedFormat:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sSupportedResolutionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;>;"
        }
    .end annotation
.end field

.field private static supportMaxWH:I


# instance fields
.field private final ACCEL_DELTAXYZ_DIFF:F

.field private final ACCEL_DELTA_DIFF:F

.field private final INITIATE_VALUE:F

.field private final MAG_DELTA_DIFF:F

.field private final TIME_MILLISECOND:I

.field private mAccelSensor:Landroid/hardware/Sensor;

.field private mAutoFocus:Z

.field private mAutoFocusing:Z

.field private mBelowMinFpsNumberTimes:I

.field private mCamera:Landroid/hardware/Camera;

.field private mCurrentFps:I

.field private mCustomRotation:I

.field private mDataOrientation:I

.field private mFlashOn:Z

.field private mLastCaptureTime:J

.field private mLastFpsCountTime:J

.field private mLastFpsCounter:I

.field private mLastXAccel:F

.field private mLastXMag:F

.field private mLastYAccel:F

.field private mLastYMag:F

.field private mLastZAccel:F

.field private mLastZMag:F

.field private mMagneticSensor:Landroid/hardware/Sensor;

.field private mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mOrientation:I

.field private mParam:Lcom/alivc/component/capture/VideoParam;

.field private mPause:Z

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewRunning:Z

.field private mScreen:I

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorFocus:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSurfaceCbMode:Z

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureId:I

.field private mSwitchCamera:Z

.field private mTimeDelta:J

.field private mVideoSourceListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

.field private mVideoSourceTextureListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/alivc/component/capture/VideoPusher;->buffer:[B

    .line 40
    sput-object v0, Lcom/alivc/component/capture/VideoPusher;->buffer1:[B

    .line 41
    sput-object v0, Lcom/alivc/component/capture/VideoPusher;->buffer2:[B

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/alivc/component/capture/VideoPusher;->supportMaxWH:I

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alivc/component/capture/VideoPusher;->sSupportedResolutionMap:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alivc/component/capture/VideoPusher;->sSupportedFormat:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->TIME_MILLISECOND:I

    .line 31
    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->INITIATE_VALUE:F

    .line 32
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->MAG_DELTA_DIFF:F

    .line 33
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->ACCEL_DELTA_DIFF:F

    .line 34
    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->ACCEL_DELTAXYZ_DIFF:F

    .line 49
    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mPause:Z

    .line 50
    iput-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mVideoSourceListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    .line 51
    iput-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mVideoSourceTextureListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    .line 52
    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSwitchCamera:Z

    .line 53
    iput-wide v4, p0, Lcom/alivc/component/capture/VideoPusher;->mLastCaptureTime:J

    .line 54
    iput-wide v4, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCountTime:J

    .line 55
    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCounter:I

    .line 56
    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->mBelowMinFpsNumberTimes:I

    .line 57
    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCurrentFps:I

    .line 58
    iput-wide v4, p0, Lcom/alivc/component/capture/VideoPusher;->mTimeDelta:J

    .line 60
    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTextureId:I

    .line 63
    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mFlashOn:Z

    .line 64
    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mAutoFocus:Z

    .line 65
    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mAutoFocusing:Z

    .line 67
    iput-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 69
    iput-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    .line 70
    iput-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mAccelSensor:Landroid/hardware/Sensor;

    .line 71
    iput-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mMagneticSensor:Landroid/hardware/Sensor;

    .line 73
    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mLastXAccel:F

    .line 74
    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mLastYAccel:F

    .line 75
    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mLastZAccel:F

    .line 77
    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mLastXMag:F

    .line 78
    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mLastYMag:F

    .line 79
    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mLastZMag:F

    .line 81
    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCustomRotation:I

    .line 82
    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorFocus:Z

    .line 205
    new-instance v0, Lcom/alivc/component/capture/VideoPusher$1;

    invoke-direct {v0, p0}, Lcom/alivc/component/capture/VideoPusher$1;-><init>(Lcom/alivc/component/capture/VideoPusher;)V

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 230
    new-instance v0, Lcom/alivc/component/capture/VideoPusher$2;

    invoke-direct {v0, p0}, Lcom/alivc/component/capture/VideoPusher$2;-><init>(Lcom/alivc/component/capture/VideoPusher;)V

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 894
    new-instance v0, Lcom/alivc/component/capture/VideoPusher$4;

    invoke-direct {v0, p0}, Lcom/alivc/component/capture/VideoPusher$4;-><init>(Lcom/alivc/component/capture/VideoPusher;)V

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mVideoSourceTextureListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alivc/component/capture/VideoPusher;)J
    .locals 2
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/alivc/component/capture/VideoPusher;->mTimeDelta:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/alivc/component/capture/VideoPusher;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mCurrentFps:I

    return p1
.end method

.method static synthetic access$102(Lcom/alivc/component/capture/VideoPusher;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/alivc/component/capture/VideoPusher;->mTimeDelta:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/alivc/component/capture/VideoPusher;)I
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mBelowMinFpsNumberTimes:I

    return v0
.end method

.method static synthetic access$1102(Lcom/alivc/component/capture/VideoPusher;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mBelowMinFpsNumberTimes:I

    return p1
.end method

.method static synthetic access$1108(Lcom/alivc/component/capture/VideoPusher;)I
    .locals 2
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mBelowMinFpsNumberTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->mBelowMinFpsNumberTimes:I

    return v0
.end method

.method static synthetic access$1200(Lcom/alivc/component/capture/VideoPusher;)F
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastXMag:F

    return v0
.end method

.method static synthetic access$1202(Lcom/alivc/component/capture/VideoPusher;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;
    .param p1, "x1"    # F

    .prologue
    .line 26
    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastXMag:F

    return p1
.end method

.method static synthetic access$1300(Lcom/alivc/component/capture/VideoPusher;)F
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastYMag:F

    return v0
.end method

.method static synthetic access$1302(Lcom/alivc/component/capture/VideoPusher;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;
    .param p1, "x1"    # F

    .prologue
    .line 26
    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastYMag:F

    return p1
.end method

.method static synthetic access$1400(Lcom/alivc/component/capture/VideoPusher;)F
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastZMag:F

    return v0
.end method

.method static synthetic access$1402(Lcom/alivc/component/capture/VideoPusher;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;
    .param p1, "x1"    # F

    .prologue
    .line 26
    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastZMag:F

    return p1
.end method

.method static synthetic access$1500(Lcom/alivc/component/capture/VideoPusher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mAutoFocusing:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/alivc/component/capture/VideoPusher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/alivc/component/capture/VideoPusher;->mAutoFocusing:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/alivc/component/capture/VideoPusher;)V
    .locals 0
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/alivc/component/capture/VideoPusher;->cameraAutoFocus()V

    return-void
.end method

.method static synthetic access$1700(Lcom/alivc/component/capture/VideoPusher;)F
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastXAccel:F

    return v0
.end method

.method static synthetic access$1702(Lcom/alivc/component/capture/VideoPusher;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;
    .param p1, "x1"    # F

    .prologue
    .line 26
    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastXAccel:F

    return p1
.end method

.method static synthetic access$1800(Lcom/alivc/component/capture/VideoPusher;)F
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastYAccel:F

    return v0
.end method

.method static synthetic access$1802(Lcom/alivc/component/capture/VideoPusher;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;
    .param p1, "x1"    # F

    .prologue
    .line 26
    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastYAccel:F

    return p1
.end method

.method static synthetic access$1900(Lcom/alivc/component/capture/VideoPusher;)F
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastZAccel:F

    return v0
.end method

.method static synthetic access$1902(Lcom/alivc/component/capture/VideoPusher;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;
    .param p1, "x1"    # F

    .prologue
    .line 26
    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastZAccel:F

    return p1
.end method

.method static synthetic access$200(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoParam;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alivc/component/capture/VideoPusher;)I
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCustomRotation:I

    return v0
.end method

.method static synthetic access$400(Lcom/alivc/component/capture/VideoPusher;)I
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/alivc/component/capture/VideoPusher;)J
    .locals 2
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastCaptureTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/alivc/component/capture/VideoPusher;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastCaptureTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/alivc/component/capture/VideoPusher;)I
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCounter:I

    return v0
.end method

.method static synthetic access$602(Lcom/alivc/component/capture/VideoPusher;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCounter:I

    return p1
.end method

.method static synthetic access$608(Lcom/alivc/component/capture/VideoPusher;)I
    .locals 2
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCounter:I

    return v0
.end method

.method static synthetic access$700(Lcom/alivc/component/capture/VideoPusher;)Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mVideoSourceListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alivc/component/capture/VideoPusher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mPause:Z

    return v0
.end method

.method static synthetic access$900(Lcom/alivc/component/capture/VideoPusher;)J
    .locals 2
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCountTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/alivc/component/capture/VideoPusher;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alivc/component/capture/VideoPusher;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastFpsCountTime:J

    return-wide p1
.end method

.method private cameraAutoFocus()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 954
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mAutoFocusing:Z

    .line 955
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "continuous-video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 956
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 958
    :try_start_0
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 959
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    new-instance v2, Lcom/alivc/component/capture/VideoPusher$5;

    invoke-direct {v2, p0}, Lcom/alivc/component/capture/VideoPusher$5;-><init>(Lcom/alivc/component/capture/VideoPusher;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 972
    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getSupportedFormats()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 867
    sget-object v3, Lcom/alivc/component/capture/VideoPusher;->sSupportedFormat:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 871
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 878
    .local v0, "camera":Landroid/hardware/Camera;
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 884
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 885
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/alivc/component/capture/VideoPusher;->sSupportedFormat:Ljava/util/List;

    .line 887
    :cond_0
    sget-object v2, Lcom/alivc/component/capture/VideoPusher;->sSupportedFormat:Ljava/util/List;

    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return-object v2

    .line 880
    :catch_0
    move-exception v3

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    goto :goto_0

    .line 873
    .end local v0    # "camera":Landroid/hardware/Camera;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static getSupportedResolutions(I)Ljava/util/List;
    .locals 5
    .param p0, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 842
    sget-object v3, Lcom/alivc/component/capture/VideoPusher;->sSupportedResolutionMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 846
    :try_start_0
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 853
    .local v0, "camera":Landroid/hardware/Camera;
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 859
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 860
    sget-object v2, Lcom/alivc/component/capture/VideoPusher;->sSupportedResolutionMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    .end local v0    # "camera":Landroid/hardware/Camera;
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    sget-object v2, Lcom/alivc/component/capture/VideoPusher;->sSupportedResolutionMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    :goto_0
    return-object v2

    .line 855
    .restart local v0    # "camera":Landroid/hardware/Camera;
    :catch_0
    move-exception v3

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    goto :goto_0

    .line 848
    .end local v0    # "camera":Landroid/hardware/Camera;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private isHasPermission()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v3, "mHasPermission"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 364
    .local v0, "filedPass":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 365
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 367
    .end local v0    # "filedPass":Ljava/lang/reflect/Field;
    :goto_0
    return v1

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_0
.end method

.method private preparePublisher(II)V
    .locals 2
    .param p1, "pushWidth"    # I
    .param p2, "pushHeight"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "prepare publisher. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alivc/component/capture/VideoPusher;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSwitchCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mPause:Z

    if-eqz v0, :cond_1

    .line 582
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSwitchCamera:Z

    .line 584
    :cond_1
    return-void
.end method

.method private setPreviewFpsRange(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 546
    iget-object v7, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v7}, Lcom/alivc/component/capture/VideoParam;->getFps()I

    move-result v7

    mul-int/lit16 v5, v7, 0x3e8

    .line 547
    .local v5, "targetFps":I
    const/4 v2, 0x0

    .line 548
    .local v2, "minRange":I
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v4

    .line 549
    .local v4, "supportedFpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 550
    .local v6, "targetFpsRange":[I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 551
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 552
    .local v3, "range":[I
    aget v7, v3, v9

    sub-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    aget v8, v3, v10

    sub-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v2, v7, v8

    .line 553
    aget v7, v3, v9

    aput v7, v6, v9

    .line 554
    aget v7, v3, v10

    aput v7, v6, v10

    .line 556
    .end local v3    # "range":[I
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 557
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 558
    .restart local v3    # "range":[I
    aget v7, v3, v9

    sub-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    aget v8, v3, v10

    sub-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v0, v7, v8

    .line 559
    .local v0, "currentRange":I
    if-ge v0, v2, :cond_1

    .line 560
    aget v7, v3, v9

    aput v7, v6, v9

    .line 561
    aget v7, v3, v10

    aput v7, v6, v10

    .line 562
    move v2, v0

    .line 556
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    .end local v0    # "currentRange":I
    .end local v3    # "range":[I
    :cond_2
    const/4 v7, 0x0

    :try_start_0
    aget v7, v6, v7

    const/4 v8, 0x1

    aget v8, v6, v8

    invoke-virtual {p1, v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 567
    iget-object v7, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v7}, Lcom/alivc/component/capture/VideoParam;->getFps()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u9884\u89c8\u5e27\u7387 fps:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v8, v6, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v6, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    return-void

    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private setPreviewOrientation(Landroid/hardware/Camera$Parameters;I)V
    .locals 5
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p2, "rotation"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SetRotation : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 589
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 590
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v2}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v2

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 591
    const/4 v2, 0x0

    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mScreen:I

    .line 592
    sparse-switch p2, :sswitch_data_0

    .line 622
    :goto_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v4, :cond_3

    .line 623
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p2

    rem-int/lit16 v1, v2, 0x168

    .line 624
    .local v1, "rotationResult":I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 628
    :goto_1
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 631
    return-void

    .line 594
    .end local v1    # "rotationResult":I
    :sswitch_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v4, :cond_0

    .line 595
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v3, p0, Lcom/alivc/component/capture/VideoPusher;->mOrientation:I

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    .line 596
    iget v2, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    rsub-int v2, v2, 0x168

    add-int/lit16 v2, v2, 0xb4

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    goto :goto_0

    .line 598
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v3, p0, Lcom/alivc/component/capture/VideoPusher;->mOrientation:I

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    goto :goto_0

    .line 602
    :sswitch_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v4, :cond_1

    .line 603
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v3, p0, Lcom/alivc/component/capture/VideoPusher;->mOrientation:I

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    .line 604
    iget v2, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    rsub-int v2, v2, 0x168

    add-int/lit16 v2, v2, 0x10e

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    goto :goto_0

    .line 606
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v3, p0, Lcom/alivc/component/capture/VideoPusher;->mOrientation:I

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x168

    add-int/lit16 v2, v2, 0x10e

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    goto :goto_0

    .line 610
    :sswitch_2
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v4, :cond_2

    .line 611
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v3, p0, Lcom/alivc/component/capture/VideoPusher;->mOrientation:I

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    .line 612
    iget v2, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    rsub-int v2, v2, 0x168

    add-int/lit8 v2, v2, 0x5a

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    goto :goto_0

    .line 614
    :cond_2
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v3, p0, Lcom/alivc/component/capture/VideoPusher;->mOrientation:I

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x168

    add-int/lit8 v2, v2, 0x5a

    rem-int/lit16 v2, v2, 0x168

    iput v2, p0, Lcom/alivc/component/capture/VideoPusher;->mDataOrientation:I

    goto/16 :goto_0

    .line 626
    :cond_3
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1    # "rotationResult":I
    goto/16 :goto_1

    .line 592
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private setPreviewSize(Landroid/hardware/Camera$Parameters;)V
    .locals 13
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 471
    .line 472
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v7

    .line 473
    .local v7, "supportedPreviewFormats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 474
    .local v2, "integer":Ljava/lang/Integer;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\u652f\u6301:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 478
    .end local v2    # "integer":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v8

    .line 479
    .local v8, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 480
    .local v1, "greaterClosePreviewSize":Landroid/hardware/Camera$Size;
    const/4 v5, 0x0

    .line 481
    .local v5, "preview720P":Landroid/hardware/Camera$Size;
    const/4 v0, 0x0

    .line 482
    .local v0, "greaterCloseArea":I
    const/4 v6, 0x0

    .line 483
    .local v6, "size":Landroid/hardware/Camera$Size;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 484
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 485
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 486
    .local v4, "next":Landroid/hardware/Camera$Size;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\u652f\u6301 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    iget-object v10, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v10}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_1

    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    iget-object v10, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v10}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v10

    if-eq v9, v10, :cond_2

    :cond_1
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    iget-object v10, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v10}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v10

    if-ne v9, v10, :cond_3

    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    iget-object v10, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v10}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 488
    :cond_2
    move-object v6, v4

    .line 491
    :cond_3
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    const/16 v10, 0x2d0

    if-ne v9, v10, :cond_4

    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    const/16 v10, 0x500

    if-eq v9, v10, :cond_5

    :cond_4
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    const/16 v10, 0x500

    if-ne v9, v10, :cond_6

    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    const/16 v10, 0x2d0

    if-ne v9, v10, :cond_6

    .line 492
    :cond_5
    move-object v5, v4

    .line 495
    :cond_6
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    iget-object v10, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v10}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v10

    if-lt v9, v10, :cond_7

    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    iget-object v10, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v10}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_8

    :cond_7
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    iget-object v10, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v10}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v10

    if-lt v9, v10, :cond_a

    iget v9, v4, Landroid/hardware/Camera$Size;->height:I

    iget-object v10, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v10}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v10

    if-lt v9, v10, :cond_a

    .line 496
    :cond_8
    if-nez v0, :cond_b

    .line 497
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int v0, v9, v10

    .line 507
    :cond_9
    :goto_2
    move-object v1, v4

    .line 511
    :cond_a
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v9, v10

    sget v10, Lcom/alivc/component/capture/VideoPusher;->supportMaxWH:I

    if-le v9, v10, :cond_e

    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v9, v10

    :goto_3
    sput v9, Lcom/alivc/component/capture/VideoPusher;->supportMaxWH:I

    goto/16 :goto_1

    .line 499
    :cond_b
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v9, v10

    if-ge v9, v0, :cond_c

    .line 500
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int v0, v9, v10

    .line 501
    goto :goto_2

    .line 502
    :cond_c
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v9, v10

    if-ne v9, v0, :cond_a

    .line 504
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    if-ge v9, v10, :cond_d

    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v9}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v10}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v10

    if-lt v9, v10, :cond_9

    :cond_d
    iget v9, v4, Landroid/hardware/Camera$Size;->width:I

    iget v10, v4, Landroid/hardware/Camera$Size;->height:I

    if-le v9, v10, :cond_a

    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    .line 505
    invoke-virtual {v9}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v10}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v10

    if-le v9, v10, :cond_a

    goto :goto_2

    .line 511
    :cond_e
    sget v9, Lcom/alivc/component/capture/VideoPusher;->supportMaxWH:I

    goto :goto_3

    .line 513
    .end local v4    # "next":Landroid/hardware/Camera$Size;
    :cond_f
    if-nez v6, :cond_10

    if-eqz v5, :cond_10

    .line 514
    move-object v6, v5

    .line 516
    :cond_10
    if-nez v6, :cond_11

    if-eqz v1, :cond_11

    .line 517
    move-object v6, v1

    .line 519
    :cond_11
    if-nez v6, :cond_12

    .line 520
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "size":Landroid/hardware/Camera$Size;
    check-cast v6, Landroid/hardware/Camera$Size;

    .line 523
    .restart local v6    # "size":Landroid/hardware/Camera$Size;
    :cond_12
    sget-object v9, Lcom/alivc/component/capture/VideoPusher;->buffer:[B

    if-nez v9, :cond_13

    sget v9, Lcom/alivc/component/capture/VideoPusher;->supportMaxWH:I

    if-lez v9, :cond_13

    .line 524
    sget v9, Lcom/alivc/component/capture/VideoPusher;->supportMaxWH:I

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v9, v9, [B

    sput-object v9, Lcom/alivc/component/capture/VideoPusher;->buffer:[B

    .line 526
    :cond_13
    sget-object v9, Lcom/alivc/component/capture/VideoPusher;->buffer1:[B

    if-nez v9, :cond_14

    sget v9, Lcom/alivc/component/capture/VideoPusher;->supportMaxWH:I

    if-lez v9, :cond_14

    .line 527
    sget v9, Lcom/alivc/component/capture/VideoPusher;->supportMaxWH:I

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v9, v9, [B

    sput-object v9, Lcom/alivc/component/capture/VideoPusher;->buffer1:[B

    .line 529
    :cond_14
    sget-object v9, Lcom/alivc/component/capture/VideoPusher;->buffer2:[B

    if-nez v9, :cond_15

    sget v9, Lcom/alivc/component/capture/VideoPusher;->supportMaxWH:I

    if-lez v9, :cond_15

    .line 530
    sget v9, Lcom/alivc/component/capture/VideoPusher;->supportMaxWH:I

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x2

    new-array v9, v9, [B

    sput-object v9, Lcom/alivc/component/capture/VideoPusher;->buffer2:[B

    .line 534
    :cond_15
    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    iget v10, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v10}, Lcom/alivc/component/capture/VideoParam;->setWidth(I)V

    .line 535
    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    iget v10, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v10}, Lcom/alivc/component/capture/VideoParam;->setHeight(I)V

    .line 538
    :try_start_0
    iget-object v9, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v9}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v10}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\u9884\u89c8\u5206\u8fa8\u7387 width:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v10}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " height:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v10}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    return-void

    :catch_0
    move-exception v9

    goto :goto_4
.end method

.method private startPreview0()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 372
    iget-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mPreviewRunning:Z

    if-eqz v1, :cond_0

    .line 444
    :goto_0
    return-void

    .line 376
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :try_start_1
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 389
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    sget-object v1, Lcom/alivc/component/capture/VideoPusher;->sSupportedResolutionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v2}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 390
    sget-object v1, Lcom/alivc/component/capture/VideoPusher;->sSupportedResolutionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v2}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_1
    sget-object v1, Lcom/alivc/component/capture/VideoPusher;->sSupportedFormat:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 393
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/alivc/component/capture/VideoPusher;->sSupportedFormat:Ljava/util/List;

    .line 395
    :cond_2
    invoke-direct {p0}, Lcom/alivc/component/capture/VideoPusher;->isHasPermission()Z

    move-result v1

    if-nez v1, :cond_3

    .line 396
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 397
    iput-object v4, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    .line 398
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "permission not allowed"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "permission not allowed"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 386
    iput-object v4, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    .line 387
    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "permission not allowed"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_3
    iget-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    if-nez v1, :cond_9

    .line 401
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 405
    :goto_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 406
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getCurrentZoom()I

    move-result v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 407
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alivc/component/capture/VideoParam;->setCurrentZoom(I)V

    .line 409
    :cond_4
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getCurrentZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 410
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alivc/component/capture/VideoParam;->setMaxZoom(I)V

    .line 412
    :cond_5
    invoke-direct {p0, v0}, Lcom/alivc/component/capture/VideoPusher;->setPreviewSize(Landroid/hardware/Camera$Parameters;)V

    .line 413
    invoke-direct {p0, v0}, Lcom/alivc/component/capture/VideoPusher;->setPreviewFpsRange(Landroid/hardware/Camera$Parameters;)V

    .line 414
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getRotation()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alivc/component/capture/VideoPusher;->setPreviewOrientation(Landroid/hardware/Camera$Parameters;I)V

    .line 416
    :try_start_2
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 421
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start camera, parameters "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    sget-object v1, Lcom/alivc/component/capture/VideoPusher;->buffer:[B

    if-nez v1, :cond_6

    .line 423
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v2}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    sput-object v1, Lcom/alivc/component/capture/VideoPusher;->buffer:[B

    .line 425
    :cond_6
    sget-object v1, Lcom/alivc/component/capture/VideoPusher;->buffer1:[B

    if-nez v1, :cond_7

    .line 426
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v2}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    sput-object v1, Lcom/alivc/component/capture/VideoPusher;->buffer1:[B

    .line 428
    :cond_7
    sget-object v1, Lcom/alivc/component/capture/VideoPusher;->buffer2:[B

    if-nez v1, :cond_8

    .line 429
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v2}, Lcom/alivc/component/capture/VideoParam;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    sput-object v1, Lcom/alivc/component/capture/VideoPusher;->buffer2:[B

    .line 431
    :cond_8
    iget-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTextureId:I

    if-ltz v1, :cond_a

    .line 432
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 440
    :goto_3
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 441
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 442
    iput-boolean v5, p0, Lcom/alivc/component/capture/VideoPusher;->mPreviewRunning:Z

    goto/16 :goto_0

    .line 403
    :cond_9
    invoke-virtual {v0, v5}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    goto/16 :goto_1

    .line 434
    :cond_a
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 435
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    sget-object v2, Lcom/alivc/component/capture/VideoPusher;->buffer:[B

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 436
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    sget-object v2, Lcom/alivc/component/capture/VideoPusher;->buffer1:[B

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 437
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    sget-object v2, Lcom/alivc/component/capture/VideoPusher;->buffer2:[B

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 438
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_3

    :catch_2
    move-exception v1

    goto/16 :goto_2
.end method

.method private static turnLightOff(Landroid/hardware/Camera;)V
    .locals 6
    .param p0, "mCamera"    # Landroid/hardware/Camera;

    .prologue
    .line 148
    if-nez p0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 152
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 156
    .local v1, "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "flashMode":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 161
    const-string/jumbo v4, "off"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 163
    const-string/jumbo v4, "off"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 164
    const-string/jumbo v4, "off"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 166
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v3

    .line 168
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string/jumbo v4, "VideoPusher"

    const-string/jumbo v5, "FLASH_MODE_OFF not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static turnLightOn(Landroid/hardware/Camera;)V
    .locals 5
    .param p0, "mCamera"    # Landroid/hardware/Camera;

    .prologue
    .line 119
    if-nez p0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 123
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "flashMode":Ljava/lang/String;
    const-string/jumbo v4, "torch"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    const-string/jumbo v4, "torch"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    const-string/jumbo v4, "torch"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 138
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v3

    .line 140
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 181
    :cond_0
    iput-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 182
    iput-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    .line 183
    return-void
.end method

.method public getCurrentExposure()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 700
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 702
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v1

    .line 704
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentFps()I
    .locals 1

    .prologue
    .line 821
    iget v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCurrentFps:I

    return v0
.end method

.method public getCurrentZoom()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 723
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 725
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    .line 730
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getLastCaptureTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 813
    iget-wide v0, p0, Lcom/alivc/component/capture/VideoPusher;->mLastCaptureTime:J

    return-wide v0
.end method

.method public getMaxZoom()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 734
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 736
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 737
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    .line 741
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTransformMatrix([F)V
    .locals 1
    .param p1, "matrix"    # [F

    .prologue
    .line 833
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 838
    :goto_0
    return-void

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    goto :goto_0
.end method

.method public init(IIIIIIZZLandroid/content/Context;)V
    .locals 6
    .param p1, "source"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fps"    # I
    .param p5, "rotation"    # I
    .param p6, "customRotation"    # I
    .param p7, "surfaceCBMode"    # Z
    .param p8, "focusBySensor"    # Z
    .param p9, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    new-instance v0, Lcom/alivc/component/capture/VideoParam;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p1

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alivc/component/capture/VideoParam;-><init>(IIIII)V

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    .line 92
    iput-boolean p7, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    .line 93
    iput p6, p0, Lcom/alivc/component/capture/VideoPusher;->mCustomRotation:I

    .line 94
    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    if-eqz p9, :cond_1

    .line 98
    const-string/jumbo v0, "sensor"

    invoke-virtual {p9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mAccelSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mAccelSensor:Landroid/hardware/Sensor;

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mMagneticSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mMagneticSensor:Landroid/hardware/Sensor;

    .line 108
    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "MI MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "MIX"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "MIX 2"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorFocus:Z

    .line 111
    :cond_5
    if-eqz p8, :cond_6

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorFocus:Z

    .line 115
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "====> Init src: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSurfaceCbMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    return-void
.end method

.method public isPreviewRunning()Z
    .locals 1

    .prologue
    .line 891
    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mPreviewRunning:Z

    return v0
.end method

.method public isSupportAutoFocus()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 671
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 672
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 673
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 674
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "continuous-video"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 677
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupportFlash()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 681
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 683
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 684
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "torch"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 687
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pause(Z)V
    .locals 1
    .param p1, "useEmptyData"    # Z

    .prologue
    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mPause:Z

    .line 449
    return-void
.end method

.method public resume()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 455
    iget-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mPause:Z

    if-nez v1, :cond_0

    .line 468
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-virtual {p0}, Lcom/alivc/component/capture/VideoPusher;->stopInner()V

    .line 460
    :try_start_0
    invoke-virtual {p0}, Lcom/alivc/component/capture/VideoPusher;->startInner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mPause:Z

    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAutoFocus(Z)V
    .locals 4
    .param p1, "autoFocus"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 645
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 646
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v2}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v2

    if-nez v2, :cond_0

    .line 647
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 648
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 649
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_2

    .line 650
    iget-boolean v2, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorFocus:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 651
    const-string/jumbo v2, "auto"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 652
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 660
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_1
    iput-boolean p1, p0, Lcom/alivc/component/capture/VideoPusher;->mAutoFocus:Z

    .line 668
    return-void

    .line 654
    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    const-string/jumbo v2, "continuous-video"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_2
    const-string/jumbo v2, "auto"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :catch_0
    move-exception v1

    .line 662
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setExposure(I)V
    .locals 2
    .param p1, "exposure"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 691
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 693
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v1}, Lcom/alivc/component/capture/VideoParam;->getCurrentZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 697
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    return-void
.end method

.method public setFlashOn(Z)V
    .locals 1
    .param p1, "flash"    # Z

    .prologue
    .line 634
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 635
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v0

    if-nez v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->turnLightOn(Landroid/hardware/Camera;)V

    .line 641
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/alivc/component/capture/VideoPusher;->mFlashOn:Z

    .line 642
    return-void

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/alivc/component/capture/VideoPusher;->turnLightOff(Landroid/hardware/Camera;)V

    goto :goto_0
.end method

.method public setFocus(FF)V
    .locals 12
    .param p1, "xRatio"    # F
    .param p2, "yRatio"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/high16 v9, 0x44fa0000    # 2000.0f

    const/high16 v8, 0x447a0000    # 1000.0f

    .line 767
    iget-object v6, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-nez v6, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-object v6, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v6}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v6

    if-eq v6, v11, :cond_0

    .line 775
    iget-object v6, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 776
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "focusAreas is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 778
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v6

    if-eqz v6, :cond_0

    .line 782
    :cond_2
    iget-object v6, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v6, :cond_3

    .line 783
    iget-object v6, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 785
    :cond_3
    mul-float v6, p1, v9

    sub-float/2addr v6, v8

    float-to-int v4, v6

    .line 786
    .local v4, "x":I
    mul-float v6, p2, v9

    sub-float/2addr v6, v8

    float-to-int v5, v6

    .line 787
    .local v5, "y":I
    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v6, Landroid/graphics/Rect;

    add-int/lit8 v7, v4, -0x32

    add-int/lit8 v8, v5, -0x32

    add-int/lit8 v9, v4, 0x32

    add-int/lit8 v10, v5, 0x32

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, v6, v11}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    .line 788
    .local v0, "area":Landroid/hardware/Camera$Area;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 789
    .local v1, "areas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 792
    :try_start_0
    iget-object v6, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    :goto_1
    iget-object v6, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    new-instance v7, Lcom/alivc/component/capture/VideoPusher$3;

    invoke-direct {v7, p0}, Lcom/alivc/component/capture/VideoPusher$3;-><init>(Lcom/alivc/component/capture/VideoPusher;)V

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0

    .line 793
    :catch_0
    move-exception v3

    .line 794
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setLastCaptureTime(J)V
    .locals 1
    .param p1, "lastCaptureTime"    # J

    .prologue
    .line 817
    iput-wide p1, p0, Lcom/alivc/component/capture/VideoPusher;->mLastCaptureTime:J

    .line 818
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 203
    return-void
.end method

.method public setVideoSourceListener(Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    .prologue
    .line 805
    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusher;->mVideoSourceListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceListener;

    .line 806
    return-void
.end method

.method public setVideoSourceTextureListener(Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    .prologue
    .line 809
    iput-object p1, p0, Lcom/alivc/component/capture/VideoPusher;->mVideoSourceTextureListener:Lcom/alivc/component/capture/VideoPusher$VideoSourceTextureListener;

    .line 810
    return-void
.end method

.method public setZoom(F)V
    .locals 5
    .param p1, "scaleFactor"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 745
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_0

    .line 746
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 747
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 748
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v3}, Lcom/alivc/component/capture/VideoParam;->getCurrentZoom()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v2, v3

    .line 749
    .local v2, "zoomScaled":I
    if-gt v2, v4, :cond_1

    .line 750
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v3, v4}, Lcom/alivc/component/capture/VideoParam;->setCurrentZoom(I)V

    .line 756
    :goto_0
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v3}, Lcom/alivc/component/capture/VideoParam;->getCurrentZoom()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 758
    :try_start_0
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v2    # "zoomScaled":I
    :cond_0
    :goto_1
    return-void

    .line 751
    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v2    # "zoomScaled":I
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 752
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alivc/component/capture/VideoParam;->setCurrentZoom(I)V

    goto :goto_0

    .line 754
    :cond_2
    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v3, v2}, Lcom/alivc/component/capture/VideoParam;->setCurrentZoom(I)V

    goto :goto_0

    .line 759
    :catch_0
    move-exception v1

    .line 760
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public setZoom(I)V
    .locals 3
    .param p1, "zoom"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 708
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 709
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 710
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 711
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v2, p1}, Lcom/alivc/component/capture/VideoParam;->setCurrentZoom(I)V

    .line 712
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v2}, Lcom/alivc/component/capture/VideoParam;->getCurrentZoom()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 714
    :try_start_0
    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-void

    .line 715
    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v1

    .line 716
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public start(I)V
    .locals 3
    .param p1, "surfaceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 318
    iget-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    if-eqz v1, :cond_2

    if-ltz p1, :cond_2

    .line 319
    iput p1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTextureId:I

    .line 320
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 322
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 324
    :cond_0
    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTextureId:I

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 332
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alivc/component/capture/VideoPusher;->startInner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    return-void

    .line 325
    :cond_2
    iget-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    if-eqz v1, :cond_1

    if-gez p1, :cond_1

    .line 326
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    .line 327
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_1

    .line 328
    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method

.method public startInner()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x2

    .line 340
    :try_start_0
    invoke-direct {p0}, Lcom/alivc/component/capture/VideoPusher;->startPreview0()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    iget-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mFlashOn:Z

    if-eqz v1, :cond_0

    .line 350
    iget-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mFlashOn:Z

    invoke-virtual {p0, v1}, Lcom/alivc/component/capture/VideoPusher;->setFlashOn(Z)V

    .line 352
    :cond_0
    iget-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mAutoFocus:Z

    if-eqz v1, :cond_1

    .line 353
    iget-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mAutoFocus:Z

    invoke-virtual {p0, v1}, Lcom/alivc/component/capture/VideoPusher;->setAutoFocus(Z)V

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorFocus:Z

    if-eqz v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mAccelSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 357
    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/alivc/component/capture/VideoPusher;->mMagneticSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 359
    :cond_2
    return-void

    .line 342
    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/alivc/component/capture/VideoPusher;->stopInner()V

    .line 344
    :try_start_1
    invoke-direct {p0}, Lcom/alivc/component/capture/VideoPusher;->startPreview0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 345
    :catch_1
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/alivc/component/capture/VideoPusher;->stopInner()V

    .line 309
    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceCbMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 312
    const/4 v0, -0x1

    iput v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTextureId:I

    .line 314
    :cond_0
    return-void
.end method

.method public stopInner()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorFocus:Z

    if-eqz v0, :cond_0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/alivc/component/capture/VideoPusher;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mPreviewRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 298
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 299
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 300
    iput-object v2, p0, Lcom/alivc/component/capture/VideoPusher;->mCamera:Landroid/hardware/Camera;

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/component/capture/VideoPusher;->mPreviewRunning:Z

    .line 304
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public switchCamera()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    invoke-virtual {v0}, Lcom/alivc/component/capture/VideoParam;->getCameraId()I

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alivc/component/capture/VideoParam;->setCameraId(I)V

    .line 192
    :goto_0
    invoke-virtual {p0}, Lcom/alivc/component/capture/VideoPusher;->stopInner()V

    .line 193
    invoke-virtual {p0}, Lcom/alivc/component/capture/VideoPusher;->startInner()V

    .line 194
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mParam:Lcom/alivc/component/capture/VideoParam;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alivc/component/capture/VideoParam;->setCameraId(I)V

    goto :goto_0
.end method

.method public updateTexImage()I
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 826
    const/4 v0, -0x1

    .line 829
    :goto_0
    return v0

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/alivc/component/capture/VideoPusher;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 829
    const/4 v0, 0x0

    goto :goto_0
.end method

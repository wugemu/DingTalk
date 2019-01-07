.class final Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$3;
.super Ljava/lang/Object;
.source "FaceCircleWorkspace.java"

# interfaces
.implements Lcom/alipay/mobile/security/faceauth/model/DetectTimerTask$TimerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->startTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$3;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final countdown(I)V
    .locals 3
    .param p1, "lefttime"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SensorTimerTask countdown:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 224
    if-lez p1, :cond_0

    .line 228
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSensorCollectors getData"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$3;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->d(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->getData()Lcom/alipay/mobile/security/bio/sensor/SensorData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$3;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->e(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace$3;->a:Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;

    invoke-static {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;->d(Lcom/alipay/mobile/security/faceauth/circle/workspace/FaceCircleWorkspace;)Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/security/bio/sensor/SensorCollectors;->getData()Lcom/alipay/mobile/security/bio/sensor/SensorData;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

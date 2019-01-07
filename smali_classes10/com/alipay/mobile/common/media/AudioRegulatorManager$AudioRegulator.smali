.class public Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;
.super Ljava/lang/Object;
.source "AudioRegulatorManager.java"


# instance fields
.field public a:Liml;

.field private b:Landroid/media/AudioManager;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->b:Landroid/media/AudioManager;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->b:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->c:I

    .line 57
    :cond_0
    return-void
.end method

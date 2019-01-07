.class public final Limj;
.super Ljava/lang/Object;
.source "AudioRegulatorManager.java"


# static fields
.field static final a:I

.field static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Limj;->a:I

    .line 18
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Limj;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;
    .locals 4

    .prologue
    .line 25
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "AudioRegulatorManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deviceModel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Limj;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Likq;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;-><init>(Landroid/content/Context;)V

    .line 28
    const-string/jumbo v0, "MB860"

    sget-object v2, Limj;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Limm;

    invoke-direct {v0}, Limm;-><init>()V

    .line 2060
    :goto_0
    iput-object v0, v1, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Liml;

    .line 38
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v0, "M040"

    sget-object v2, Limj;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Limn;

    invoke-direct {v0}, Limn;-><init>()V

    goto :goto_0

    .line 1169
    :cond_1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1170
    if-eqz v0, :cond_2

    .line 1171
    const-string/jumbo v2, "samsung"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 32
    :goto_1
    if-eqz v0, :cond_3

    .line 33
    new-instance v0, Limo;

    invoke-direct {v0}, Limo;-><init>()V

    goto :goto_0

    .line 1173
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 35
    :cond_3
    new-instance v0, Limk;

    invoke-direct {v0}, Limk;-><init>()V

    goto :goto_0
.end method

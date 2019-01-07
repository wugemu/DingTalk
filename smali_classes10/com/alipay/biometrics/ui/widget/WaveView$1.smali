.class synthetic Lcom/alipay/biometrics/ui/widget/WaveView$1;
.super Ljava/lang/Object;
.source "WaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/biometrics/ui/widget/WaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$alipay$biometrics$ui$widget$WaveView$ShapeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 291
    invoke-static {}, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;->values()[Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alipay/biometrics/ui/widget/WaveView$1;->$SwitchMap$com$alipay$biometrics$ui$widget$WaveView$ShapeType:[I

    :try_start_0
    sget-object v0, Lcom/alipay/biometrics/ui/widget/WaveView$1;->$SwitchMap$com$alipay$biometrics$ui$widget$WaveView$ShapeType:[I

    sget-object v1, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;->CIRCLE:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    invoke-virtual {v1}, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/alipay/biometrics/ui/widget/WaveView$1;->$SwitchMap$com$alipay$biometrics$ui$widget$WaveView$ShapeType:[I

    sget-object v1, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;->SQUARE:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    invoke-virtual {v1}, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.class public final enum Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;
.super Ljava/lang/Enum;
.source "WaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/biometrics/ui/widget/WaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShapeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

.field public static final enum CIRCLE:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

.field public static final enum SQUARE:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    const-string/jumbo v1, "CIRCLE"

    invoke-direct {v0, v1, v2}, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;->CIRCLE:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    .line 59
    new-instance v0, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    const-string/jumbo v1, "SQUARE"

    invoke-direct {v0, v1, v3}, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;->SQUARE:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    sget-object v1, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;->CIRCLE:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;->SQUARE:Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;->$VALUES:[Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;->$VALUES:[Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    invoke-virtual {v0}, [Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/biometrics/ui/widget/WaveView$ShapeType;

    return-object v0
.end method

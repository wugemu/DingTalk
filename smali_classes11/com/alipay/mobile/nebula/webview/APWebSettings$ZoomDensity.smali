.class public final enum Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;
.super Ljava/lang/Enum;
.source "APWebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/webview/APWebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomDensity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

.field public static final enum CLOSE:Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

.field public static final enum FAR:Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

.field public static final enum MEDIUM:Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 256
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    const-string/jumbo v1, "FAR"

    const/16 v2, 0x96

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->FAR:Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    .line 257
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    const-string/jumbo v1, "MEDIUM"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->MEDIUM:Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    .line 258
    new-instance v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    const-string/jumbo v1, "CLOSE"

    const/16 v2, 0x4b

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->CLOSE:Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    .line 255
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->FAR:Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->MEDIUM:Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->CLOSE:Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->$VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 263
    iput p3, p0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->value:I

    .line 264
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 255
    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->$VALUES:[Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    invoke-virtual {v0}, [Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;->value:I

    return v0
.end method

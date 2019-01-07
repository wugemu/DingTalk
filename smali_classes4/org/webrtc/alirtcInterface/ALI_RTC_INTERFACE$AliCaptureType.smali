.class public final enum Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;
.super Ljava/lang/Enum;
.source "ALI_RTC_INTERFACE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AliCaptureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

.field public static final enum SDK_Capture_Typ_Back:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

.field public static final enum SDK_Capture_Typ_Front:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

.field public static final enum SDK_Capture_Typ_Invalid:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;


# instance fields
.field private captureType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 90
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    const-string/jumbo v1, "SDK_Capture_Typ_Invalid"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->SDK_Capture_Typ_Invalid:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    .line 91
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    const-string/jumbo v1, "SDK_Capture_Typ_Back"

    invoke-direct {v0, v1, v4, v3}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->SDK_Capture_Typ_Back:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    .line 92
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    const-string/jumbo v1, "SDK_Capture_Typ_Front"

    invoke-direct {v0, v1, v5, v4}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->SDK_Capture_Typ_Front:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->SDK_Capture_Typ_Invalid:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->SDK_Capture_Typ_Back:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->SDK_Capture_Typ_Front:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->$VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "captureType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->captureType:I

    .line 97
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->$VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    invoke-virtual {v0}, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;

    return-object v0
.end method


# virtual methods
.method public final getCaptureType()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliCaptureType;->captureType:I

    return v0
.end method

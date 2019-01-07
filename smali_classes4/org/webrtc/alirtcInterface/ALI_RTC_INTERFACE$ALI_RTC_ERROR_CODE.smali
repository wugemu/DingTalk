.class final enum Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;
.super Ljava/lang/Enum;
.source "ALI_RTC_INTERFACE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ALI_RTC_ERROR_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;

.field public static final enum RTC_ERROR_NONE:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;

.field public static final enum RTC_ERROR_NORMAL:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;

    const-string/jumbo v1, "RTC_ERROR_NONE"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;->RTC_ERROR_NONE:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;

    .line 106
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;

    const-string/jumbo v1, "RTC_ERROR_NORMAL"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;->RTC_ERROR_NORMAL:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;->RTC_ERROR_NONE:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;->RTC_ERROR_NORMAL:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;

    aput-object v1, v0, v3

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;->$VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    const-class v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;->$VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;

    invoke-virtual {v0}, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$ALI_RTC_ERROR_CODE;

    return-object v0
.end method

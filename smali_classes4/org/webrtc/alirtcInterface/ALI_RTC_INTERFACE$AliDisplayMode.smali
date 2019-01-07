.class public final enum Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;
.super Ljava/lang/Enum;
.source "ALI_RTC_INTERFACE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AliDisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

.field public static final enum AliRTCSdk_Auto_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

.field public static final enum AliRTCSdk_FillBlcak_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

.field public static final enum AliRTCSdk_FullOf_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

.field public static final enum AliRTCSdk_Scale_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    const-string/jumbo v1, "AliRTCSdk_Auto_Mode"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->AliRTCSdk_Auto_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    .line 180
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    const-string/jumbo v1, "AliRTCSdk_FullOf_Mode"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->AliRTCSdk_FullOf_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    .line 181
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    const-string/jumbo v1, "AliRTCSdk_FillBlcak_Mode"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->AliRTCSdk_FillBlcak_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    .line 182
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    const-string/jumbo v1, "AliRTCSdk_Scale_Mode"

    invoke-direct {v0, v1, v5}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->AliRTCSdk_Scale_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    .line 178
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->AliRTCSdk_Auto_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->AliRTCSdk_FullOf_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->AliRTCSdk_FillBlcak_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->AliRTCSdk_Scale_Mode:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    aput-object v1, v0, v5

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->$VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

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
    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    const-class v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->$VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    invoke-virtual {v0}, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$AliDisplayMode;

    return-object v0
.end method

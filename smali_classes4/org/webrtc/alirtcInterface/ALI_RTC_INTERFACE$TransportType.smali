.class public final enum Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;
.super Ljava/lang/Enum;
.source "ALI_RTC_INTERFACE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransportType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

.field public static final enum Transport_Audio_TYPE:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

.field public static final enum Transport_Mix_TYPE:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

.field public static final enum Transport_Video_TYPE:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;


# instance fields
.field private transportTyoe:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    const-string/jumbo v1, "Transport_Video_TYPE"

    invoke-direct {v0, v1, v2, v2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;->Transport_Video_TYPE:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    .line 76
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    const-string/jumbo v1, "Transport_Audio_TYPE"

    invoke-direct {v0, v1, v3, v3}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;->Transport_Audio_TYPE:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    .line 77
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    const-string/jumbo v1, "Transport_Mix_TYPE"

    invoke-direct {v0, v1, v4, v4}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;->Transport_Mix_TYPE:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;->Transport_Video_TYPE:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;->Transport_Audio_TYPE:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;->Transport_Mix_TYPE:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;->$VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "transportTyoe"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;->transportTyoe:I

    .line 82
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;->$VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    invoke-virtual {v0}, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportType;->transportTyoe:I

    return v0
.end method

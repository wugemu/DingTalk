.class public final enum Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;
.super Ljava/lang/Enum;
.source "ALI_RTC_INTERFACE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransportStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

.field public static final enum Transport_BAD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

.field public static final enum Transport_GOOD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

.field public static final enum Transport_NORMAL:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

.field public static final enum Transport_UNKNOW:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

.field public static final enum Transport_VERY_BAD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

.field public static final enum Transport_VERY_GOOD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;


# instance fields
.field private transport:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 57
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    const-string/jumbo v1, "Transport_VERY_GOOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_VERY_GOOD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    .line 58
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    const-string/jumbo v1, "Transport_GOOD"

    invoke-direct {v0, v1, v3, v4}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_GOOD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    .line 59
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    const-string/jumbo v1, "Transport_NORMAL"

    invoke-direct {v0, v1, v4, v5}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_NORMAL:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    .line 60
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    const-string/jumbo v1, "Transport_BAD"

    invoke-direct {v0, v1, v5, v6}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_BAD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    .line 61
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    const-string/jumbo v1, "Transport_VERY_BAD"

    invoke-direct {v0, v1, v6, v7}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_VERY_BAD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    .line 62
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    const-string/jumbo v1, "Transport_UNKNOW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_UNKNOW:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    const/4 v1, 0x0

    sget-object v2, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_VERY_GOOD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    aput-object v2, v0, v1

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_GOOD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_NORMAL:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_BAD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    aput-object v1, v0, v5

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_VERY_BAD:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    aput-object v1, v0, v6

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->Transport_UNKNOW:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    aput-object v1, v0, v7

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->$VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "transport"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->transport:I

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->$VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    invoke-virtual {v0}, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$TransportStatus;->transport:I

    return v0
.end method

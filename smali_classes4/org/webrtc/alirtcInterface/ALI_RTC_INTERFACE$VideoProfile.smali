.class public final enum Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;
.super Ljava/lang/Enum;
.source "ALI_RTC_INTERFACE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

.field public static final enum Video_Profile_160_120:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

.field public static final enum Video_Profile_240_180:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

.field public static final enum Video_Profile_320_180:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

.field public static final enum Video_Profile_640_360:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

.field public static final enum ideo_Profile_1280_7200:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    const-string/jumbo v1, "Video_Profile_160_120"

    invoke-direct {v0, v1, v2}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;->Video_Profile_160_120:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    .line 146
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    const-string/jumbo v1, "Video_Profile_240_180"

    invoke-direct {v0, v1, v3}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;->Video_Profile_240_180:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    .line 147
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    const-string/jumbo v1, "Video_Profile_320_180"

    invoke-direct {v0, v1, v4}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;->Video_Profile_320_180:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    .line 148
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    const-string/jumbo v1, "Video_Profile_640_360"

    invoke-direct {v0, v1, v5}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;->Video_Profile_640_360:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    .line 149
    new-instance v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    const-string/jumbo v1, "ideo_Profile_1280_7200"

    invoke-direct {v0, v1, v6}, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;->ideo_Profile_1280_7200:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    .line 132
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;->Video_Profile_160_120:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    aput-object v1, v0, v2

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;->Video_Profile_240_180:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    aput-object v1, v0, v3

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;->Video_Profile_320_180:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;->Video_Profile_640_360:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    aput-object v1, v0, v5

    sget-object v1, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;->ideo_Profile_1280_7200:Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    aput-object v1, v0, v6

    sput-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;->$VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

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
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 132
    const-class v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;->$VALUES:[Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    invoke-virtual {v0}, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/alirtcInterface/ALI_RTC_INTERFACE$VideoProfile;

    return-object v0
.end method

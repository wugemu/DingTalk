.class public Lorg/webrtc/utils/RecvStatsReportCommon;
.super Ljava/lang/Object;
.source "RecvStatsReportCommon.java"


# static fields
.field public static final OS_VERSION:Ljava/lang/String;

.field public static final cpu_band:Ljava/lang/String;

.field public static final model:Ljava/lang/String;

.field public static final model_phone_brand:Ljava/lang/String;

.field public static final sdk_platform:Ljava/lang/String; = "Android"

.field public static final uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lorg/webrtc/utils/RecvStatsReportCommon;->OS_VERSION:Ljava/lang/String;

    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/webrtc/utils/RecvStatsReportCommon;->uuid:Ljava/lang/String;

    .line 23
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sput-object v0, Lorg/webrtc/utils/RecvStatsReportCommon;->cpu_band:Ljava/lang/String;

    .line 24
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lorg/webrtc/utils/RecvStatsReportCommon;->model_phone_brand:Ljava/lang/String;

    .line 25
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lorg/webrtc/utils/RecvStatsReportCommon;->model:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

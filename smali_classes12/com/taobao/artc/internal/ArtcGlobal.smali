.class public Lcom/taobao/artc/internal/ArtcGlobal;
.super Ljava/lang/Object;
.source "ArtcGlobal.java"


# static fields
.field public static builtinAudioPreprocess:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static builtinNS:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static bypassVideoPreprocess:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static context:Landroid/content/Context;

.field public static isAccsConnectd:Z

.field public static isAccsInit:I

.field public static x264Ultrafast:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    sget-object v0, Lcom/taobao/artc/internal/ADefines$AccsStatus;->ARTC_ACCS_UNINIT:Lcom/taobao/artc/internal/ADefines$AccsStatus;

    invoke-virtual {v0}, Lcom/taobao/artc/internal/ADefines$AccsStatus;->ordinal()I

    move-result v0

    sput v0, Lcom/taobao/artc/internal/ArtcGlobal;->isAccsInit:I

    .line 14
    sput-boolean v1, Lcom/taobao/artc/internal/ArtcGlobal;->isAccsConnectd:Z

    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/taobao/artc/internal/ArtcGlobal;->builtinAudioPreprocess:Z

    .line 20
    sput-boolean v1, Lcom/taobao/artc/internal/ArtcGlobal;->builtinNS:Z

    .line 22
    sput-boolean v1, Lcom/taobao/artc/internal/ArtcGlobal;->x264Ultrafast:Z

    .line 24
    sput-boolean v1, Lcom/taobao/artc/internal/ArtcGlobal;->bypassVideoPreprocess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

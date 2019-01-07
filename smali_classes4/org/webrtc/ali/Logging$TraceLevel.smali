.class public final enum Lorg/webrtc/ali/Logging$TraceLevel;
.super Ljava/lang/Enum;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/Logging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TraceLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/webrtc/ali/Logging$TraceLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/webrtc/ali/Logging$TraceLevel;

.field public static final enum TRACE_ALL:Lorg/webrtc/ali/Logging$TraceLevel;

.field public static final enum TRACE_APICALL:Lorg/webrtc/ali/Logging$TraceLevel;

.field public static final enum TRACE_CRITICAL:Lorg/webrtc/ali/Logging$TraceLevel;

.field public static final enum TRACE_DEBUG:Lorg/webrtc/ali/Logging$TraceLevel;

.field public static final enum TRACE_DEFAULT:Lorg/webrtc/ali/Logging$TraceLevel;

.field public static final enum TRACE_ERROR:Lorg/webrtc/ali/Logging$TraceLevel;

.field public static final enum TRACE_INFO:Lorg/webrtc/ali/Logging$TraceLevel;

.field public static final enum TRACE_MEMORY:Lorg/webrtc/ali/Logging$TraceLevel;

.field public static final enum TRACE_MODULECALL:Lorg/webrtc/ali/Logging$TraceLevel;

.field public static final enum TRACE_NONE:Lorg/webrtc/ali/Logging$TraceLevel;

.field public static final enum TRACE_STATEINFO:Lorg/webrtc/ali/Logging$TraceLevel;

.field public static final enum TRACE_STREAM:Lorg/webrtc/ali/Logging$TraceLevel;

.field public static final enum TRACE_TERSEINFO:Lorg/webrtc/ali/Logging$TraceLevel;

.field public static final enum TRACE_TIMER:Lorg/webrtc/ali/Logging$TraceLevel;

.field public static final enum TRACE_WARNING:Lorg/webrtc/ali/Logging$TraceLevel;


# instance fields
.field public final level:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    new-instance v0, Lorg/webrtc/ali/Logging$TraceLevel;

    const-string/jumbo v1, "TRACE_NONE"

    invoke-direct {v0, v1, v4, v4}, Lorg/webrtc/ali/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_NONE:Lorg/webrtc/ali/Logging$TraceLevel;

    .line 59
    new-instance v0, Lorg/webrtc/ali/Logging$TraceLevel;

    const-string/jumbo v1, "TRACE_STATEINFO"

    invoke-direct {v0, v1, v5, v5}, Lorg/webrtc/ali/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_STATEINFO:Lorg/webrtc/ali/Logging$TraceLevel;

    .line 60
    new-instance v0, Lorg/webrtc/ali/Logging$TraceLevel;

    const-string/jumbo v1, "TRACE_WARNING"

    invoke-direct {v0, v1, v6, v6}, Lorg/webrtc/ali/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_WARNING:Lorg/webrtc/ali/Logging$TraceLevel;

    .line 61
    new-instance v0, Lorg/webrtc/ali/Logging$TraceLevel;

    const-string/jumbo v1, "TRACE_ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lorg/webrtc/ali/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_ERROR:Lorg/webrtc/ali/Logging$TraceLevel;

    .line 62
    new-instance v0, Lorg/webrtc/ali/Logging$TraceLevel;

    const-string/jumbo v1, "TRACE_CRITICAL"

    invoke-direct {v0, v1, v7, v8}, Lorg/webrtc/ali/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_CRITICAL:Lorg/webrtc/ali/Logging$TraceLevel;

    .line 63
    new-instance v0, Lorg/webrtc/ali/Logging$TraceLevel;

    const-string/jumbo v1, "TRACE_APICALL"

    const/4 v2, 0x5

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/ali/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_APICALL:Lorg/webrtc/ali/Logging$TraceLevel;

    .line 64
    new-instance v0, Lorg/webrtc/ali/Logging$TraceLevel;

    const-string/jumbo v1, "TRACE_DEFAULT"

    const/4 v2, 0x6

    const/16 v3, 0xff

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/ali/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_DEFAULT:Lorg/webrtc/ali/Logging$TraceLevel;

    .line 65
    new-instance v0, Lorg/webrtc/ali/Logging$TraceLevel;

    const-string/jumbo v1, "TRACE_MODULECALL"

    const/4 v2, 0x7

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/ali/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_MODULECALL:Lorg/webrtc/ali/Logging$TraceLevel;

    .line 66
    new-instance v0, Lorg/webrtc/ali/Logging$TraceLevel;

    const-string/jumbo v1, "TRACE_MEMORY"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v8, v2}, Lorg/webrtc/ali/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_MEMORY:Lorg/webrtc/ali/Logging$TraceLevel;

    .line 67
    new-instance v0, Lorg/webrtc/ali/Logging$TraceLevel;

    const-string/jumbo v1, "TRACE_TIMER"

    const/16 v2, 0x9

    const/16 v3, 0x200

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/ali/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_TIMER:Lorg/webrtc/ali/Logging$TraceLevel;

    .line 68
    new-instance v0, Lorg/webrtc/ali/Logging$TraceLevel;

    const-string/jumbo v1, "TRACE_STREAM"

    const/16 v2, 0xa

    const/16 v3, 0x400

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/ali/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_STREAM:Lorg/webrtc/ali/Logging$TraceLevel;

    .line 69
    new-instance v0, Lorg/webrtc/ali/Logging$TraceLevel;

    const-string/jumbo v1, "TRACE_DEBUG"

    const/16 v2, 0xb

    const/16 v3, 0x800

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/ali/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_DEBUG:Lorg/webrtc/ali/Logging$TraceLevel;

    .line 70
    new-instance v0, Lorg/webrtc/ali/Logging$TraceLevel;

    const-string/jumbo v1, "TRACE_INFO"

    const/16 v2, 0xc

    const/16 v3, 0x1000

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/ali/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_INFO:Lorg/webrtc/ali/Logging$TraceLevel;

    .line 71
    new-instance v0, Lorg/webrtc/ali/Logging$TraceLevel;

    const-string/jumbo v1, "TRACE_TERSEINFO"

    const/16 v2, 0xd

    const/16 v3, 0x2000

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/ali/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_TERSEINFO:Lorg/webrtc/ali/Logging$TraceLevel;

    .line 72
    new-instance v0, Lorg/webrtc/ali/Logging$TraceLevel;

    const-string/jumbo v1, "TRACE_ALL"

    const/16 v2, 0xe

    const v3, 0xffff

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/ali/Logging$TraceLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_ALL:Lorg/webrtc/ali/Logging$TraceLevel;

    .line 57
    const/16 v0, 0xf

    new-array v0, v0, [Lorg/webrtc/ali/Logging$TraceLevel;

    sget-object v1, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_NONE:Lorg/webrtc/ali/Logging$TraceLevel;

    aput-object v1, v0, v4

    sget-object v1, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_STATEINFO:Lorg/webrtc/ali/Logging$TraceLevel;

    aput-object v1, v0, v5

    sget-object v1, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_WARNING:Lorg/webrtc/ali/Logging$TraceLevel;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_ERROR:Lorg/webrtc/ali/Logging$TraceLevel;

    aput-object v2, v0, v1

    sget-object v1, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_CRITICAL:Lorg/webrtc/ali/Logging$TraceLevel;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_APICALL:Lorg/webrtc/ali/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_DEFAULT:Lorg/webrtc/ali/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_MODULECALL:Lorg/webrtc/ali/Logging$TraceLevel;

    aput-object v2, v0, v1

    sget-object v1, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_MEMORY:Lorg/webrtc/ali/Logging$TraceLevel;

    aput-object v1, v0, v8

    const/16 v1, 0x9

    sget-object v2, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_TIMER:Lorg/webrtc/ali/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_STREAM:Lorg/webrtc/ali/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_DEBUG:Lorg/webrtc/ali/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_INFO:Lorg/webrtc/ali/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_TERSEINFO:Lorg/webrtc/ali/Logging$TraceLevel;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/webrtc/ali/Logging$TraceLevel;->TRACE_ALL:Lorg/webrtc/ali/Logging$TraceLevel;

    aput-object v2, v0, v1

    sput-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->$VALUES:[Lorg/webrtc/ali/Logging$TraceLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput p3, p0, Lorg/webrtc/ali/Logging$TraceLevel;->level:I

    .line 77
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/webrtc/ali/Logging$TraceLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lorg/webrtc/ali/Logging$TraceLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/webrtc/ali/Logging$TraceLevel;

    return-object v0
.end method

.method public static values()[Lorg/webrtc/ali/Logging$TraceLevel;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/webrtc/ali/Logging$TraceLevel;->$VALUES:[Lorg/webrtc/ali/Logging$TraceLevel;

    invoke-virtual {v0}, [Lorg/webrtc/ali/Logging$TraceLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/webrtc/ali/Logging$TraceLevel;

    return-object v0
.end method

.class public Lcom/laiwang/protocol/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static FILE_LOG_LEVEL:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

.field public static FILE_LOG_PRINT_TRACE:Z

.field public static _UID:Ljava/lang/String;

.field public static final a:Ljava/lang/String;

.field public static b:Z

.field public static c:Z

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:I

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 17
    invoke-static {}, Lcom/laiwang/protocol/android/cm;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/Config;->a:Ljava/lang/String;

    .line 37
    sput-boolean v1, Lcom/laiwang/protocol/Config;->b:Z

    .line 39
    sget-object v0, Lcom/laiwang/protocol/android/log/TraceLogger$Level;->INFO:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    sput-object v0, Lcom/laiwang/protocol/Config;->FILE_LOG_LEVEL:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/laiwang/protocol/Config;->FILE_LOG_PRINT_TRACE:Z

    .line 43
    sput-boolean v1, Lcom/laiwang/protocol/Config;->c:Z

    .line 45
    const-string/jumbo v0, ""

    sput-object v0, Lcom/laiwang/protocol/Config;->d:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, ""

    sput-object v0, Lcom/laiwang/protocol/Config;->_UID:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, ""

    sput-object v0, Lcom/laiwang/protocol/Config;->e:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, ""

    sput-object v0, Lcom/laiwang/protocol/Config;->f:Ljava/lang/String;

    .line 54
    const v0, 0x9c40

    sput v0, Lcom/laiwang/protocol/Config;->g:I

    .line 63
    const-string/jumbo v0, "Android"

    sput-object v0, Lcom/laiwang/protocol/Config;->h:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "https://www.dingtalk.com/"

    sput-object v0, Lcom/laiwang/protocol/Config;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

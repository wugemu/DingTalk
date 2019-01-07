.class public final enum Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
.super Ljava/lang/Enum;
.source "ExceptionID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final enum MONITORPOINT_BIZ_EXCEPTION:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final enum MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final enum MONITORPOINT_CONNECTERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final enum MONITORPOINT_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final enum MONITORPOINT_IGNORE_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final enum MONITORPOINT_INVALID_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final enum MONITORPOINT_SUB_THREAD_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final UNKNOWN_THREAD:Ljava/lang/String; = "unknown"

.field private static final sStringToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 15
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v2, "MONITORPOINT_CRASH"

    const-string/jumbo v3, "MonitorPoint_Crash"

    invoke-direct {v1, v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 20
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v2, "MONITORPOINT_IGNORE_CRASH"

    const-string/jumbo v3, "MonitorPoint_Ignore_Crash"

    invoke-direct {v1, v2, v5, v3}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_IGNORE_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 25
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v2, "MONITORPOINT_INVALID_CRASH"

    const-string/jumbo v3, "MonitorPoint_Invalid_Crash"

    invoke-direct {v1, v2, v6, v3}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_INVALID_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 30
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v2, "MONITORPOINT_SUB_THREAD_CRASH"

    const-string/jumbo v3, "MonitorPoint_Sub_Thread_Crash"

    invoke-direct {v1, v2, v7, v3}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_SUB_THREAD_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 35
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v2, "MONITORPOINT_CLIENTSERR"

    const-string/jumbo v3, "MonitorPoint_ClientsErr"

    invoke-direct {v1, v2, v8, v3}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 40
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v2, "MONITORPOINT_CONNECTERR"

    const/4 v3, 0x5

    const-string/jumbo v4, "MonitorPoint_ConnectErr"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CONNECTERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 45
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v2, "MONITORPOINT_BIZ_EXCEPTION"

    const/4 v3, 0x6

    const-string/jumbo v4, "MonitorPoint_Biz_Exception"

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_BIZ_EXCEPTION:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 10
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    aput-object v2, v1, v0

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_IGNORE_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    aput-object v2, v1, v5

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_INVALID_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    aput-object v2, v1, v6

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_SUB_THREAD_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    aput-object v2, v1, v7

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CONNECTERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_BIZ_EXCEPTION:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    aput-object v3, v1, v2

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->sStringToEnum:Ljava/util/Map;

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->values()[Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 65
    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->sStringToEnum:Ljava/util/Map;

    iget-object v5, v3, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->desc:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->desc:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->sStringToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    return-object v0
.end method


# virtual methods
.method public final getDes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->desc:Ljava/lang/String;

    return-object v0
.end method

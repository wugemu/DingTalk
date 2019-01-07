.class public Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;
.super Ljava/lang/Object;
.source "H5MonitorLogConfig.java"


# static fields
.field public static final BEHAVIOR_HEADER:Ljava/lang/String; = "HD-VM"

.field public static final H5EXCEPTION_TYPE:Ljava/lang/String; = "H5Exception"

.field public static final MONITOR_HEADER:Ljava/lang/String; = "H-MM"

.field public static final WEBAPP_TYPE:Ljava/lang/String; = "webapp"


# instance fields
.field private logHeader:Ljava/lang/String;

.field private logType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newH5MonitorLogConfig()Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;-><init>()V

    .line 19
    .local v0, "monitorLogConfig":Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;
    return-object v0
.end method


# virtual methods
.method public getLogHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->logHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getLogType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->logType:Ljava/lang/String;

    return-object v0
.end method

.method public setLogHeader(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;
    .locals 0
    .param p1, "logHeader"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->logHeader:Ljava/lang/String;

    .line 31
    return-object p0
.end method

.method public setLogType(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;
    .locals 0
    .param p1, "logType"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->logType:Ljava/lang/String;

    .line 26
    return-object p0
.end method

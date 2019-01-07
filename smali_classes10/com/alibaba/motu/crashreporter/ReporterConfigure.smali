.class public Lcom/alibaba/motu/crashreporter/ReporterConfigure;
.super Ljava/lang/Object;
.source "ReporterConfigure.java"


# instance fields
.field public closeMainLooperMonitor:Z

.field public enabeANRTimeoutInterval:I

.field public enabeMainLooperTimeoutInterval:J

.field public enableANRMainThreadOnly:Z

.field public enableAbortCount:Z

.field public enableActivityMonitor:Z

.field public enableBreakPadDump:Z

.field public enableCatchANRException:Z

.field public enableCatchNativeException:Z

.field public enableCatchUncaughtException:Z

.field public enableDebug:Z

.field public enableDeduplication:Z

.field public enableDumpAllThread:Z

.field public enableDumpAppLog:Z

.field public enableDumpEventsLog:Z

.field public enableDumpRadioLog:Z

.field public enableDumpSysLog:Z

.field public enableExternalLinster:Z

.field public enableFinalizeFake:Z

.field public enableMaxThreadNumber:I

.field public enableMaxThreadStackTraceNumber:I

.field public enableSecuritySDK:Z

.field public enableStartCount:Z

.field public enableSysLogcatLinkMaxCount:I

.field public enableSysLogcatMaxCount:I

.field public enableUIProcessSafeGuard:Z

.field public enableUncaughtExceptionIgnore:Z

.field public isCloseMainLooperSampling:Z

.field public sendOnLaunchDelay:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v3, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableUncaughtExceptionIgnore:Z

    .line 12
    iput-boolean v3, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableExternalLinster:Z

    .line 13
    iput-boolean v3, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableFinalizeFake:Z

    .line 18
    iput-boolean v3, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableCatchUncaughtException:Z

    .line 22
    iput-boolean v3, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableCatchNativeException:Z

    .line 26
    iput-boolean v3, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableCatchANRException:Z

    .line 31
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enabeMainLooperTimeoutInterval:J

    .line 36
    iput-boolean v2, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->isCloseMainLooperSampling:Z

    .line 41
    iput-boolean v2, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableANRMainThreadOnly:Z

    .line 46
    iput-boolean v2, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->closeMainLooperMonitor:Z

    .line 51
    iput-boolean v3, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableStartCount:Z

    .line 55
    iput v2, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->sendOnLaunchDelay:I

    .line 59
    iput-boolean v3, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableActivityMonitor:Z

    .line 63
    iput-boolean v2, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableDumpSysLog:Z

    .line 67
    iput-boolean v2, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableDumpEventsLog:Z

    .line 71
    iput-boolean v2, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableDumpRadioLog:Z

    .line 75
    iput-boolean v2, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableDumpAppLog:Z

    .line 80
    iput-boolean v2, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableDumpAllThread:Z

    .line 85
    iput-boolean v2, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableDebug:Z

    .line 90
    const/16 v0, 0x1388

    iput v0, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enabeANRTimeoutInterval:I

    .line 95
    iput-boolean v2, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableDeduplication:Z

    .line 100
    iput-boolean v2, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableAbortCount:Z

    .line 105
    iput-boolean v2, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableUIProcessSafeGuard:Z

    .line 110
    iput-boolean v3, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableSecuritySDK:Z

    .line 115
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableMaxThreadNumber:I

    .line 121
    const/16 v0, 0x40

    iput v0, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableMaxThreadStackTraceNumber:I

    .line 127
    iput v4, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableSysLogcatMaxCount:I

    .line 133
    iput v4, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableSysLogcatLinkMaxCount:I

    .line 139
    iput-boolean v2, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableBreakPadDump:Z

    .line 142
    return-void
.end method


# virtual methods
.method public setEnableANRMainThreadOnly(Z)V
    .locals 0
    .param p1, "enableANRMainThreadOnly"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableANRMainThreadOnly:Z

    .line 174
    return-void
.end method

.method public setEnableCatchANRException(Z)V
    .locals 0
    .param p1, "enableCatchANRException"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableCatchANRException:Z

    .line 146
    return-void
.end method

.method public setEnableDebug(Z)V
    .locals 0
    .param p1, "enableDebug"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableDebug:Z

    .line 170
    return-void
.end method

.method public setEnableDumpAllThread(Z)V
    .locals 0
    .param p1, "enableDumpAllThread"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableDumpAllThread:Z

    .line 166
    return-void
.end method

.method public setEnableDumpAppLog(Z)V
    .locals 0
    .param p1, "enableDumpAppLog"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableDumpAppLog:Z

    .line 162
    return-void
.end method

.method public setEnableDumpEventsLog(Z)V
    .locals 0
    .param p1, "enableDumpEventsLog"    # Z

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableDumpEventsLog:Z

    .line 154
    return-void
.end method

.method public setEnableDumpRadioLog(Z)V
    .locals 0
    .param p1, "enableDumpRadioLog"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableDumpRadioLog:Z

    .line 158
    return-void
.end method

.method public setEnableDumpSysLog(Z)V
    .locals 0
    .param p1, "enableDumpSysLog"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/alibaba/motu/crashreporter/ReporterConfigure;->enableDumpSysLog:Z

    .line 150
    return-void
.end method

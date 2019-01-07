.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5LogProvider;
.super Ljava/lang/Object;
.source "H5LogProvider.java"


# virtual methods
.method public abstract autoClick(Lcom/alipay/mobile/h5container/api/H5Event;)V
.end method

.method public abstract behaviorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5BehaviorLogConfig;)V
.end method

.method public abstract disableHardwareAccelerate()Z
.end method

.method public abstract exceptionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getAutoSpmRpcId(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getContextParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLastClickSpmId()Ljava/lang/String;
.end method

.method public abstract getPageId(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getSpmRpcId(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getSrcSpm(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract getTracerInfo(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTrackLastClickTime()Ljava/lang/Long;
.end method

.method public abstract getUniteParam4(Liop;)Ljava/lang/String;
.end method

.method public abstract h5BehaviorLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract h5RemoteLogClickLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isPageStarted(Ljava/lang/Object;)Z
.end method

.method public abstract log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract logAutoBehavorPageEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;Z)V
.end method

.method public abstract logV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract monitorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V
.end method

.method public abstract mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract performanceLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putContextParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setLastClickSpm(Ljava/lang/String;)V
.end method

.method public abstract upload()V
.end method

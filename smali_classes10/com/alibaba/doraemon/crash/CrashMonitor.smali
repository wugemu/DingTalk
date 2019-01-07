.class public interface abstract Lcom/alibaba/doraemon/crash/CrashMonitor;
.super Ljava/lang/Object;
.source "CrashMonitor.java"


# static fields
.field public static final CRASH_MONITOR_ARTIFACT:Ljava/lang/String; = "CRASHMONITOR"


# virtual methods
.method public abstract registerCrashHandler(Lcom/alibaba/doraemon/crash/CrashHandler;)V
.end method

.method public abstract unregisterCrashHandler(Lcom/alibaba/doraemon/crash/CrashHandler;)V
.end method

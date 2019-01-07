.class public Lcom/taobao/statistic/TBS$CrashHandler;
.super Ljava/lang/Object;
.source "TBS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrashHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;,
        Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1350
    return-void
.end method

.method public static disableEffect()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1371
    return-void
.end method

.method public static removeDaemonCrashCaughtListener(Ljava/lang/String;)V
    .locals 0
    .param p0, "threadName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1443
    return-void
.end method

.method public static setContinueWhenDaemonThreadUncaughException()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1450
    return-void
.end method

.method public static setOnCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;)V
    .locals 0
    .param p0, "listener"    # Lcom/taobao/statistic/TBS$CrashHandler$OnCrashCaughtListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1415
    return-void
.end method

.method public static setOnDaemonCrashCaughtListener(Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V
    .locals 0
    .param p0, "daemonThreadCrashCaughtListener"    # Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1424
    return-void
.end method

.method public static setOnDaemonCrashCaughtListener(Ljava/lang/String;Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;)V
    .locals 0
    .param p0, "threadName"    # Ljava/lang/String;
    .param p1, "daemonThreadCrashCaughtListener"    # Lcom/taobao/statistic/TBS$CrashHandler$OnDaemonThreadCrashCaughtListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1434
    return-void
.end method

.method public static setSubmitToSystemFlag()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1378
    return-void
.end method

.method public static setToastStyle(ILjava/lang/String;)V
    .locals 0
    .param p0, "howLongToastShow"    # I
    .param p1, "toastString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1403
    return-void
.end method

.method public static turnOff()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1364
    return-void
.end method

.method public static withRestart(Landroid/app/Activity;II)V
    .locals 0
    .param p0, "mainActivityForRestart"    # Landroid/app/Activity;
    .param p1, "howLongAppRestart"    # I
    .param p2, "howManyTimes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1393
    return-void
.end method

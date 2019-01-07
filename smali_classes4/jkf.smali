.class public final Ljkf;
.super Ljava/lang/Object;
.source "AdapterAppMonitor.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    sput-boolean v1, Ljkf;->a:Z

    .line 18
    :try_start_0
    const-string/jumbo v0, "com.alibaba.mtl.appmonitor.AppMonitor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Ljkf;->a:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    sput-boolean v1, Ljkf;->a:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-boolean v0, Ljkf;->a:Z

    if-eqz v0, :cond_0

    .line 27
    const-string/jumbo v0, "TBVideoCore_VCSimpleSession"

    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 38
    sget-boolean v0, Ljkf;->a:Z

    if-eqz v0, :cond_0

    .line 39
    const-string/jumbo v0, "TBVideoCore_VCSimpleSession"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

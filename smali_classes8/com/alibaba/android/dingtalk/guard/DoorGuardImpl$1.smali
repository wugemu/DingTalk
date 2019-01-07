.class final Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$1;
.super Ljava/lang/Object;
.source "DoorGuardImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;->onApplicationCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl$1;->a:Lcom/alibaba/android/dingtalk/guard/DoorGuardImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->startAlphaServer()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->isAlphaRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-static {}, Lbma;->a()Lbma;

    move-result-object v2

    invoke-virtual {v2}, Lbma;->b()V

    .line 100
    :cond_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v2, "DoorGuardImpl"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "startAlphaServer onApplicationCreate throwable = "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "reason"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v2, "action"

    const-string/jumbo v3, "startAlphaServer"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v2, "source"

    const-string/jumbo v3, "onApplicationCreate"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_BIND_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    invoke-static {v2, v0}, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm;->a(Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;Ljava/util/Map;)V

    goto :goto_0
.end method

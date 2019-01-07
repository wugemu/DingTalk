.class final Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$2;
.super Ljava/lang/Object;
.source "AlphaPushManager.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbmv;

.field final synthetic b:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;Lbmv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$2;->b:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$2;->a:Lbmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 136
    check-cast p1, Ljava/lang/String;

    .line 1139
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$2;->b:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v1, "reason"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v1, "corpId"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$2;->a:Lbmv;

    iget-object v2, v2, Lbmv;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v1, "action"

    const-string/jumbo v2, "getPsk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v1, "source"

    const-string/jumbo v2, "push"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_GET_SSID_OR_PSK_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm;->a(Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;Ljava/util/Map;)V

    .line 156
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 145
    return-void
.end method

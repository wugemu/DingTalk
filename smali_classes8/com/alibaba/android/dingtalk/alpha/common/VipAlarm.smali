.class public final Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm;
.super Ljava/lang/Object;
.source "VipAlarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;Ljava/util/Map;)V
    .locals 2
    .param p0, "alarmType"    # Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 50
    .local v0, "alarm":Lhzu;
    const-string/jumbo v1, "alpha"

    iput-object v1, v0, Lhzu;->a:Ljava/lang/String;

    .line 51
    iget v1, p0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->mValue:I

    iput v1, v0, Lhzu;->c:I

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->mDesc:Ljava/lang/String;

    iput-object v1, v0, Lhzu;->d:Ljava/lang/String;

    .line 53
    if-eqz p1, :cond_1

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lhzu;->b:Ljava/util/Map;

    .line 55
    iget-object v1, v0, Lhzu;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 57
    :cond_1
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhzr;->a(Lhzu;)V

    goto :goto_0
.end method

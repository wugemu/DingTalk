.class final Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$1;
.super Lcom/alibaba/wukong/im/StatusNotifyListener;
.source "DeviceStatusSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/StatusNotifyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceStatusReceived(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/DeviceStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "deviceStatuses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/DeviceStatus;>;"
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a()Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity$1;->a:Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/im/activities/DeviceStatusSettingsActivity;->finish()V

    goto :goto_0
.end method

.method public final onStatusChanged(Lcom/alibaba/wukong/im/IMStatus;)V
    .locals 0
    .param p1, "imStatus"    # Lcom/alibaba/wukong/im/IMStatus;

    .prologue
    .line 90
    return-void
.end method

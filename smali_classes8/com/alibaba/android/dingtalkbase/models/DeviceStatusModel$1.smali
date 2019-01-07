.class public final Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$1;
.super Lcom/alibaba/wukong/im/StatusNotifyListener;
.source "DeviceStatusModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$1;->a:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    invoke-direct {p0}, Lcom/alibaba/wukong/im/StatusNotifyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeviceStatusReceived(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/DeviceStatus;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "deviceStatuses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/DeviceStatus;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 128
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$1;->a:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    .line 1016
    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a:Ljava/util/List;

    .line 128
    if-nez v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$1;->a:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    .line 2016
    iput-object p1, v2, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a:Ljava/util/List;

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$1;->a:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    .line 3016
    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a:Ljava/util/List;

    .line 132
    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$1;->a:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    .line 4016
    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a:Ljava/util/List;

    .line 132
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$1;->a:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    .line 5016
    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a:Ljava/util/List;

    .line 132
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/DeviceStatus;

    move-object v0, v2

    .line 133
    .local v0, "d1":Lcom/alibaba/wukong/im/DeviceStatus;
    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/DeviceStatus;

    move-object v1, v2

    .line 134
    .local v1, "d2":Lcom/alibaba/wukong/im/DeviceStatus;
    :cond_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alibaba/wukong/im/DeviceStatus;->time()J

    move-result-wide v2

    invoke-interface {v0}, Lcom/alibaba/wukong/im/DeviceStatus;->time()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$1;->a:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    .line 6016
    iput-object p1, v2, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a:Ljava/util/List;

    goto :goto_0

    .end local v0    # "d1":Lcom/alibaba/wukong/im/DeviceStatus;
    .end local v1    # "d2":Lcom/alibaba/wukong/im/DeviceStatus;
    :cond_3
    move-object v0, v1

    .line 132
    goto :goto_1
.end method

.method public final onStatusChanged(Lcom/alibaba/wukong/im/IMStatus;)V
    .locals 0
    .param p1, "imStatus"    # Lcom/alibaba/wukong/im/IMStatus;

    .prologue
    .line 142
    return-void
.end method

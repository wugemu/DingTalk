.class final Lhgh$1;
.super Ljava/lang/Object;
.source "KaoQinViewImpl.java"

# interfaces
.implements Lhgg$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhgh;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhgh;


# direct methods
.method constructor <init>(Lhgh;)V
    .locals 0
    .param p1, "this$0"    # Lhgh;

    .prologue
    .line 95
    iput-object p1, p0, Lhgh$1;->a:Lhgh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnterRange(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lhiu;)V
    .locals 5
    .param p1, "model"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .param p2, "atmInfoModel"    # Lhiu;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 115
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1049
    sget-object v1, Lhgg$d;->a:Lhgg;

    .line 1367
    invoke-static {p1}, Lhgg;->a(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Ljava/lang/String;

    move-result-object v2

    .line 1368
    new-instance v3, Lhgg$2;

    invoke-direct {v3, v1, v2}, Lhgg$2;-><init>(Lhgg;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v4, v4, v3}, Lhgg;->a(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Ljava/lang/Integer;Ljava/lang/Long;Lcma;)V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v0, "utArgs":Ljava/util/Map;
    const-string/jumbo v1, "corp_id"

    iget-object v2, p2, Lhiu;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "oa_cloud_attendance_bluetooth_danmu_show"

    invoke-interface {v1, v4, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    .end local v0    # "utArgs":Ljava/util/Map;
    :cond_0
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "KaoQinViewImpl"

    const-string/jumbo v3, "[Device Beacon] KaoQinViewImpl onEnterRange"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public final onExitRange(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 130
    const-string/jumbo v0, "lightapp"

    const-string/jumbo v1, "KaoQinViewImpl"

    const-string/jumbo v2, "[Device Beacon] onExitRange"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public final onRangeChange(Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;Lhiu;)V
    .locals 13
    .param p1, "model"    # Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;
    .param p2, "atmInfoModel"    # Lhiu;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 136
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-boolean v1, p2, Lhiu;->f:Z

    if-eqz v1, :cond_0

    .line 146
    iget v1, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->distance:I

    if-lez v1, :cond_2

    iget v1, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->distance:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_3

    :cond_2
    iget v1, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->momentDistance:I

    if-lez v1, :cond_5

    iget v1, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->momentDistance:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_5

    .line 148
    :cond_3
    iget-object v1, p0, Lhgh$1;->a:Lhgh;

    invoke-static {v1, p1}, Lhgh;->a(Lhgh;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lhgh$1;->a:Lhgh;

    invoke-static {v1}, Lhgh;->a(Lhgh;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 150
    .local v12, "times":Ljava/lang/Integer;
    iget-object v1, p0, Lhgh$1;->a:Lhgh;

    invoke-static {v1}, Lhgh;->a(Lhgh;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lhgh$1;->a:Lhgh;

    invoke-static {v1}, Lhgh;->b(Lhgh;)I

    move-result v1

    invoke-static {}, Lhgh;->c()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 155
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 156
    :cond_4
    iget-object v1, p0, Lhgh$1;->a:Lhgh;

    iget-object v2, p2, Lhiu;->a:Ljava/lang/String;

    iget-object v5, p2, Lhiu;->e:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lhdn$k;->dt_oa_attend_dd_atm_settings:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-wide v8, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->deviceUid:J

    iget v10, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->serviceId:I

    .line 2223
    invoke-virtual {v1}, Lhgh;->b()V

    .line 2225
    sget v3, Lhgh;->b:I

    iput v3, v1, Lhgh;->e:I

    .line 2226
    sget v3, Lhdn$k;->icon_bluetooth:I

    sget v4, Lhdn$e;->text_color_blue:I

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v10}, Lhgh;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZJI)V

    goto :goto_0

    .line 161
    .end local v0    # "key":Ljava/lang/String;
    .end local v12    # "times":Ljava/lang/Integer;
    :cond_5
    iget v1, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->distance:I

    iget v2, p1, Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;->momentDistance:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 163
    .local v11, "maxDistance":I
    const/16 v1, 0x14

    if-le v11, v1, :cond_0

    .line 164
    iget-object v1, p0, Lhgh$1;->a:Lhgh;

    invoke-static {v1, p1}, Lhgh;->a(Lhgh;Lcom/alibaba/android/dingtalk/guardinterface/DeviceModelBean;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v1, p0, Lhgh$1;->a:Lhgh;

    invoke-static {v1}, Lhgh;->a(Lhgh;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 166
    .restart local v12    # "times":Ljava/lang/Integer;
    if-eqz v12, :cond_0

    .line 168
    const/16 v1, 0x23

    if-le v11, v1, :cond_7

    .line 169
    const/4 v12, 0x0

    .line 177
    :cond_6
    :goto_1
    iget-object v1, p0, Lhgh$1;->a:Lhgh;

    invoke-static {v1}, Lhgh;->a(Lhgh;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 171
    :cond_7
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 172
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_6

    .line 173
    const/4 v12, 0x0

    goto :goto_1
.end method

.method public final onStartScan()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final onStopScan()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lhgh$1;->a:Lhgh;

    invoke-static {v0}, Lhgh;->a(Lhgh;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 104
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lhgh$1$1;

    invoke-direct {v1, p0}, Lhgh$1$1;-><init>(Lhgh$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void
.end method

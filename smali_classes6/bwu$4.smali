.class final Lbwu$4;
.super Ljava/lang/Object;
.source "FullPlayerPresenter.java"

# interfaces
.implements Lbwf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbwu;


# direct methods
.method constructor <init>(Lbwu;)V
    .locals 0
    .param p1, "this$0"    # Lbwu;

    .prologue
    .line 217
    iput-object p1, p0, Lbwu$4;->a:Lbwu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;)V
    .locals 6
    .param p1, "powerMessage"    # Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 220
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    invoke-virtual {v1}, Lbwr;->b()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "liveUuid":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->topic:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1318
    .end local p1    # "powerMessage":Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;
    :cond_0
    :goto_0
    return-void

    .line 224
    .restart local p1    # "powerMessage":Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;
    :cond_1
    iget-object v2, p0, Lbwu$4;->a:Lbwu;

    .line 1292
    if-eqz p1, :cond_0

    .line 1296
    iget v1, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1305
    :pswitch_0
    :try_start_0
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->data:[B

    if-eqz v1, :cond_0

    .line 1306
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;->data:[B

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->parseFrom([B)Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;

    move-result-object v1

    .line 1307
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/live/msg/nano/SysBizV1$CountInfo;->value:Ljava/util/Map;

    .line 1308
    if-eqz v1, :cond_0

    .line 1309
    const-string/jumbo v3, "dig"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1310
    if-eqz v1, :cond_0

    .line 1311
    iget-object v2, v2, Lbwu;->a:Lbwt$b;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lbwt$b;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1315
    :catch_0
    move-exception v1

    .line 1316
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "handlePowerMessage, error="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 1317
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    .line 1316
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2013
    const-string/jumbo v2, "live"

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1298
    :pswitch_1
    instance-of v1, p1, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;

    if-eqz v1, :cond_0

    .line 1299
    check-cast p1, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;

    .line 1300
    .end local p1    # "powerMessage":Lcom/alibaba/android/dingtalk/live/msg/common/PowerMessage;
    iget-object v1, v2, Lbwu;->a:Lbwt$b;

    iget v2, p1, Lcom/alibaba/android/dingtalk/live/msg/common/JoinPowerMessage;->totalCount:I

    invoke-interface {v1, v2}, Lbwt$b;->a(I)V

    goto :goto_0

    .line 1296
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;)V
    .locals 3
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 237
    iget-object v0, p0, Lbwu$4;->a:Lbwu;

    .line 2055
    iget-object v0, v0, Lbwu;->a:Lbwt$b;

    .line 237
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Lbwu$4;->a:Lbwu;

    .line 3055
    iget-object v0, v0, Lbwu;->a:Lbwt$b;

    .line 238
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/live/rpc/model/EvenWheatBroadCastObject;->uids:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lbwt$b;->a(Ljava/util/List;Z)V

    .line 240
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 244
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;>;"
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/live/im/model/LiveMessageObject;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "barrages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/live/im/model/BarrageMessage;>;"
    iget-object v1, p0, Lbwu$4;->a:Lbwu;

    .line 4055
    iget-object v1, v1, Lbwu;->a:Lbwt$b;

    .line 245
    invoke-interface {v1, v0}, Lbwt$b;->a(Ljava/util/List;)V

    .line 246
    return-void
.end method

.method public final a([B)V
    .locals 2
    .param p1, "data"    # [B

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 229
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v1

    invoke-virtual {v1}, Lbws;->b()Ljjx;

    move-result-object v0

    .line 230
    .local v0, "pushInstance":Ljjx;
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, p1}, Ljjx;->a([B)V

    .line 233
    :cond_0
    return-void
.end method

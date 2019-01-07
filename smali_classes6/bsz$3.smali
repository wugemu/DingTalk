.class final Lbsz$3;
.super Ljava/lang/Object;
.source "LanBindPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsz;
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
        "Lbsa;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbsy$b;

.field final synthetic b:Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;

.field final synthetic c:Lbsz;


# direct methods
.method constructor <init>(Lbsz;Lbsy$b;Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;)V
    .locals 0
    .param p1, "this$0"    # Lbsz;

    .prologue
    .line 313
    iput-object p1, p0, Lbsz$3;->c:Lbsz;

    iput-object p2, p0, Lbsz$3;->a:Lbsy$b;

    iput-object p3, p0, Lbsz$3;->b:Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 313
    check-cast p1, Lbsa;

    .line 1316
    iget-object v0, p0, Lbsz$3;->c:Lbsz;

    invoke-virtual {v0}, Lbsz;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lbsz$3;->c:Lbsz;

    invoke-virtual {v0}, Lbsz;->s()V

    .line 1320
    if-nez p1, :cond_1

    .line 1321
    const-string/jumbo v0, "LanBindPresenter"

    const-string/jumbo v1, "bindAndActive resp model is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lbsz$3;->c:Lbsz;

    sget v1, Lbrx$g;->dt_door_guard_bind_fail:I

    invoke-virtual {v0, v1}, Lbsz;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1323
    iget-object v1, p0, Lbsz$3;->a:Lbsy$b;

    if-eqz v1, :cond_0

    .line 1324
    iget-object v1, p0, Lbsz$3;->a:Lbsy$b;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lbsy$b;->a(ZLjava/lang/String;)V

    .line 1326
    :cond_0
    :goto_0
    return-void

    .line 1329
    :cond_1
    iget-object v0, p0, Lbsz$3;->c:Lbsz;

    iget-object v1, p0, Lbsz$3;->b:Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;

    iget-object v2, p0, Lbsz$3;->a:Lbsy$b;

    invoke-static {v0, p1, v1, v2}, Lbsz;->a(Lbsz;Lbsa;Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;Lbsy$b;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 339
    iget-object v1, p0, Lbsz$3;->c:Lbsz;

    invoke-virtual {v1}, Lbsz;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    :goto_0
    return-void

    .line 342
    :cond_0
    const-string/jumbo v1, "LanBindPresenter"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "bind exp code = "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lbsz$3;->c:Lbsz;

    invoke-virtual {v1}, Lbsz;->s()V

    .line 344
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lbsz$3;->c:Lbsz;

    sget v2, Lbrx$g;->dt_door_guard_bind_fail:I

    invoke-virtual {v1, v2}, Lbsz;->a(I)Ljava/lang/String;

    move-result-object p2

    .line 347
    :cond_1
    iget-object v1, p0, Lbsz$3;->a:Lbsy$b;

    if-eqz v1, :cond_2

    .line 348
    iget-object v1, p0, Lbsz$3;->a:Lbsy$b;

    invoke-interface {v1, v5, p2}, Lbsy$b;->a(ZLjava/lang/String;)V

    .line 350
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 351
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string/jumbo v1, "reason"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string/jumbo v1, "action"

    const-string/jumbo v2, "bindAndSetting"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_BIND_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm;->a(Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 335
    return-void
.end method

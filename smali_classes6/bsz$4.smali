.class final Lbsz$4;
.super Ljava/lang/Object;
.source "LanBindPresenter.java"

# interfaces
.implements Lbmi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsa;

.field final synthetic b:Lbsy$b;

.field final synthetic c:Lbsz;


# direct methods
.method constructor <init>(Lbsz;Lbsa;Lbsy$b;)V
    .locals 0
    .param p1, "this$0"    # Lbsz;

    .prologue
    .line 373
    iput-object p1, p0, Lbsz$4;->c:Lbsz;

    iput-object p2, p0, Lbsz$4;->a:Lbsa;

    iput-object p3, p0, Lbsz$4;->b:Lbsy$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 389
    const-string/jumbo v1, "LanBindPresenter"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "notifyBindResult ext code = "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason = "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lbsz$4;->b:Lbsy$b;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lbsz$4;->b:Lbsy$b;

    const/4 v2, 0x0

    invoke-interface {v1, v5, v2}, Lbsy$b;->a(ZLjava/lang/String;)V

    .line 393
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 394
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string/jumbo v1, "reason"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string/jumbo v1, "action"

    const-string/jumbo v2, "notifyBindResult"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v1, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;->ALARM_BIND_FAIL:Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm;->a(Lcom/alibaba/android/dingtalk/alpha/common/VipAlarm$AlarmType;Ljava/util/Map;)V

    .line 398
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 376
    const-string/jumbo v0, "LanBindPresenter"

    const-string/jumbo v1, "notifyBindResult success"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lbsz$4;->c:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lbsz$4;->c:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    invoke-interface {v0, v2}, Lbsw$b;->d(Z)V

    .line 379
    iget-object v0, p0, Lbsz$4;->c:Lbsz;

    iget-object v0, v0, Lbsz;->b:Lbsw$b;

    iget-object v1, p0, Lbsz$4;->a:Lbsa;

    iget-object v1, v1, Lbsa;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbsw$b;->l(Ljava/lang/String;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lbsz$4;->b:Lbsy$b;

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lbsz$4;->b:Lbsy$b;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lbsy$b;->a(ZLjava/lang/String;)V

    .line 385
    :cond_1
    return-void
.end method

.class public final Lcbl;
.super Ljava/lang/Object;
.source "BalancePayPresenter.java"

# interfaces
.implements Lcbj$a;


# instance fields
.field a:Lcbj$b;

.field b:Landroid/app/Activity;

.field c:D

.field d:D


# direct methods
.method public constructor <init>(Lcbj$b;Landroid/app/Activity;)V
    .locals 0
    .param p1, "view"    # Lcbj$b;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcbl;->a:Lcbj$b;

    .line 28
    iput-object p2, p0, Lcbl;->b:Landroid/app/Activity;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(D)V
    .locals 5
    .param p1, "payMoney"    # D

    .prologue
    .line 33
    iput-wide p1, p0, Lcbl;->c:D

    .line 34
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcbl$1;

    invoke-direct {v2, p0}, Lcbl$1;-><init>(Lcbl;)V

    const-class v3, Lcma;

    iget-object v4, p0, Lcbl;->b:Landroid/app/Activity;

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 63
    .local v0, "apiEventListener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;>;"
    iget-object v1, p0, Lcbl;->a:Lcbj$b;

    invoke-interface {v1}, Lcbj$b;->q_()V

    .line 64
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v1

    .line 1438
    new-instance v2, Lcbs$10;

    invoke-direct {v2, v1, v0}, Lcbs$10;-><init>(Lcbs;Lcma;)V

    .line 1445
    const-class v1, Lcom/alibaba/android/dingtalk/redpackets/idl/service/BalanceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/idl/service/BalanceIService;

    .line 1446
    if-eqz v1, :cond_0

    .line 1447
    invoke-interface {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/BalanceIService;->showCashier(Liyv;)V

    .line 65
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 9
    .param p1, "payMethod"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x2

    .line 69
    const-string/jumbo v0, "redpackets"

    const-string/jumbo v2, "send"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "showCashierFromLocal payMethod "

    aput-object v4, v3, v8

    const/4 v4, 0x1

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string/jumbo v4, " balance="

    aput-object v4, v3, v1

    const/4 v4, 0x3

    iget-wide v6, p0, Lcbl;->d:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, " payMoney="

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-wide v6, p0, Lcbl;->c:D

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 70
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    if-ne p1, v1, :cond_0

    iget-wide v2, p0, Lcbl;->d:D

    iget-wide v4, p0, Lcbl;->c:D

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcbl;->a:Lcbj$b;

    iget-wide v2, p0, Lcbl;->c:D

    iget-wide v4, p0, Lcbl;->d:D

    invoke-interface/range {v0 .. v5}, Lcbj$b;->a(IDD)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcbl;->a:Lcbj$b;

    iget-wide v2, p0, Lcbl;->c:D

    iget-wide v4, p0, Lcbl;->d:D

    move v1, v8

    invoke-interface/range {v0 .. v5}, Lcbj$b;->a(IDD)V

    goto :goto_0
.end method

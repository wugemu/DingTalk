.class final Lcbl$1;
.super Ljava/lang/Object;
.source "BalancePayPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcbl;->a(D)V
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
        "Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcbl;


# direct methods
.method constructor <init>(Lcbl;)V
    .locals 0
    .param p1, "this$0"    # Lcbl;

    .prologue
    .line 34
    iput-object p1, p0, Lcbl$1;->a:Lcbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 34
    check-cast p1, Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;

    .line 1037
    iget-object v0, p0, Lcbl$1;->a:Lcbl;

    iget-object v0, v0, Lcbl;->a:Lcbj$b;

    invoke-interface {v0}, Lcbj$b;->b()V

    .line 1038
    if-eqz p1, :cond_0

    .line 1039
    iget-object v0, p0, Lcbl$1;->a:Lcbl;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;->quotaAvailable:Ljava/lang/String;

    invoke-static {v1}, Ligb;->h(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcbl;->d:D

    .line 1041
    const-string/jumbo v0, "redpackets"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "showCashier mPayMoney "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcbl$1;->a:Lcbl;

    iget-wide v4, v4, Lcbl;->c:D

    .line 1042
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " mBalance"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcbl$1;->a:Lcbl;

    iget-wide v4, v4, Lcbl;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1041
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcbl$1;->a:Lcbl;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/redpackets/models/CashierObject;->defaultPayMethod:Ljava/lang/Integer;

    invoke-static {v1}, Ligb;->a(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcbl;->a(I)V

    .line 34
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 56
    iget-object v0, p0, Lcbl$1;->a:Lcbl;

    iget-object v0, v0, Lcbl;->a:Lcbj$b;

    invoke-interface {v0}, Lcbj$b;->b()V

    .line 57
    iget-object v0, p0, Lcbl$1;->a:Lcbl;

    iget-object v0, v0, Lcbl;->a:Lcbj$b;

    iget-object v1, p0, Lcbl$1;->a:Lcbl;

    iget-wide v2, v1, Lcbl;->c:D

    invoke-interface {v0, v2, v3}, Lcbj$b;->a(D)V

    .line 58
    const-string/jumbo v0, "redpackets"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "changePayMethod error "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 51
    return-void
.end method

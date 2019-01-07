.class final Lhgi$1;
.super Lcmi;
.source "BeaconDetectPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhgi;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhgi;


# direct methods
.method constructor <init>(Lhgi;)V
    .locals 0
    .param p1, "this$0"    # Lhgi;

    .prologue
    .line 59
    iput-object p1, p0, Lhgi$1;->a:Lhgi;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 86
    iget-object v1, p0, Lhgi$1;->a:Lhgi;

    .line 1027
    iget-object v1, v1, Lhgi;->c:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 86
    const-string/jumbo v2, "SmartWork"

    const-string/jumbo v3, "beacon_bind"

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lhgi$1;->a:Lhgi;

    .line 2027
    iget-object v1, v1, Lhgi;->a:Lhgd$c;

    .line 87
    if-eqz v1, :cond_0

    .line 88
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 89
    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "errorString":Ljava/lang/String;
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lhgi$1;->a:Lhgi;

    .line 3027
    iget-object v1, v1, Lhgi;->a:Lhgd$c;

    .line 91
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lhgd$c;->a(Z)V

    .line 93
    iget-object v1, p0, Lhgi$1;->a:Lhgi;

    .line 4027
    iget-object v1, v1, Lhgi;->a:Lhgd$c;

    .line 93
    invoke-interface {v1}, Lhgd$c;->c()V

    .line 95
    .end local v0    # "errorString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 59
    .line 4062
    iget-object v0, p0, Lhgi$1;->a:Lhgi;

    .line 5027
    iget-object v0, v0, Lhgi;->c:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 4062
    const-string/jumbo v1, "SmartWork"

    const-string/jumbo v2, "beacon_bind"

    const-string/jumbo v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->commitRateSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4063
    iget-object v0, p0, Lhgi$1;->a:Lhgi;

    .line 6027
    iget-object v0, v0, Lhgi;->a:Lhgd$c;

    .line 4063
    if-eqz v0, :cond_0

    iget-object v0, p0, Lhgi$1;->a:Lhgi;

    .line 7027
    iget-object v0, v0, Lhgi;->b:Lhgd$a;

    .line 4063
    if-eqz v0, :cond_0

    .line 4064
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lhgi$1$1;

    invoke-direct {v1, p0}, Lhgi$1$1;-><init>(Lhgi$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 4071
    iget-object v0, p0, Lhgi$1;->a:Lhgi;

    .line 8027
    iget-object v0, v0, Lhgi;->a:Lhgd$c;

    .line 4071
    iget-object v1, p0, Lhgi$1;->a:Lhgi;

    .line 9027
    iget-object v1, v1, Lhgi;->b:Lhgd$a;

    .line 4071
    invoke-interface {v1}, Lhgd$a;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lhgd$c;->a(Ljava/util/List;)V

    .line 4072
    iget-object v0, p0, Lhgi$1;->a:Lhgi;

    .line 10027
    iget-object v0, v0, Lhgi;->a:Lhgd$c;

    .line 4072
    new-instance v1, Lhgi$1$2;

    invoke-direct {v1, p0}, Lhgi$1$2;-><init>(Lhgi$1;)V

    invoke-interface {v0, v1}, Lhgd$c;->a(Landroid/view/View$OnClickListener;)V

    .line 4079
    :cond_0
    iget-object v0, p0, Lhgi$1;->a:Lhgi;

    .line 11027
    iget-object v0, v0, Lhgi;->a:Lhgd$c;

    .line 4079
    if-eqz v0, :cond_1

    .line 4080
    iget-object v0, p0, Lhgi$1;->a:Lhgi;

    .line 12027
    iget-object v0, v0, Lhgi;->a:Lhgd$c;

    .line 4080
    invoke-interface {v0}, Lhgd$c;->c()V

    .line 59
    :cond_1
    return-void
.end method

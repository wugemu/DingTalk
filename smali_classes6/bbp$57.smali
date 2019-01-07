.class public final Lbbp$57;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbfq;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbfq;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 458
    iput-object p1, p0, Lbbp$57;->b:Lbbp;

    iput-object p2, p0, Lbbp$57;->a:Lbfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 461
    iget-object v0, p0, Lbbp$57;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v1

    iget-object v0, p0, Lbbp$57;->a:Lbfq;

    .line 1795
    if-eqz v0, :cond_2

    .line 2056
    iget-object v2, v0, Lbfq;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1799
    if-eqz v2, :cond_2

    .line 1804
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v3

    .line 1805
    if-eqz v3, :cond_0

    .line 1806
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->l()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->b(I)V

    .line 1810
    :cond_0
    invoke-static {v3}, Lbkh;->R(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1811
    invoke-static {}, Lbbv;->a()Lbbv;

    invoke-static {v0}, Lbbv;->b(Lbfq;)V

    .line 1816
    :cond_1
    :try_start_0
    iget-object v0, v1, Lbbo;->f:Lbgp;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    .line 2109
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1816
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->f()Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing$FinishStatus;->getValue()I

    move-result v2

    invoke-interface {v0, v4, v5, v2}, Lbgp;->a(JI)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1821
    :goto_0
    invoke-virtual {v1}, Lbbo;->e()V

    .line 462
    :cond_2
    return-void

    .line 1817
    :catch_0
    move-exception v0

    .line 1818
    const-string/jumbo v2, "[dataCenter] on invitation cancel exception"

    invoke-static {v2, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.class public final Lbbp$58;
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
.field final synthetic a:Lbfd;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbfd;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 467
    iput-object p1, p0, Lbbp$58;->b:Lbbp;

    iput-object p2, p0, Lbbp$58;->a:Lbfd;

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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 470
    iget-object v0, p0, Lbbp$58;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$58;->a:Lbfd;

    .line 1828
    if-eqz v1, :cond_2

    .line 2058
    iget-object v2, v1, Lbfd;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1832
    if-eqz v2, :cond_2

    .line 1836
    invoke-static {v2}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lbkh;->m(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1837
    :cond_0
    invoke-static {}, Lbbv;->a()Lbbv;

    invoke-static {v1}, Lbbv;->a(Lbfd;)V

    .line 1841
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v1

    .line 1842
    if-eqz v1, :cond_3

    .line 1843
    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    .line 1845
    invoke-static {v1}, Lbjx;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    .line 1847
    iget-object v2, v0, Lbbo;->f:Lbgp;

    new-array v3, v5, [Lcom/alibaba/android/ding/base/objects/ObjectDing;

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Lbgp;->a(Ljava/util/List;)I

    .line 1853
    :goto_0
    invoke-virtual {v0}, Lbbo;->e()V

    .line 471
    :cond_2
    return-void

    .line 1850
    :cond_3
    iget-object v1, v0, Lbbo;->f:Lbgp;

    new-array v3, v5, [Lcom/alibaba/android/ding/base/objects/ObjectDing;

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lbgp;->a(Ljava/util/List;)I

    goto :goto_0
.end method

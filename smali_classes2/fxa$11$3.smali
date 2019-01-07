.class final Lfxa$11$3;
.super Lor;
.source "NameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfxa$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lor",
        "<",
        "Lcgc;",
        "Lcgc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lfxa$11;


# direct methods
.method constructor <init>(Lfxa$11;)V
    .locals 0
    .param p1, "this$1"    # Lfxa$11;

    .prologue
    .line 544
    iput-object p1, p0, Lfxa$11$3;->d:Lfxa$11;

    invoke-direct {p0}, Lor;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 544
    check-cast p1, Lcgc;

    return-object p1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 595
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfxa$11$3$3;

    invoke-direct {v1, p0}, Lfxa$11$3$3;-><init>(Lfxa$11$3;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 603
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 544
    check-cast p1, Lcgc;

    .line 1552
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcgc;->b:Lcet;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcgc;->b:Lcet;

    iget-object v0, v0, Lcet;->a:Ljava/lang/Long;

    .line 1554
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lfxa$11$3;->d:Lfxa$11;

    iget-wide v2, v1, Lfxa$11;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1556
    :try_start_0
    iget-object v0, p1, Lcgc;->b:Lcet;

    iget-object v5, v0, Lcet;->d:Ljava/lang/String;

    .line 1557
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1558
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v0

    iget-object v1, p1, Lcgc;->b:Lcet;

    iget-object v1, v1, Lcet;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1560
    :cond_0
    iget-object v0, p1, Lcgc;->b:Lcet;

    iget-object v0, v0, Lcet;->b:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p1, Lcgc;->b:Lcet;

    iget-object v2, v2, Lcet;->a:Ljava/lang/Long;

    .line 1561
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p1, Lcgc;->b:Lcet;

    iget-object v4, v4, Lcet;->c:Ljava/lang/String;

    iget-object v6, p1, Lcgc;->b:Lcet;

    iget-object v6, v6, Lcet;->j:Ljava/lang/String;

    iget-object v7, p1, Lcgc;->b:Lcet;

    iget-object v7, v7, Lcet;->k:Ljava/lang/String;

    iget-object v8, p1, Lcgc;->b:Lcet;

    iget-object v8, v8, Lcet;->h:Ljava/lang/Long;

    .line 1566
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1560
    invoke-static/range {v0 .. v9}, Lfbm;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1567
    iget-object v0, p0, Lfxa$11$3;->d:Lfxa$11;

    iget-object v0, v0, Lfxa$11;->c:Lckl;

    iget-object v1, p1, Lcgc;->b:Lcet;

    iget-object v1, v1, Lcet;->c:Ljava/lang/String;

    .line 2043
    iput-object v1, v0, Lckl;->d:Ljava/lang/String;

    .line 1568
    iget-object v0, p0, Lfxa$11$3;->d:Lfxa$11;

    iget-object v0, v0, Lfxa$11;->c:Lckl;

    .line 2051
    iput-object v5, v0, Lckl;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfxa$11$3$1;

    invoke-direct {v1, p0}, Lfxa$11$3$1;-><init>(Lfxa$11$3;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 544
    :goto_0
    return-void

    .line 1569
    :catch_0
    move-exception v0

    .line 1570
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1572
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfxa$11$3$1;

    invoke-direct {v1, p0}, Lfxa$11$3$1;-><init>(Lfxa$11$3;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lfxa$11$3$1;

    invoke-direct {v2, p0}, Lfxa$11$3$1;-><init>(Lfxa$11$3;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    throw v0

    .line 1582
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfxa$11$3$2;

    invoke-direct {v1, p0}, Lfxa$11$3$2;-><init>(Lfxa$11$3;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

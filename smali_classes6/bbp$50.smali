.class public final Lbbp$50;
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
.field final synthetic a:Lbev;

.field final synthetic b:Lbbp;


# direct methods
.method public constructor <init>(Lbbp;Lbev;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 401
    iput-object p1, p0, Lbbp$50;->b:Lbbp;

    iput-object p2, p0, Lbbp$50;->a:Lbev;

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
    .line 404
    iget-object v0, p0, Lbbp$50;->b:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v1, p0, Lbbp$50;->a:Lbev;

    .line 1675
    if-eqz v1, :cond_0

    iget-object v2, v1, Lbev;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1693
    :cond_0
    :goto_0
    return-void

    .line 1679
    :cond_1
    :try_start_0
    iget-object v2, v1, Lbev;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbbo;->b(Ljava/lang/String;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    .line 1682
    if-eqz v2, :cond_2

    .line 1683
    iget-object v3, v1, Lbev;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->a(Z)V

    .line 1687
    :cond_2
    invoke-virtual {v0}, Lbbo;->e()V

    .line 1690
    iget-object v0, v0, Lbbo;->f:Lbgp;

    iget-object v2, v1, Lbev;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lbev;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v2, v1}, Lbgp;->a(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1691
    :catch_0
    move-exception v0

    .line 1692
    const-string/jumbo v1, "[dataCenter] on focus status changed exception"

    invoke-static {v1, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

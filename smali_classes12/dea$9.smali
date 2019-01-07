.class final Ldea$9;
.super Ljava/lang/Object;
.source "ChatSendPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldea;->a(Ljava/lang/String;ZLjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/HashMap;

.field final synthetic e:Ldea;


# direct methods
.method constructor <init>(Ldea;ZLjava/util/HashMap;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Ldea;

    .prologue
    .line 367
    iput-object p1, p0, Ldea$9;->e:Ldea;

    iput-boolean p2, p0, Ldea$9;->a:Z

    iput-object p3, p0, Ldea$9;->b:Ljava/util/HashMap;

    iput-object p4, p0, Ldea$9;->c:Ljava/lang/String;

    iput-object p5, p0, Ldea$9;->d:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 370
    iget-boolean v1, p0, Ldea$9;->a:Z

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Ldea$9;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Ldea$9;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 375
    :cond_0
    iget-object v1, p0, Ldea$9;->e:Ldea;

    .line 1095
    iget-boolean v1, v1, Ldea;->d:Z

    .line 375
    if-eqz v1, :cond_1

    .line 376
    iget-object v1, p0, Ldea$9;->e:Ldea;

    .line 2095
    invoke-virtual {v1}, Ldea;->a()Ldiz;

    move-result-object v1

    .line 376
    iget-object v2, p0, Ldea$9;->c:Ljava/lang/String;

    iget-object v3, p0, Ldea$9;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;)Z

    .line 388
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v1, p0, Ldea$9;->e:Ldea;

    .line 3095
    invoke-virtual {v1}, Ldea;->a()Ldiz;

    move-result-object v1

    .line 378
    iget-object v2, p0, Ldea$9;->c:Ljava/lang/String;

    iget-object v3, p0, Ldea$9;->d:Ljava/util/HashMap;

    .line 3413
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    .line 380
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 382
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "sendText"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineDurationStatistics(Ljava/lang/String;)V

    .line 383
    const-string/jumbo v1, "DD"

    const-string/jumbo v2, "sendText"

    const-string/jumbo v3, "totalTime"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sending(\u53d1\u9001\u6587\u5b57-\u6587\u5b57\u6210\u529f) start :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

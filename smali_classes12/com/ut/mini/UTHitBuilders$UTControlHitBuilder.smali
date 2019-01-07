.class public Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;
.super Lcom/ut/mini/UTHitBuilders$UTHitBuilder;
.source "UTHitBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/UTHitBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTControlHitBuilder"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "aControlName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 436
    invoke-direct {p0}, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;-><init>()V

    .line 1205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 437
    if-eqz v2, :cond_1

    .line 438
    sget-boolean v2, Lcom/alibaba/analytics/AnalyticsMgr;->e:Z

    if-eqz v2, :cond_0

    .line 439
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Control name can not be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 441
    :cond_0
    const-string/jumbo v2, "Control name can not be empty."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    :goto_0
    return-void

    .line 446
    :cond_1
    invoke-static {}, Lcom/ut/mini/UTPageHitHelper;->getInstance()Lcom/ut/mini/UTPageHitHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTPageHitHelper;->getCurrentPageName()Ljava/lang/String;

    move-result-object v1

    .line 2205
    .local v1, "lPageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 447
    if-eqz v2, :cond_3

    .line 448
    sget-boolean v2, Lcom/alibaba/analytics/AnalyticsMgr;->e:Z

    if-eqz v2, :cond_2

    .line 449
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Please call in at PageAppear and PageDisAppear."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 451
    :cond_2
    const-string/jumbo v2, "Please call in at PageAppear and PageDisAppear."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 456
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "lFullControlName":Ljava/lang/String;
    const-string/jumbo v2, "_field_page"

    invoke-super {p0, v2, v1}, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 458
    const-string/jumbo v2, "_field_event_id"

    const-string/jumbo v3, "2101"

    invoke-super {p0, v2, v3}, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 459
    const-string/jumbo v2, "_field_arg1"

    invoke-super {p0, v2, v0}, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "aPageName"    # Ljava/lang/String;
    .param p2, "aControlName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 468
    invoke-direct {p0}, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;-><init>()V

    .line 3205
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 469
    if-eqz v1, :cond_1

    .line 470
    sget-boolean v1, Lcom/alibaba/analytics/AnalyticsMgr;->e:Z

    if-eqz v1, :cond_0

    .line 471
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Control name can not be empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 473
    :cond_0
    const-string/jumbo v1, "Control name can not be empty."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    :goto_0
    return-void

    .line 4205
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 477
    if-eqz v1, :cond_3

    .line 478
    sget-boolean v1, Lcom/alibaba/analytics/AnalyticsMgr;->e:Z

    if-eqz v1, :cond_2

    .line 479
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Page name can not be empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 481
    :cond_2
    const-string/jumbo v1, "Page name can not be empty."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lamu;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 485
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "lFullControlName":Ljava/lang/String;
    const-string/jumbo v1, "_field_page"

    invoke-super {p0, v1, p1}, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 487
    const-string/jumbo v1, "_field_event_id"

    const-string/jumbo v2, "2101"

    invoke-super {p0, v1, v2}, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 488
    const-string/jumbo v1, "_field_arg1"

    invoke-super {p0, v1, v0}, Lcom/ut/mini/UTHitBuilders$UTHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    goto :goto_0
.end method

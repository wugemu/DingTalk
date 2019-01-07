.class final Lgac$5;
.super Ljava/lang/Object;
.source "CSpaceShareAdapter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgac;->a(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;I)V
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
        "Ljava/util/List",
        "<",
        "Lgiy;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgac$b;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic c:I

.field final synthetic d:Lgac;


# direct methods
.method constructor <init>(Lgac;Lgac$b;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;I)V
    .locals 0
    .param p1, "this$0"    # Lgac;

    .prologue
    .line 415
    iput-object p1, p0, Lgac$5;->d:Lgac;

    iput-object p2, p0, Lgac$5;->a:Lgac$b;

    iput-object p3, p0, Lgac$5;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iput p4, p0, Lgac$5;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 415
    check-cast p1, Ljava/util/List;

    .line 1418
    iget-object v0, p0, Lgac$5;->a:Lgac$b;

    iget-object v0, v0, Lgac$b;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    .line 1419
    if-eqz v0, :cond_0

    .line 1422
    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1423
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1424
    :cond_0
    :goto_0
    return-void

    .line 1426
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1427
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1430
    if-eqz p1, :cond_2

    .line 1431
    if-ne v0, v4, :cond_4

    .line 1432
    iget-object v0, p0, Lgac$5;->d:Lgac;

    invoke-static {v0}, Lgac;->g(Lgac;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    :cond_2
    :goto_1
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    .line 1439
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgiy;

    .line 1440
    if-eqz v0, :cond_3

    iget-object v1, v0, Lgiy;->f:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 1441
    invoke-static {v0}, Lgps;->a(Lgiy;)Ljava/lang/String;

    move-result-object v5

    .line 1442
    const-string/jumbo v6, "1"

    iget-object v1, v0, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v7, "doc_readonly"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 1443
    const-string/jumbo v7, "1"

    iget-object v1, v0, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v8, "watermark"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 1444
    iget-object v1, v0, Lgiy;->l:Ljava/lang/Long;

    if-nez v1, :cond_5

    const-wide/16 v0, 0x0

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1445
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lfzv;->b(Ljava/lang/String;Z)V

    .line 1446
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Lfzv;->c(Ljava/lang/String;Z)V

    .line 1447
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    invoke-static {v0}, Lgpt;->a(Ljava/lang/Long;)Z

    move-result v0

    invoke-virtual {v1, v5, v0}, Lfzv;->a(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1434
    :cond_4
    iget-object v0, p0, Lgac$5;->d:Lgac;

    invoke-static {v0}, Lgac;->h(Lgac;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1444
    :cond_5
    iget-object v0, v0, Lgiy;->l:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_3

    .line 1451
    :cond_6
    iget-object v0, p0, Lgac$5;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 1452
    iget-object v0, p0, Lgac$5;->a:Lgac$b;

    iget-object v0, v0, Lgac$b;->p:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1453
    iget-object v0, p0, Lgac$5;->d:Lgac;

    iget-object v1, p0, Lgac$5;->a:Lgac$b;

    iget-object v4, p0, Lgac$5;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    .line 1454
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lgac$5;->c:I

    .line 1453
    invoke-static/range {v0 .. v5}, Lgac;->a(Lgac;Lgac$b;JLjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 465
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v4, p0, Lgac$5;->a:Lgac$b;

    iget-object v4, v4, Lgac$b;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 469
    .local v1, "tag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    const-string/jumbo v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 476
    .local v2, "orgId":J
    iget-object v4, p0, Lgac$5;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 477
    iget-object v4, p0, Lgac$5;->a:Lgac$b;

    iget-object v4, v4, Lgac$b;->p:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    .end local v2    # "orgId":J
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 461
    return-void
.end method

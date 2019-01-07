.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Lewl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 2447
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Levf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2450
    .local p1, "callLogs":Ljava/util/List;, "Ljava/util/List<Levf;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->e(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;)V

    .line 2451
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2452
    .local v13, "callLogRecordList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 2453
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v4

    invoke-virtual {v4}, Lewl;->e()Ljava/util/List;

    move-result-object v15

    .line 2454
    .local v15, "localContactFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v15, :cond_0

    .line 2455
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "localContactFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2457
    .restart local v15    # "localContactFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->g(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v4}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mContactName:Ljava/lang/String;

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2460
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Levf;

    .line 2461
    .local v12, "callLogObject":Levf;
    iget-object v3, v12, Levf;->a:Ljava/lang/String;

    .line 2462
    .local v3, "nickname":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2463
    iget-object v3, v12, Levf;->b:Ljava/lang/String;

    .line 2465
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v15, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2468
    :cond_4
    new-instance v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    const/4 v4, 0x0

    iget-object v5, v12, Levf;->b:Ljava/lang/String;

    const/4 v6, 0x7

    const/4 v7, 0x0

    iget-wide v8, v12, Levf;->d:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iget-wide v10, v12, Levf;->e:J

    invoke-direct/range {v2 .. v11}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJ)V

    .line 2477
    .local v2, "callLogRecord":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->setSystemCallLog(Z)V

    .line 2478
    iget-object v4, v12, Levf;->b:Ljava/lang/String;

    invoke-static {v4}, Leyv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2479
    .local v14, "key":Ljava/lang/String;
    invoke-virtual {v2, v14}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->setRecordKey(Ljava/lang/String;)V

    .line 2480
    iget v4, v12, Levf;->c:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, v4}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->setOutgoing(Z)V

    .line 2481
    invoke-virtual {v2}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOutgoing()Z

    move-result v4

    if-nez v4, :cond_6

    iget-wide v4, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->lastTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    .line 2482
    const/4 v4, 0x0

    iput v4, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordStatus:I

    .line 2486
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;->a:Ljava/util/Set;

    invoke-interface {v4, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2487
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2480
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 2484
    :cond_6
    const/4 v4, 0x1

    iput v4, v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordStatus:I

    goto :goto_2

    .line 2491
    .end local v2    # "callLogRecord":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .end local v3    # "nickname":Ljava/lang/String;
    .end local v12    # "callLogObject":Levf;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "localContactFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$29;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2502
    return-void
.end method

.class public final Lhlt$3;
.super Ljava/lang/Object;
.source "MiniappRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhlt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lhlt$a;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Lhlt;


# direct methods
.method public constructor <init>(Lhlt;Ljava/lang/String;Lhlt$a;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lhlt;

    .prologue
    .line 500
    iput-object p1, p0, Lhlt$3;->e:Lhlt;

    iput-object p2, p0, Lhlt$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lhlt$3;->b:Lhlt$a;

    iput-object p4, p0, Lhlt$3;->c:Landroid/content/Context;

    iput-object p5, p0, Lhlt$3;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->e:Lhlt;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->a:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1150
    invoke-virtual/range {v21 .. v22}, Lhlt;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 504
    .local v14, "miniAppBundle":Landroid/os/Bundle;
    if-nez v14, :cond_1

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->b:Lhlt$a;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->b:Lhlt$a;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->e:Lhlt;

    move-object/from16 v22, v0

    const/16 v23, 0x194

    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->a:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 2150
    invoke-virtual/range {v22 .. v24}, Lhlt;->a(ILjava/lang/String;)Lhlt$b;

    move-result-object v22

    .line 506
    invoke-interface/range {v21 .. v22}, Lhlt$a;->a(Lhlt$b;)V

    .line 508
    :cond_0
    const-string/jumbo v21, "MiniappRuntime"

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "handleMiniAppUrl"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string/jumbo v24, "miniAppBundle == null, url=>"

    aput-object v24, v22, v23

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->a:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    .line 3082
    const-string/jumbo v23, "mini_task"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    :goto_0
    return-void

    .line 512
    :cond_1
    const-string/jumbo v21, "appId"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 513
    .local v15, "miniAppId":Ljava/lang/String;
    const-string/jumbo v21, "ddAppType"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 515
    .local v6, "appType":Ljava/lang/String;
    const-string/jumbo v21, "org"

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 516
    const-string/jumbo v21, "ddCorpId"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 517
    .local v9, "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;)J

    move-result-wide v16

    .line 518
    .local v16, "orgId":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->N()Ljava/util/List;

    move-result-object v18

    .line 520
    .local v18, "orgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v18, :cond_2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 521
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->b:Lhlt$a;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->b:Lhlt$a;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->e:Lhlt;

    move-object/from16 v22, v0

    const/16 v23, 0x192

    const-string/jumbo v24, "https://tms.dingtalk.com/markets/dingtalk/no-permission-miniapp?wh_ttid=phone&errortype=noOrg"

    .line 3150
    invoke-virtual/range {v22 .. v24}, Lhlt;->a(ILjava/lang/String;)Lhlt$b;

    move-result-object v22

    .line 522
    invoke-interface/range {v21 .. v22}, Lhlt$a;->a(Lhlt$b;)V

    .line 525
    :cond_3
    :try_start_0
    const-string/jumbo v21, "MiniappRuntime"

    const/16 v22, 0x6

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "handleMiniAppUrl"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string/jumbo v24, "org is wrong"

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string/jumbo v24, "orgId = "

    aput-object v24, v22, v23

    const/16 v23, 0x3

    .line 526
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x4

    const-string/jumbo v24, "orgIdList = "

    aput-object v24, v22, v23

    const/16 v23, 0x5

    invoke-static/range {v18 .. v18}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    .line 4082
    const-string/jumbo v23, "mini_task"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 527
    :catch_0
    move-exception v12

    .line 528
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 533
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v21, "ddAppId"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 534
    .local v5, "appId":Ljava/lang/String;
    const-string/jumbo v21, "ddAgentId"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, "agentId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v5, v4}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->b:Lhlt$a;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    .line 538
    const-string/jumbo v21, "https://tms.dingtalk.com/markets/dingtalk/no-permission-miniapp?wh_ttid=phone&errortype=noApp"

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 539
    .local v19, "uri":Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 540
    .local v7, "builder":Landroid/net/Uri$Builder;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 541
    const-string/jumbo v21, "agentId"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 543
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 544
    const-string/jumbo v21, "appId"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 546
    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 547
    const-string/jumbo v21, "corpId"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 549
    :cond_7
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    .line 550
    .local v20, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->b:Lhlt$a;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->e:Lhlt;

    move-object/from16 v22, v0

    const/16 v23, 0x191

    .line 4150
    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lhlt;->a(ILjava/lang/String;)Lhlt$b;

    move-result-object v22

    .line 550
    invoke-interface/range {v21 .. v22}, Lhlt$a;->a(Lhlt$b;)V

    .line 552
    .end local v7    # "builder":Landroid/net/Uri$Builder;
    .end local v19    # "uri":Landroid/net/Uri;
    .end local v20    # "url":Ljava/lang/String;
    :cond_8
    const-string/jumbo v21, "MiniappRuntime"

    const/16 v22, 0x8

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "handleMiniAppUrl"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string/jumbo v24, "app not bind"

    aput-object v24, v22, v23

    const/16 v23, 0x2

    const-string/jumbo v24, "corpId = "

    aput-object v24, v22, v23

    const/16 v23, 0x3

    aput-object v9, v22, v23

    const/16 v23, 0x4

    const-string/jumbo v24, "appId = "

    aput-object v24, v22, v23

    const/16 v23, 0x5

    aput-object v5, v22, v23

    const/16 v23, 0x6

    const-string/jumbo v24, "agentId = "

    aput-object v24, v22, v23

    const/16 v23, 0x7

    aput-object v4, v22, v23

    .line 5082
    const-string/jumbo v23, "mini_task"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 557
    :cond_9
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->b:Lhlt$a;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    .line 559
    const-string/jumbo v21, "ddFallbackUrl"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 560
    .local v13, "fallbackUrl":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 561
    move-object/from16 v0, p0

    iget-object v13, v0, Lhlt$3;->a:Ljava/lang/String;

    .line 563
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->b:Lhlt$a;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->e:Lhlt;

    move-object/from16 v22, v0

    const/16 v23, 0x195

    .line 5150
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Lhlt;->a(ILjava/lang/String;)Lhlt$b;

    move-result-object v22

    .line 563
    invoke-interface/range {v21 .. v22}, Lhlt$a;->a(Lhlt$b;)V

    .line 565
    .end local v13    # "fallbackUrl":Ljava/lang/String;
    :cond_b
    const-string/jumbo v21, "MiniappRuntime"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "handleMiniAppUrl"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string/jumbo v24, "miniappId is null"

    aput-object v24, v22, v23

    .line 6082
    const-string/jumbo v23, "mini_task"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 570
    :cond_c
    const-string/jumbo v21, "ddVersion"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 571
    .local v11, "ddVersion":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->c:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 573
    .local v10, "currentVersion":Ljava/lang/String;
    invoke-static {v11, v10}, Lhon;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->b:Lhlt$a;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 575
    const-string/jumbo v21, "ddFallbackUrl"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 576
    .restart local v13    # "fallbackUrl":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 577
    move-object/from16 v0, p0

    iget-object v13, v0, Lhlt$3;->a:Ljava/lang/String;

    .line 579
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->b:Lhlt$a;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->e:Lhlt;

    move-object/from16 v22, v0

    const/16 v23, 0x195

    .line 6150
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Lhlt;->a(ILjava/lang/String;)Lhlt$b;

    move-result-object v22

    .line 579
    invoke-interface/range {v21 .. v22}, Lhlt$a;->a(Lhlt$b;)V

    .line 581
    .end local v13    # "fallbackUrl":Ljava/lang/String;
    :cond_e
    const-string/jumbo v21, "MiniappRuntime"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "handleMiniAppUrl"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string/jumbo v24, "ddversion is greater than currentVersion"

    aput-object v24, v22, v23

    .line 7082
    const-string/jumbo v23, "mini_task"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 587
    .end local v4    # "agentId":Ljava/lang/String;
    .end local v5    # "appId":Ljava/lang/String;
    .end local v9    # "corpId":Ljava/lang/String;
    .end local v10    # "currentVersion":Ljava/lang/String;
    .end local v11    # "ddVersion":Ljava/lang/String;
    .end local v16    # "orgId":J
    .end local v18    # "orgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_f
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->b:Lhlt$a;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->b:Lhlt$a;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->e:Lhlt;

    move-object/from16 v22, v0

    const/16 v23, 0x194

    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->a:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 7150
    invoke-virtual/range {v22 .. v24}, Lhlt;->a(ILjava/lang/String;)Lhlt$b;

    move-result-object v22

    .line 589
    invoke-interface/range {v21 .. v22}, Lhlt$a;->a(Lhlt$b;)V

    .line 591
    :cond_10
    const-string/jumbo v21, "MiniappRuntime"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "handleMiniAppUrl"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string/jumbo v24, "miniAppId == null"

    aput-object v24, v22, v23

    .line 8082
    const-string/jumbo v23, "mini_task"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 595
    :cond_11
    invoke-static {v15}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeStatistics;->commitMiniCoreType(Ljava/lang/String;)V

    .line 598
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 600
    sget-boolean v21, Lhfw;->a:Z

    if-eqz v21, :cond_13

    .line 601
    const-string/jumbo v8, "https://h5.dingtalk.com/eapp/error.html"

    .line 605
    .local v8, "callbackUrl":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->b:Lhlt$a;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->b:Lhlt$a;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->e:Lhlt;

    move-object/from16 v22, v0

    const/16 v23, 0x194

    .line 8150
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lhlt;->a(ILjava/lang/String;)Lhlt$b;

    move-result-object v22

    .line 606
    invoke-interface/range {v21 .. v22}, Lhlt$a;->a(Lhlt$b;)V

    .line 608
    :cond_12
    const-string/jumbo v21, "MiniappRuntime"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "handleMiniAppUrl"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const-string/jumbo v24, "core is not uc core"

    aput-object v24, v22, v23

    .line 9082
    const-string/jumbo v23, "mini_task"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 603
    .end local v8    # "callbackUrl":Ljava/lang/String;
    :cond_13
    const-string/jumbo v8, "https://h5.dingtalk.com/eapp/error.html?type=non-uc"

    .restart local v8    # "callbackUrl":Ljava/lang/String;
    goto :goto_1

    .line 612
    .end local v8    # "callbackUrl":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->e:Lhlt;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lhlt$3;->d:Landroid/os/Bundle;

    move-object/from16 v22, v0

    .line 9679
    if-eqz v14, :cond_15

    if-nez v22, :cond_16

    .line 613
    :cond_15
    :goto_2
    invoke-static {}, Lcaa;->a()Lcaa;

    move-result-object v21

    new-instance v22, Lhlt$3$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v15}, Lhlt$3$1;-><init>(Lhlt$3;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Lcaa;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 9683
    :cond_16
    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/Bundle;

    .line 9685
    const-string/jumbo v23, "url"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 9688
    const-string/jumbo v23, "mini_app_launch_broadcast_enable"

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 9690
    const-string/jumbo v23, "mini_app_launch_broadcast_enable"

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9700
    const-string/jumbo v22, "cid"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 9701
    const-string/jumbo v22, "ding_content_type"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 9702
    const-string/jumbo v23, "frameworkSceneId"

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9703
    const-string/jumbo v22, "cid"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9704
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v22

    const-class v23, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 9705
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    .line 9704
    invoke-virtual/range {v22 .. v23}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 9706
    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 9707
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v15, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getExtraJo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 9708
    const-string/jumbo v22, ""

    .line 9710
    :try_start_1
    invoke-static/range {v23 .. v23}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v23

    .line 9711
    if-eqz v23, :cond_17

    .line 9712
    const-string/jumbo v25, "appOwnerOrgId"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v22

    .line 9718
    :cond_17
    :goto_3
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_18

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_18

    .line 9719
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, 0x1

    const-string/jumbo v25, "_"

    aput-object v25, v23, v24

    const/16 v24, 0x2

    aput-object v22, v23, v24

    invoke-static/range {v23 .. v23}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 9720
    invoke-static/range {v22 .. v22}, Lhoi;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 9721
    new-instance v23, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct/range {v23 .. v23}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 9722
    const-string/jumbo v24, "openCid"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9723
    const-string/jumbo v22, "referrerInfo"

    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9727
    :cond_18
    const-string/jumbo v22, "cid"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 9728
    const-string/jumbo v22, "ding_content_type"

    invoke-virtual/range {v21 .. v22}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 9731
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 9714
    :catch_1
    move-exception v23

    .line 9715
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

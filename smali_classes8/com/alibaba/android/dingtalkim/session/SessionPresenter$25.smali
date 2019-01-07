.class final Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;
.super Ljava/lang/Object;
.source "SessionPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 670
    const-string/jumbo v6, "STATISTICS"

    invoke-static {v6}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 672
    .local v4, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v7, "session_load"

    aput-object v7, v6, v8

    const-string/jumbo v7, "load_session_data"

    invoke-interface {v4, v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics([Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const/16 v6, 0x2b60

    invoke-interface {v4, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 676
    .local v0, "endTime":J
    const/4 v5, 0x0

    .line 678
    .local v5, "trace":Lcom/alibaba/doraemon/trace/Trace;
    :try_start_0
    const-string/jumbo v6, "im"

    sget-object v7, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->l:Ljava/lang/String;

    invoke-static {v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v5

    .line 679
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "load session err code:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " reason:"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p2, v8, v9

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/alibaba/doraemon/trace/Trace;->info([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    if-eqz v5, :cond_0

    .line 682
    invoke-interface {v5}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 685
    :cond_0
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 1116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 685
    invoke-interface {v6}, Ldyy$b;->d()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 686
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 2116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 686
    invoke-interface {v6}, Ldyy$b;->j()V

    .line 688
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcms;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, "netEnv":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 690
    .local v3, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "value"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->a:J

    sub-long v8, v0, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "SessionFragment"

    const-string/jumbo v8, "convsListTime"

    invoke-interface {v6, v7, v8, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 696
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 3116
    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 696
    invoke-interface {v6}, Ldyy$b;->H_()V

    .line 698
    .end local v2    # "netEnv":Ljava/lang/String;
    .end local v3    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 681
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_2

    .line 682
    invoke-interface {v5}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    :cond_2
    throw v6
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 578
    check-cast p1, Ljava/util/List;

    .line 3586
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 4116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 3586
    invoke-interface {v0}, Ldyy$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3587
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const-string/jumbo v2, "load session suc activity null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3588
    :goto_0
    return-void

    .line 3591
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 5712
    if-eqz p1, :cond_1

    .line 5717
    const-string/jumbo v0, "pref_key_auto_switch_back_no_efficient"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5719
    const-string/jumbo v0, "pref_key_auto_switch_back_no_efficient"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 6036
    const-string/jumbo v0, "pref_key_efficient_mode_open"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 5722
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "Auto switch back to no efficient mode if need, conversation count="

    aput-object v6, v3, v5

    const/4 v5, 0x1

    .line 5724
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, ", isEfficientOn="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 5722
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5725
    if-eqz v0, :cond_1

    .line 5731
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_7

    .line 5732
    const/4 v0, 0x1

    .line 5760
    :goto_1
    if-eqz v0, :cond_1

    .line 5761
    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 5762
    const/4 v0, 0x0

    .line 6044
    const-string/jumbo v1, "pref_key_efficient_mode_open"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 5763
    iget-object v0, v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5765
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, v4, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lctk$i;->dt_im_streamline_mode_quit_once_desc:I

    .line 5766
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->dt_common_i_know:I

    const/4 v2, 0x0

    .line 5767
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 5768
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 3593
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 6116
    iget-boolean v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->i:Z

    .line 7116
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b(Z)Z

    move-result v0

    .line 3593
    if-eqz v0, :cond_4

    .line 3594
    const-string/jumbo v0, "pref_key_smart_hour_init"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3595
    const-string/jumbo v0, "pref_key_smart_hour_init"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 3596
    const/high16 v2, 0x41400000    # 12.0f

    .line 3597
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_12

    .line 3599
    invoke-static {}, Lcms;->u()J

    move-result-wide v6

    .line 3600
    const/4 v0, 0x0

    .line 3601
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 3602
    if-eqz v0, :cond_2

    .line 3606
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getLastModify()J

    move-result-wide v4

    .line 3607
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 3608
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v4

    .line 3611
    :cond_3
    sub-long v4, v6, v4

    const-wide/32 v8, 0x5265c00

    cmp-long v0, v4, v8

    if-gez v0, :cond_11

    .line 3612
    add-int/lit8 v0, v1, 0x1

    .line 3614
    :goto_3
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_d

    .line 3615
    const/4 v0, 0x0

    .line 3620
    :goto_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 8056
    const-string/jumbo v2, "intent_key_efficient_smart_HOUR"

    invoke-static {v2, v0}, Lcpk;->a(Ljava/lang/String;F)F

    move-result v0

    .line 8116
    iput v0, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->l:F

    .line 3621
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 9116
    iget v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->l:F

    .line 10064
    const-string/jumbo v1, "intent_key_efficient_smart_HOUR"

    invoke-static {v1, v0}, Lcpk;->b(Ljava/lang/String;F)V

    .line 3625
    :goto_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x1e

    if-le v0, v2, :cond_f

    const/4 v0, 0x0

    .line 11056
    :goto_6
    const-string/jumbo v2, "intent_key_efficient_smart_HOUR"

    invoke-static {v2, v0}, Lcpk;->a(Ljava/lang/String;F)F

    move-result v0

    .line 11116
    iput v0, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->l:F

    .line 3626
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 12116
    iget v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->l:F

    .line 3626
    const/high16 v2, 0x42700000    # 60.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42700000    # 60.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    .line 13116
    iput-wide v2, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->k:D

    .line 3627
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 14116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 3627
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 15116
    iget v1, v1, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->l:F

    .line 3627
    invoke-interface {v0, v1}, Ldyy$b;->a(F)V

    .line 3630
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3631
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b(Lcom/alibaba/android/dingtalkim/session/SessionPresenter;Ljava/util/List;Z)V

    .line 3632
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3633
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldks;->a(Ljava/util/List;)V

    .line 3636
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 16116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 3636
    if-eqz v0, :cond_6

    .line 3637
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 17116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->p:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 3637
    invoke-interface {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;->filter(Ljava/util/List;)V

    .line 3640
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->b(Ljava/util/List;Z)V

    .line 3642
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 18116
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->h:Z

    .line 3643
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 19116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 3643
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 20116
    iget-boolean v2, v2, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->h:Z

    .line 3643
    invoke-interface {v0, v2}, Ldyy$b;->a(Z)V

    .line 3644
    const-string/jumbo v0, "im"

    sget-object v2, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts;->l:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "load session suc size :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3646
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 21116
    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 3646
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_7
    invoke-interface {v2, v0}, Ldyy$b;->e(Z)V

    .line 3647
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 22116
    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->a:Ldyy$b;

    .line 3647
    invoke-interface {v0}, Ldyy$b;->i()V

    .line 3649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3650
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3652
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3653
    const-string/jumbo v5, "value"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    const-string/jumbo v7, "&"

    aput-object v7, v6, v0

    const/4 v0, 0x2

    iget-wide v8, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->a:J

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    const-string/jumbo v2, "&1"

    aput-object v2, v6, v0

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3654
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v2, "SessionFragment"

    const-string/jumbo v3, "convsListTime"

    invoke-interface {v0, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3658
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    .line 23116
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->d(Ljava/util/List;)V

    goto/16 :goto_0

    .line 5735
    :cond_7
    const/4 v0, 0x0

    .line 5736
    invoke-static {}, Lcms;->u()J

    move-result-wide v6

    .line 5737
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :cond_8
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 5738
    if-eqz v0, :cond_8

    .line 5741
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getLastModify()J

    move-result-wide v2

    .line 5742
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gtz v8, :cond_9

    .line 5743
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 5744
    if-eqz v0, :cond_9

    .line 5745
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    .line 5748
    :cond_9
    sub-long v2, v6, v2

    const-wide/32 v8, 0x240c8400

    cmp-long v0, v2, v8

    if-gez v0, :cond_13

    .line 5749
    add-int/lit8 v0, v1, 0x1

    .line 5751
    :goto_9
    const/16 v1, 0x32

    if-ge v0, v1, :cond_a

    move v1, v0

    .line 5754
    goto :goto_8

    :cond_a
    move v1, v0

    .line 5755
    :cond_b
    const/16 v0, 0x32

    if-ge v1, v0, :cond_c

    const/4 v0, 0x1

    .line 5756
    :goto_a
    const-string/jumbo v2, "im"

    const/4 v3, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Auto switch back to no efficient mode if need, valid conversation count="

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 5758
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    .line 5756
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5755
    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :cond_d
    move v1, v0

    .line 3618
    goto/16 :goto_2

    .line 3623
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter$25;->b:Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-static {}, Ldyz;->a()F

    move-result v1

    .line 10116
    iput v1, v0, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;->l:F

    goto/16 :goto_5

    .line 3625
    :cond_f
    const/high16 v0, 0x41400000    # 12.0f

    goto/16 :goto_6

    .line 3646
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_11
    move v0, v1

    goto/16 :goto_3

    :cond_12
    move v0, v2

    goto/16 :goto_4

    :cond_13
    move v0, v1

    goto :goto_9
.end method

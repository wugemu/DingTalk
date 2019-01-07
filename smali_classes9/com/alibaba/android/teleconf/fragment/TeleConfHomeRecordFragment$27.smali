.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/lang/String;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 2261
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 2261
    check-cast p1, Ljava/util/List;

    .line 3264
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3279
    :cond_0
    :goto_0
    return-void

    .line 3267
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->k(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)V

    .line 3268
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 3269
    if-eqz v0, :cond_0

    .line 3270
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->g(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3271
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3272
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 3274
    :cond_2
    iput v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 3275
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 3276
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3277
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Create biz call "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3278
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5, v4}, Lewl;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 3279
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V

    goto :goto_0

    .line 3282
    :cond_3
    const-string/jumbo v1, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Create sys call "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3283
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 3284
    :goto_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->a:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 3283
    :cond_4
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x0

    .line 2296
    const-string/jumbo v6, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "Create user by mobile "

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ","

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p2, v8, v9

    .line 2297
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2296
    invoke-static {v6, v7, v8}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    const-wide/16 v2, 0x0

    .line 2300
    .local v2, "errorCode":J
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2301
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2303
    :cond_0
    const-wide/16 v6, 0x2af8

    cmp-long v6, v2, v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->a:Ljava/lang/String;

    .line 2304
    invoke-static {v6}, Leyv;->d(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .line 2305
    invoke-static {v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->N(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2306
    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;->mNumber:Ljava/lang/String;

    invoke-static {v6}, Leyv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2307
    .local v4, "formatNumber":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 2308
    .local v0, "areaCode":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2309
    const/4 v6, 0x0

    const-string/jumbo v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2311
    :cond_1
    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->o(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lewj;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->a:Ljava/lang/String;

    new-instance v9, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27$1;

    invoke-direct {v9, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;)V

    .line 2475
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v7, Lewj;->a:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_4

    .line 2317
    :cond_3
    :goto_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "call_records_keypad_match_city_code_alert"

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2337
    .end local v0    # "areaCode":Ljava/lang/String;
    .end local v4    # "formatNumber":Ljava/lang/String;
    :goto_1
    return-void

    .line 2478
    .restart local v0    # "areaCode":Ljava/lang/String;
    .restart local v4    # "formatNumber":Ljava/lang/String;
    :cond_4
    iget-object v6, v7, Lewj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 2479
    if-eqz v6, :cond_3

    invoke-static {v6}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2482
    iget-boolean v10, v7, Lewj;->d:Z

    if-eqz v10, :cond_5

    .line 2483
    const/4 v10, 0x0

    iput-object v10, v7, Lewj;->f:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    .line 2485
    :cond_5
    iget-object v10, v7, Lewj;->f:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    if-nez v10, :cond_6

    .line 2486
    new-instance v10, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-direct {v10, v6}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;-><init>(Landroid/content/Context;)V

    iput-object v10, v7, Lewj;->f:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    .line 2496
    :cond_6
    iget-object v6, v7, Lewj;->f:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    .line 3137
    iput-object v0, v6, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->b:Ljava/lang/String;

    .line 3138
    iput-object v8, v6, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->c:Ljava/lang/String;

    .line 3143
    iput-object v9, v6, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->a:Lcom/alibaba/android/teleconf/widget/InputCodeDialog$a;

    .line 2497
    iget-object v6, v7, Lewj;->f:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2498
    iget-object v6, v7, Lewj;->f:Lcom/alibaba/android/teleconf/widget/InputCodeDialog;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/widget/InputCodeDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2334
    .end local v0    # "areaCode":Ljava/lang/String;
    .end local v4    # "formatNumber":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2335
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2319
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    const-wide/16 v6, 0x198

    cmp-long v6, v2, v6

    if-nez v6, :cond_9

    .line 2321
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->b:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-lez v6, :cond_a

    .line 2322
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v6

    invoke-virtual {v6}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    sget v7, Leuj$l;->dt_conference_bizcall_make_fail:I

    invoke-virtual {v6, v7}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2323
    .local v5, "toast":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 2324
    move-object v5, p2

    .line 2326
    :cond_8
    invoke-static {v5}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 2330
    .end local v5    # "toast":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v6

    const-string/jumbo v7, "call_records_keypad_number_not_support_toast"

    invoke-interface {v6, v7}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2332
    :cond_a
    iget-object v6, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->a:Ljava/lang/String;

    iget-object v9, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$27;->c:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v9}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lewb;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2292
    return-void
.end method

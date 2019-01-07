.class final Lhgh$3$1;
.super Ljava/lang/Object;
.source "KaoQinViewImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhgh$3;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhgh$3;


# direct methods
.method constructor <init>(Lhgh$3;)V
    .locals 0
    .param p1, "this$1"    # Lhgh$3;

    .prologue
    .line 320
    iput-object p1, p0, Lhgh$3$1;->a:Lhgh$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 323
    iget-object v1, p0, Lhgh$3$1;->a:Lhgh$3;

    iget-object v1, v1, Lhgh$3;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-object v2, p0, Lhgh$3$1;->a:Lhgh$3;

    iget-object v2, v2, Lhgh$3;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(Ljava/lang/String;)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v10

    .line 326
    .local v10, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v10, :cond_1

    .line 329
    iget-object v1, p0, Lhgh$3$1;->a:Lhgh$3;

    iget-wide v2, v1, Lhgh$3;->g:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    .line 331
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-wide v2, v10, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {}, Lhgh;->e()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JJI)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v9

    .line 333
    .local v9, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v9, :cond_4

    iget-object v1, v9, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->rawHomepage:Ljava/lang/String;

    .line 334
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 336
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-object v2, v9, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->rawHomepage:Ljava/lang/String;

    iget-object v3, p0, Lhgh$3$1;->a:Lhgh$3;

    iget-object v3, v3, Lhgh$3;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 338
    .local v12, "url":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 339
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 341
    .local v11, "uri":Landroid/net/Uri;
    const-string/jumbo v1, "url"

    invoke-virtual {v11, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 343
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 344
    const/16 v1, 0x23

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 345
    .local v8, "index":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_0

    .line 346
    const/4 v1, 0x0

    invoke-virtual {v12, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 348
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v7

    .line 349
    .local v7, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v7, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 350
    iget-object v1, p0, Lhgh$3$1;->a:Lhgh$3;

    iget v1, v1, Lhgh$3;->h:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    .line 351
    const-string/jumbo v1, "#attendanceMachineDetailM2"

    invoke-virtual {v7, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 355
    :goto_0
    const/16 v1, 0x3f

    invoke-virtual {v7, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "deviceUid="

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhgh$3$1;->a:Lhgh$3;

    iget-wide v2, v2, Lhgh$3;->g:J

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&devServId="

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lhgh$3$1;->a:Lhgh$3;

    iget v2, v2, Lhgh$3;->h:I

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 357
    invoke-virtual {v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 359
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 360
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v1, "micro_app"

    invoke-static {}, Lhgh;->e()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 362
    const-string/jumbo v1, "from_work_stat"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 363
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 388
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v7    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v8    # "index":I
    .end local v9    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v10    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "url":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 353
    .restart local v7    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v8    # "index":I
    .restart local v9    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .restart local v10    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    .restart local v11    # "uri":Landroid/net/Uri;
    .restart local v12    # "url":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "#attendanceMachineDetail"

    invoke-virtual {v7, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 365
    .end local v7    # "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v8    # "index":I
    :cond_3
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "KaoQinViewImpl"

    const-string/jumbo v3, "[Device Beacon] KaoQinViewImpl dd atm url is null!"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 369
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "url":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "KaoQinViewImpl"

    const-string/jumbo v3, "[Device Beacon] KaoQinViewImpl microAPPObject is null or rawHomepage is empty!"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 373
    .end local v9    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_5
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-wide v2, v10, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {}, Lhgh;->f()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JJI)Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    move-result-object v9

    .line 375
    .restart local v9    # "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v9, :cond_6

    iget-object v1, v9, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->rawHomepage:Ljava/lang/String;

    .line 376
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 377
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-object v2, v9, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->rawHomepage:Ljava/lang/String;

    iget-object v3, p0, Lhgh$3$1;->a:Lhgh$3;

    iget-object v3, v3, Lhgh$3;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 379
    .restart local v12    # "url":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v12, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 383
    .end local v12    # "url":Ljava/lang/String;
    :cond_6
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "KaoQinViewImpl"

    const-string/jumbo v3, "[Device Beacon] KaoQinViewImpl microAPPObject is null or rawHomepage is empty!"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;
.super Ljava/lang/Object;
.source "CreateNewOrgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 377
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->d(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 378
    const-string/jumbo v3, "org_create_normal_exp_click"

    invoke-static {v3}, Lfxo;->a(Ljava/lang/String;)V

    .line 382
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->e(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "inputName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 384
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 385
    .local v2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "org_create_normal_error_click"

    invoke-interface {v3, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 388
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    sget v4, Lezg$l;->add_org_hint:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 419
    .end local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 380
    .end local v1    # "inputName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "org_create_normal_success_click"

    invoke-static {v3}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    .restart local v1    # "inputName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->f(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v3

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    if-nez v3, :cond_4

    .line 392
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 393
    .restart local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "2"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "org_create_normal_error_click"

    invoke-interface {v3, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 396
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    sget v4, Lezg$l;->dt_org_select_industry_hint:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 399
    .end local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->c(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)I

    move-result v3

    if-gtz v3, :cond_5

    .line 400
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 401
    .restart local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "6"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "org_create_normal_error_click"

    invoke-interface {v3, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 404
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    sget v4, Lezg$l;->dt_org_select_industry_scale_hint:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 407
    .end local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->g(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->h(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)Lfgi;

    move-result-object v3

    invoke-virtual {v3}, Lfgi;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v4}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->i(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 408
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 409
    .restart local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    const-string/jumbo v4, "4"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "org_create_normal_error_click"

    invoke-interface {v3, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 412
    const-string/jumbo v3, "pref_key_newFlow"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 414
    .local v0, "canQuick":Z
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-static {v3, v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->b(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Z)V

    goto/16 :goto_1

    .line 418
    .end local v0    # "canQuick":Z
    .end local v2    # "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$24;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

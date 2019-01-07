.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;
.super Ljava/lang/Object;
.source "CreateOrgActivityV3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 412
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->e(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    const-string/jumbo v2, "org_create_normal_exp_click"

    invoke-static {v2}, Lfxo;->a(Ljava/lang/String;)V

    .line 417
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->f(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, "inputName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 419
    :cond_0
    const-string/jumbo v2, "org_create_normal_error_click"

    const-string/jumbo v3, "type=%d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 1315
    invoke-static {v8, v2, v3, v4}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    sget v3, Lezg$l;->add_org_hint:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 459
    :goto_1
    return-void

    .line 415
    .end local v1    # "inputName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "org_create_normal_success_click"

    invoke-static {v2}, Lfxo;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 424
    .restart local v1    # "inputName":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v2

    iget v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    if-nez v2, :cond_4

    .line 425
    :cond_3
    const-string/jumbo v2, "org_create_normal_error_click"

    const-string/jumbo v3, "type=%d"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 2315
    invoke-static {v8, v2, v3, v4}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    sget v3, Lezg$l;->dt_org_select_industry_hint:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 430
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)I

    move-result v2

    if-gtz v2, :cond_5

    .line 431
    const-string/jumbo v2, "org_create_normal_error_click"

    const-string/jumbo v3, "type=%d"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 3315
    invoke-static {v8, v2, v3, v4}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    sget v3, Lezg$l;->dt_org_select_industry_scale_hint:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 437
    :cond_5
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 439
    const-string/jumbo v2, "org_create_normal_error_click"

    const-string/jumbo v3, "type=%d"

    new-array v4, v6, [Ljava/lang/Object;

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 4315
    invoke-static {v8, v2, v3, v4}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    sget v3, Lezg$l;->dt_org_select_region_hint:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 444
    :cond_6
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->g(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 445
    :cond_7
    const-string/jumbo v2, "org_create_normal_error_click"

    const-string/jumbo v3, "type=%d"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 5315
    invoke-static {v8, v2, v3, v4}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    sget v3, Lezg$l;->dt_org_create_select_my_job_position_tips:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 449
    :cond_8
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->h(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->i(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)Lfla;

    move-result-object v2

    invoke-virtual {v2}, Lfla;->a()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->j(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;)I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 450
    const-string/jumbo v2, "org_create_normal_error_click"

    const-string/jumbo v3, "type=%d"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 6315
    invoke-static {v8, v2, v3, v4}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    const-string/jumbo v2, "pref_key_newFlow"

    invoke-static {v2, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 454
    .local v0, "canQuick":Z
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v2, v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Z)V

    goto/16 :goto_1

    .line 458
    .end local v0    # "canQuick":Z
    :cond_9
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$34;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-static {v2, v1, v7}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method

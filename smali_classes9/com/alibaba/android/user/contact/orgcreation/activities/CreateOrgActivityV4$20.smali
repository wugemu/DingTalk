.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;
.super Ljava/lang/Object;
.source "CreateOrgActivityV4.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 339
    const-string/jumbo v1, "org_create_normal_success_click"

    invoke-static {v1}, Lfxo;->a(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->e(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "inputName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 342
    :cond_0
    const-string/jumbo v1, "org_create_step1_normal_error_click"

    const-string/jumbo v2, "type=%d"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1315
    invoke-static {v6, v1, v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    sget v2, Lezg$l;->add_org_hint:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 373
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->d(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    if-nez v1, :cond_3

    .line 348
    :cond_2
    const-string/jumbo v1, "org_create_step1_normal_error_click"

    const-string/jumbo v2, "type=%d"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 2315
    invoke-static {v6, v1, v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    sget v2, Lezg$l;->dt_org_select_industry_hint:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)I

    move-result v1

    if-gtz v1, :cond_4

    .line 354
    const-string/jumbo v1, "org_create_step1_normal_error_click"

    const-string/jumbo v2, "type=%d"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 3315
    invoke-static {v6, v1, v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    sget v2, Lezg$l;->dt_org_select_industry_scale_hint:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 361
    const-string/jumbo v1, "org_create_step1_normal_error_click"

    const-string/jumbo v2, "type=%d"

    new-array v3, v4, [Ljava/lang/Object;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 4315
    invoke-static {v6, v1, v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    sget v2, Lezg$l;->dt_org_select_region_hint:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->f(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;)Lcom/alibaba/android/user/model/PositionData;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/user/model/PositionData;->code:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 367
    :cond_6
    const-string/jumbo v1, "org_create_step1_normal_error_click"

    const-string/jumbo v2, "type=%d"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 5315
    invoke-static {v6, v1, v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    sget v2, Lezg$l;->dt_org_create_select_my_job_position_tips:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 372
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4$20;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;

    invoke-static {v1, v0, v5}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;->a(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV4;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

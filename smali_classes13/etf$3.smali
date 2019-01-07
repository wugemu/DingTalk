.class final Letf$3;
.super Ljava/lang/Object;
.source "ContactSearchViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Letf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/search/model/BaseModel;

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

.field final synthetic c:Letf;


# direct methods
.method constructor <init>(Letf;Lcom/alibaba/android/search/model/BaseModel;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 0
    .param p1, "this$0"    # Letf;

    .prologue
    .line 355
    iput-object p1, p0, Letf$3;->c:Letf;

    iput-object p2, p0, Letf$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    iput-object p3, p0, Letf$3;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 358
    const-string/jumbo v3, "search_result_contactcall_click"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "mIsDemissionColleague"

    aput-object v7, v5, v6

    iget-object v6, p0, Letf$3;->c:Letf;

    .line 1079
    iget-boolean v6, v6, Letf;->r:Z

    .line 358
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Letd;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 360
    iget-object v3, p0, Letf$3;->c:Letf;

    .line 2079
    iget-boolean v3, v3, Letf;->r:Z

    .line 360
    if-eqz v3, :cond_2

    .line 361
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    iget-object v3, p0, Letf$3;->c:Letf;

    iget-object v3, v3, Letf;->a:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 362
    .local v1, "builder":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;
    sget v3, Lemt$g;->dt_search_call_dimission_colleague_alert_title:I

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lemt$g;->dt_search_call_dimission_colleague_alert:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lemt$g;->cancel:I

    new-instance v5, Letf$3$2;

    invoke-direct {v5, p0}, Letf$3$2;-><init>(Letf$3;)V

    .line 363
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lemt$g;->dt_search_function_add_contacts:I

    new-instance v5, Letf$3$1;

    invoke-direct {v5, p0}, Letf$3$1;-><init>(Letf$3;)V

    .line 369
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 402
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 410
    .end local v1    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;
    :goto_0
    iget-object v3, p0, Letf$3;->c:Letf;

    iget-object v3, v3, Letf;->a:Landroid/app/Activity;

    iget-object v4, p0, Letf$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v4}, Lcom/alibaba/android/search/model/BaseModel;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 413
    iget-object v3, p0, Letf$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v3}, Lcom/alibaba/android/search/model/BaseModel;->getSearchClickLogModel()Lcom/alibaba/android/search/model/SearchClickLogModel;

    move-result-object v2

    .line 414
    .local v2, "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    if-eqz v2, :cond_1

    .line 415
    invoke-static {}, Lcom/alibaba/android/search/utils/SearchUtils;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 416
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->CALL_BTN:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionType;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 417
    iget-object v3, p0, Letf$3;->c:Letf;

    iget v3, v3, Letf;->c:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setTab(I)V

    .line 419
    invoke-static {}, Lcom/alibaba/android/search/impls/SearchInterfaceImpl;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->v()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 420
    iget-object v3, p0, Letf$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v3}, Lcom/alibaba/android/search/model/BaseModel;->getAssureModel()Lcom/alibaba/android/search/assure/model/AssureModel;

    move-result-object v0

    .line 421
    .local v0, "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    if-eqz v0, :cond_0

    .line 423
    sget-object v3, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->HP_ASSURE_CONTACT_TEL:Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;

    invoke-virtual {v3}, Lcom/alibaba/android/search/utils/log/SearchLogConsts$SearchPositionCode;->getValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/search/assure/model/AssureModel;->adjustClickLogModel(I)V

    .line 425
    :cond_0
    iget-object v3, p0, Letf$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-static {v2, v3}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;Lcom/alibaba/android/search/model/BaseModel;)V

    .line 436
    .end local v0    # "assureModel":Lcom/alibaba/android/search/assure/model/AssureModel;
    :cond_1
    :goto_1
    iget-object v3, p0, Letf$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    invoke-virtual {v3}, Lcom/alibaba/android/search/model/BaseModel;->markItemClick()V

    .line 437
    return-void

    .line 404
    .end local v2    # "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    :cond_2
    iget-object v3, p0, Letf$3;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    iget-object v3, p0, Letf$3;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    iget v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    if-eq v3, v8, :cond_3

    .line 405
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v3

    iget-object v4, p0, Letf$3;->c:Letf;

    iget-object v4, v4, Letf;->a:Landroid/app/Activity;

    iget-object v5, p0, Letf$3;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    sget-object v6, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->SEARCH:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v3, v4, v5, v6}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    goto :goto_0

    .line 407
    :cond_3
    iget-object v3, p0, Letf$3;->a:Lcom/alibaba/android/search/model/BaseModel;

    iget-object v4, p0, Letf$3;->c:Letf;

    iget-object v4, v4, Letf;->a:Landroid/app/Activity;

    iget-object v5, p0, Letf$3;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    sget-object v6, Lcom/alibaba/android/search/utils/SearchUtils$ActionType;->TYPE_FREE_CALL:Lcom/alibaba/android/search/utils/SearchUtils$ActionType;

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/android/search/utils/SearchUtils;->a(Lcom/alibaba/android/search/model/BaseModel;Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/android/search/utils/SearchUtils$ActionType;)V

    goto :goto_0

    .line 427
    .restart local v2    # "clickLog":Lcom/alibaba/android/search/model/SearchClickLogModel;
    :cond_4
    invoke-static {v2}, Letb;->a(Lcom/alibaba/android/search/model/SearchClickLogModel;)V

    goto :goto_1

    .line 431
    :cond_5
    sget-object v3, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->CALL_BTN:Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;

    invoke-virtual {v3}, Lcom/alibaba/android/search/old/OldSearchLogConsts$SearchPositionType;->getValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/search/model/SearchClickLogModel;->setPositionType(I)V

    .line 432
    invoke-static {}, Leqb;->b()V

    goto :goto_1
.end method

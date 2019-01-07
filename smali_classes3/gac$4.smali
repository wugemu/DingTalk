.class final Lgac$4;
.super Ljava/lang/Object;
.source "CSpaceShareAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgac;->b(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lgac$b;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

.field final synthetic c:Lgac;


# direct methods
.method constructor <init>(Lgac;ZLcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)V
    .locals 0
    .param p1, "this$0"    # Lgac;

    .prologue
    .line 357
    iput-object p1, p0, Lgac$4;->c:Lgac;

    iput-boolean p2, p0, Lgac$4;->a:Z

    iput-object p3, p0, Lgac$4;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 360
    iget-boolean v1, p0, Lgac$4;->a:Z

    if-eqz v1, :cond_1

    .line 361
    iget-object v1, p0, Lgac$4;->c:Lgac;

    invoke-static {v1}, Lgac;->b(Lgac;)Lgac$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lgac$4;->c:Lgac;

    invoke-static {v1}, Lgac;->b(Lgac;)Lgac$a;

    move-result-object v1

    iget-object v2, p0, Lgac$4;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-object v4, p0, Lgac$4;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    .line 363
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lgac$4;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    .line 362
    invoke-interface {v1, v2, v3, v4, v5}, Lgac$a;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iget-object v1, p0, Lgac$4;->c:Lgac;

    invoke-static {v1}, Lgac;->c(Lgac;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 1230
    .local v0, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    iput-boolean v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 369
    iget-object v1, p0, Lgac$4;->c:Lgac;

    invoke-static {v1}, Lgac;->d(Lgac;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->cspace_org_auth_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 370
    iget-object v1, p0, Lgac$4;->c:Lgac;

    .line 371
    invoke-static {v1}, Lgac;->e(Lgac;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->cspace_org_auth_content:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lgac$4;->b:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 373
    iget-object v1, p0, Lgac$4;->c:Lgac;

    invoke-static {v1}, Lgac;->f(Lgac;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lfzs$h;->mail_guide_text_i_know_that:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 374
    new-instance v1, Lgac$4$1;

    invoke-direct {v1, p0, v0}, Lgac$4$1;-><init>(Lgac$4;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 2271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 380
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 381
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    goto :goto_0
.end method

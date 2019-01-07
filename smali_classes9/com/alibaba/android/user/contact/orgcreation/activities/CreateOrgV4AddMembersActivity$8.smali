.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$8;
.super Ljava/lang/Object;
.source "CreateOrgV4AddMembersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$8;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    iput-boolean p3, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$8;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$8;->a:Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->dismiss()V

    .line 388
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$8;->b:Z

    if-eqz v0, :cond_1

    .line 389
    const-string/jumbo v0, "org_create_step2_cancel_confirm_btn_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$8;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->finish()V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity$8;->c:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgV4AddMembersActivity;)V

    goto :goto_0
.end method

.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$15;
.super Ljava/lang/Object;
.source "CreateNewOrgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;

.field final synthetic c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 1401
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$15;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$15;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$15;->b:Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1404
    const-string/jumbo v0, "org_create_shortstaff_pop_createexp"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 1405
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$15;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$15;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$15;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    sget v1, Lezg$l;->add_org_hint:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 1407
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$15;->b:Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/utils/CustomCloseDialog;->dismiss()V

    .line 1412
    :goto_0
    return-void

    .line 1410
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$15;->c:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$15;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->a(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;Ljava/lang/String;Z)V

    .line 1411
    const-string/jumbo v0, "contact_create_team_cancel_create_exp_team_btn_click"

    invoke-static {v0}, Lfxo;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

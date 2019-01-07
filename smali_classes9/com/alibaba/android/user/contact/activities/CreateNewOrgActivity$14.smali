.class final Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$14;
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
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$14;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1417
    const-string/jumbo v0, "org_create_shortstaff_pop_cancel"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 1418
    const-string/jumbo v0, "contact_create_team_cancel_exit_btn_click"

    invoke-static {v0}, Lfxo;->b(Ljava/lang/String;)V

    .line 1419
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity$14;->a:Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/CreateNewOrgActivity;->finish()V

    .line 1420
    return-void
.end method

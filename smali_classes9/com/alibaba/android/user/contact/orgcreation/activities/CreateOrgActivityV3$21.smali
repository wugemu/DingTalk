.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$21;
.super Ljava/lang/Object;
.source "CreateOrgActivityV3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;
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
    .line 1736
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$21;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1739
    const-string/jumbo v0, "org_create_shortstaff_pop_cancel"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 1740
    const-string/jumbo v0, "contact_create_team_cancel_exit_btn_click"

    invoke-static {v0}, Lfxo;->b(Ljava/lang/String;)V

    .line 1741
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3$21;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivityV3;->finish()V

    .line 1742
    return-void
.end method

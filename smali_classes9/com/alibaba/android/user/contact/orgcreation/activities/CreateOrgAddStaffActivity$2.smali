.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$2;
.super Ljava/lang/Object;
.source "CreateOrgAddStaffActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .param p1, "saved"    # Z

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgAddStaffActivity;->finish()V

    .line 219
    :cond_0
    return-void
.end method

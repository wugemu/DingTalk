.class final Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$2;
.super Ljava/lang/Object;
.source "CreateOrgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->b(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;)Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/orgcreation/CheckMemberDialog;->dismiss()V

    .line 249
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity$2;->a:Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;->c(Lcom/alibaba/android/user/contact/orgcreation/activities/CreateOrgActivity;)V

    .line 250
    return-void
.end method

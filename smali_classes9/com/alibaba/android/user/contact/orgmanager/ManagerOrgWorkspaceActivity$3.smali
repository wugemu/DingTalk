.class final Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$3;
.super Ljava/lang/Object;
.source "ManagerOrgWorkspaceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$3;->b:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$3;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$3;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$3;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 195
    return-void
.end method

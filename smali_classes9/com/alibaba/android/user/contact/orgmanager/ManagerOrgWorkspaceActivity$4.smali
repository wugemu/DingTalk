.class final Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$4;
.super Ljava/lang/Object;
.source "ManagerOrgWorkspaceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 206
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity$4;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;->b(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgWorkspaceActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lfwz;->a(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method
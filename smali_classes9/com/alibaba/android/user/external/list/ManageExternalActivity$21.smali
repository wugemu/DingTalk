.class final Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;
.super Ljava/lang/Object;
.source "ManageExternalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ManageExternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

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
    .line 216
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 217
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->b(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    new-instance v1, Lcom/alibaba/android/user/external/list/ManageExternalActivity$21$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity$21$1;-><init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;)V

    invoke-static {v0, v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 224
    iget-object v0, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$21;->a:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->b(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.workapp.org_employee_change"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 227
    :cond_0
    return-void
.end method

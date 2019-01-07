.class final Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ManagerOrgCustomizeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity$2;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 206
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity$2;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.workapp.choose.pictire.from.crop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    const-string/jumbo v2, "choose_picture_ids"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    const-string/jumbo v2, "ManageOrgCustomizeActivity"

    const-string/jumbo v3, "upload user avatar path is empty"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 216
    :cond_2
    const-string/jumbo v2, "ManageOrgCustomizeActivity"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "upload user avatar path:"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object v2, p0, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity$2;->a:Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;->b(Lcom/alibaba/android/user/contact/orgmanager/ManagerOrgCustomizeActivity;)Lfli$a;

    move-result-object v2

    invoke-interface {v2, v1}, Lfli$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

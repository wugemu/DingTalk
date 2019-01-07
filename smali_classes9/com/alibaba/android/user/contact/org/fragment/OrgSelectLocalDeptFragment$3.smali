.class final Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "OrgSelectLocalDeptFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment$3;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 229
    const-string/jumbo v1, "com.workapp.contact.list.change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const-string/jumbo v1, "item_remove"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 231
    .local v0, "isRemove":Z
    iget-object v1, p0, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment$3;->a:Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/user/contact/org/fragment/OrgSelectLocalDeptFragment;->a(Z)V

    .line 233
    .end local v0    # "isRemove":Z
    :cond_0
    return-void
.end method

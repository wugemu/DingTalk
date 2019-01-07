.class final Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CreateOrgStep1Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$1;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

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
    .line 117
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$1;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string/jumbo v1, "selector_region"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const-string/jumbo v1, "region_key"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "addKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$1;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$1;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$1;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->a(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;Z)Z

    .line 127
    iget-object v1, p0, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment$1;->a:Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;->b(Lcom/alibaba/android/user/contact/orgcreation/fragments/CreateOrgStep1Fragment;)V

    goto :goto_0
.end method

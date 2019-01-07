.class final Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$10;
.super Landroid/content/BroadcastReceiver;
.source "OrgContactNewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$10;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 388
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$10;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->F()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$10;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->h(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)Lfke;

    move-result-object v1

    if-nez v1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$10;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->i(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "activity_identify"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    const-string/jumbo v1, "choose_user_identities"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 397
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$10;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->a(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;Ljava/util/List;)V

    goto :goto_0

    .line 402
    .end local v0    # "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment$10;->a:Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;

    invoke-static {v1, v3, v3}, Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;->a(Lcom/alibaba/android/user/contact/organization/orgcontact/OrgContactNewFragment;ZZ)V

    goto :goto_0
.end method

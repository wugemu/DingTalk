.class Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$1;
.super Landroid/content/BroadcastReceiver;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 111
    if-nez p2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "com.workapp.choose.people.from.local.contact"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 117
    const-string/jumbo v7, "choose_user_identities"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 119
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v3, :cond_0

    .line 120
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;

    invoke-static {v7, v3}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->access$000(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;Ljava/util/List;)V

    goto :goto_0

    .line 122
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_2
    const-string/jumbo v7, "action_selected_org_address_update"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 123
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;

    const-string/jumbo v7, "intent_key_selected_org_address"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;

    invoke-static {v8, v7}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->access$100(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;Lcom/alibaba/android/dingtalk/userbase/model/OrgEcAddressObject;)V

    goto :goto_0

    .line 124
    :cond_3
    const-string/jumbo v7, "com.workapp.choose.people.from.contact"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 125
    const-string/jumbo v7, "org_request_from_source_type"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "source":Ljava/lang/String;
    const-string/jumbo v7, "internal_source_choose_contact"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 129
    const-string/jumbo v7, "memory_file_descriptor"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 130
    .local v2, "fd":I
    if-lez v2, :cond_4

    .line 131
    const-string/jumbo v7, "memory_file_size"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 132
    .local v5, "size":I
    invoke-static {v2, v5}, Lcnf;->a(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 137
    .end local v5    # "size":I
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :goto_1
    const-string/jumbo v7, "choose_department_array"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 140
    .local v1, "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact$1;->this$0:Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;

    invoke-static {v7, v4, v1}, Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;->access$200(Lcom/alibaba/lightapp/runtime/plugin/internal/Contact;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 134
    .end local v1    # "deptList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_4
    const-string/jumbo v7, "choose_user_identities"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    goto :goto_1
.end method

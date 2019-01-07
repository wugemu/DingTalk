.class public Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$ContactPickerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MemberPickerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactPickerReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$ContactPickerReceiver;->a:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 77
    if-eqz p2, :cond_0

    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$ContactPickerReceiver;->a:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    .line 79
    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->a(Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "activity_identify"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string/jumbo v2, "choose_user_identities"

    .line 83
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 84
    .local v1, "userObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v2, "choose_department_array"

    .line 85
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 86
    .local v0, "deptObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$ContactPickerReceiver;->a:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    .line 1028
    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->c:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$b;

    .line 89
    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$ContactPickerReceiver;->a:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;

    .line 2028
    iget-object v2, v2, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy;->c:Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$b;

    .line 90
    invoke-interface {v2, v1, v0}, Lcom/alibaba/dingtalk/cspace/functions/members/MemberPickerProxy$b;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

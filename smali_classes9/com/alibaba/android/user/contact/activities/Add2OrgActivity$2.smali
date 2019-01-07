.class final Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "Add2OrgActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$2;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

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
    .line 782
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$2;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 792
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    const-string/jumbo v1, "com.workapp.choose.people.from.contact"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$2;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->w(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "activity_identify"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    const-string/jumbo v1, "choose_user_identities"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 790
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity$2;->a:Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;->a(Lcom/alibaba/android/user/contact/activities/Add2OrgActivity;Ljava/util/List;)V

    goto :goto_0
.end method

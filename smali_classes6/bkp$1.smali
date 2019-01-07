.class final Lbkp$1;
.super Landroid/content/BroadcastReceiver;
.source "TaskTransferHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbkp;


# direct methods
.method constructor <init>(Lbkp;)V
    .locals 0
    .param p1, "this$0"    # Lbkp;

    .prologue
    .line 66
    iput-object p1, p0, Lbkp$1;->a:Lbkp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 69
    if-eqz p2, :cond_0

    iget-object v2, p0, Lbkp$1;->a:Lbkp;

    invoke-static {v2}, Lbkp;->a(Lbkp;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string/jumbo v2, "com.workapp.choose.people.from.group.member"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.workapp.ding.choose.myself"

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    :cond_2
    const-string/jumbo v2, "activity_identify"

    invoke-static {p2, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "identifier":Ljava/lang/String;
    invoke-static {}, Lbkp;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const-string/jumbo v2, "choose_user_identities"

    invoke-static {p2, v2}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 78
    .local v1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    iget-object v2, p0, Lbkp$1;->a:Lbkp;

    invoke-static {v1}, Lbkf;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lbkp;->a(Lbkp;Ljava/util/List;Z)V

    goto :goto_0
.end method

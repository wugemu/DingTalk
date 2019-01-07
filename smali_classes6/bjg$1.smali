.class final Lbjg$1;
.super Landroid/content/BroadcastReceiver;
.source "AddReceiverHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbjg;


# direct methods
.method constructor <init>(Lbjg;)V
    .locals 0
    .param p1, "this$0"    # Lbjg;

    .prologue
    .line 78
    iput-object p1, p0, Lbjg$1;->a:Lbjg;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 81
    if-eqz p2, :cond_0

    iget-object v2, p0, Lbjg$1;->a:Lbjg;

    invoke-static {v2}, Lbjg;->a(Lbjg;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string/jumbo v2, "com.workapp.choose.people.from.group.member"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.workapp.choose.people.from.contact"

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "com.workapp.ding.choose.myself"

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    :cond_2
    const-string/jumbo v2, "activity_identify"

    invoke-static {p2, v2}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "identifier":Ljava/lang/String;
    iget-object v2, p0, Lbjg$1;->a:Lbjg;

    invoke-static {v2}, Lbjg;->b(Lbjg;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const-string/jumbo v2, "choose_user_identities"

    invoke-static {p2, v2}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 90
    .local v1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    invoke-static {}, Lbju;->m()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lbjg$1;->a:Lbjg;

    .line 92
    invoke-static {v2}, Lbjg;->c(Lbjg;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    invoke-static {v2}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lbjg$1;->a:Lbjg;

    .line 93
    invoke-static {v2}, Lbjg;->c(Lbjg;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    invoke-static {v2}, Lbkh;->N(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lbjg$1;->a:Lbjg;

    .line 94
    invoke-static {v2}, Lbjg;->c(Lbjg;)Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-result-object v2

    invoke-static {v2}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 95
    iget-object v2, p0, Lbjg$1;->a:Lbjg;

    invoke-static {v2, v1}, Lbjg;->a(Lbjg;Ljava/util/List;)V

    goto :goto_0

    .line 97
    :cond_3
    iget-object v2, p0, Lbjg$1;->a:Lbjg;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lbjg;->a(Lbjg;Ljava/util/List;Z)V

    goto/16 :goto_0
.end method

.class final Lfdq$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfdq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfdq;


# direct methods
.method constructor <init>(Lfdq;)V
    .locals 0
    .param p1, "this$0"    # Lfdq;

    .prologue
    .line 77
    iput-object p1, p0, Lfdq$1;->a:Lfdq;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "action_selected_contacts_result"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "com.workapp.choose.people.from.contact"

    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string/jumbo v3, "activity_identify"

    invoke-static {p2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "identify":Ljava/lang/String;
    iget-object v3, p0, Lfdq$1;->a:Lfdq;

    .line 1033
    iget-object v3, v3, Lfdq;->b:Ljava/lang/String;

    .line 86
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    const-string/jumbo v3, "choose_user_identities"

    invoke-static {p2, v3}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 88
    .local v2, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v3, p0, Lfdq$1;->a:Lfdq;

    .line 2033
    iput-object v2, v3, Lfdq;->f:Ljava/util/ArrayList;

    .line 89
    iget-object v3, p0, Lfdq$1;->a:Lfdq;

    .line 3033
    iget-object v3, v3, Lfdq;->e:Lcov;

    .line 89
    invoke-interface {v3, v2}, Lcov;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

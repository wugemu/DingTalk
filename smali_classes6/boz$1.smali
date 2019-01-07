.class final Lboz$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lboz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lboz;


# direct methods
.method constructor <init>(Lboz;)V
    .locals 0
    .param p1, "this$0"    # Lboz;

    .prologue
    .line 76
    iput-object p1, p0, Lboz$1;->a:Lboz;

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
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "action_selected_contacts_result"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "com.workapp.choose.people.from.contact"

    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string/jumbo v3, "activity_identify"

    invoke-static {p2, v3}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "identify":Ljava/lang/String;
    iget-object v3, p0, Lboz$1;->a:Lboz;

    .line 1032
    iget-object v3, v3, Lboz;->a:Ljava/lang/String;

    .line 85
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    const-string/jumbo v3, "choose_user_identities"

    invoke-static {p2, v3}, Lcoy;->d(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 87
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v3, p0, Lboz$1;->a:Lboz;

    .line 2032
    iget-object v3, v3, Lboz;->c:Lcov;

    .line 87
    invoke-interface {v3, v2}, Lcov;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

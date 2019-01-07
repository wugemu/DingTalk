.class final Lexl$10;
.super Landroid/content/BroadcastReceiver;
.source "VoipConfPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lexl;


# direct methods
.method constructor <init>(Lexl;)V
    .locals 0
    .param p1, "this$0"    # Lexl;

    .prologue
    .line 1505
    iput-object p1, p0, Lexl$10;->a:Lexl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1508
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1509
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "com.workapp.choose.people.from.contact"

    .line 1510
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1511
    :cond_0
    const-string/jumbo v5, "activity_identify"

    invoke-static {p2, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1512
    .local v3, "identityFlag":Ljava/lang/String;
    const-string/jumbo v5, "VOIP_CONF_ACTIVITY_CHOOSE_MEMBERS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1513
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Invalid identity"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    .end local v3    # "identityFlag":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1516
    .restart local v3    # "identityFlag":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "choose_user_identities"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1517
    .local v2, "destUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1518
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "Choose user from contact: "

    aput-object v8, v7, v4

    const/4 v4, 0x1

    .line 1519
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1518
    invoke-static {v5, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    iget-object v4, p0, Lexl$10;->a:Lexl;

    invoke-static {v4}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1521
    iget-object v4, p0, Lexl$10;->a:Lexl;

    invoke-static {v4}, Lexl;->e(Lexl;)Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/alibaba/android/teleconf/presenters/conf/VoipConfContract$b;->b(Ljava/util/List;)V

    goto :goto_0

    .line 1524
    .end local v2    # "destUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    .end local v3    # "identityFlag":Ljava/lang/String;
    :cond_3
    const-string/jumbo v5, "com.workapp.conversation.msg.add"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1526
    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1528
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Power off"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    iget-object v4, p0, Lexl$10;->a:Lexl;

    invoke-static {v4}, Lexl;->j(Lexl;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1530
    iget-object v4, p0, Lexl$10;->a:Lexl;

    invoke-virtual {v4}, Lexl;->k()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v1

    .line 1531
    .local v1, "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    if-eqz v1, :cond_1

    .line 1532
    sget-object v4, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLED:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v1, v4, :cond_1

    .line 1533
    iget-object v4, p0, Lexl$10;->a:Lexl;

    invoke-virtual {v4}, Lexl;->f()V

    goto :goto_0

    .line 1537
    .end local v1    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    :cond_4
    const-string/jumbo v5, "android.intent.action.SCREEN_ON"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1538
    const-string/jumbo v5, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Power on"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object v5, p0, Lexl$10;->a:Lexl;

    invoke-static {v5}, Lexl;->j(Lexl;)Lcom/alibaba/wukong/openav/external/IAVSession;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1540
    iget-object v5, p0, Lexl$10;->a:Lexl;

    invoke-virtual {v5}, Lexl;->k()Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    move-result-object v1

    .line 1541
    .restart local v1    # "callState":Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;
    if-eqz v1, :cond_1

    .line 1542
    sget-object v5, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->TALKING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-eq v1, v5, :cond_5

    sget-object v5, Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;->CALLING:Lcom/alibaba/wukong/openav/external/IAVSession$AVCallState;

    if-ne v1, v5, :cond_1

    .line 1543
    :cond_5
    invoke-static {}, Lien;->b()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lexl$10;->a:Lexl;

    invoke-static {v5}, Lexl;->k(Lexl;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1544
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Disable proximity sensor"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    iget-object v4, p0, Lexl$10;->a:Lexl;

    invoke-static {v4}, Lexl;->b(Lexl;)Landroid/content/Context;

    invoke-static {}, Lien;->a()V

    goto/16 :goto_0

    .line 1546
    :cond_6
    invoke-static {}, Lien;->b()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lexl$10;->a:Lexl;

    invoke-static {v5}, Lexl;->k(Lexl;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lexl$10;->a:Lexl;

    .line 1892
    iget-object v6, v5, Lexl;->a:Liee;

    if-eqz v6, :cond_7

    .line 1893
    iget-object v4, v5, Lexl;->a:Liee;

    invoke-interface {v4}, Liee;->k()Z

    move-result v4

    .line 1546
    :cond_7
    if-nez v4, :cond_1

    .line 1547
    const-string/jumbo v4, "tele_conf"

    invoke-static {}, Lexl;->t()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Enable proximity sensor"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    iget-object v4, p0, Lexl$10;->a:Lexl;

    invoke-static {v4}, Lexl;->b(Lexl;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lien;->a(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

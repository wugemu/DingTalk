.class final Lexm$30;
.super Landroid/content/BroadcastReceiver;
.source "VideoConfPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lexm;


# direct methods
.method constructor <init>(Lexm;)V
    .locals 0
    .param p1, "this$0"    # Lexm;

    .prologue
    .line 2137
    iput-object p1, p0, Lexm$30;->a:Lexm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2141
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "com.workapp.choose.people.from.group.member"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "com.workapp.choose.people.from.contact"

    .line 2142
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2143
    :cond_0
    const-string/jumbo v5, "activity_identify"

    invoke-static {p2, v5}, Lcoy;->a(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2144
    .local v2, "identityFlag":Ljava/lang/String;
    const-string/jumbo v5, "video_conf_choose_member_identity_flag"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2145
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Add member identity is invalid"

    invoke-static {v5, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    .end local v2    # "identityFlag":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 2148
    .restart local v2    # "identityFlag":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "choose_user_identities"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2149
    .local v1, "destUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2150
    invoke-static {}, Lexm;->r()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "Choose user from contact: "

    aput-object v7, v6, v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Leyu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2152
    .local v3, "memberObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject;>;"
    iget-object v5, p0, Lexm$30;->a:Lexm;

    sget-object v6, Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;->USER_STATE_JOINING:Lcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;

    new-instance v7, Lexm$30$1;

    invoke-direct {v7, p0, v3}, Lexm$30$1;-><init>(Lexm$30;Ljava/util/List;)V

    invoke-static {v5, v1, v9, v6, v7}, Lexm;->a(Lexm;Ljava/util/List;ZLcom/alibaba/android/teleconf/data/TeleVideoMemberObject$State;Lcma;)I

    move-result v4

    .line 2172
    .local v4, "startIndex":I
    iget-object v5, p0, Lexm$30;->a:Lexm;

    invoke-virtual {v5, v3, v8}, Lexm;->a(Ljava/util/List;Z)V

    .line 2174
    iget-object v5, p0, Lexm$30;->a:Lexm;

    invoke-static {v5}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2175
    iget-object v5, p0, Lexm$30;->a:Lexm;

    invoke-static {v5}, Lexm;->b(Lexm;)Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/alibaba/android/teleconf/presenters/manger/VideoConfContract$b;->a(ILjava/util/List;)V

    goto :goto_0
.end method

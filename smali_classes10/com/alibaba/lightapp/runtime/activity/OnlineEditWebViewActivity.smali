.class public Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;
.super Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
.source "OnlineEditWebViewActivity.java"


# instance fields
.field private a:Landroid/os/Bundle;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->c(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method private c(Z)V
    .locals 4
    .param p1, "edited"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 181
    iget-boolean v2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->s:Z

    if-eqz v2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->s:Z

    .line 3030
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->e()V

    .line 188
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a:Landroid/os/Bundle;

    const-string/jumbo v3, "intent_key_online_edit_modified_by_me"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/os/Bundle;)V

    .line 194
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->e:Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 195
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 196
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 200
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    .line 201
    .local v0, "fragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;)V

    goto :goto_1

    .line 203
    .end local v0    # "fragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    .end local v1    # "id":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 206
    :cond_5
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->f:Ljava/util/Map;

    if-eqz v2, :cond_6

    .line 207
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->f:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 210
    :cond_6
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->g:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->s:Z

    return v0
.end method


# virtual methods
.method protected final e()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->onBackPressed()V

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.cspace.online.edit.finish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "intent_key_space_id"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string/jumbo v1, "intent_key_file_id"

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 229
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->finish()V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a:Landroid/os/Bundle;

    .line 62
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->finish()V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_space_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->m:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_file_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->n:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "conversation_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->p:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "message_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->o:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "sp_last_edit_time"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->q:J

    .line 72
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "intent_key_online_edit_collaborator_list_editable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->r:Z

    .line 1108
    iget-wide v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    if-nez v0, :cond_5

    .line 1120
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->r:Z

    if-eqz v0, :cond_4

    .line 1123
    sget v0, Lhdn$h;->add_person_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1124
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2080
    :cond_4
    const-string/jumbo v0, "pref_key_new_to_online_edit"

    invoke-static {v0, v5}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2083
    const-string/jumbo v0, "pref_key_new_to_online_edit"

    invoke-static {v0, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2084
    sget v0, Lhdn$h;->overlay_guide_stub:I

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2085
    if-eqz v0, :cond_0

    .line 2088
    sget v1, Lhdn$h;->overlay_guide_stub:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 2089
    sget v1, Lhdn$i;->online_edit_guide:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 2090
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 2091
    if-eqz v0, :cond_0

    .line 2094
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2095
    sget v1, Lhdn$h;->tv_start:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2096
    if-eqz v1, :cond_0

    .line 2099
    new-instance v2, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1111
    :cond_5
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->q:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 1112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1116
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->b:Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;

    sget v2, Lhdn$k;->dt_cspace_last_save:I

    invoke-virtual {p0, v2}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2, v4}, Lcom/alibaba/lightapp/runtime/activity/delegate/NavBarDelegate;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_1

    .line 151
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->c(Z)V

    .line 178
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    const-string/jumbo v1, "javascript:woapi_onunload()"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 156
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;->d:Lcom/alibaba/lightapp/runtime/webview/RimetWebView;

    const-string/jumbo v1, "javascript:woapi_ismodified()"

    new-instance v2, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$3;-><init>(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/webview/RimetWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 168
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$4;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity$4;-><init>(Lcom/alibaba/lightapp/runtime/activity/OnlineEditWebViewActivity;)V

    const-string/jumbo v2, "online_edit_destroy_fragments_delay_token"

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x258

    add-long/2addr v4, v6

    .line 168
    invoke-virtual {v0, v1, v2, v4, v5}, Lhcv;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0
.end method

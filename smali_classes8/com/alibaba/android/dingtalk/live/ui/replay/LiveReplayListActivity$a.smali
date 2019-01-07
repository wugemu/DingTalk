.class final Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;
.super Lcq;
.source "LiveReplayListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;Lcn;)V
    .locals 0
    .param p2, "fm"    # Lcn;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    .line 204
    invoke-direct {p0, p2}, Lcq;-><init>(Lcn;)V

    .line 205
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;Lcn;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;
    .param p2, "x1"    # Lcn;

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;-><init>(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;Lcn;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/app/Fragment;
    .locals 6
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 209
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v2

    .line 210
    .local v2, "currentUid":J
    if-nez p1, :cond_3

    .line 211
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    move-result-object v4

    if-nez v4, :cond_1

    .line 212
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    new-instance v5, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;-><init>()V

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->a(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    .line 213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 215
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 218
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->d(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->d(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_2

    .line 219
    .local v1, "isGroupOwner":Z
    :goto_0
    const-string/jumbo v4, "intent_extra_view_data_enabled"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 221
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    .line 1113
    iput-object v5, v4, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->a:Lbxy$b;

    .line 223
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "isGroupOwner":Z
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->c(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    move-result-object v4

    .line 237
    :goto_1
    return-object v4

    .line 218
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 225
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    move-result-object v4

    if-nez v4, :cond_5

    .line 226
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    new-instance v5, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;-><init>()V

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->b(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;)Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    .line 227
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 228
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 229
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 232
    :cond_4
    const-string/jumbo v4, "intent_extra_open_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 233
    const-string/jumbo v4, "intent_extra_view_data_enabled"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 234
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 235
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    .line 2113
    iput-object v5, v4, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;->a:Lbxy$b;

    .line 237
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_5
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->e(Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;)Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListFragment;

    move-result-object v4

    goto :goto_1
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x2

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    sget v1, Lbtp$g;->dt_live_replay_all:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity$a;->a:Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;

    sget v1, Lbtp$g;->dt_live_replay_mime:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/live/ui/replay/LiveReplayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

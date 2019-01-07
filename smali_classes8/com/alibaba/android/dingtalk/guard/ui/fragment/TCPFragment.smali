.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;
.super Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;
.source "TCPFragment.java"


# instance fields
.field a:Lbsy$b;

.field private b:I

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->b:I

    .line 53
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->i:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->a:Lbsy$b;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->b:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 30
    .line 1215
    iput v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->b:I

    .line 1216
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->f()V

    .line 2162
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3154
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 3155
    if-eqz v2, :cond_1

    .line 3156
    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    .line 2162
    :goto_0
    if-eqz v2, :cond_2

    .line 2163
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v1

    .line 3158
    goto :goto_0

    .line 2165
    :cond_2
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    move v0, v1

    .line 2168
    :cond_3
    if-eqz v0, :cond_0

    .line 2169
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->d()Lbtb;

    move-result-object v0

    .line 2170
    if-eqz v0, :cond_0

    .line 2171
    iput v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->b:I

    .line 2172
    invoke-virtual {v0}, Lbtb;->b()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->f()V

    return-void
.end method

.method public static c()Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;-><init>()V

    .line 36
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;
    return-object v0
.end method

.method private d()Lbtb;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->l()Lbsw$c;

    move-result-object v0

    .line 148
    .local v0, "presenter":Lbsw$c;
    instance-of v1, v0, Lbtb;

    if-eqz v1, :cond_0

    .line 149
    check-cast v0, Lbtb;

    .line 150
    .end local v0    # "presenter":Lbsw$c;
    :goto_0
    return-object v0

    .restart local v0    # "presenter":Lbsw$c;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->c:Landroid/widget/ImageView;

    sget v1, Lbrx$c;->wifi_not_connect:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 201
    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->c:Landroid/widget/ImageView;

    sget v1, Lbrx$c;->wifi_config_successs:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 204
    :cond_3
    iget v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 205
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->c:Landroid/widget/ImageView;

    sget v1, Lbrx$c;->wifi_config_fail:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->c:Landroid/widget/ImageView;

    sget v1, Lbrx$c;->search_device:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 120
    sget v3, Lbrx$d;->search_layout:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->a(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->d:Landroid/view/View;

    .line 121
    sget v3, Lbrx$d;->connected_layout:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->a(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->f:Landroid/view/View;

    .line 122
    sget v3, Lbrx$d;->connect_fail_layout:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->a(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->g:Landroid/view/View;

    .line 123
    sget v3, Lbrx$d;->wifi_not_connect_layout:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->a(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->e:Landroid/view/View;

    .line 124
    sget v3, Lbrx$d;->wifi_icon:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->c:Landroid/widget/ImageView;

    .line 125
    sget v3, Lbrx$d;->reset_wifi_at_once:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->a(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->h:Landroid/view/View;

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    new-instance v2, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;)V

    .line 138
    .local v2, "resetWifiListener":Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->h:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->d()Lbtb;

    move-result-object v1

    .line 141
    .local v1, "presenter":Lbtb;
    if-eqz v1, :cond_0

    .line 142
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->a:Lbsy$b;

    .line 1121
    if-eqz v3, :cond_0

    .line 1122
    iget-object v4, v1, Lbtb;->e:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->d()Lbtb;

    move-result-object v0

    .line 181
    .local v0, "presenter":Lbtb;
    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/TCPFragment;->a:Lbsy$b;

    .line 1128
    if-eqz v1, :cond_0

    .line 1129
    iget-object v2, v0, Lbtb;->e:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseFragment;->onDestroy()V

    .line 185
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lbrx$e;->activity_device_config_tcp:I

    return v0
.end method

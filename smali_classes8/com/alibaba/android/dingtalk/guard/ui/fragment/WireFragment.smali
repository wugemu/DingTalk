.class public Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;
.super Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;
.source "WireFragment.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Z

.field private k:Lbsy$b;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->k:Lbsy$b;

    .line 148
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$5;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final E()Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;-><init>()V

    .line 25
    .local v0, "fragment":Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;
    return-object v0
.end method

.method private K()V
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->j:Z

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->j:Z

    .line 161
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->j()V

    goto :goto_0
.end method

.method private L()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 165
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->j:Z

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->c:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->d:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->a:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->e:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->h:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2062
    :cond_1
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v1

    .line 2063
    if-eqz v1, :cond_2

    .line 2064
    invoke-interface {v1}, Lbsw$a;->D()Z

    move-result v1

    .line 177
    :goto_1
    if-nez v1, :cond_5

    .line 178
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->a:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->e:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->f:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2079
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->c()Lbsw$a;

    move-result-object v1

    .line 2080
    if-eqz v1, :cond_3

    .line 2081
    invoke-interface {v1}, Lbsw$a;->E()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "mac":Ljava/lang/String;
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 185
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->g:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->h:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "mac":Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 2066
    goto :goto_1

    .line 2083
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 187
    .restart local v0    # "mac":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->g:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 192
    .end local v0    # "mac":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->a:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->c:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->d:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->L()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->K()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->k:Lbsy$b;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->a(Lbsy$b;)V

    .line 50
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->onDestroy()V

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->k:Lbsy$b;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->b(Lbsy$b;)V

    .line 56
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/BaseBleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    sget v1, Lbrx$d;->ll_loading_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->a:Landroid/view/View;

    .line 87
    sget v1, Lbrx$d;->ll_loading:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->b:Landroid/view/View;

    .line 88
    sget v1, Lbrx$d;->ll_connected:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->c:Landroid/view/View;

    .line 89
    sget v1, Lbrx$d;->rl_wire_status:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->d:Landroid/view/View;

    .line 90
    sget v1, Lbrx$d;->ll_wire_pluggedin_status:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->e:Landroid/view/View;

    .line 91
    sget v1, Lbrx$d;->ll_wire_network_status:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->f:Landroid/view/View;

    .line 92
    sget v1, Lbrx$d;->ll_wire_mac:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->g:Landroid/view/View;

    .line 93
    sget v1, Lbrx$d;->tv_wire_mac:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->i:Landroid/widget/TextView;

    .line 94
    sget v1, Lbrx$d;->skip_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->h:Landroid/view/View;

    .line 96
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->h:Landroid/view/View;

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$2;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget v1, Lbrx$d;->ll_wifi_switch:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$3;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$3;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget v1, Lbrx$d;->static_ip_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1141
    .local v0, "staticIpLayout":Landroid/view/View;
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->m()Lbsw$b;

    move-result-object v1

    .line 1142
    if-eqz v1, :cond_0

    .line 1143
    invoke-interface {v1}, Lbsw$b;->p()Z

    move-result v1

    .line 116
    :goto_0
    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    new-instance v1, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment$4;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :goto_1
    sget v1, Lbrx$d;->bt_wire_retry:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget v1, Lbrx$d;->bt_wire_retry2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->K()V

    .line 136
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/guard/ui/fragment/WireFragment;->L()V

    .line 137
    return-void

    :cond_0
    move v1, v2

    .line 1145
    goto :goto_0

    .line 129
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lbrx$e;->activity_device_config_wire:I

    return v0
.end method

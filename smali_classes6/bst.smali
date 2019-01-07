.class public final Lbst;
.super Lbss;
.source "AlphaQrcodeBindPresenter.java"


# direct methods
.method public constructor <init>(Lbsw$e;Lbsw$b;)V
    .locals 0
    .param p2, "dataSource"    # Lbsw$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbsw$e",
            "<",
            "Lbsw$c;",
            ">;",
            "Lbsw$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "view":Lbsw$e;, "Lbsw$e<Lbsw$c;>;"
    invoke-direct {p0, p1, p2}, Lbss;-><init>(Lbsw$e;Lbsw$b;)V

    .line 35
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 59
    invoke-super {p0}, Lbss;->a()V

    .line 60
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->setPageShowing(Z)V

    .line 61
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-super {p0, p1}, Lbss;->a(Landroid/os/Bundle;)V

    .line 50
    if-nez p1, :cond_0

    .line 51
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->setPageShowing(Z)V

    .line 52
    iget-object v0, p0, Lbst;->b:Lbsw$b;

    invoke-interface {v0, v1}, Lbsw$b;->h(Z)V

    .line 53
    invoke-virtual {p0}, Lbst;->u()V

    .line 55
    :cond_0
    return-void
.end method

.method public final a(Lbsy$b;)V
    .locals 10
    .param p1, "listener"    # Lbsy$b;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 70
    const-string/jumbo v7, "AlphaQrcodeBindPresenter"

    const-string/jumbo v8, "bind"

    invoke-static {v7, v8}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget v7, Lbrx$g;->dt_door_guard_request_bind_device:I

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lbst;->a(IZ)V

    .line 73
    iget-object v7, p0, Lbst;->b:Lbsw$b;

    invoke-interface {v7}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v4

    .line 74
    .local v4, "group":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    if-nez v4, :cond_0

    .line 75
    const-string/jumbo v7, "AlphaQrcodeBindPresenter"

    const-string/jumbo v8, "group is null"

    invoke-static {v7, v8}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lbst;->s()V

    .line 115
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v1, Lbrz;

    invoke-direct {v1}, Lbrz;-><init>()V

    .line 81
    .local v1, "bindAndActiveModel":Lbrz;
    iget-object v7, p0, Lbst;->b:Lbsw$b;

    invoke-interface {v7}, Lbsw$b;->e()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v1, Lbrz;->f:Ljava/lang/Integer;

    .line 82
    iget-object v7, v4, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    iput-object v7, v1, Lbrz;->a:Ljava/lang/String;

    .line 84
    new-instance v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;-><init>()V

    .line 85
    .local v2, "bindAndSettingModel":Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;
    iput-object v1, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->a:Lbrz;

    .line 86
    invoke-virtual {p0}, Lbst;->c()Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    move-result-object v0

    .line 87
    .local v0, "apType":Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lbst;->c()Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->value()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->e:Ljava/lang/Integer;

    .line 90
    :cond_1
    iget-object v7, p0, Lbst;->b:Lbsw$b;

    invoke-interface {v7}, Lbsw$b;->D()Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "ssidName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 92
    iget-object v7, p0, Lbst;->b:Lbsw$b;

    invoke-interface {v7}, Lbsw$b;->B()Ljava/lang/String;

    move-result-object v6

    .line 94
    :cond_2
    iput-object v6, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->b:Ljava/lang/String;

    .line 96
    iget-object v7, p0, Lbst;->b:Lbsw$b;

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    invoke-interface {v7, v8, v9}, Lbsw$b;->c(J)Lbls;

    move-result-object v5

    .line 97
    .local v5, "selectContactResult":Lbls;
    if-eqz v5, :cond_3

    .line 98
    invoke-virtual {v5}, Lbls;->a()Ljava/util/List;

    move-result-object v7

    iput-object v7, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->f:Ljava/util/List;

    .line 99
    invoke-virtual {v5}, Lbls;->b()Ljava/util/List;

    move-result-object v7

    iput-object v7, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->g:Ljava/util/List;

    .line 104
    :goto_1
    iget-object v7, p0, Lbst;->b:Lbsw$b;

    invoke-interface {v7}, Lbsw$b;->L()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->h:Ljava/lang/Boolean;

    .line 105
    iget-object v7, p0, Lbst;->b:Lbsw$b;

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    invoke-interface {v7, v8, v9}, Lbsw$b;->d(J)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->i:Ljava/lang/Boolean;

    .line 106
    iget-object v7, p0, Lbst;->b:Lbsw$b;

    invoke-interface {v7}, Lbsw$b;->N()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->j:Ljava/lang/String;

    .line 107
    iget-object v7, p0, Lbst;->b:Lbsw$b;

    invoke-interface {v7}, Lbsw$b;->Q()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->k:Ljava/lang/Boolean;

    .line 1119
    new-instance v3, Lbst$1;

    invoke-direct {v3, p0, p1}, Lbst$1;-><init>(Lbst;Lbsy$b;)V

    .line 111
    .local v3, "bindListener":Lcma;, "Lcma<Lbsa;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v7

    const-class v8, Lcma;

    invoke-virtual {p0}, Lbst;->l()Landroid/app/Activity;

    move-result-object v9

    invoke-interface {v7, v3, v8, v9}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "bindListener":Lcma;, "Lcma<Lbsa;>;"
    check-cast v3, Lcma;

    .line 114
    .restart local v3    # "bindListener":Lcma;, "Lcma<Lbsa;>;"
    invoke-static {}, Lbnc;->a()Lbnc;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Lbnc;->a(Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;Lcma;)V

    goto/16 :goto_0

    .line 101
    .end local v3    # "bindListener":Lcma;, "Lcma<Lbsa;>;"
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->f:Ljava/util/List;

    .line 102
    iget-object v7, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->f:Ljava/util/List;

    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lbst;->b:Lbsw$b;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lbst;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->O()Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lbss;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

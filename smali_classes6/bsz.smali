.class public final Lbsz;
.super Lbss;
.source "LanBindPresenter.java"


# instance fields
.field c:Z

.field d:Z

.field e:Z

.field private f:Lblr;

.field private g:Lblv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lblv",
            "<",
            "Lbms;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbsw$e;Lbsw$b;)V
    .locals 1
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
    .line 162
    .local p1, "view":Lbsw$e;, "Lbsw$e<Lbsw$c;>;"
    invoke-direct {p0, p1, p2}, Lbss;-><init>(Lbsw$e;Lbsw$b;)V

    .line 53
    new-instance v0, Lbsz$1;

    invoke-direct {v0, p0}, Lbsz$1;-><init>(Lbsz;)V

    iput-object v0, p0, Lbsz;->f:Lblr;

    .line 163
    return-void
.end method

.method static synthetic a(Lbsz;Lbsa;Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;Lbsy$b;)V
    .locals 4
    .param p0, "x0"    # Lbsz;
    .param p1, "x1"    # Lbsa;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;
    .param p3, "x3"    # Lbsy$b;

    .prologue
    .line 44
    .line 3360
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 3361
    :cond_0
    if-eqz p3, :cond_1

    .line 3362
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lbsy$b;->a(ZLjava/lang/String;)V

    .line 3364
    :cond_1
    :goto_0
    return-void

    .line 3366
    :cond_2
    iget-object v0, p1, Lbsa;->e:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 3367
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lbsa;->e:Ljava/util/Map;

    .line 3369
    :cond_3
    iget-object v0, p1, Lbsa;->e:Ljava/util/Map;

    const-string/jumbo v1, "apType"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3370
    iget-object v0, p1, Lbsa;->e:Ljava/util/Map;

    const-string/jumbo v1, "apType"

    iget-object v2, p2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->e:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3373
    :cond_4
    new-instance v0, Lbsz$4;

    invoke-direct {v0, p0, p1, p3}, Lbsz$4;-><init>(Lbsz;Lbsa;Lbsy$b;)V

    .line 3400
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v1

    const-class v2, Lbmi;

    invoke-virtual {p0}, Lbsz;->l()Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmi;

    .line 3401
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->notifyBindResult(Lbsa;Lbmi;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 242
    invoke-super {p0}, Lbss;->a()V

    .line 243
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->unregisterUICallback()V

    .line 244
    iget-object v0, p0, Lbsz;->g:Lblv;

    if-eqz v0, :cond_1

    .line 245
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a()Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    move-result-object v0

    iget-object v1, p0, Lbsz;->g:Lblv;

    .line 2245
    if-nez v1, :cond_2

    .line 246
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbsz;->g:Lblv;

    .line 247
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->resetManualMesh()V

    .line 249
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->setPageShowing(Z)V

    .line 250
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->reset()V

    .line 251
    return-void

    .line 2248
    :cond_2
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2249
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 177
    if-nez p1, :cond_1

    .line 178
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->setPageShowing(Z)V

    .line 179
    iget-object v1, p0, Lbsz;->b:Lbsw$b;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lbsw$b;->a(I)V

    .line 180
    iget-object v1, p0, Lbsz;->b:Lbsw$b;

    .line 1418
    invoke-virtual {p0}, Lbsz;->l()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/NetworkUtils;->isWifi(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 180
    :cond_0
    :goto_0
    invoke-interface {v1, v0}, Lbsw$b;->i(Z)V

    .line 181
    iget-object v0, p0, Lbsz;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->v()Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->MANUAL_MESH:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lbsz;->g:Lblv;

    if-nez v0, :cond_6

    .line 182
    const-string/jumbo v0, "LanBindPresenter"

    const-string/jumbo v1, "alpha_manual_mesh_enter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 183
    invoke-virtual {p0}, Lbsz;->w()V

    .line 184
    new-instance v0, Lbsz$2;

    invoke-direct {v0, p0}, Lbsz$2;-><init>(Lbsz;)V

    iput-object v0, p0, Lbsz;->g:Lblv;

    .line 207
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a()Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    move-result-object v0

    iget-object v1, p0, Lbsz;->g:Lblv;

    .line 2235
    if-nez v1, :cond_4

    .line 218
    :cond_1
    :goto_1
    return-void

    .line 1421
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->d()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 1422
    if-eqz v2, :cond_0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "DingTalk_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1425
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 2238
    :cond_4
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a:Ljava/util/List;

    if-nez v2, :cond_5

    .line 2239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a:Ljava/util/List;

    .line 2241
    :cond_5
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    :cond_6
    iget-object v0, p0, Lbsz;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->H()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 209
    invoke-virtual {p0}, Lbsz;->u()V

    goto :goto_1

    .line 210
    :cond_7
    iget-object v0, p0, Lbsz;->b:Lbsw$b;

    invoke-interface {v0}, Lbsw$b;->v()Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;->AUTO_MESH:Lcom/alibaba/android/dingtalk/guard/ui/Constants$MeshType;

    if-ne v0, v1, :cond_8

    .line 211
    invoke-virtual {p0}, Lbsz;->x()V

    goto :goto_1

    .line 213
    :cond_8
    invoke-virtual {p0}, Lbsz;->u()V

    .line 214
    invoke-virtual {p0}, Lbsz;->y()V

    .line 215
    invoke-virtual {p0}, Lbsz;->b()V

    goto :goto_1
.end method

.method public final a(Lbsy$b;)V
    .locals 12
    .param p1, "listener"    # Lbsy$b;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 260
    const-string/jumbo v8, "LanBindPresenter"

    const-string/jumbo v9, "bind"

    invoke-static {v8, v9}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget v8, Lbrx$g;->dt_door_guard_request_bind_device:I

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lbsz;->a(IZ)V

    .line 262
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getAssistActiveRequest()Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

    move-result-object v5

    .line 263
    .local v5, "model":Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;
    if-nez v5, :cond_0

    .line 264
    const-string/jumbo v8, "LanBindPresenter"

    const-string/jumbo v9, "bindAndActive request model is null"

    invoke-static {v8, v9}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lbsz;->s()V

    .line 266
    invoke-virtual {p0}, Lbsz;->m()V

    .line 309
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v8, p0, Lbsz;->b:Lbsw$b;

    invoke-interface {v8}, Lbsw$b;->a()Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;

    move-result-object v4

    .line 271
    .local v4, "group":Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;
    if-nez v4, :cond_1

    .line 272
    const-string/jumbo v8, "LanBindPresenter"

    const-string/jumbo v9, "group is null"

    invoke-static {v8, v9}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lbsz;->s()V

    goto :goto_0

    .line 277
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v8

    iget-object v9, v4, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->corpId:Ljava/lang/String;

    invoke-virtual {v8, v9, v5}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->convertTo(Ljava/lang/String;Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;)Lbrz;

    move-result-object v1

    .line 279
    .local v1, "bindAndActiveModel":Lbrz;
    new-instance v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;-><init>()V

    .line 280
    .local v2, "bindAndSettingModel":Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;
    iput-object v1, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->a:Lbrz;

    .line 281
    invoke-virtual {p0}, Lbsz;->c()Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    move-result-object v0

    .line 282
    .local v0, "apType":Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;
    if-eqz v0, :cond_2

    .line 283
    invoke-virtual {p0}, Lbsz;->c()Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->value()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->e:Ljava/lang/Integer;

    .line 285
    :cond_2
    iget-object v8, p0, Lbsz;->b:Lbsw$b;

    invoke-interface {v8}, Lbsw$b;->D()Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, "ssidName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 287
    iget-object v8, p0, Lbsz;->b:Lbsw$b;

    invoke-interface {v8}, Lbsw$b;->B()Ljava/lang/String;

    move-result-object v7

    .line 289
    :cond_3
    iput-object v7, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->b:Ljava/lang/String;

    .line 291
    iget-object v8, p0, Lbsz;->b:Lbsw$b;

    iget-wide v10, v4, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    invoke-interface {v8, v10, v11}, Lbsw$b;->c(J)Lbls;

    move-result-object v6

    .line 292
    .local v6, "selectContactResult":Lbls;
    if-eqz v6, :cond_4

    .line 293
    invoke-virtual {v6}, Lbls;->a()Ljava/util/List;

    move-result-object v8

    iput-object v8, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->f:Ljava/util/List;

    .line 294
    invoke-virtual {v6}, Lbls;->b()Ljava/util/List;

    move-result-object v8

    iput-object v8, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->g:Ljava/util/List;

    .line 299
    :goto_1
    iget-object v8, p0, Lbsz;->b:Lbsw$b;

    invoke-interface {v8}, Lbsw$b;->L()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->h:Ljava/lang/Boolean;

    .line 301
    iget-object v8, p0, Lbsz;->b:Lbsw$b;

    iget-wide v10, v4, Lcom/alibaba/android/dingtalk/guard/ui/activity/GroupData;->orgId:J

    invoke-interface {v8, v10, v11}, Lbsw$b;->d(J)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->i:Ljava/lang/Boolean;

    .line 2313
    new-instance v3, Lbsz$3;

    invoke-direct {v3, p0, p1, v2}, Lbsz$3;-><init>(Lbsz;Lbsy$b;Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;)V

    .line 305
    .local v3, "bindListener":Lcma;, "Lcma<Lbsa;>;"
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v8

    const-class v9, Lcma;

    invoke-virtual {p0}, Lbsz;->l()Landroid/app/Activity;

    move-result-object v10

    invoke-interface {v8, v3, v9, v10}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "bindListener":Lcma;, "Lcma<Lbsa;>;"
    check-cast v3, Lcma;

    .line 308
    .restart local v3    # "bindListener":Lcma;, "Lcma<Lbsa;>;"
    invoke-static {}, Lbnc;->a()Lbnc;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Lbnc;->a(Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;Lcma;)V

    goto/16 :goto_0

    .line 296
    .end local v3    # "bindListener":Lcma;, "Lcma<Lbsa;>;"
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->f:Ljava/util/List;

    .line 297
    iget-object v8, v2, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel;->f:Ljava/util/List;

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 168
    return-void
.end method

.method public final c()Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 430
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->ROUTER:Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    .line 431
    .local v0, "apType":Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getAssistActiveRequest()Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

    move-result-object v3

    .line 432
    .local v3, "request":Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;
    if-eqz v3, :cond_1

    .line 3095
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->g:Ljava/util/Map;

    if-eqz v4, :cond_2

    .line 3096
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->g:Ljava/util/Map;

    const-string/jumbo v5, "proto"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest$Proto;->getProto(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest$Proto;

    move-result-object v2

    .line 3102
    .local v2, "proto":Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest$Proto;
    :goto_0
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->g:Ljava/util/Map;

    if-eqz v4, :cond_3

    .line 3103
    const-string/jumbo v5, "1"

    iget-object v4, v3, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->g:Ljava/util/Map;

    const-string/jumbo v6, "poe"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 436
    .local v1, "isPoe":Z
    :goto_1
    sget-object v4, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest$Proto;->PPPOE:Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest$Proto;

    if-eq v2, v4, :cond_0

    sget-object v4, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest$Proto;->STATIC:Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest$Proto;

    if-ne v2, v4, :cond_4

    .line 437
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->ROUTER:Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    .line 444
    .end local v1    # "isPoe":Z
    .end local v2    # "proto":Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest$Proto;
    :cond_1
    :goto_2
    return-object v0

    .line 3098
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 3105
    .restart local v2    # "proto":Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest$Proto;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 438
    .restart local v1    # "isPoe":Z
    :cond_4
    sget-object v4, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest$Proto;->DHCP:Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest$Proto;

    if-ne v2, v4, :cond_6

    .line 439
    if-eqz v1, :cond_5

    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->AP:Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    :goto_3
    goto :goto_2

    :cond_5
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->ROUTER:Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    goto :goto_3

    .line 441
    :cond_6
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;->ROUTER:Lcom/alibaba/android/dingtalk/alpha/rpc/idl/model/BindAndSettingModel$ApType;

    goto :goto_2
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 173
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "deviceVersion":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getAssistActiveRequest()Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

    move-result-object v1

    .line 451
    .local v1, "request":Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;
    if-eqz v1, :cond_0

    .line 3109
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->g:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 3110
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;->g:Ljava/util/Map;

    const-string/jumbo v3, "version"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .line 454
    :cond_0
    :goto_0
    return-object v0

    .line 3112
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 459
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getAssistActiveRequest()Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;

    move-result-object v0

    .line 460
    .local v0, "request":Lcom/alibaba/android/dingtalk/alpha/npc/model/AssistActiveRequest;
    if-nez v0, :cond_0

    .line 461
    const/4 v1, 0x0

    .line 463
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final f()V
    .locals 0

    .prologue
    .line 256
    return-void
.end method

.method public final x()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 221
    invoke-static {}, Lbly;->a()Lblt;

    move-result-object v0

    .line 222
    .local v0, "result":Lblt;
    if-eqz v0, :cond_0

    iget v1, v0, Lblt;->a:I

    sget-object v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->ERROR_CODE_DEFAULT:Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;

    iget v2, v2, Lcom/alibaba/android/dingtalk/alpha/AlphaInterface$ErrorCode;->mCode:I

    if-eq v1, v2, :cond_1

    .line 223
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lbsz;->d:Z

    .line 224
    iget v1, v0, Lblt;->a:I

    invoke-virtual {p0, v1}, Lbsz;->b(I)V

    .line 229
    :goto_0
    invoke-virtual {p0}, Lbsz;->y()V

    .line 230
    return-void

    .line 226
    :cond_1
    const-string/jumbo v1, "LanBindPresenter"

    const-string/jumbo v2, "alpha_mesh_enter"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcps;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 227
    invoke-virtual {p0}, Lbsz;->w()V

    goto :goto_0
.end method

.method public final y()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 233
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v1

    iget-object v2, p0, Lbsz;->f:Lblr;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->registerUICallback(Lblr;)V

    .line 234
    invoke-static {}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->getInstance()Lcom/alibaba/android/dingtalk/alpha/AlphaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/alpha/AlphaManager;->startAlphaServer()Z

    move-result v0

    .line 235
    .local v0, "startResult":Z
    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lbsz;->m()V

    .line 238
    :cond_0
    return-void
.end method

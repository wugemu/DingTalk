.class public final Lcbm;
.super Ljava/lang/Object;
.source "WalletPresenter.java"

# interfaces
.implements Lcbk$a;


# instance fields
.field a:Lcbk$b;


# direct methods
.method public constructor <init>(Lcbk$b;)V
    .locals 1
    .param p1, "view"    # Lcbk$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcbm;->a:Lcbk$b;

    .line 27
    iget-object v0, p0, Lcbm;->a:Lcbk$b;

    invoke-interface {v0, p0}, Lcbk$b;->setPresenter(Lcjd;)V

    .line 28
    return-void
.end method

.method private a(Z)V
    .locals 3
    .param p1, "bindAlipay"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 87
    new-instance v0, Lcbm$2;

    invoke-direct {v0, p0, p1}, Lcbm$2;-><init>(Lcbm;Z)V

    .line 114
    .local v0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    const-class v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcbm;->a:Lcbk$b;

    invoke-interface {v2}, Lcbk$b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 115
    .restart local v0    # "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v1

    iget-object v2, p0, Lcbm;->a:Lcbk$b;

    invoke-interface {v2}, Lcbk$b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    .line 116
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 48
    iget-object v1, p0, Lcbm;->a:Lcbk$b;

    invoke-interface {v1}, Lcbk$b;->b()V

    .line 49
    new-instance v0, Lcbm$1;

    invoke-direct {v0, p0}, Lcbm$1;-><init>(Lcbm;)V

    .line 70
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;>;"
    const-class v1, Lcma;

    iget-object v2, p0, Lcbm;->a:Lcbk$b;

    invoke-interface {v2}, Lcbk$b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;>;"
    check-cast v0, Lcma;

    .line 71
    .restart local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalk/redpackets/models/DingWalletInfoObject;>;"
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v1

    .line 1515
    new-instance v2, Lcbs$15;

    invoke-direct {v2, v1, v0}, Lcbs$15;-><init>(Lcbs;Lcma;)V

    .line 1523
    const-class v1, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingWalletIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingWalletIService;

    .line 1524
    if-eqz v1, :cond_0

    .line 1525
    invoke-interface {v1, v2}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/DingWalletIService;->queryWalletInfo(Liyv;)V

    .line 72
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcbm;->a(Z)V

    .line 77
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcbm;->a(Z)V

    .line 83
    return-void
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

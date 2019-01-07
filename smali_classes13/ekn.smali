.class public final Lekn;
.super Lekm$a;
.source "MainModuleService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lekm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 27
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(IILekl;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "id"    # I
    .param p3, "callback"    # Lekl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    return-void
.end method

.method public final a(Ljava/lang/String;Lekl;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lekl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 32
    const-class v1, Lcom/alibaba/android/rimet/biz/idl/service/CommonIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/idl/service/CommonIService;

    .line 33
    .local v0, "service":Lcom/alibaba/android/rimet/biz/idl/service/CommonIService;
    new-instance v1, Lekn$1;

    invoke-direct {v1, p0, p2}, Lekn$1;-><init>(Lekn;Lekl;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/android/rimet/biz/idl/service/CommonIService;->bridge(Ljava/lang/String;Liyv;)V

    .line 59
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lekl;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "callback"    # Lekl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    new-instance v1, Lekn$2;

    invoke-direct {v1, p0, p3}, Lekn$2;-><init>(Lekn;Lekl;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILekl;)V
    .locals 6
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "scope"    # I
    .param p5, "callback"    # Lekl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p5, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-class v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/settings/CloudSettingService;

    .line 121
    invoke-static {p4}, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->fromValue(I)Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    move-result-object v4

    new-instance v5, Lekn$3;

    invoke-direct {v5, p0, p3, p5}, Lekn$3;-><init>(Lekn;Ljava/lang/String;Lekl;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 120
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/wukong/settings/CloudSettingService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    return-void
.end method

.method public final b(Ljava/lang/String;Lekl;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "callback"    # Lekl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    return-void
.end method

.method public final c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    return-void
.end method

.method public final c(Ljava/lang/String;Lekl;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "callback"    # Lekl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/scanbase/RecognitionAPI;->a()Lcom/alibaba/dingtalk/scanbase/RecognitionAPI;

    new-instance v0, Lekn$4;

    invoke-direct {v0, p0, p2}, Lekn$4;-><init>(Lekn;Lekl;)V

    goto :goto_0
.end method

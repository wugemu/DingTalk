.class public final Lhnt;
.super Ljava/lang/Object;
.source "MiniAppPageHandlerProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5PageHandlerProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handlerPageExit(Liop;Landroid/app/Activity;)Z
    .locals 7
    .param p1, "h5Page"    # Liop;
    .param p2, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    const/4 v0, 0x0

    .line 1074
    .local v0, "handled":Z
    invoke-interface {p1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "MINI-PROGRAM-WEB-VIEW-TAG"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1075
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v5

    .line 44
    :goto_0
    if-nez v2, :cond_2

    .line 1086
    if-eqz p1, :cond_0

    if-nez p2, :cond_4

    :cond_0
    move v2, v4

    .line 44
    :goto_1
    if-eqz v2, :cond_2

    .line 1128
    if-eqz p2, :cond_8

    .line 1129
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1130
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1131
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v6, "keepAlive"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1132
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v6, "mainTask"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1133
    const-string/jumbo v6, "false"

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_8

    :cond_1
    move v2, v4

    .line 46
    :goto_2
    if-eqz v2, :cond_9

    .line 48
    :try_start_0
    invoke-static {}, Lhlq;->a()Lhlq;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lhlq;->a(Landroid/app/Activity;ZZ)Z

    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-static {}, Lhlq;->a()Lhlq;

    move-result-object v2

    invoke-virtual {v2, p2}, Lhlq;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_2
    :goto_3
    const-string/jumbo v3, "MiniAppPageHandlerProviderImpl"

    const/4 v2, 0x5

    new-array v6, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "handlerPageExit"

    aput-object v2, v6, v4

    const-string/jumbo v2, "h5Page.url="

    aput-object v2, v6, v5

    const/4 v4, 0x2

    if-eqz p1, :cond_a

    .line 62
    invoke-interface {p1}, Liop;->getUrl()Ljava/lang/String;

    move-result-object v2

    :goto_4
    aput-object v2, v6, v4

    const/4 v2, 0x3

    const-string/jumbo v4, "handled="

    aput-object v4, v6, v2

    const/4 v2, 0x4

    .line 63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v6, v2

    .line 2082
    const-string/jumbo v2, "mini_task"

    invoke-static {v2, v3, v6}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    return v0

    :cond_3
    move v2, v4

    .line 1075
    goto :goto_0

    .line 1090
    :cond_4
    invoke-interface {p1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 1091
    const-string/jumbo v3, "sessionId"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1092
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getSession(Ljava/lang/String;)Lipc;

    move-result-object v3

    .line 1093
    instance-of v2, p2, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v2, :cond_7

    .line 1094
    if-eqz v3, :cond_5

    instance-of v2, v3, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    if-eqz v2, :cond_5

    move-object v2, v3

    check-cast v2, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 1095
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1096
    check-cast v3, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;

    .line 1097
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/core/H5SessionImpl;->getH5SessionTabManager()Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabManager;->countTabFragments()I

    move-result v3

    move-object v2, p2

    .line 1098
    check-cast v2, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .line 1099
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v2

    .line 1100
    if-eqz v2, :cond_5

    .line 1101
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->getFragmentCount()I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v5

    .line 1103
    goto/16 :goto_1

    :cond_5
    move-object v2, p2

    .line 1106
    check-cast v2, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->getH5FragmentManager()Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;

    move-result-object v2

    .line 1107
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5FragmentManager;->getFragmentCount()I

    move-result v2

    if-gt v2, v5, :cond_6

    move v2, v5

    .line 1109
    goto/16 :goto_1

    :cond_6
    move v2, v4

    .line 1111
    goto/16 :goto_1

    :cond_7
    move v2, v4

    .line 1117
    goto/16 :goto_1

    :cond_8
    move v2, v5

    .line 1138
    goto/16 :goto_2

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "t":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 56
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_9
    invoke-static {p2}, Lhrf;->b(Landroid/app/Activity;)V

    .line 57
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 62
    :cond_a
    const-string/jumbo v2, "null"

    goto/16 :goto_4
.end method

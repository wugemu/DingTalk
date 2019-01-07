.class public Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;
.super Ljava/lang/Object;
.source "H5PagePreloadFactoryImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/factory/H5PageFactory;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PagePreloadFactoryImpl"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;->activity:Landroid/app/Activity;

    .line 40
    return-void
.end method


# virtual methods
.method public createPage(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "param"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    const-string/jumbo v4, "H5PagePreloadFactoryImpl"

    const-string/jumbo v5, "start create page"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 46
    .local v2, "time":J
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;-><init>()V

    .line 48
    .local v1, "rootViewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;-><init>(Landroid/app/Activity;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V

    .line 49
    .local v0, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    new-instance v4, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;)V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setHandler(Liop$b;)V

    .line 56
    new-instance v4, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$2;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;)V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setH5ErrorHandler(Liop$a;)V

    .line 62
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5Page(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 64
    const-string/jumbo v4, "H5PagePreloadFactoryImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "create page elapse "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-object v1
.end method

.method public setUpPage(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "rootViewHolder"    # Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .param p2, "startParams"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5Page()Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v2

    .line 70
    .local v2, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    const-string/jumbo v9, "transparent"

    const/4 v10, 0x0

    invoke-static {p2, v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v8

    .line 71
    .local v8, "transActivity":Z
    const-string/jumbo v9, "H5PagePreloadFactoryImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "transActivity "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    if-nez v8, :cond_0

    .line 74
    const-string/jumbo v9, "H5PagePreloadFactoryImpl"

    const-string/jumbo v10, "init nav bar"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;->activity:Landroid/app/Activity;

    invoke-direct {v1, v9, p2, p1}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V

    .line 78
    .local v1, "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5NavBar(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v1    # "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    :goto_0
    const-string/jumbo v9, "H5PagePreloadFactoryImpl"

    const-string/jumbo v10, "init nav bar end"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    if-nez v8, :cond_2

    .line 87
    :try_start_1
    const-string/jumbo v9, "H5PagePreloadFactoryImpl"

    const-string/jumbo v10, "init web content"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v4, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {v4, v2}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 89
    .local v4, "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    invoke-virtual {p1, v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5WebContainer(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    .line 90
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Liow;

    move-result-object v9

    invoke-interface {v9, v4}, Liow;->register(Liov;)Z

    .line 91
    const-string/jumbo v9, "H5PagePreloadFactoryImpl"

    const-string/jumbo v10, "init web content end"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v9, "H5PagePreloadFactoryImpl"

    const-string/jumbo v10, "init font bar"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lcom/alipay/mobile/nebulacore/view/H5FontBar;

    invoke-direct {v0, v2}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;-><init>(Liop;)V

    .line 95
    .local v0, "h5FontBar":Lcom/alipay/mobile/nebulacore/view/H5FontBar;
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Liow;

    move-result-object v9

    invoke-interface {v9, v0}, Liow;->register(Liov;)Z

    .line 96
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5FontBar(Lcom/alipay/mobile/nebulacore/view/H5FontBar;)V

    .line 97
    const-string/jumbo v9, "H5PagePreloadFactoryImpl"

    const-string/jumbo v10, "init font bar end"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v9, "H5PagePreloadFactoryImpl"

    const-string/jumbo v10, "init tab bar"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v3, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;-><init>()V

    .line 101
    .local v3, "h5Tabbar":Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->setPageViewHolder(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V

    .line 102
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Liow;

    move-result-object v9

    invoke-interface {v9, v3}, Liow;->register(Liov;)Z

    .line 103
    invoke-virtual {p1, v3}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5Tabbar(Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;)V

    .line 104
    const-string/jumbo v9, "H5PagePreloadFactoryImpl"

    const-string/jumbo v10, "init tab bar end"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v1

    .line 107
    .restart local v1    # "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getHdivider()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setHdivider(Landroid/view/View;)V

    .line 109
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setPage(Liop;)V

    .line 110
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Liow;

    move-result-object v9

    invoke-interface {v9, v1}, Liow;->register(Liov;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .end local v0    # "h5FontBar":Lcom/alipay/mobile/nebulacore/view/H5FontBar;
    .end local v1    # "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .end local v3    # "h5Tabbar":Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;
    .end local v4    # "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    :cond_1
    :goto_1
    new-instance v6, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$3;

    invoke-direct {v6, p0, p2, v2}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 143
    .local v6, "keyboardListener":Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;
    new-instance v5, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;->activity:Landroid/app/Activity;

    invoke-direct {v5, v9}, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;-><init>(Landroid/app/Activity;)V

    .line 144
    .local v5, "keyboardHelper":Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->setListener(Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;)V

    .line 145
    return-void

    .line 79
    .end local v5    # "keyboardHelper":Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;
    .end local v6    # "keyboardListener":Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;
    :catch_0
    move-exception v7

    .line 80
    .local v7, "t":Ljava/lang/Throwable;
    const-string/jumbo v9, "H5PagePreloadFactoryImpl"

    const-string/jumbo v10, "init exception"

    invoke-static {v9, v10, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 112
    .end local v7    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 113
    .restart local v7    # "t":Ljava/lang/Throwable;
    const-string/jumbo v9, "H5PagePreloadFactoryImpl"

    const-string/jumbo v10, "init exception"

    invoke-static {v9, v10, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 118
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    new-instance v4, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    invoke-direct {v4, v2}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 119
    .local v4, "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;
    invoke-virtual {p1, v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5TransWebContainer(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)V

    .line 120
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Liow;

    move-result-object v9

    invoke-interface {v9, v4}, Liow;->register(Liov;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 121
    .end local v4    # "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;
    :catch_2
    move-exception v7

    .line 122
    .restart local v7    # "t":Ljava/lang/Throwable;
    const-string/jumbo v9, "H5PagePreloadFactoryImpl"

    const-string/jumbo v10, "init exception"

    invoke-static {v9, v10, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.class public Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;
.super Ljava/lang/Object;
.source "H5PageFactoryImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/factory/H5PageFactory;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PageFactoryImpl"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->activity:Landroid/app/Activity;

    .line 32
    return-void
.end method


# virtual methods
.method public createPage(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    .locals 18
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "param"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const-string/jumbo v15, "H5PageFactoryImpl"

    const-string/jumbo v16, "start create page"

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 38
    .local v12, "time":J
    new-instance v9, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    invoke-direct {v9}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;-><init>()V

    .line 40
    .local v9, "rootViewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    move-object/from16 v10, p2

    .local v10, "startParams":Landroid/os/Bundle;
    const-string/jumbo v15, "transparent"

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v14

    .line 41
    .local v14, "transActivity":Z
    const-string/jumbo v15, "H5PageFactoryImpl"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "transActivity "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    if-nez v14, :cond_0

    .line 44
    const-string/jumbo v15, "H5PageFactoryImpl"

    const-string/jumbo v16, "init nav bar"

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :try_start_0
    new-instance v3, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v10, v9}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V

    .line 48
    .local v3, "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    invoke-virtual {v9, v3}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5NavBar(Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v3    # "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    :goto_0
    const-string/jumbo v15, "H5PageFactoryImpl"

    const-string/jumbo v16, "init nav bar end"

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    new-instance v4, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->activity:Landroid/app/Activity;

    invoke-direct {v4, v15, v10, v9}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V

    .line 57
    .local v4, "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    new-instance v15, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;)V

    invoke-virtual {v4, v15}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setHandler(Liop$b;)V

    .line 64
    new-instance v15, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;)V

    invoke-virtual {v4, v15}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->setH5ErrorHandler(Liop$a;)V

    .line 70
    invoke-virtual {v9, v4}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5Page(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 71
    if-nez v14, :cond_2

    .line 73
    :try_start_1
    const-string/jumbo v15, "H5PageFactoryImpl"

    const-string/jumbo v16, "init web content"

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v6, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {v6, v4}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 75
    .local v6, "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    invoke-virtual {v9, v6}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5WebContainer(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    .line 76
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Liow;

    move-result-object v15

    invoke-interface {v15, v6}, Liow;->register(Liov;)Z

    .line 77
    const-string/jumbo v15, "H5PageFactoryImpl"

    const-string/jumbo v16, "init web content end"

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v15, "H5PageFactoryImpl"

    const-string/jumbo v16, "init font bar"

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v2, Lcom/alipay/mobile/nebulacore/view/H5FontBar;

    invoke-direct {v2, v4}, Lcom/alipay/mobile/nebulacore/view/H5FontBar;-><init>(Liop;)V

    .line 81
    .local v2, "h5FontBar":Lcom/alipay/mobile/nebulacore/view/H5FontBar;
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Liow;

    move-result-object v15

    invoke-interface {v15, v2}, Liow;->register(Liov;)Z

    .line 82
    invoke-virtual {v9, v2}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5FontBar(Lcom/alipay/mobile/nebulacore/view/H5FontBar;)V

    .line 83
    const-string/jumbo v15, "H5PageFactoryImpl"

    const-string/jumbo v16, "init font bar end"

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v15, "H5PageFactoryImpl"

    const-string/jumbo v16, "init tab bar"

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v5, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;-><init>()V

    .line 87
    .local v5, "h5Tabbar":Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;
    invoke-virtual {v5, v9}, Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;->setPageViewHolder(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)V

    .line 88
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Liow;

    move-result-object v15

    invoke-interface {v15, v5}, Liow;->register(Liov;)Z

    .line 89
    invoke-virtual {v9, v5}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5Tabbar(Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;)V

    .line 90
    const-string/jumbo v15, "H5PageFactoryImpl"

    const-string/jumbo v16, "init tab bar end"

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5NavBar()Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;

    move-result-object v3

    .line 93
    .restart local v3    # "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v9}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->getH5WebContainer()Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->getHdivider()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setHdivider(Landroid/view/View;)V

    .line 95
    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;->setPage(Liop;)V

    .line 96
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Liow;

    move-result-object v15

    invoke-interface {v15, v3}, Liow;->register(Liov;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .end local v2    # "h5FontBar":Lcom/alipay/mobile/nebulacore/view/H5FontBar;
    .end local v3    # "h5NavBar":Lcom/alipay/mobile/nebulacore/view/H5NavigationBar;
    .end local v5    # "h5Tabbar":Lcom/alipay/mobile/nebulacore/tabbar/H5PageTabBar;
    .end local v6    # "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
    :cond_1
    :goto_1
    new-instance v8, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v10, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 129
    .local v8, "keyboardListener":Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;
    new-instance v7, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/core/H5PageFactoryImpl;->activity:Landroid/app/Activity;

    invoke-direct {v7, v15}, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;-><init>(Landroid/app/Activity;)V

    .line 130
    .local v7, "keyboardHelper":Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;
    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;->setListener(Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;)V

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v12, v16, v12

    .line 133
    const-string/jumbo v15, "H5PageFactoryImpl"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "create page elapse "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object v9

    .line 49
    .end local v4    # "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .end local v7    # "keyboardHelper":Lcom/alipay/mobile/nebulacore/util/KeyboardUtil;
    .end local v8    # "keyboardListener":Lcom/alipay/mobile/nebulacore/util/KeyboardUtil$KeyboardListener;
    :catch_0
    move-exception v11

    .line 50
    .local v11, "t":Ljava/lang/Throwable;
    const-string/jumbo v15, "H5PageFactoryImpl"

    const-string/jumbo v16, "init exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 98
    .end local v11    # "t":Ljava/lang/Throwable;
    .restart local v4    # "h5Page":Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    :catch_1
    move-exception v11

    .line 99
    .restart local v11    # "t":Ljava/lang/Throwable;
    const-string/jumbo v15, "H5PageFactoryImpl"

    const-string/jumbo v16, "init exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 104
    .end local v11    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    new-instance v6, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;

    invoke-direct {v6, v4}, Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;-><init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V

    .line 105
    .local v6, "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;
    invoke-virtual {v9, v6}, Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;->setH5TransWebContainer(Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;)V

    .line 106
    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPluginManager()Liow;

    move-result-object v15

    invoke-interface {v15, v6}, Liow;->register(Liov;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 107
    .end local v6    # "h5WebContainer":Lcom/alipay/mobile/nebulacore/ui/H5TransWebContent;
    :catch_2
    move-exception v11

    .line 108
    .restart local v11    # "t":Ljava/lang/Throwable;
    const-string/jumbo v15, "H5PageFactoryImpl"

    const-string/jumbo v16, "init exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v11}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

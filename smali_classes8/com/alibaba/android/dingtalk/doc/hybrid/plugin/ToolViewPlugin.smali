.class public Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "ToolViewPlugin.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mInsertLinkPanelView:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->mInsertLinkPanelView:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;)Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->mInsertLinkPanelView:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    return-object p1
.end method

.method static synthetic access$400(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->success(Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-super {p0}, Lcom/alibaba/lightapp/runtime/Plugin;->onDestroy()V

    .line 152
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 156
    :cond_0
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->mAlertDialog:Landroid/app/AlertDialog;

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->mInsertLinkPanelView:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->mInsertLinkPanelView:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;->a()V

    .line 160
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->mInsertLinkPanelView:Lcom/alibaba/android/dingtalk/doc/toolbar/ui/toolpanel/impl/InsertLinkPropertyPanel;

    .line 162
    :cond_2
    return-void
.end method

.method public declared-synchronized setStyle(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 6
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v2, "kvData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_1

    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 53
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 54
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 56
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 57
    iget-object v4, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 50
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "kvData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 62
    .restart local v2    # "kvData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "context":Landroid/content/Context;
    instance-of v4, v0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;

    if-eqz v4, :cond_2

    .line 64
    check-cast v0, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/doc/ui/activity/DocWebViewActivity;->b(Ljava/util/HashMap;)V

    .line 67
    :cond_2
    new-instance v4, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v5, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4
.end method

.method public declared-synchronized showLinkEdit(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 4
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin$1;-><init>(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/ToolViewPlugin;Lcom/alibaba/lightapp/runtime/ActionRequest;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

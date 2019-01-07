.class public final Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;
.super Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
.source "NavigationDelegateModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

.field public b:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

.field public c:Lbrs;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->d:Ljava/util/Set;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->d:Ljava/util/Set;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;)V
    .locals 3
    .param p1, "component"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->bindComponent(Lcom/alibaba/lightapp/runtime/Component;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->d:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->b:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->bindComponent(Lcom/alibaba/lightapp/runtime/Component;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 46
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized b(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;)V
    .locals 3
    .param p1, "component"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->d:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->d:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->b:Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    invoke-virtual {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->unbindComponent(Lcom/alibaba/lightapp/runtime/Component;)V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->unbindComponent(Lcom/alibaba/lightapp/runtime/Component;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 62
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public final synthetic bindComponent(Lcom/alibaba/lightapp/runtime/Component;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;)V

    return-void
.end method

.method public final goBack()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->goBack()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    invoke-virtual {v0}, Lbrs;->goBack()V

    .line 204
    :cond_1
    return-void
.end method

.method public final hideActionBar(Z)V
    .locals 1
    .param p1, "isHidden"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->hideActionBar(Z)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    invoke-virtual {v0, p1}, Lbrs;->hideActionBar(Z)V

    .line 215
    :cond_1
    return-void
.end method

.method public final setActionBarSubTitle(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "subTitle"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;
    .param p3, "showIcon"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setActionBarSubTitle(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    invoke-virtual {v0, p1, p2, p3}, Lbrs;->setActionBarSubTitle(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 150
    :cond_1
    return-void
.end method

.method public final setActionBarTitle(Ljava/lang/String;ZZZ)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "showRedDot"    # Z
    .param p3, "changeRedDot"    # Z
    .param p4, "eventEnable"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setActionBarTitle(Ljava/lang/String;ZZZ)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    invoke-virtual {v0, p1, p2, p3, p4}, Lbrs;->setActionBarTitle(Ljava/lang/String;ZZZ)V

    .line 128
    :cond_1
    return-void
.end method

.method public final setActions(Ljava/util/List;Z)V
    .locals 1
    .param p2, "showFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setActions(Ljava/util/List;Z)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    invoke-virtual {v0, p1, p2}, Lbrs;->setActions(Ljava/util/List;Z)V

    .line 182
    :cond_1
    return-void
.end method

.method public final setHelpIcon(ZI)V
    .locals 1
    .param p1, "isShow"    # Z
    .param p2, "iconType"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setHelpIcon(ZI)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    invoke-virtual {v0, p1, p2}, Lbrs;->setHelpIcon(ZI)V

    .line 117
    :cond_1
    return-void
.end method

.method public final setLeft(ZZZLjava/lang/String;)V
    .locals 1
    .param p1, "isBackArrowVisible"    # Z
    .param p2, "isHomeIconVisible"    # Z
    .param p3, "isControl"    # Z
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setLeft(ZZZLjava/lang/String;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    invoke-virtual {v0, p1, p2, p3, p4}, Lbrs;->setLeft(ZZZLjava/lang/String;)V

    .line 95
    :cond_1
    return-void
.end method

.method public final setMenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "identifyOrBgDefaultColor"    # Ljava/lang/String;
    .param p3, "menuTextColor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 154
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    const-string/jumbo v0, "set_tools_identify"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    .line 1192
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lbrs;->a:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    iget-object v1, v0, Lbrs;->a:Landroid/app/Activity;

    new-instance v2, Lbrs$1;

    invoke-direct {v2, v0, p1}, Lbrs$1;-><init>(Lbrs;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setMenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sOverflowMenuBackgroundDefaultColor:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sMenuTextDefaultColor:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lbrs;->setMenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setPullGesture(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setPullGesture(Z)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    invoke-virtual {v0, p1}, Lbrs;->setPullGesture(Z)V

    .line 226
    :cond_1
    return-void
.end method

.method public final setRight(ZZZLjava/lang/String;)V
    .locals 1
    .param p1, "isShow"    # Z
    .param p2, "isControl"    # Z
    .param p3, "disable"    # Z
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setRight(ZZZLjava/lang/String;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    invoke-virtual {v0, p1, p2, p3, p4}, Lbrs;->setRight(ZZZLjava/lang/String;)V

    .line 106
    :cond_1
    return-void
.end method

.method public final setTitleIcon(ZILjava/lang/String;)V
    .locals 1
    .param p1, "isShow"    # Z
    .param p2, "iconType"    # I
    .param p3, "iconUnicode"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->setTitleIcon(ZILjava/lang/String;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    invoke-virtual {v0, p1, p2, p3}, Lbrs;->setTitleIcon(ZILjava/lang/String;)V

    .line 139
    :cond_1
    return-void
.end method

.method public final showTitleDropListMenu(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->showTitleDropListMenu(Ljava/util/List;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->c:Lbrs;

    invoke-virtual {v0, p1}, Lbrs;->showTitleDropListMenu(Ljava/util/List;)V

    .line 193
    :cond_1
    return-void
.end method

.method public final synthetic unbindComponent(Lcom/alibaba/lightapp/runtime/Component;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->b(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;)V

    return-void
.end method

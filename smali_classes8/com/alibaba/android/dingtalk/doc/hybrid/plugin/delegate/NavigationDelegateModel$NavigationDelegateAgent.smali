.class public final Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;
.super Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
.source "NavigationDelegateModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NavigationDelegateAgent"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDropListItemClick(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)V
    .locals 4
    .param p1, "model"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 296
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    monitor-enter v2

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    .line 302
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->onDropListItemClick(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)V

    goto :goto_1

    .line 306
    .end local v0    # "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final onHelpIconClick()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 270
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    monitor-enter v2

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    .line 276
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->onHelpIconClick()V

    goto :goto_1

    .line 278
    .end local v0    # "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final onHomeClick()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 244
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    monitor-enter v2

    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    .line 250
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->onHomeClick()V

    goto :goto_1

    .line 252
    .end local v0    # "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final onLeftClick()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 231
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    monitor-enter v2

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    .line 237
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->onLeftClick()V

    goto :goto_1

    .line 239
    .end local v0    # "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final onMenuItemClick(Ljava/lang/String;)V
    .locals 4
    .param p1, "itemId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 283
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    .line 291
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    monitor-enter v2

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    .line 289
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->onMenuItemClick(Ljava/lang/String;)V

    goto :goto_1

    .line 291
    .end local v0    # "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final onRightClick()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 257
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    monitor-enter v2

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel$NavigationDelegateAgent;->a:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->a(Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    .line 263
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->onRightClick()V

    goto :goto_1

    .line 265
    .end local v0    # "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

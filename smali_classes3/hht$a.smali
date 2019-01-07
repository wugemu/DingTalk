.class final Lhht$a;
.super Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
.source "FrameNavigationModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhht;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lhht;


# direct methods
.method constructor <init>(Lhht;)V
    .locals 0
    .param p1, "this$0"    # Lhht;

    .prologue
    .line 164
    iput-object p1, p0, Lhht$a;->a:Lhht;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDropListItemClick(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 202
    iget-object v1, p0, Lhht$a;->a:Lhht;

    invoke-static {v1}, Lhht;->a(Lhht;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    .line 203
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->onDropListItemClick(Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;)V

    goto :goto_0

    .line 207
    .end local v0    # "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    :cond_1
    return-void
.end method

.method public final onHelpIconClick()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 188
    iget-object v1, p0, Lhht$a;->a:Lhht;

    invoke-static {v1}, Lhht;->a(Lhht;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    .line 189
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->onHelpIconClick()V

    goto :goto_0

    .line 191
    .end local v0    # "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    :cond_0
    return-void
.end method

.method public final onHomeClick()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 174
    iget-object v1, p0, Lhht$a;->a:Lhht;

    invoke-static {v1}, Lhht;->a(Lhht;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    .line 175
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->onHomeClick()V

    goto :goto_0

    .line 177
    .end local v0    # "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    :cond_0
    return-void
.end method

.method public final onLeftClick()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 167
    iget-object v1, p0, Lhht$a;->a:Lhht;

    invoke-static {v1}, Lhht;->a(Lhht;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    .line 168
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->onLeftClick()V

    goto :goto_0

    .line 170
    .end local v0    # "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    :cond_0
    return-void
.end method

.method public final onMenuItemClick(Ljava/lang/String;)V
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 195
    iget-object v1, p0, Lhht$a;->a:Lhht;

    invoke-static {v1}, Lhht;->a(Lhht;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    .line 196
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->onMenuItemClick(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .end local v0    # "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    :cond_0
    return-void
.end method

.method public final onRightClick()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 181
    iget-object v1, p0, Lhht$a;->a:Lhht;

    invoke-static {v1}, Lhht;->a(Lhht;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;

    .line 182
    .local v0, "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->onRightClick()V

    goto :goto_0

    .line 184
    .end local v0    # "component":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;
    :cond_0
    return-void
.end method

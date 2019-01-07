.class Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;
.super Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
.source "WMLActivityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;-><init>()V

    return-void
.end method


# virtual methods
.method public goBack()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public hideActionBar(Z)V
    .locals 3
    .param p1, "isHidden"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 223
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;)Lcom/taobao/windmill/bundle/WMLActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;)Lcom/taobao/windmill/bundle/WMLActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/WMLActivity;->getCurrentPageFrame()Ljqe;

    move-result-object v0

    .line 228
    .local v0, "page":Ljqe;
    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;)Lcom/taobao/windmill/bundle/WMLActivity;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$4;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$4;-><init>(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;Ljqe;)V

    invoke-virtual {v1, v2}, Lcom/taobao/windmill/bundle/WMLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setActionBarSubTitle(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "subTitle"    # Ljava/lang/String;
    .param p2, "icon"    # Ljava/lang/String;
    .param p3, "showIcon"    # Z

    .prologue
    .line 183
    return-void
.end method

.method public setActionBarTitle(Ljava/lang/String;ZZZ)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "showRedDot"    # Z
    .param p3, "changeRedDot"    # Z
    .param p4, "eventEnable"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;)Lcom/taobao/windmill/bundle/WMLActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;)Lcom/taobao/windmill/bundle/WMLActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/WMLActivity;->getCurrentPageFrame()Ljqe;

    move-result-object v0

    .line 170
    .local v0, "page":Ljqe;
    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;)Lcom/taobao/windmill/bundle/WMLActivity;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$2;-><init>(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;Ljqe;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/taobao/windmill/bundle/WMLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setActions(Ljava/util/List;Z)V
    .locals 0
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
    .line 209
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    return-void
.end method

.method public setHelpIcon(ZI)V
    .locals 0
    .param p1, "isShow"    # Z
    .param p2, "iconType"    # I

    .prologue
    .line 156
    return-void
.end method

.method public setLeft(ZZZLjava/lang/String;)V
    .locals 0
    .param p1, "isBackArrowVisible"    # Z
    .param p2, "isHomeIconVisible"    # Z
    .param p3, "isControl"    # Z
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 134
    return-void
.end method

.method public setMenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "overflowMenuBackgroundColor"    # Ljava/lang/String;
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

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;)Lcom/taobao/windmill/bundle/WMLActivity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;)Lcom/taobao/windmill/bundle/WMLActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/windmill/bundle/WMLActivity;->getCurrentPageFrame()Ljqe;

    move-result-object v1

    .line 192
    .local v1, "page":Ljqe;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 193
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 194
    .local v0, "item":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getText()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;)Lcom/taobao/windmill/bundle/WMLActivity;

    move-result-object v3

    new-instance v4, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$3;

    invoke-direct {v4, p0, v1, v2}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$3;-><init>(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;Ljqe;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/taobao/windmill/bundle/WMLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setPullGesture(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 241
    return-void
.end method

.method public setRight(ZZZLjava/lang/String;)V
    .locals 3
    .param p1, "isShow"    # Z
    .param p2, "isControl"    # Z
    .param p3, "disable"    # Z
    .param p4, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;)Lcom/taobao/windmill/bundle/WMLActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;)Lcom/taobao/windmill/bundle/WMLActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/WMLActivity;->getCurrentPageFrame()Ljqe;

    move-result-object v0

    .line 143
    .local v0, "page":Ljqe;
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;->this$0:Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;->access$000(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate;)Lcom/taobao/windmill/bundle/WMLActivity;

    move-result-object v1

    new-instance v2, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$1;

    invoke-direct {v2, p0, v0, p4}, Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1$1;-><init>(Lcom/alibaba/lightapp/runtime/weex/activity/WMLActivityDelegate$1;Ljqe;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/taobao/windmill/bundle/WMLActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setTitleIcon(ZILjava/lang/String;)V
    .locals 0
    .param p1, "isShow"    # Z
    .param p2, "iconType"    # I
    .param p3, "iconUnicode"    # Ljava/lang/String;

    .prologue
    .line 161
    return-void
.end method

.method public showTitleDropListMenu(Ljava/util/List;)V
    .locals 0
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
    .line 214
    .local p1, "menuItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    return-void
.end method

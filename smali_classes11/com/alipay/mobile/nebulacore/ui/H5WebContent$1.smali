.class Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;
.super Ljava/lang/Object;
.source "H5WebContent.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/refresh/H5PullAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/ui/H5WebContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPull()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$200(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$300(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRefresh()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$100(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Z

    move-result v0

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 146
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    if-nez v2, :cond_1

    .line 148
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    .line 149
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;

    .line 150
    .local v1, "h5ViewProvider":Lcom/alipay/mobile/nebula/provider/H5ViewProvider;
    if-eqz v1, :cond_0

    .line 151
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$400(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ViewProvider;->createPullHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    .line 152
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    if-nez v2, :cond_1

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$400(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$500(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    .line 159
    .end local v1    # "h5ViewProvider":Lcom/alipay/mobile/nebula/provider/H5ViewProvider;
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    invoke-interface {v2}, Lcom/alipay/mobile/nebula/view/H5PullHeaderView;->getContentView()Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public onFinish()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5PullHeaderView;->showFinish()V

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$702(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;Z)Z

    .line 188
    :cond_0
    return-void
.end method

.method public onLoading()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 125
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/view/H5PullHeaderView;->showLoading()V

    .line 127
    const-string/jumbo v1, "H5WebContent"

    const-string/jumbo v2, "onLoading,TimeoutRunnable begin,send event FIRE_PULL_TO_REFRESH "

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$000(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v1

    const-string/jumbo v2, "firePullToRefresh"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 129
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)V

    .line 130
    .local v0, "timeoutRunnable":Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;
    const-wide/16 v2, 0x4e20

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 132
    .end local v0    # "timeoutRunnable":Lcom/alipay/mobile/nebulacore/ui/H5WebContent$TimeoutRunnable;
    :cond_0
    return-void
.end method

.method public onOpen()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5WebContent;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/ui/H5WebContent;->access$600(Lcom/alipay/mobile/nebulacore/ui/H5WebContent;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/view/H5PullHeaderView;->showOpen(I)V

    .line 171
    const-string/jumbo v0, "H5WebContent"

    const-string/jumbo v1, "open "

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onOver()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5PullHeaderView;->showOver()V

    .line 180
    :cond_0
    return-void
.end method

.method public onProgressUpdate(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/view/H5PullHeaderView;->onProgressUpdate(I)V

    .line 165
    return-void
.end method

.method public onRefreshFinish()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5WebContent$1;->pullHeader:Lcom/alipay/mobile/nebula/view/H5PullHeaderView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/view/H5PullHeaderView;->onRefreshFinish()V

    .line 195
    :cond_0
    return-void
.end method

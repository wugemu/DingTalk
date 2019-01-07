.class final Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$10;
.super Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;
.source "CommonWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$10;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final closePage()V
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$10;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->g(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V

    .line 1679
    return-void
.end method

.method public final getCurrentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$10;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->h(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final goPage(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "anim"    # Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$10;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V

    .line 1684
    return-void
.end method

.method public final hasPage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$10;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->d(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final popPage(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$10;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->c(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/lang/String;)V

    .line 1694
    return-void
.end method

.method public final preloadPages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/model/WebViewModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1668
    .local p1, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/model/WebViewModel;>;"
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$10;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/util/List;)V

    .line 1669
    return-void
.end method

.method public final pushPage(Lcom/alibaba/lightapp/runtime/model/WebViewModel;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V
    .locals 1
    .param p1, "model"    # Lcom/alibaba/lightapp/runtime/model/WebViewModel;
    .param p2, "anim"    # Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$10;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Lcom/alibaba/lightapp/runtime/model/WebViewModel;Lcom/alibaba/lightapp/runtime/plugin/delegate/NavModel$NavAnimInfo;)V

    .line 1689
    return-void
.end method

.method public final recyclePage(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$10;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v0, p1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/lang/String;)V

    .line 1674
    return-void
.end method

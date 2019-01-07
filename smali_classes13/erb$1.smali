.class final Lerb$1;
.super Ljava/lang/Object;
.source "FeedbackButtonPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lerb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lerb;


# direct methods
.method constructor <init>(Lerb;)V
    .locals 0
    .param p1, "this$0"    # Lerb;

    .prologue
    .line 71
    iput-object p1, p0, Lerb$1;->a:Lerb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 76
    .local v1, "param":Landroid/os/Bundle;
    invoke-static {}, Lenv;->b()Lenv;

    move-result-object v4

    invoke-virtual {v4}, Lenv;->c()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "queryAction":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 80
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 81
    .local v3, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v4, "https://h5.dingtalk.com/search-feedback/index.html"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, "?data="

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 82
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .end local v3    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .local v0, "data":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v4

    iget-object v5, p0, Lerb$1;->a:Lerb;

    .line 1024
    iget-object v5, v5, Lerb;->c:Landroid/app/Activity;

    .line 88
    invoke-virtual {v4, v5, v1}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->navToCommonWebView(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 89
    return-void

    .line 84
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "https://h5.dingtalk.com/search-feedback/index.html"

    .restart local v0    # "data":Ljava/lang/String;
    goto :goto_0
.end method

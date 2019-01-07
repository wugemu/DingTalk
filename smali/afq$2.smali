.class final Lafq$2;
.super Ljava/lang/Object;
.source "OAuthWebViewDelegate.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafq;->a(Lcom/alibaba/alimei/oauth/OAuthResponseClient;Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lcom/alibaba/alimei/framework/model/UserAccountModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

.field final synthetic b:Lafq;


# direct methods
.method constructor <init>(Lafq;Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;)V
    .locals 0
    .param p1, "this$0"    # Lafq;

    .prologue
    .line 101
    iput-object p1, p0, Lafq$2;->b:Lafq;

    iput-object p2, p0, Lafq$2;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 2
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->printStackTrace()V

    .line 115
    iget-object v0, p0, Lafq$2;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lafq$2;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;->a(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lafq$2;->b:Lafq;

    .line 1017
    const/4 v1, 0x0

    iput-object v1, v0, Lafq;->b:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    .line 119
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 101
    check-cast p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;

    .line 1104
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "onSuccess data accountName: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", accessToken: "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accessToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", masterAccount: "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p1, Lcom/alibaba/alimei/framework/model/UserAccountModel;->masterAccount:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a([Ljava/lang/Object;)V

    .line 1106
    iget-object v0, p0, Lafq$2;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lafq$2;->a:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewObserver;->a(Lcom/alibaba/alimei/framework/model/UserAccountModel;)V

    .line 1109
    :cond_0
    iget-object v0, p0, Lafq$2;->b:Lafq;

    .line 2017
    const/4 v1, 0x0

    iput-object v1, v0, Lafq;->b:Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    .line 101
    return-void
.end method

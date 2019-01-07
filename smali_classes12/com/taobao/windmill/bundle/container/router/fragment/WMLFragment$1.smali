.class final Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$1;
.super Landroid/os/AsyncTask;
.source "WMLFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    :try_start_0
    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v3}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    new-instance v2, Ljrf;

    invoke-direct {v2}, Ljrf;-><init>()V

    .line 151
    .local v2, "protocol":Ljrf;
    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .line 152
    invoke-static {v3}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->b(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljrf;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 153
    .local v0, "data":[B
    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 154
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 163
    .end local v0    # "data":[B
    .end local v2    # "protocol":Ljrf;
    :goto_0
    return-object v3

    .line 157
    :cond_0
    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v3}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v3

    invoke-interface {v3}, Ljqd;->getFileLoader()Ljqw;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .line 158
    invoke-static {v4}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->c(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljqw;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[WMFragment]"

    const-string/jumbo v4, "load template error"

    invoke-static {v3, v4, v1}, Ljrc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 144
    check-cast p1, Ljava/lang/String;

    .line 1168
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$1;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v0, p1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;Ljava/lang/String;)V

    .line 144
    return-void
.end method

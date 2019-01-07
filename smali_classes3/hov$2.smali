.class final Lhov$2;
.super Ljava/lang/Object;
.source "RuntimeNavigator2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhov;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lhov$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lhov$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lhov$2;->c:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    iput-object p4, p0, Lhov$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lhov$2;->e:Ljava/lang/String;

    iput-object p6, p0, Lhov$2;->f:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide v8, 0x7fffffffffffffffL

    .line 163
    iget-object v0, p0, Lhov$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lhov$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lhov$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lhov$2;->c:Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;

    iget-object v4, p0, Lhov$2;->d:Ljava/lang/String;

    iget-object v5, p0, Lhov$2;->e:Ljava/lang/String;

    iget-object v6, p0, Lhov$2;->f:Landroid/os/Bundle;

    invoke-static {v2, v3, v4, v5, v6}, Lhov;->a(Ljava/lang/String;Lcom/alibaba/lightapp/runtime/nav/model/CommonParseUrlResult;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;

    move-result-object v2

    .line 1253
    invoke-static {}, Lhhp;->a()Lhhp;

    const-string/jumbo v3, "weex_page_package_loading"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lhhp;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 1254
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1255
    const-class v4, Lcom/alibaba/lightapp/runtime/weex/activity/CommonWeexActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1256
    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1258
    if-eqz v2, :cond_1

    .line 1259
    iget-object v1, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddAppId:Ljava/lang/String;

    invoke-static {v1, v8, v9}, Lhdo;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1260
    const-string/jumbo v1, "micro_app"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1262
    iget-object v1, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->ddAgentId:Ljava/lang/String;

    invoke-static {v1, v8, v9}, Lhdo;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1263
    const-string/jumbo v1, "micro_agent"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1264
    iget-object v1, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->miniAppId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1265
    const-string/jumbo v1, "appId"

    iget-object v4, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->miniAppId:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    :cond_0
    iget-object v1, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->page:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1268
    const-string/jumbo v1, "page"

    iget-object v2, v2, Lcom/alibaba/lightapp/runtime/nav/model/AliPayMiniParseUrlResult;->page:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1272
    :cond_1
    invoke-static {v0}, Lhrf;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1273
    const/high16 v1, 0x10000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1276
    :cond_2
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 165
    :cond_3
    return-void
.end method

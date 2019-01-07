.class final Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;
.super Ljava/lang/Object;
.source "LightAppRuntimeReverseInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;->navToGraphicLiteracyFromIM(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;->c:Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v12, 0x0

    .line 1535
    iget-object v8, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;->a:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lhoj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1536
    .local v5, "resFilePath":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1537
    const-string/jumbo v8, "LightAppRuntime"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "resFilePath is null && realFilePath is: "

    aput-object v10, v9, v12

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;->a:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    .line 2071
    const-string/jumbo v10, "mini_app"

    invoke-static {v10, v8, v9}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1570
    :goto_0
    return-void

    .line 1541
    :cond_0
    const-string/jumbo v2, "2018050202619108"

    .line 1543
    .local v2, "miniAppId":Ljava/lang/String;
    const-string/jumbo v3, "pages/scan/index"

    .line 1545
    .local v3, "page":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1546
    .local v4, "pageUri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1547
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v8, "filePath"

    invoke-virtual {v0, v8, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1551
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v4    # "pageUri":Landroid/net/Uri;
    :goto_1
    invoke-static {v2, v3}, Lhom;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1554
    .local v7, "url":Ljava/lang/String;
    :try_start_1
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1555
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1556
    .restart local v0    # "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v8, "ddMode"

    const-string/jumbo v9, "push"

    invoke-virtual {v0, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string/jumbo v9, "keepAlive"

    const-string/jumbo v10, "false"

    .line 1557
    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 1561
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v6    # "uri":Landroid/net/Uri;
    :goto_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1562
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "url"

    invoke-virtual {v1, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const-string/jumbo v8, "ddNavbarMode"

    const-string/jumbo v9, "noRight"

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v8

    new-instance v9, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10$1;

    invoke-direct {v9, p0, v1}, Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10$1;-><init>(Lcom/alibaba/lightapp/runtime/LightAppRuntimeReverseInterfaceImpl$10;Landroid/os/Bundle;)V

    invoke-virtual {v8, v9}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v8

    goto :goto_2

    .end local v7    # "url":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_1
.end method

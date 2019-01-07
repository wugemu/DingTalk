.class public final Lhoj$1;
.super Ljava/lang/Object;
.source "MiniAppFileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhoj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lhoj$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 233
    :try_start_0
    iget-object v4, p0, Lhoj$1;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 234
    .local v2, "pageUri":Landroid/net/Uri;
    const-string/jumbo v4, "filePath"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "resFilePath":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    .end local v2    # "pageUri":Landroid/net/Uri;
    .end local v3    # "resFilePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 238
    .restart local v2    # "pageUri":Landroid/net/Uri;
    .restart local v3    # "resFilePath":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    invoke-static {v3}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "localId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a()Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;

    invoke-static {v0}, Lcom/alibaba/lightapp/runtime/miniapp/res/LocalResManager;->a(Ljava/lang/String;)Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;

    move-result-object v1

    .line 240
    .local v1, "localResModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    iget-object v4, v1, Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;->filePath:Ljava/lang/String;

    invoke-static {v4}, Lhfy;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    .end local v0    # "localId":Ljava/lang/String;
    .end local v1    # "localResModel":Lcom/alibaba/lightapp/runtime/miniapp/model/LocalResModel;
    .end local v2    # "pageUri":Landroid/net/Uri;
    .end local v3    # "resFilePath":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.class final Lare$9;
.super Ljava/lang/Object;
.source "AliMailFolderManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lare;->b(Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;

.field final synthetic b:Lare;


# direct methods
.method constructor <init>(Lare;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lare;

    .prologue
    .line 381
    iput-object p1, p0, Lare$9;->b:Lare;

    iput-object p2, p0, Lare$9;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 386
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[AliMailFolderManager] clearDBFolders"

    aput-object v3, v1, v2

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lare$9;->b:Lare;

    invoke-static {v1}, Lare;->c(Lare;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 388
    iget-object v1, p0, Lare$9;->b:Lare;

    invoke-static {v1}, Lare;->b(Lare;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 389
    iget-object v1, p0, Lare$9;->b:Lare;

    invoke-static {v1}, Lare;->e(Lare;)Latq;

    move-result-object v1

    invoke-interface {v1}, Latq;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    iget-object v1, p0, Lare$9;->a:Lcom/alibaba/wukong/Callback;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 396
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "[AliMailFolderManager] clearDBFolders e="

    aput-object v2, v1, v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

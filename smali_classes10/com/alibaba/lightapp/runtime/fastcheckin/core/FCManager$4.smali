.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$4;
.super Ljava/lang/Object;
.source "FCManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$4;->a:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 250
    const-string/jumbo v2, "FCManager"

    const-string/jumbo v3, "clear"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    sget-object v2, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->getAllPlansModule()Ljava/util/Map;

    move-result-object v1

    .line 252
    .local v1, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhhe;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 253
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhe;

    .line 254
    .local v0, "module":Lhhe;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lhhe;->a()V

    goto :goto_0

    .line 258
    .end local v0    # "module":Lhhe;
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 260
    :cond_2
    sget-object v2, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/popwin/FCPopupWindowHelper;->clearPopupWindow()V

    .line 261
    return-void
.end method

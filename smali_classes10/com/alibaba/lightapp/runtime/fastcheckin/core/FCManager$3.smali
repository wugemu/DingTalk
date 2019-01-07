.class final Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$3;
.super Ljava/lang/Object;
.source "FCManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;->stop(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$3;->d:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$3;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$3;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$3;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$3;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$3;->c:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 223
    :cond_0
    sget-object v2, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->getAllPlansModule()Ljava/util/Map;

    move-result-object v1

    .line 225
    .local v1, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhhe;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 226
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhhe;

    .line 227
    .local v0, "module":Lhhe;
    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0}, Lhhe;->a()V

    goto :goto_0

    .line 232
    .end local v0    # "module":Lhhe;
    :cond_2
    const-string/jumbo v3, "FCManager"

    const-string/jumbo v4, "stop"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v6, "module size"

    aput-object v6, v5, v2

    const/4 v6, 0x1

    if-nez v1, :cond_4

    const-string/jumbo v2, "0"

    :goto_1
    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lhgz;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    .end local v1    # "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhhe;>;"
    :cond_3
    :goto_2
    return-void

    .line 232
    .restart local v1    # "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhhe;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 234
    .end local v1    # "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lhhe;>;"
    :cond_5
    sget-object v2, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->INSTANCE:Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$3;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$3;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCDataManager;->findPlanModule(Ljava/lang/String;Ljava/lang/String;)Lhhe;

    move-result-object v0

    .line 235
    .restart local v0    # "module":Lhhe;
    if-eqz v0, :cond_3

    .line 236
    iget-wide v2, p0, Lcom/alibaba/lightapp/runtime/fastcheckin/core/FCManager$3;->c:J

    .line 1068
    iget-object v4, v0, Lhhe;->a:Lfp;

    .line 1096
    const/4 v5, 0x0

    invoke-virtual {v4, v2, v3, v5}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1068
    check-cast v2, Lhhd;

    .line 1069
    if-eqz v2, :cond_3

    .line 1070
    invoke-virtual {v2}, Lhhd;->b()V

    goto :goto_2
.end method

.class public final Lhmr$4;
.super Ljava/lang/Object;
.source "MiniAppListDataManager.java"

# interfaces
.implements Lhmd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhmr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhmb;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lhmc;

.field final synthetic d:Lhmr;


# direct methods
.method public constructor <init>(Lhmr;Lhmb;Ljava/lang/String;Lhmc;)V
    .locals 0
    .param p1, "this$0"    # Lhmr;

    .prologue
    .line 199
    iput-object p1, p0, Lhmr$4;->d:Lhmr;

    iput-object p2, p0, Lhmr$4;->a:Lhmb;

    iput-object p3, p0, Lhmr$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lhmr$4;->c:Lhmc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhoe;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 203
    .local p1, "myMiniAppModels":Ljava/util/List;, "Ljava/util/List<Lhoe;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lhmr$4;->a:Lhmb;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lhmr$4;->a:Lhmb;

    iget-object v1, p0, Lhmr$4;->d:Lhmr;

    const-string/jumbo v2, "applications_in_chat"

    invoke-static {v1, v2, p1}, Lhmr;->a(Lhmr;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lhmb;->a(Ljava/util/List;)V

    .line 211
    :cond_0
    iget-object v1, p0, Lhmr$4;->d:Lhmr;

    iget-object v2, p0, Lhmr$4;->b:Ljava/lang/String;

    iget-object v3, p0, Lhmr$4;->c:Lhmc;

    .line 1223
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1227
    const-class v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;

    .line 1228
    const/4 v4, 0x0

    .line 1230
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xa

    .line 1231
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lhmr$5;

    invoke-direct {v6, v1, v3}, Lhmr$5;-><init>(Lhmr;Lhmc;)V

    .line 1228
    invoke-interface {v0, v2, v4, v5, v6}, Lcom/alibaba/lightapp/runtime/miniapp/rpc/MiniAppIService;->inConversationMiniAppList(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V

    .line 212
    :cond_1
    return-void
.end method

.class public final Lhmr$6;
.super Lcmi;
.source "MiniAppListDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhmr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/util/List",
        "<",
        "Lhoe;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhma;

.field final synthetic b:Lhmr;


# direct methods
.method public constructor <init>(Lhmr;Lhma;)V
    .locals 0
    .param p1, "this$0"    # Lhmr;

    .prologue
    .line 275
    iput-object p1, p0, Lhmr$6;->b:Lhmr;

    iput-object p2, p0, Lhmr$6;->a:Lhma;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 292
    const-string/jumbo v0, "MiniAppListDataManager"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "fetchMyAppsDataFromNet fail"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "code=>"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "reason=>"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    .line 1093
    const-string/jumbo v2, "mini_data"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 275
    check-cast p1, Ljava/util/List;

    .line 1278
    if-eqz p1, :cond_1

    .line 1279
    iget-object v0, p0, Lhmr$6;->a:Lhma;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lhmr$6;->a:Lhma;

    iget-object v1, p0, Lhmr$6;->b:Lhmr;

    invoke-static {v1, p1}, Lhmr;->a(Lhmr;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lhma;->a(Ljava/util/List;)V

    .line 1283
    :cond_0
    invoke-static {}, Lhmj;->a()Lhmj;

    move-result-object v0

    const-string/jumbo v1, "PREFERENCE_MINI_APP_IN_CHAT_LIST_KEY"

    invoke-virtual {v0, v1}, Lhmj;->a(Ljava/lang/String;)V

    .line 1285
    invoke-static {}, Lhmj;->a()Lhmj;

    move-result-object v0

    const-string/jumbo v1, "PREFERENCE_MINI_APP_IN_CHAT_LIST_KEY"

    invoke-virtual {v0, v1, p1}, Lhmj;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 275
    :cond_1
    return-void
.end method

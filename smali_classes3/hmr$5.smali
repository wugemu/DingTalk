.class final Lhmr$5;
.super Lcmi;
.source "MiniAppListDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhmr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Lhmc;

.field final synthetic b:Lhmr;


# direct methods
.method constructor <init>(Lhmr;Lhmc;)V
    .locals 0
    .param p1, "this$0"    # Lhmr;

    .prologue
    .line 232
    iput-object p1, p0, Lhmr$5;->b:Lhmr;

    iput-object p2, p0, Lhmr$5;->a:Lhmc;

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
    .line 253
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

    .line 255
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 232
    check-cast p1, Ljava/util/List;

    .line 1235
    if-eqz p1, :cond_1

    .line 1236
    iget-object v0, p0, Lhmr$5;->a:Lhmc;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lhmr$5;->a:Lhmc;

    const/4 v1, 0x1

    iget-object v2, p0, Lhmr$5;->b:Lhmr;

    const-string/jumbo v3, "applications_in_chat"

    .line 1239
    invoke-static {v2, v3, p1}, Lhmr;->a(Lhmr;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 1237
    invoke-interface {v0, v1, v2}, Lhmc;->a(ZLjava/util/List;)V

    .line 1244
    :cond_0
    invoke-static {}, Lhmj;->a()Lhmj;

    move-result-object v0

    const-string/jumbo v1, "PREFERENCE_MINI_APP_IN_CHAT_LIST_KEY"

    invoke-virtual {v0, v1}, Lhmj;->a(Ljava/lang/String;)V

    .line 1246
    invoke-static {}, Lhmj;->a()Lhmj;

    move-result-object v0

    const-string/jumbo v1, "PREFERENCE_MINI_APP_IN_CHAT_LIST_KEY"

    invoke-virtual {v0, v1, p1}, Lhmj;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 232
    :cond_1
    return-void
.end method

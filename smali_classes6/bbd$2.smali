.class final Lbbd$2;
.super Ljava/lang/Object;
.source "SelectUserPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbbd;


# direct methods
.method constructor <init>(Lbbd;)V
    .locals 0
    .param p1, "this$0"    # Lbbd;

    .prologue
    .line 262
    iput-object p1, p0, Lbbd$2;->a:Lbbd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 287
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingSelectedUsersActivity]transformUidsToUserIdentities failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 262
    .line 1265
    iget-object v1, p0, Lbbd$2;->a:Lbbd;

    new-instance v0, Lbbd$2$1;

    invoke-direct {v0, p0}, Lbbd$2$1;-><init>(Lbbd$2;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    iget-object v3, p0, Lbbd$2;->a:Lbbd;

    .line 2056
    iget-object v3, v3, Lbbd;->a:Landroid/app/Activity;

    .line 1265
    invoke-static {v0, v2, v3}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 3297
    iget-object v2, v1, Lbbd;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3298
    iget-object v2, v1, Lbbd;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3299
    new-instance v2, Lbhv;

    iget-object v3, v1, Lbbd;->d:Ljava/util/ArrayList;

    new-instance v4, Lbbd$3;

    invoke-direct {v4, v1, v0}, Lbbd$3;-><init>(Lbbd;Lcom/alibaba/wukong/Callback;)V

    const-class v0, Lbhv$a;

    iget-object v1, v1, Lbbd;->a:Landroid/app/Activity;

    invoke-static {v4, v0, v1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhv$a;

    invoke-direct {v2, v3, v0}, Lbhv;-><init>(Ljava/util/List;Lbhv$a;)V

    .line 4031
    iget-object v0, v2, Lbhv;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lbhv;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4032
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lbhv;->a(Ljava/lang/Iterable;)V

    .line 4033
    :goto_0
    return-void

    .line 4035
    :cond_1
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0, v1}, Lbhv;->a(ILjava/util/List;)V

    goto :goto_0
.end method

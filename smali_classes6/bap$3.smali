.class final Lbap$3;
.super Ljava/lang/Object;
.source "DingCommentRemindPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbap;->a()V
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
        "Ljava/util/List",
        "<",
        "Lbeq;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbap;


# direct methods
.method constructor <init>(Lbap;)V
    .locals 0
    .param p1, "this$0"    # Lbap;

    .prologue
    .line 95
    iput-object p1, p0, Lbap$3;->a:Lbap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 106
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbap$3$1;

    invoke-direct {v1, p0, p1, p2}, Lbap$3$1;-><init>(Lbap$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 95
    check-cast p1, Ljava/util/List;

    .line 1098
    if-eqz p1, :cond_0

    .line 1099
    iget-object v0, p0, Lbap$3;->a:Lbap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lbap;->a(Lbap;I)V

    .line 1100
    iget-object v0, p0, Lbap$3;->a:Lbap;

    invoke-static {v0, p1}, Lbap;->a(Lbap;Ljava/util/Collection;)V

    .line 95
    :cond_0
    return-void
.end method

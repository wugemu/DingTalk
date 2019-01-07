.class final Lfjg$1;
.super Ljava/lang/Object;
.source "FriendPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfjg;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfjg;


# direct methods
.method constructor <init>(Lfjg;)V
    .locals 0
    .param p1, "this$0"    # Lfjg;

    .prologue
    .line 51
    iput-object p1, p0, Lfjg$1;->a:Lfjg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-object v0, p0, Lfjg$1;->a:Lfjg;

    invoke-static {}, Lflr;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lfjg;->a(Lfjg;Ljava/util/List;)Ljava/util/List;

    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "presenter friend list size:"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lfjg$1;->a:Lfjg;

    invoke-static {v2}, Lfjg;->a(Lfjg;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->r(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lfjg$1;->a:Lfjg;

    invoke-static {v0}, Lfjg;->b(Lfjg;)Lfir;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lfjg$1$1;

    invoke-direct {v1, p0}, Lfjg$1$1;-><init>(Lfjg$1;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

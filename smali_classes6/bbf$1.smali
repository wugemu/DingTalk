.class public final Lbbf$1;
.super Ljava/lang/Object;
.source "SingleChatTaskPresenter.java"

# interfaces
.implements Layv$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbf;


# direct methods
.method public constructor <init>(Lbbf;)V
    .locals 0
    .param p1, "this$0"    # Lbbf;

    .prologue
    .line 104
    iput-object p1, p0, Lbbf$1;->a:Lbbf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 107
    .local p1, "dingIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lbbf$1;->a:Lbbf;

    .line 1032
    iget-object v0, v0, Lbbf;->e:Ljava/util/List;

    .line 107
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lbbf$1;->a:Lbbf;

    .line 2032
    iget-object v0, v0, Lbbf;->e:Ljava/util/List;

    .line 109
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    :cond_0
    iget-object v0, p0, Lbbf$1;->a:Lbbf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbbf;->a(Lbbf;Z)V

    .line 112
    return-void
.end method

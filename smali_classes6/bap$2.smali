.class final Lbap$2;
.super Ljava/lang/Object;
.source "DingCommentRemindPresenter.java"

# interfaces
.implements Lbep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbap;


# direct methods
.method constructor <init>(Lbap;)V
    .locals 0
    .param p1, "this$0"    # Lbap;

    .prologue
    .line 70
    iput-object p1, p0, Lbap$2;->a:Lbap;

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
            "Lbeq;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 74
    .local p1, "dingCommentRemindObjects":Ljava/util/List;, "Ljava/util/List<Lbeq;>;"
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lbap$2;->a:Lbap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lbap;->a(Lbap;I)V

    .line 76
    iget-object v0, p0, Lbap$2;->a:Lbap;

    invoke-static {v0, p1}, Lbap;->a(Lbap;Ljava/util/Collection;)V

    .line 78
    :cond_0
    return-void
.end method

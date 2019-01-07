.class final Lenq$4;
.super Ljava/lang/Object;
.source "SearchAssureSourceImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenq;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/search/datasource/entry/SearchAssureEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lenq;


# direct methods
.method constructor <init>(Lenq;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lenq;

    .prologue
    .line 457
    .local p0, "this":Lenq$4;, "Lenq$4;"
    iput-object p1, p0, Lenq$4;->c:Lenq;

    iput-object p2, p0, Lenq$4;->a:Ljava/util/List;

    iput-object p3, p0, Lenq$4;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 457
    .line 1460
    .local p0, "this":Lenq$4;, "Lenq$4;"
    iget-object v0, p0, Lenq$4;->c:Lenq;

    iget-object v1, p0, Lenq$4;->a:Ljava/util/List;

    iget-object v2, p0, Lenq$4;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lenq;->a(Lenq;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 457
    return-object v0
.end method

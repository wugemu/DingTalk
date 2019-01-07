.class final Lfds$2;
.super Ljava/lang/Object;
.source "BaseCircleDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfds;->a(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lfds;


# direct methods
.method constructor <init>(Lfds;Ljava/util/Collection;)V
    .locals 0
    .param p1, "this$0"    # Lfds;

    .prologue
    .line 295
    .local p0, "this":Lfds$2;, "Lfds$2;"
    iput-object p1, p0, Lfds$2;->b:Lfds;

    iput-object p2, p0, Lfds$2;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 298
    .local p0, "this":Lfds$2;, "Lfds$2;"
    iget-object v0, p0, Lfds$2;->b:Lfds;

    iget-object v1, p0, Lfds$2;->a:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lfds;->b(Ljava/util/Collection;)I

    .line 299
    return-void
.end method

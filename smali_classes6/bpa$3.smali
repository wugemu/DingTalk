.class final Lbpa$3;
.super Ljava/lang/Object;
.source "BaseCircleDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpa;->a(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Collection;

.field final synthetic b:Lbpa;


# direct methods
.method constructor <init>(Lbpa;Ljava/util/Collection;)V
    .locals 0
    .param p1, "this$0"    # Lbpa;

    .prologue
    .line 294
    .local p0, "this":Lbpa$3;, "Lbpa$3;"
    iput-object p1, p0, Lbpa$3;->b:Lbpa;

    iput-object p2, p0, Lbpa$3;->a:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 297
    .local p0, "this":Lbpa$3;, "Lbpa$3;"
    iget-object v0, p0, Lbpa$3;->b:Lbpa;

    iget-object v1, p0, Lbpa$3;->a:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lbpa;->b(Ljava/util/Collection;)I

    .line 298
    return-void
.end method

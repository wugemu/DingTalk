.class final Lfds$3;
.super Ljava/lang/Object;
.source "BaseCircleDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfds;->a(Landroid/app/Activity;Ljava/util/List;Lcou;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcou;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lfds;


# direct methods
.method constructor <init>(Lfds;Ljava/util/List;Lcou;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lfds;

    .prologue
    .line 307
    .local p0, "this":Lfds$3;, "Lfds$3;"
    iput-object p1, p0, Lfds$3;->d:Lfds;

    iput-object p2, p0, Lfds$3;->a:Ljava/util/List;

    iput-object p3, p0, Lfds$3;->b:Lcou;

    iput-object p4, p0, Lfds$3;->c:Landroid/app/Activity;

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
    .line 310
    .local p0, "this":Lfds$3;, "Lfds$3;"
    iget-object v1, p0, Lfds$3;->d:Lfds;

    iget-object v2, p0, Lfds$3;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lfds;->b(Ljava/util/Collection;)I

    .line 312
    iget-object v1, p0, Lfds$3;->b:Lcou;

    if-nez v1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v1, p0, Lfds$3;->c:Landroid/app/Activity;

    const-class v2, Lcou;

    iget-object v3, p0, Lfds$3;->b:Lcou;

    invoke-static {v1, v2, v3}, Lffk;->a(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcou;

    .line 316
    .local v0, "list":Lcou;
    invoke-interface {v0}, Lcou;->a()V

    goto :goto_0
.end method

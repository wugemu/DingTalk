.class final Lbpa$4;
.super Ljava/lang/Object;
.source "BaseCircleDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpa;->a(Landroid/app/Activity;Ljava/util/List;Lcou;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcou;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lbpa;


# direct methods
.method constructor <init>(Lbpa;Ljava/util/List;Lcou;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lbpa;

    .prologue
    .line 304
    .local p0, "this":Lbpa$4;, "Lbpa$4;"
    iput-object p1, p0, Lbpa$4;->d:Lbpa;

    iput-object p2, p0, Lbpa$4;->a:Ljava/util/List;

    iput-object p3, p0, Lbpa$4;->b:Lcou;

    iput-object p4, p0, Lbpa$4;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 307
    .local p0, "this":Lbpa$4;, "Lbpa$4;"
    iget-object v1, p0, Lbpa$4;->d:Lbpa;

    iget-object v2, p0, Lbpa$4;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lbpa;->b(Ljava/util/Collection;)I

    .line 309
    iget-object v1, p0, Lbpa$4;->b:Lcou;

    if-nez v1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v1, p0, Lbpa$4;->c:Landroid/app/Activity;

    const-class v2, Lcou;

    iget-object v3, p0, Lbpa$4;->b:Lcou;

    invoke-static {v1, v2, v3}, Lbqo;->a(Landroid/app/Activity;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcou;

    .line 311
    .local v0, "list":Lcou;
    invoke-interface {v0}, Lcou;->a()V

    goto :goto_0
.end method

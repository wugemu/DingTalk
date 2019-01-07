.class final Ldvw$3;
.super Ljava/lang/Object;
.source "OneBoxCenter.java"

# interfaces
.implements Ldwe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldvw;


# direct methods
.method constructor <init>(Ldvw;)V
    .locals 0
    .param p1, "this$0"    # Ldvw;

    .prologue
    .line 188
    iput-object p1, p0, Ldvw$3;->a:Ldvw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lduc;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lduc;>;"
    if-eqz p1, :cond_2

    .line 192
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lduc;

    .line 193
    .local v0, "pushModel":Lduc;
    if-eqz v0, :cond_0

    .line 196
    iget-object v3, v0, Lduc;->a:Ljava/lang/Integer;

    invoke-static {v3}, Lcoc;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 197
    .local v1, "type":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 198
    iget-object v3, p0, Ldvw$3;->a:Ldvw;

    iget-object v4, v0, Lduc;->b:Ljava/util/List;

    invoke-static {v3, v4}, Ldvw;->a(Ldvw;Ljava/util/List;)V

    goto :goto_0

    .line 199
    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 200
    iget-object v3, p0, Ldvw$3;->a:Ldvw;

    iget-object v4, v0, Lduc;->c:Ljava/util/List;

    invoke-static {v3, v4}, Ldvw;->b(Ldvw;Ljava/util/List;)V

    goto :goto_0

    .line 204
    .end local v0    # "pushModel":Lduc;
    .end local v1    # "type":I
    :cond_2
    return-void
.end method

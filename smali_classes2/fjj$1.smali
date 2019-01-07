.class final Lfjj$1;
.super Ljava/lang/Object;
.source "UserPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfjj;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfjj;


# direct methods
.method constructor <init>(Lfjj;)V
    .locals 0
    .param p1, "this$0"    # Lfjj;

    .prologue
    .line 73
    iput-object p1, p0, Lfjj$1;->a:Lfjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lfjj$1;->a:Lfjj;

    .line 1033
    iget-object v2, v0, Lfjj;->a:Lfir;

    .line 76
    iget-object v0, p0, Lfjj$1;->a:Lfjj;

    .line 2033
    iget-object v0, v0, Lfjj;->b:Ljava/util/List;

    .line 76
    if-eqz v0, :cond_0

    iget-object v0, p0, Lfjj$1;->a:Lfjj;

    .line 3033
    iget-object v0, v0, Lfjj;->b:Ljava/util/List;

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-interface {v2, v1, v0}, Lfir;->a(ZI)V

    .line 77
    return-void

    :cond_0
    move v0, v1

    .line 76
    goto :goto_0
.end method

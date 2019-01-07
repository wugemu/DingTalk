.class final Lfcf$1;
.super Ljava/lang/Object;
.source "CoverAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfcf;


# direct methods
.method constructor <init>(Lfcf;)V
    .locals 0
    .param p1, "this$0"    # Lfcf;

    .prologue
    .line 68
    iput-object p1, p0, Lfcf$1;->a:Lfcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 73
    .local v1, "position":I
    iget-object v2, p0, Lfcf$1;->a:Lfcf;

    invoke-static {v2}, Lfcf;->a(Lfcf;)Lfcf$b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lfcf$1;->a:Lfcf;

    invoke-static {v2}, Lfcf;->a(Lfcf;)Lfcf$b;

    move-result-object v2

    iget-object v3, p0, Lfcf$1;->a:Lfcf;

    invoke-static {v3}, Lfcf;->b(Lfcf;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lfcf$b;->a(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v1    # "position":I
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

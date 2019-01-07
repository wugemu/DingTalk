.class final Lgdv$4;
.super Ljava/lang/Object;
.source "DentryListHeaderViewHolder.java"

# interfaces
.implements Lgqp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgdv;-><init>(Landroid/view/View;Lgdu$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgdv;


# direct methods
.method constructor <init>(Lgdv;)V
    .locals 0
    .param p1, "this$0"    # Lgdv;

    .prologue
    .line 101
    iput-object p1, p0, Lgdv$4;->a:Lgdv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b_(I)V
    .locals 2
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 104
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 105
    iget-object v0, p0, Lgdv$4;->a:Lgdv;

    invoke-static {v0}, Lgdv;->a(Lgdv;)Lgdu$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lgdu$a;->a(I)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    if-ne p1, v1, :cond_0

    .line 107
    iget-object v0, p0, Lgdv$4;->a:Lgdv;

    invoke-static {v0}, Lgdv;->a(Lgdv;)Lgdu$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lgdu$a;->a(I)V

    goto :goto_0
.end method

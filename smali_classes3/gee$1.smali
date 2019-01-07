.class final Lgee$1;
.super Ljava/lang/Object;
.source "DentryListViewPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgee;->a(Lgeg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgeg;

.field final synthetic b:Lgee;


# direct methods
.method constructor <init>(Lgee;Lgeg;)V
    .locals 0
    .param p1, "this$0"    # Lgee;

    .prologue
    .line 130
    iput-object p1, p0, Lgee$1;->b:Lgee;

    iput-object p2, p0, Lgee$1;->a:Lgeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 133
    iget-object v2, p0, Lgee$1;->a:Lgeg;

    .line 1023
    iget-object v1, v2, Lgeg;->b:Ljava/util/List;

    .line 134
    .local v1, "dentryList":Ljava/util/List;, "Ljava/util/List<Lgeh;>;"
    iget-object v2, p0, Lgee$1;->b:Lgee;

    .line 1054
    iget-object v2, v2, Lgee;->b:Lged$b;

    .line 134
    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lged$b;->a(Ljava/util/List;Z)V

    .line 136
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 137
    .local v0, "dentryCount":I
    :goto_0
    iget-object v2, p0, Lgee$1;->b:Lgee;

    .line 2054
    iget-object v2, v2, Lgee;->d:Lged$a$a;

    .line 137
    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lgee$1;->b:Lgee;

    .line 3054
    iget-object v2, v2, Lgee;->d:Lged$a$a;

    .line 138
    iget-object v3, p0, Lgee$1;->b:Lgee;

    .line 4054
    iget v3, v3, Lgee;->h:I

    .line 138
    invoke-interface {v2, v0, v1, v3}, Lged$a$a;->a(ILjava/util/List;I)V

    .line 140
    :cond_0
    return-void

    .line 136
    .end local v0    # "dentryCount":I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

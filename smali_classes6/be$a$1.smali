.class final Lbe$a$1;
.super Lbd;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbe$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfk;

.field final synthetic b:Lbe$a;


# direct methods
.method constructor <init>(Lbe$a;Lfk;)V
    .locals 0
    .param p1, "this$0"    # Lbe$a;

    .prologue
    .line 276
    iput-object p1, p0, Lbe$a$1;->b:Lbe$a;

    iput-object p2, p0, Lbe$a$1;->a:Lfk;

    invoke-direct {p0}, Lbd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 279
    iget-object v1, p0, Lbe$a$1;->a:Lfk;

    iget-object v2, p0, Lbe$a$1;->b:Lbe$a;

    iget-object v2, v2, Lbe$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 280
    .local v0, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 281
    return-void
.end method

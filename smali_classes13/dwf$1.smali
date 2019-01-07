.class final Ldwf$1;
.super Ljava/lang/Object;
.source "OneboxEventPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldwf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ldwf;


# direct methods
.method constructor <init>(Ldwf;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Ldwf;

    .prologue
    .line 48
    iput-object p1, p0, Ldwf$1;->b:Ldwf;

    iput-object p2, p0, Ldwf$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    iget-object v1, p0, Ldwf$1;->b:Ldwf;

    .line 1013
    iget-object v1, v1, Ldwf;->b:Ljava/util/List;

    .line 51
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldwe;

    .line 52
    .local v0, "changeListener":Ldwe;
    if-eqz v0, :cond_0

    .line 55
    iget-object v2, p0, Ldwf$1;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ldwe;->a(Ljava/util/List;)V

    goto :goto_0

    .line 57
    .end local v0    # "changeListener":Ldwe;
    :cond_1
    return-void
.end method

.class public final Lkotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;
.super Lkotlin/jvm/internal/Lambda;
.source "_Sequences.kt"

# interfaces
.implements Lkhl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkjl$a;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkhl",
        "<TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "it",
        "invoke",
        "(Ljava/lang/Object;)Z"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field final synthetic $removed:Lkih$a;

.field final synthetic this$0:Lkjl$a;


# direct methods
.method public constructor <init>(Lkjl$a;Lkih$a;)V
    .locals 1

    iput-object p1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;->this$0:Lkjl$a;

    iput-object p2, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;->$removed:Lkih$a;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1137
    invoke-virtual {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;->invoke(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "it"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 1140
    iget-object v1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;->$removed:Lkih$a;

    iget-boolean v1, v1, Lkih$a;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;->this$0:Lkjl$a;

    iget-object v1, v1, Lkjl$a;->b:Ljava/lang/Object;

    invoke-static {p1, v1}, Lkib;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$1$iterator$1;->$removed:Lkih$a;

    iput-boolean v0, v1, Lkih$a;->a:Z

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

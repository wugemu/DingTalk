.class public final Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Regex.kt"

# interfaces
.implements Lkhl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkjv$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkhl",
        "<",
        "Ljava/lang/Integer;",
        "Lkjr;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/text/MatchGroup;",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkjv$a;


# direct methods
.method public constructor <init>(Lkjv$a;)V
    .locals 1

    iput-object p1, p0, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->this$0:Lkjv$a;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->invoke(I)Lkjr;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(I)Lkjr;
    .locals 4
    .param p1, "it"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 240
    iget-object v1, p0, Lkotlin/text/MatcherMatchResult$groups$1$iterator$1;->this$0:Lkjv$a;

    .line 1242
    iget-object v0, v1, Lkjv$a;->a:Lkjv;

    .line 2229
    iget-object v0, v0, Lkjv;->a:Ljava/util/regex/MatchResult;

    .line 3274
    invoke-interface {v0, p1}, Ljava/util/regex/MatchResult;->start(I)I

    move-result v2

    new-instance v3, Lkir;

    invoke-interface {v0, p1}, Ljava/util/regex/MatchResult;->end(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {v3, v2, v0}, Lkir;-><init>(II)V

    .line 1243
    invoke-virtual {v3}, Lkir;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    .line 1244
    new-instance v0, Lkjr;

    iget-object v1, v1, Lkjv$a;->a:Lkjv;

    .line 4229
    iget-object v1, v1, Lkjv;->a:Ljava/util/regex/MatchResult;

    .line 1244
    invoke-interface {v1, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "matchResult.group(index)"

    invoke-static {v1, v2}, Lkib;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v3}, Lkjr;-><init>(Ljava/lang/String;Lkir;)V

    :goto_0
    return-object v0

    .line 1246
    :cond_0
    const/4 v0, 0x0

    .line 240
    goto :goto_0
.end method

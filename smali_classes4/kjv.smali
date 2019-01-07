.class public final Lkjv;
.super Ljava/lang/Object;
.source "Regex.kt"

# interfaces
.implements Lkju;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\n\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u0016R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \u0013*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlin/text/MatcherMatchResult;",
        "Lkotlin/text/MatchResult;",
        "matcher",
        "Ljava/util/regex/Matcher;",
        "input",
        "",
        "(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V",
        "groupValues",
        "",
        "",
        "getGroupValues",
        "()Ljava/util/List;",
        "groupValues_",
        "groups",
        "Lkotlin/text/MatchGroupCollection;",
        "getGroups",
        "()Lkotlin/text/MatchGroupCollection;",
        "matchResult",
        "Ljava/util/regex/MatchResult;",
        "kotlin.jvm.PlatformType",
        "range",
        "Lkotlin/ranges/IntRange;",
        "getRange",
        "()Lkotlin/ranges/IntRange;",
        "value",
        "getValue",
        "()Ljava/lang/String;",
        "next",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# instance fields
.field public final a:Ljava/util/regex/MatchResult;

.field private final b:Lkjs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/util/regex/Matcher;

.field private final d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "matcher"    # Ljava/util/regex/Matcher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "input"    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string/jumbo v0, "matcher"

    invoke-static {p1, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "input"

    invoke-static {p2, v0}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkjv;->c:Ljava/util/regex/Matcher;

    iput-object p2, p0, Lkjv;->d:Ljava/lang/CharSequence;

    .line 230
    iget-object v0, p0, Lkjv;->c:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    iput-object v0, p0, Lkjv;->a:Ljava/util/regex/MatchResult;

    .line 236
    new-instance v0, Lkjv$a;

    invoke-direct {v0, p0}, Lkjv$a;-><init>(Lkjv;)V

    check-cast v0, Lkjs;

    iput-object v0, p0, Lkjv;->b:Lkjs;

    return-void
.end method


# virtual methods
.method public final a()Lkju;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 267
    iget-object v1, p0, Lkjv;->a:Ljava/util/regex/MatchResult;

    invoke-interface {v1}, Ljava/util/regex/MatchResult;->end()I

    move-result v2

    iget-object v1, p0, Lkjv;->a:Ljava/util/regex/MatchResult;

    invoke-interface {v1}, Ljava/util/regex/MatchResult;->end()I

    move-result v1

    iget-object v3, p0, Lkjv;->a:Ljava/util/regex/MatchResult;

    invoke-interface {v3}, Ljava/util/regex/MatchResult;->start()I

    move-result v3

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 268
    .local v0, "nextIndex":I
    iget-object v1, p0, Lkjv;->d:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lkjv;->c:Ljava/util/regex/Matcher;

    iget-object v2, p0, Lkjv;->d:Ljava/lang/CharSequence;

    invoke-static {v1, v0, v2}, Lkjx;->a(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lkju;

    move-result-object v1

    :goto_1
    return-object v1

    .line 267
    .end local v0    # "nextIndex":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 268
    .restart local v0    # "nextIndex":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.class public final Lkotlin/text/Regex$findAll$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Regex.kt"

# interfaces
.implements Lkhk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkjw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkhk",
        "<",
        "Lkju;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/text/MatchResult;",
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
.field final synthetic $input:Ljava/lang/CharSequence;

.field final synthetic $startIndex:I

.field final synthetic this$0:Lkjw;


# direct methods
.method constructor <init>(Lkjw;Ljava/lang/CharSequence;I)V
    .locals 1

    iput-object p1, p0, Lkotlin/text/Regex$findAll$1;->this$0:Lkjw;

    iput-object p2, p0, Lkotlin/text/Regex$findAll$1;->$input:Ljava/lang/CharSequence;

    iput p3, p0, Lkotlin/text/Regex$findAll$1;->$startIndex:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lkotlin/text/Regex$findAll$1;->invoke()Lkju;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkju;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 135
    iget-object v0, p0, Lkotlin/text/Regex$findAll$1;->this$0:Lkjw;

    iget-object v1, p0, Lkotlin/text/Regex$findAll$1;->$input:Ljava/lang/CharSequence;

    iget v2, p0, Lkotlin/text/Regex$findAll$1;->$startIndex:I

    const-string/jumbo v3, "input"

    invoke-static {v1, v3}, Lkib;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1130
    iget-object v0, v0, Lkjw;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lkjx;->a(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lkju;

    move-result-object v0

    .line 135
    return-object v0
.end method

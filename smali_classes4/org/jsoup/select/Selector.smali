.class public final Lorg/jsoup/select/Selector;
.super Ljava/lang/Object;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/Selector$SelectorParseException;
    }
.end annotation


# instance fields
.field private final a:Llew;

.field private final b:Lleh;


# direct methods
.method private constructor <init>(Llew;Lleh;)V
    .locals 0
    .param p1, "evaluator"    # Llew;
    .param p2, "root"    # Lleh;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Lleb;->a(Ljava/lang/Object;)V

    .line 90
    invoke-static {p2}, Lleb;->a(Ljava/lang/Object;)V

    .line 92
    iput-object p1, p0, Lorg/jsoup/select/Selector;->a:Llew;

    .line 93
    iput-object p2, p0, Lorg/jsoup/select/Selector;->b:Lleh;

    .line 94
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/jsoup/select/Elements;
    .locals 5
    .param p0, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Lleh;",
            ">;)",
            "Lorg/jsoup/select/Elements;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "roots":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lleh;>;"
    invoke-static {p0}, Lleb;->a(Ljava/lang/String;)V

    .line 128
    invoke-static {p1}, Lleb;->a(Ljava/lang/Object;)V

    .line 129
    invoke-static {p0}, Llez;->a(Ljava/lang/String;)Llew;

    move-result-object v1

    .line 130
    .local v1, "evaluator":Llew;
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 132
    .local v0, "elements":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lleh;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lleh;

    .line 133
    .local v3, "root":Lleh;
    invoke-static {v1, v3}, Lorg/jsoup/select/Selector;->a(Llew;Lleh;)Lorg/jsoup/select/Elements;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 135
    .end local v3    # "root":Lleh;
    :cond_0
    new-instance v4, Lorg/jsoup/select/Elements;

    invoke-direct {v4, v0}, Lorg/jsoup/select/Elements;-><init>(Ljava/util/Collection;)V

    return-object v4
.end method

.method private static a(Llew;Lleh;)Lorg/jsoup/select/Elements;
    .locals 2
    .param p0, "evaluator"    # Llew;
    .param p1, "root"    # Lleh;

    .prologue
    .line 116
    new-instance v0, Lorg/jsoup/select/Selector;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/select/Selector;-><init>(Llew;Lleh;)V

    .line 1139
    iget-object v1, v0, Lorg/jsoup/select/Selector;->a:Llew;

    iget-object v0, v0, Lorg/jsoup/select/Selector;->b:Lleh;

    invoke-static {v1, v0}, Lleu;->a(Llew;Lleh;)Lorg/jsoup/select/Elements;

    move-result-object v0

    .line 116
    return-object v0
.end method

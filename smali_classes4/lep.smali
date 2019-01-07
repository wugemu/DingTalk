.class public final Llep;
.super Ljava/lang/Object;
.source "Parser.java"


# direct methods
.method public static a(Ljava/lang/String;Lleh;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "fragmentHtml"    # Ljava/lang/String;
    .param p1, "context"    # Lleh;
    .param p2, "baseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lleh;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Llej;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Llen;

    invoke-direct {v0}, Llen;-><init>()V

    .line 105
    .local v0, "treeBuilder":Llen;
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v1

    invoke-virtual {v0, p0, p1, p2, v1}, Llen;->a(Ljava/lang/String;Lleh;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

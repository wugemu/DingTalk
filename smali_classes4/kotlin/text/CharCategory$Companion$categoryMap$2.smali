.class final Lkotlin/text/CharCategory$Companion$categoryMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CharCategory.kt"

# interfaces
.implements Lkhk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/CharCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkhk",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Integer;",
        "+",
        "Lkotlin/text/CharCategory;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "Lkotlin/text/CharCategory;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/text/CharCategory$Companion$categoryMap$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/text/CharCategory$Companion$categoryMap$2;

    invoke-direct {v0}, Lkotlin/text/CharCategory$Companion$categoryMap$2;-><init>()V

    sput-object v0, Lkotlin/text/CharCategory$Companion$categoryMap$2;->INSTANCE:Lkotlin/text/CharCategory$Companion$categoryMap$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lkotlin/text/CharCategory$Companion$categoryMap$2;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lkotlin/text/CharCategory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 165
    invoke-static {}, Lkotlin/text/CharCategory;->values()[Lkotlin/text/CharCategory;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 170
    .local v0, "$receiver$iv":[Ljava/lang/Object;
    array-length v4, v0

    invoke-static {v4}, Lkgp;->a(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lkiv;->b(II)I

    move-result v1

    .line 171
    .local v1, "capacity$iv":I
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    .line 172
    .local v2, "destination$iv$iv":Ljava/util/Map;
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v4, v0

    if-ge v5, v4, :cond_0

    aget-object v3, v0, v5

    .local v3, "element$iv$iv":Ljava/lang/Object;
    move-object v4, v3

    .line 173
    check-cast v4, Lkotlin/text/CharCategory;

    .line 165
    invoke-virtual {v4}, Lkotlin/text/CharCategory;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 165
    .end local v3    # "element$iv$iv":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

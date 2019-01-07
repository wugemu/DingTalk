.class public final Lkotlin/text/CharCategory$a;
.super Ljava/lang/Object;
.source "CharCategory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/text/CharCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0005R\'\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/text/CharCategory$Companion;",
        "",
        "()V",
        "categoryMap",
        "",
        "",
        "Lkotlin/text/CharCategory;",
        "getCategoryMap",
        "()Ljava/util/Map;",
        "categoryMap$delegate",
        "Lkotlin/Lazy;",
        "valueOf",
        "category",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# static fields
.field static final synthetic a:[Lkjd;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkjd;

    const/4 v2, 0x0

    new-instance v0, Lkig;

    const-class v3, Lkotlin/text/CharCategory$a;

    invoke-static {v3}, Lkii;->a(Ljava/lang/Class;)Lkja;

    move-result-object v3

    const-string/jumbo v4, "categoryMap"

    const-string/jumbo v5, "getCategoryMap()Ljava/util/Map;"

    invoke-direct {v0, v3, v4, v5}, Lkig;-><init>(Lkjb;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkii;->a(Lkif;)Lkjf;

    move-result-object v0

    check-cast v0, Lkjd;

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/text/CharCategory$a;->a:[Lkjd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lkotlin/text/CharCategory$a;-><init>()V

    return-void
.end method

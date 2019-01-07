.class final Lixc$a;
.super Ljava/lang/Object;
.source "MapFactories.java"

# interfaces
.implements Lixc$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lixc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lixc$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "oldMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez p1, :cond_0

    .line 59
    new-instance p1, Ljava/util/HashMap;

    .end local p1    # "oldMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 61
    :cond_0
    return-object p1
.end method

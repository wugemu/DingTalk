.class public final Lgzb;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgzb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:[Lgzb$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lgzb$a",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "tableSize"    # I

    .prologue
    .line 30
    .local p0, "this":Lgzb;, "Lgzb<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x3ff

    iput v0, p0, Lgzb;->b:I

    .line 32
    const/16 v0, 0x400

    new-array v0, v0, [Lgzb$a;

    iput-object v0, p0, Lgzb;->a:[Lgzb$a;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p1, "keyString"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 66
    .local p0, "this":Lgzb;, "Lgzb<TV;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lgzb;->a:[Lgzb$a;

    array-length v6, v6

    if-ge v4, v6, :cond_2

    .line 67
    iget-object v6, p0, Lgzb;->a:[Lgzb$a;

    aget-object v0, v6, v4

    .line 69
    .local v0, "bucket":Lgzb$a;
    if-eqz v0, :cond_1

    .line 73
    move-object v3, v0

    .local v3, "entry":Lgzb$a;, "Lgzb$a<TV;>;"
    :goto_1
    if-eqz v3, :cond_1

    .line 74
    iget-object v5, v0, Lgzb$a;->b:Ljava/lang/reflect/Type;

    .line 75
    .local v5, "key":Ljava/lang/reflect/Type;
    instance-of v6, v5, Ljava/lang/Class;

    if-eqz v6, :cond_0

    move-object v2, v5

    .line 76
    check-cast v2, Ljava/lang/Class;

    .line 77
    .local v2, "clazz":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    .end local v0    # "bucket":Lgzb$a;
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "entry":Lgzb$a;, "Lgzb$a<TV;>;"
    .end local v5    # "key":Ljava/lang/reflect/Type;
    :goto_2
    return-object v2

    .line 73
    .restart local v0    # "bucket":Lgzb$a;
    .restart local v3    # "entry":Lgzb$a;, "Lgzb$a<TV;>;"
    .restart local v5    # "key":Ljava/lang/reflect/Type;
    :cond_0
    iget-object v3, v3, Lgzb$a;->d:Lgzb$a;

    goto :goto_1

    .line 66
    .end local v3    # "entry":Lgzb$a;, "Lgzb$a<TV;>;"
    .end local v5    # "key":Ljava/lang/reflect/Type;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "bucket":Lgzb$a;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public final a(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")TV;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 36
    .local p0, "this":Lgzb;, "Lgzb<TV;>;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 37
    .local v2, "hash":I
    iget v3, p0, Lgzb;->b:I

    and-int v0, v2, v3

    .line 39
    .local v0, "bucket":I
    iget-object v3, p0, Lgzb;->a:[Lgzb$a;

    aget-object v1, v3, v0

    .local v1, "entry":Lgzb$a;, "Lgzb$a<TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 40
    iget-object v3, v1, Lgzb$a;->b:Ljava/lang/reflect/Type;

    if-ne p1, v3, :cond_0

    .line 41
    iget-object v3, v1, Lgzb$a;->c:Ljava/lang/Object;

    .line 45
    :goto_1
    return-object v3

    .line 39
    :cond_0
    iget-object v1, v1, Lgzb$a;->d:Lgzb$a;

    goto :goto_0

    .line 45
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "TV;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 49
    .local p0, "this":Lgzb;, "Lgzb<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 50
    .local v2, "hash":I
    iget v3, p0, Lgzb;->b:I

    and-int v0, v2, v3

    .line 52
    .local v0, "bucket":I
    iget-object v3, p0, Lgzb;->a:[Lgzb$a;

    aget-object v1, v3, v0

    .local v1, "entry":Lgzb$a;, "Lgzb$a<TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 53
    iget-object v3, v1, Lgzb$a;->b:Ljava/lang/reflect/Type;

    if-ne p1, v3, :cond_0

    .line 54
    iput-object p2, v1, Lgzb$a;->c:Ljava/lang/Object;

    .line 55
    const/4 v3, 0x1

    .line 62
    :goto_1
    return v3

    .line 52
    :cond_0
    iget-object v1, v1, Lgzb$a;->d:Lgzb$a;

    goto :goto_0

    .line 59
    :cond_1
    new-instance v1, Lgzb$a;

    .end local v1    # "entry":Lgzb$a;, "Lgzb$a<TV;>;"
    iget-object v3, p0, Lgzb;->a:[Lgzb$a;

    aget-object v3, v3, v0

    invoke-direct {v1, p1, p2, v2, v3}, Lgzb$a;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Object;ILgzb$a;)V

    .line 60
    .restart local v1    # "entry":Lgzb$a;, "Lgzb$a<TV;>;"
    iget-object v3, p0, Lgzb;->a:[Lgzb$a;

    aput-object v1, v3, v0

    .line 62
    const/4 v3, 0x0

    goto :goto_1
.end method

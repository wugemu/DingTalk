.class abstract Lb$e;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field a:Lb$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lb$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lb$c;Lb$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb$c",
            "<TK;TV;>;",
            "Lb$c",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lb$e;, "Lb$e<TK;TV;>;"
    .local p1, "start":Lb$c;, "Lb$c<TK;TV;>;"
    .local p2, "expectedEnd":Lb$c;, "Lb$c<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lb$e;->a:Lb$c;

    .line 225
    iput-object p1, p0, Lb$e;->b:Lb$c;

    .line 226
    return-void
.end method


# virtual methods
.method abstract a(Lb$c;)Lb$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb$c",
            "<TK;TV;>;)",
            "Lb$c",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 230
    .local p0, "this":Lb$e;, "Lb$e<TK;TV;>;"
    iget-object v0, p0, Lb$e;->b:Lb$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 218
    .line 1258
    .local p0, "this":Lb$e;, "Lb$e<TK;TV;>;"
    iget-object v1, p0, Lb$e;->b:Lb$c;

    .line 2250
    iget-object v0, p0, Lb$e;->b:Lb$c;

    iget-object v2, p0, Lb$e;->a:Lb$c;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lb$e;->a:Lb$c;

    if-nez v0, :cond_1

    .line 2251
    :cond_0
    const/4 v0, 0x0

    .line 1259
    :goto_0
    iput-object v0, p0, Lb$e;->b:Lb$c;

    .line 218
    return-object v1

    .line 2253
    :cond_1
    iget-object v0, p0, Lb$e;->b:Lb$c;

    invoke-virtual {p0, v0}, Lb$e;->a(Lb$c;)Lb$c;

    move-result-object v0

    goto :goto_0
.end method

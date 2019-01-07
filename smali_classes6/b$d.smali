.class public final Lb$d;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb;

.field private b:Lb$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb$c",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private constructor <init>(Lb;)V
    .locals 1

    .prologue
    .line 301
    .local p0, "this":Lb$d;, "Lb<TK;TV;>.d;"
    iput-object p1, p0, Lb$d;->a:Lb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb$d;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lb;B)V
    .locals 0
    .param p1, "x0"    # Lb;

    .prologue
    .line 301
    .local p0, "this":Lb$d;, "Lb<TK;TV;>.d;"
    invoke-direct {p0, p1}, Lb$d;-><init>(Lb;)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p0, "this":Lb$d;, "Lb<TK;TV;>.d;"
    const/4 v0, 0x0

    .line 315
    iget-boolean v1, p0, Lb$d;->c:Z

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lb$d;->a:Lb;

    invoke-static {v1}, Lb;->a(Lb;)Lb$c;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 318
    :cond_0
    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 301
    .line 1323
    .local p0, "this":Lb$d;, "Lb<TK;TV;>.d;"
    iget-boolean v1, p0, Lb$d;->c:Z

    if-eqz v1, :cond_0

    .line 1324
    const/4 v1, 0x0

    iput-boolean v1, p0, Lb$d;->c:Z

    .line 1325
    iget-object v1, p0, Lb$d;->a:Lb;

    invoke-static {v1}, Lb;->a(Lb;)Lb$c;

    move-result-object v1

    move-object v0, p0

    .line 1327
    .end local p0    # "this":Lb$d;, "Lb<TK;TV;>.d;"
    .local v0, "this":Lb$d;, "Lb<TK;TV;>.d;"
    :goto_0
    iput-object v1, v0, Lb$d;->b:Lb$c;

    .line 1329
    iget-object v1, p0, Lb$d;->b:Lb$c;

    .line 301
    return-object v1

    .line 1327
    .end local v0    # "this":Lb$d;, "Lb<TK;TV;>.d;"
    .restart local p0    # "this":Lb$d;, "Lb<TK;TV;>.d;"
    :cond_0
    iget-object v1, p0, Lb$d;->b:Lb$c;

    const/4 v1, 0x0

    move-object v0, p0

    .end local p0    # "this":Lb$d;, "Lb<TK;TV;>.d;"
    .restart local v0    # "this":Lb$d;, "Lb<TK;TV;>.d;"
    goto :goto_0
.end method

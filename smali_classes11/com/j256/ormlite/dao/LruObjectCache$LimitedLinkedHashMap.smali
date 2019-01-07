.class Lcom/j256/ormlite/dao/LruObjectCache$LimitedLinkedHashMap;
.super Ljava/util/LinkedHashMap;
.source "LruObjectCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/dao/LruObjectCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LimitedLinkedHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3f5f911838d317f4L


# instance fields
.field private final capacity:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 136
    .local p0, "this":Lcom/j256/ormlite/dao/LruObjectCache$LimitedLinkedHashMap;, "Lcom/j256/ormlite/dao/LruObjectCache$LimitedLinkedHashMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 137
    iput p1, p0, Lcom/j256/ormlite/dao/LruObjectCache$LimitedLinkedHashMap;->capacity:I

    .line 138
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    .local p0, "this":Lcom/j256/ormlite/dao/LruObjectCache$LimitedLinkedHashMap;, "Lcom/j256/ormlite/dao/LruObjectCache$LimitedLinkedHashMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/LruObjectCache$LimitedLinkedHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/j256/ormlite/dao/LruObjectCache$LimitedLinkedHashMap;->capacity:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

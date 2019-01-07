.class final Lorg/jsoup/helper/DescendableLinkedList$a;
.super Ljava/lang/Object;
.source "DescendableLinkedList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/DescendableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/jsoup/helper/DescendableLinkedList;

.field private final b:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/jsoup/helper/DescendableLinkedList;I)V
    .locals 1
    .param p2, "index"    # I

    .prologue
    .line 60
    .local p0, "this":Lorg/jsoup/helper/DescendableLinkedList$a;, "Lorg/jsoup/helper/DescendableLinkedList<TE;>.a<TE;>;"
    iput-object p1, p0, Lorg/jsoup/helper/DescendableLinkedList$a;->a:Lorg/jsoup/helper/DescendableLinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1, p2}, Lorg/jsoup/helper/DescendableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/helper/DescendableLinkedList$a;->b:Ljava/util/ListIterator;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lorg/jsoup/helper/DescendableLinkedList;IB)V
    .locals 0
    .param p1, "x0"    # Lorg/jsoup/helper/DescendableLinkedList;
    .param p2, "x1"    # I

    .prologue
    .line 56
    .local p0, "this":Lorg/jsoup/helper/DescendableLinkedList$a;, "Lorg/jsoup/helper/DescendableLinkedList<TE;>.a<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/jsoup/helper/DescendableLinkedList$a;-><init>(Lorg/jsoup/helper/DescendableLinkedList;I)V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lorg/jsoup/helper/DescendableLinkedList$a;, "Lorg/jsoup/helper/DescendableLinkedList<TE;>.a<TE;>;"
    iget-object v0, p0, Lorg/jsoup/helper/DescendableLinkedList$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/jsoup/helper/DescendableLinkedList$a;, "Lorg/jsoup/helper/DescendableLinkedList<TE;>.a<TE;>;"
    iget-object v0, p0, Lorg/jsoup/helper/DescendableLinkedList$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lorg/jsoup/helper/DescendableLinkedList$a;, "Lorg/jsoup/helper/DescendableLinkedList<TE;>.a<TE;>;"
    iget-object v0, p0, Lorg/jsoup/helper/DescendableLinkedList$a;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 85
    return-void
.end method

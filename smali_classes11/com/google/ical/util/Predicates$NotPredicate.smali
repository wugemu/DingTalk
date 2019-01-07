.class Lcom/google/ical/util/Predicates$NotPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Liwo;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ical/util/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Liwo",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x46f69bf8028210a1L


# instance fields
.field private final predicate:Liwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liwo",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Liwo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liwo",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/google/ical/util/Predicates$NotPredicate;, "Lcom/google/ical/util/Predicates$NotPredicate<TT;>;"
    .local p1, "predicate":Liwo;, "Liwo<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/ical/util/Predicates$NotPredicate;->predicate:Liwo;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Liwo;Lcom/google/ical/util/Predicates$1;)V
    .locals 0
    .param p1, "x0"    # Liwo;
    .param p2, "x1"    # Lcom/google/ical/util/Predicates$1;

    .prologue
    .line 90
    .local p0, "this":Lcom/google/ical/util/Predicates$NotPredicate;, "Lcom/google/ical/util/Predicates$NotPredicate<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/ical/util/Predicates$NotPredicate;-><init>(Liwo;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/google/ical/util/Predicates$NotPredicate;, "Lcom/google/ical/util/Predicates$NotPredicate<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/google/ical/util/Predicates$NotPredicate;->predicate:Liwo;

    invoke-interface {v0, p1}, Liwo;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/google/ical/util/Predicates$AlwaysFalsePredicate;
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
    name = "AlwaysFalsePredicate"
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
.field private static final serialVersionUID:J = -0x7d8fdfe5a6dbfafL


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    .local p0, "this":Lcom/google/ical/util/Predicates$AlwaysFalsePredicate;, "Lcom/google/ical/util/Predicates$AlwaysFalsePredicate<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ical/util/Predicates$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/ical/util/Predicates$1;

    .prologue
    .line 81
    .local p0, "this":Lcom/google/ical/util/Predicates$AlwaysFalsePredicate;, "Lcom/google/ical/util/Predicates$AlwaysFalsePredicate<TT;>;"
    invoke-direct {p0}, Lcom/google/ical/util/Predicates$AlwaysFalsePredicate;-><init>()V

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
    .line 85
    .local p0, "this":Lcom/google/ical/util/Predicates$AlwaysFalsePredicate;, "Lcom/google/ical/util/Predicates$AlwaysFalsePredicate<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

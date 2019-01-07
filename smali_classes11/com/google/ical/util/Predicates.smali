.class public Lcom/google/ical/util/Predicates;
.super Ljava/lang/Object;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ical/util/Predicates$1;,
        Lcom/google/ical/util/Predicates$OrPredicate;,
        Lcom/google/ical/util/Predicates$AndPredicate;,
        Lcom/google/ical/util/Predicates$NotPredicate;,
        Lcom/google/ical/util/Predicates$AlwaysFalsePredicate;,
        Lcom/google/ical/util/Predicates$AlwaysTruePredicate;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final b:Liwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liwo",
            "<*>;"
        }
    .end annotation
.end field

.field private static final c:Liwo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Liwo",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    const-class v0, Lcom/google/ical/util/Predicates;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/ical/util/Predicates;->a:Z

    .line 19
    new-instance v0, Lcom/google/ical/util/Predicates$AlwaysTruePredicate;

    invoke-direct {v0, v1}, Lcom/google/ical/util/Predicates$AlwaysTruePredicate;-><init>(Lcom/google/ical/util/Predicates$1;)V

    sput-object v0, Lcom/google/ical/util/Predicates;->b:Liwo;

    .line 20
    new-instance v0, Lcom/google/ical/util/Predicates$AlwaysFalsePredicate;

    invoke-direct {v0, v1}, Lcom/google/ical/util/Predicates$AlwaysFalsePredicate;-><init>(Lcom/google/ical/util/Predicates$1;)V

    sput-object v0, Lcom/google/ical/util/Predicates;->c:Liwo;

    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

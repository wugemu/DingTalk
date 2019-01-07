.class public final Lrx/subjects/SubjectSubscriptionManager$a;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/SubjectSubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final c:[Lrx/subjects/SubjectSubscriptionManager$b;

.field static final d:Lrx/subjects/SubjectSubscriptionManager$a;

.field static final e:Lrx/subjects/SubjectSubscriptionManager$a;


# instance fields
.field final a:Z

.field final b:[Lrx/subjects/SubjectSubscriptionManager$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 151
    new-array v0, v3, [Lrx/subjects/SubjectSubscriptionManager$b;

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager$a;->c:[Lrx/subjects/SubjectSubscriptionManager$b;

    .line 152
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$a;

    const/4 v1, 0x1

    sget-object v2, Lrx/subjects/SubjectSubscriptionManager$a;->c:[Lrx/subjects/SubjectSubscriptionManager$b;

    invoke-direct {v0, v1, v2}, Lrx/subjects/SubjectSubscriptionManager$a;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$b;)V

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager$a;->d:Lrx/subjects/SubjectSubscriptionManager$a;

    .line 153
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager$a;

    sget-object v1, Lrx/subjects/SubjectSubscriptionManager$a;->c:[Lrx/subjects/SubjectSubscriptionManager$b;

    invoke-direct {v0, v3, v1}, Lrx/subjects/SubjectSubscriptionManager$a;-><init>(Z[Lrx/subjects/SubjectSubscriptionManager$b;)V

    sput-object v0, Lrx/subjects/SubjectSubscriptionManager$a;->e:Lrx/subjects/SubjectSubscriptionManager$a;

    return-void
.end method

.method public constructor <init>(Z[Lrx/subjects/SubjectSubscriptionManager$b;)V
    .locals 0
    .param p1, "terminated"    # Z
    .param p2, "observers"    # [Lrx/subjects/SubjectSubscriptionManager$b;

    .prologue
    .line 155
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$a;, "Lrx/subjects/SubjectSubscriptionManager$a<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-boolean p1, p0, Lrx/subjects/SubjectSubscriptionManager$a;->a:Z

    .line 157
    iput-object p2, p0, Lrx/subjects/SubjectSubscriptionManager$a;->b:[Lrx/subjects/SubjectSubscriptionManager$b;

    .line 158
    return-void
.end method

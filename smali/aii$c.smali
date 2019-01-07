.class final Laii$c;
.super Ljava/lang/Object;
.source "AlimeiThreadRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Laii$d;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laii$d;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Laii;


# direct methods
.method constructor <init>(Laii;)V
    .locals 4
    .param p1, "this$0"    # Laii;

    .prologue
    .line 322
    iput-object p1, p0, Laii$c;->e:Laii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    const v0, 0x7fffffff

    iput v0, p0, Laii$c;->a:I

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Laii$c;->b:Z

    .line 325
    new-instance v0, Ljava/util/PriorityQueue;

    const/4 v1, 0x5

    new-instance v2, Laii$e;

    iget-object v3, p0, Laii$c;->e:Laii;

    invoke-direct {v2, v3}, Laii$e;-><init>(Laii;)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Laii$c;->c:Ljava/util/Queue;

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laii$c;->d:Ljava/util/List;

    return-void
.end method

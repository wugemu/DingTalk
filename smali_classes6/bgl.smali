.class public final Lbgl;
.super Ljava/lang/Object;
.source "UserDingStatusObject.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lbem;)V
    .locals 2
    .param p1, "model"    # Lbem;

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    if-eqz p1, :cond_0

    .line 19
    iget-object v0, p1, Lbem;->a:Ljava/util/List;

    iput-object v0, p0, Lbgl;->a:Ljava/util/List;

    .line 20
    iget-object v0, p1, Lbem;->b:Ljava/lang/Integer;

    .line 1033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 20
    iput v0, p0, Lbgl;->b:I

    .line 21
    iget-object v0, p1, Lbem;->c:Ljava/lang/Integer;

    .line 2033
    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 21
    iput v0, p0, Lbgl;->c:I

    .line 23
    :cond_0
    return-void
.end method

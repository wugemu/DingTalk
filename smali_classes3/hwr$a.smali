.class public final Lhwr$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhwr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field final synthetic c:Lhwr;


# direct methods
.method public constructor <init>(Lhwr;II)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Lhwr$a;->c:Lhwr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lhwr$a;->a:I

    iput v0, p0, Lhwr$a;->b:I

    const/16 v0, 0x280

    iput v0, p0, Lhwr$a;->a:I

    const/16 v0, 0x1e0

    iput v0, p0, Lhwr$a;->b:I

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 0
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    .line 1000
    iget v1, p0, Lhwr$a;->a:I

    if-lez v1, :cond_1

    iget v0, p0, Lhwr$a;->a:I

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x0

    iget v0, p0, Lhwr$a;->a:I

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_0
    iget v2, p0, Lhwr$a;->b:I

    if-lez v2, :cond_0

    iget v2, p0, Lhwr$a;->b:I

    iget v3, p1, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lhwr$a;->b:I

    iget v3, p2, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    sub-int v0, v1, v0

    .line 0
    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

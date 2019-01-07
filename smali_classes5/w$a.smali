.class final Lw$a;
.super Lw$d;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1595
    invoke-direct {p0}, Lw$d;-><init>()V

    .line 1597
    return-void
.end method

.method public constructor <init>(Lw$a;)V
    .locals 0
    .param p1, "copy"    # Lw$a;

    .prologue
    .line 1600
    invoke-direct {p0, p1}, Lw$d;-><init>(Lw$d;)V

    .line 1601
    return-void
.end method


# virtual methods
.method a(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 1619
    const/4 v2, 0x0

    .line 1620
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1621
    .local v1, "pathName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1622
    iput-object v1, p0, Lw$a;->n:Ljava/lang/String;

    .line 1625
    :cond_0
    const/4 v2, 0x1

    .line 1626
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1627
    .local v0, "pathData":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1628
    invoke-static {v0}, Ldu;->b(Ljava/lang/String;)[Ldu$b;

    move-result-object v2

    iput-object v2, p0, Lw$a;->m:[Ldu$b;

    .line 1630
    :cond_1
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 1634
    const/4 v0, 0x1

    return v0
.end method

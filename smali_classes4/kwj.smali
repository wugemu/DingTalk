.class public final Lkwj;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkwj;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lkwj;->a:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    const/4 v3, -0x1

    iget v0, p0, Lkwj;->a:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkwj;->b:Ljava/lang/String;

    const/16 v1, 0x2e

    iget v2, p0, Lkwj;->a:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v0, p0, Lkwj;->b:Ljava/lang/String;

    iget v1, p0, Lkwj;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput v3, p0, Lkwj;->a:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkwj;->b:Ljava/lang/String;

    iget v2, p0, Lkwj;->a:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkwj;->a:I

    goto :goto_0
.end method

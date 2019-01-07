.class public abstract Lnn;
.super Ljava/lang/Object;
.source "InputBuffer.java"


# instance fields
.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:Lnk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lnn;->b:I

    .line 35
    iput v0, p0, Lnn;->c:I

    .line 38
    iput v0, p0, Lnn;->d:I

    .line 45
    new-instance v0, Lnk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnk;-><init>(I)V

    iput-object v0, p0, Lnn;->e:Lnk;

    .line 46
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lnn;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnn;->d:I

    .line 61
    return-void
.end method

.method public abstract a(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/CharStreamException;
        }
    .end annotation
.end method

.method public final b(I)C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lantlr/CharStreamException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lnn;->a(I)V

    .line 87
    iget-object v0, p0, Lnn;->e:Lnk;

    iget v1, p0, Lnn;->c:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnk;->a(I)C

    move-result v0

    return v0
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 119
    :goto_0
    iget v0, p0, Lnn;->d:I

    if-lez v0, :cond_0

    .line 126
    iget-object v0, p0, Lnn;->e:Lnk;

    invoke-virtual {v0}, Lnk;->a()V

    .line 128
    iget v0, p0, Lnn;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnn;->d:I

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

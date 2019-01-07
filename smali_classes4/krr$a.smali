.class final Lkrr$a;
.super Ljava/lang/Object;
.source "Builder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkrr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lkrt;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lkrv;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lkrv;)V
    .locals 1
    .param p1, "simpleNode"    # Lkrv;

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lkrr$a;->a:Lkrv;

    .line 212
    invoke-virtual {p1}, Lkrv;->a()I

    move-result v0

    iput v0, p0, Lkrr$a;->c:I

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lkrr$a;->b:I

    .line 214
    return-void
.end method


# virtual methods
.method public final a()Lkrt;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 225
    iget-object v0, p0, Lkrr$a;->a:Lkrv;

    iget v1, p0, Lkrr$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkrr$a;->b:I

    invoke-virtual {v0, v1}, Lkrv;->a(I)Lkrt;

    move-result-object v0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 221
    iget v0, p0, Lkrr$a;->b:I

    iget v1, p0, Lkrr$a;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lkrr$a;->a()Lkrt;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

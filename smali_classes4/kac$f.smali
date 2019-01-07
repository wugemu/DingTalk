.class public final Lkac$f;
.super Liwy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Lkac$b;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Liwy;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lkac$f;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lkac$f;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lkac$f;->e:Lkac$b;

    const/4 v0, -0x1

    iput v0, p0, Lkac$f;->g:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lkac$f;->g:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lkac$f;->b()I

    :cond_0
    iget v0, p0, Lkac$f;->g:I

    return v0
.end method

.method public final synthetic a(Liwx;)Liwy;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 0
    .line 13000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Liwx;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 14000
    invoke-virtual {p1, v0}, Liwx;->b(I)Z

    move-result v0

    .line 13000
    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Liwx;->c()Ljava/lang/String;

    move-result-object v0

    .line 15000
    iput-boolean v1, p0, Lkac$f;->a:Z

    iput-object v0, p0, Lkac$f;->b:Ljava/lang/String;

    goto :goto_0

    .line 13000
    :sswitch_2
    invoke-virtual {p1}, Liwx;->c()Ljava/lang/String;

    move-result-object v0

    .line 16000
    iput-boolean v1, p0, Lkac$f;->f:Z

    iput-object v0, p0, Lkac$f;->c:Ljava/lang/String;

    goto :goto_0

    .line 13000
    :sswitch_3
    new-instance v0, Lkac$b;

    invoke-direct {v0}, Lkac$b;-><init>()V

    invoke-virtual {p1, v0}, Liwx;->a(Liwy;)V

    .line 17000
    iput-boolean v1, p0, Lkac$f;->d:Z

    iput-object v0, p0, Lkac$f;->e:Lkac$b;

    goto :goto_0

    .line 13000
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/micro/c;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    .line 1000
    iget-boolean v0, p0, Lkac$f;->a:Z

    .line 0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2000
    iget-object v1, p0, Lkac$f;->b:Ljava/lang/String;

    .line 0
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(ILjava/lang/String;)V

    .line 3000
    :cond_0
    iget-boolean v0, p0, Lkac$f;->f:Z

    .line 0
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4000
    iget-object v1, p0, Lkac$f;->c:Ljava/lang/String;

    .line 0
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(ILjava/lang/String;)V

    .line 5000
    :cond_1
    iget-boolean v0, p0, Lkac$f;->d:Z

    .line 0
    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6000
    iget-object v1, p0, Lkac$f;->e:Lkac$b;

    .line 0
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(ILiwy;)V

    :cond_2
    return-void
.end method

.method public final b()I
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    const/4 v0, 0x0

    .line 7000
    iget-boolean v1, p0, Lkac$f;->a:Z

    .line 0
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 8000
    iget-object v1, p0, Lkac$f;->b:Ljava/lang/String;

    .line 0
    invoke-static {v0, v1}, Lcom/google/protobuf/micro/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 9000
    :cond_0
    iget-boolean v1, p0, Lkac$f;->f:Z

    .line 0
    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 10000
    iget-object v2, p0, Lkac$f;->c:Ljava/lang/String;

    .line 0
    invoke-static {v1, v2}, Lcom/google/protobuf/micro/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11000
    :cond_1
    iget-boolean v1, p0, Lkac$f;->d:Z

    .line 0
    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 12000
    iget-object v2, p0, Lkac$f;->e:Lkac$b;

    .line 0
    invoke-static {v1, v2}, Lcom/google/protobuf/micro/c;->b(ILiwy;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lkac$f;->g:I

    return v0
.end method

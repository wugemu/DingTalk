.class public final Lkac$d;
.super Liwy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Liwy;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkac$d;->a:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lkac$d;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lkac$d;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lkac$d;->h:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lkac$d;->i:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lkac$d;->i:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lkac$d;->b()I

    :cond_0
    iget v0, p0, Lkac$d;->i:I

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
    .line 18000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Liwx;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 19000
    invoke-virtual {p1, v0}, Liwx;->b(I)Z

    move-result v0

    .line 18000
    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Liwx;->b()Z

    move-result v0

    .line 20000
    iput-boolean v1, p0, Lkac$d;->d:Z

    iput-boolean v0, p0, Lkac$d;->a:Z

    goto :goto_0

    .line 18000
    :sswitch_2
    invoke-virtual {p1}, Liwx;->c()Ljava/lang/String;

    move-result-object v0

    .line 21000
    iput-boolean v1, p0, Lkac$d;->e:Z

    iput-object v0, p0, Lkac$d;->b:Ljava/lang/String;

    goto :goto_0

    .line 18000
    :sswitch_3
    invoke-virtual {p1}, Liwx;->c()Ljava/lang/String;

    move-result-object v0

    .line 22000
    iput-boolean v1, p0, Lkac$d;->f:Z

    iput-object v0, p0, Lkac$d;->c:Ljava/lang/String;

    goto :goto_0

    .line 18000
    :sswitch_4
    invoke-virtual {p1}, Liwx;->c()Ljava/lang/String;

    move-result-object v0

    .line 23000
    iput-boolean v1, p0, Lkac$d;->g:Z

    iput-object v0, p0, Lkac$d;->h:Ljava/lang/String;

    goto :goto_0

    .line 18000
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    iget-boolean v0, p0, Lkac$d;->d:Z

    .line 0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2000
    iget-boolean v1, p0, Lkac$d;->a:Z

    .line 0
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(IZ)V

    .line 3000
    :cond_0
    iget-boolean v0, p0, Lkac$d;->e:Z

    .line 0
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4000
    iget-object v1, p0, Lkac$d;->b:Ljava/lang/String;

    .line 0
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(ILjava/lang/String;)V

    .line 5000
    :cond_1
    iget-boolean v0, p0, Lkac$d;->f:Z

    .line 0
    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6000
    iget-object v1, p0, Lkac$d;->c:Ljava/lang/String;

    .line 0
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(ILjava/lang/String;)V

    .line 7000
    :cond_2
    iget-boolean v0, p0, Lkac$d;->g:Z

    .line 0
    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8000
    iget-object v1, p0, Lkac$d;->h:Ljava/lang/String;

    .line 0
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(ILjava/lang/String;)V

    :cond_3
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

    .line 9000
    iget-boolean v1, p0, Lkac$d;->d:Z

    .line 0
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 10000
    iget-boolean v1, p0, Lkac$d;->a:Z

    .line 11000
    invoke-static {v0}, Lcom/google/protobuf/micro/c;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 0
    add-int/lit8 v0, v0, 0x0

    .line 12000
    :cond_0
    iget-boolean v1, p0, Lkac$d;->e:Z

    .line 0
    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 13000
    iget-object v2, p0, Lkac$d;->b:Ljava/lang/String;

    .line 0
    invoke-static {v1, v2}, Lcom/google/protobuf/micro/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14000
    :cond_1
    iget-boolean v1, p0, Lkac$d;->f:Z

    .line 0
    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 15000
    iget-object v2, p0, Lkac$d;->c:Ljava/lang/String;

    .line 0
    invoke-static {v1, v2}, Lcom/google/protobuf/micro/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16000
    :cond_2
    iget-boolean v1, p0, Lkac$d;->g:Z

    .line 0
    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 17000
    iget-object v2, p0, Lkac$d;->h:Ljava/lang/String;

    .line 0
    invoke-static {v1, v2}, Lcom/google/protobuf/micro/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iput v0, p0, Lkac$d;->i:I

    return v0
.end method

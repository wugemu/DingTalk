.class public final Lkac$j;
.super Liwy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field public a:Z

.field public b:Lkac$b;

.field private c:Z

.field private d:Liww;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Liwy;-><init>()V

    sget-object v0, Liww;->b:Liww;

    iput-object v0, p0, Lkac$j;->d:Liww;

    const/4 v0, 0x0

    iput-object v0, p0, Lkac$j;->b:Lkac$b;

    const/4 v0, -0x1

    iput v0, p0, Lkac$j;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lkac$j;->e:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lkac$j;->b()I

    :cond_0
    iget v0, p0, Lkac$j;->e:I

    return v0
.end method

.method public final synthetic a(Liwx;)Liwy;
    .locals 1

    .prologue
    .line 0
    .line 9000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Liwx;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 10000
    invoke-virtual {p1, v0}, Liwx;->b(I)Z

    move-result v0

    .line 9000
    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Liwx;->d()Liww;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkac$j;->a(Liww;)Lkac$j;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lkac$b;

    invoke-direct {v0}, Lkac$b;-><init>()V

    invoke-virtual {p1, v0}, Liwx;->a(Liwy;)V

    invoke-virtual {p0, v0}, Lkac$j;->a(Lkac$b;)Lkac$j;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Liww;)Lkac$j;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkac$j;->c:Z

    iput-object p1, p0, Lkac$j;->d:Liww;

    return-object p0
.end method

.method public final a(Lkac$b;)Lkac$j;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkac$j;->a:Z

    iput-object p1, p0, Lkac$j;->b:Lkac$b;

    return-object p0
.end method

.method public final a(Lcom/google/protobuf/micro/c;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 0
    .line 1000
    iget-boolean v0, p0, Lkac$j;->c:Z

    .line 0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2000
    iget-object v1, p0, Lkac$j;->d:Liww;

    .line 0
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(ILiww;)V

    .line 3000
    :cond_0
    iget-boolean v0, p0, Lkac$j;->a:Z

    .line 0
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4000
    iget-object v1, p0, Lkac$j;->b:Lkac$b;

    .line 0
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(ILiwy;)V

    :cond_1
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

    .line 5000
    iget-boolean v1, p0, Lkac$j;->c:Z

    .line 0
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 6000
    iget-object v1, p0, Lkac$j;->d:Liww;

    .line 0
    invoke-static {v0, v1}, Lcom/google/protobuf/micro/c;->b(ILiww;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 7000
    :cond_0
    iget-boolean v1, p0, Lkac$j;->a:Z

    .line 0
    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 8000
    iget-object v2, p0, Lkac$j;->b:Lkac$b;

    .line 0
    invoke-static {v1, v2}, Lcom/google/protobuf/micro/c;->b(ILiwy;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lkac$j;->e:I

    return v0
.end method

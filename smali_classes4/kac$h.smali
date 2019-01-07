.class public final Lkac$h;
.super Liwy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Liwy;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lkac$h;->a:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lkac$h;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lkac$h;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lkac$h;->e:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lkac$h;->b()I

    :cond_0
    iget v0, p0, Lkac$h;->e:I

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

    .line 11000
    :sswitch_1
    invoke-virtual {p1}, Liwx;->e()I

    move-result v0

    .line 12000
    iput-boolean v1, p0, Lkac$h;->c:Z

    iput v0, p0, Lkac$h;->a:I

    goto :goto_0

    .line 9000
    :sswitch_2
    invoke-virtual {p1}, Liwx;->c()Ljava/lang/String;

    move-result-object v0

    .line 13000
    iput-boolean v1, p0, Lkac$h;->d:Z

    iput-object v0, p0, Lkac$h;->b:Ljava/lang/String;

    goto :goto_0

    .line 9000
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    iget-boolean v0, p0, Lkac$h;->c:Z

    .line 0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2000
    iget v1, p0, Lkac$h;->a:I

    .line 0
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(II)V

    .line 3000
    :cond_0
    iget-boolean v0, p0, Lkac$h;->d:Z

    .line 0
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4000
    iget-object v1, p0, Lkac$h;->b:Ljava/lang/String;

    .line 0
    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/c;->a(ILjava/lang/String;)V

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
    iget-boolean v1, p0, Lkac$h;->c:Z

    .line 0
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 6000
    iget v1, p0, Lkac$h;->a:I

    .line 0
    invoke-static {v0, v1}, Lcom/google/protobuf/micro/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 7000
    :cond_0
    iget-boolean v1, p0, Lkac$h;->d:Z

    .line 0
    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 8000
    iget-object v2, p0, Lkac$h;->b:Ljava/lang/String;

    .line 0
    invoke-static {v1, v2}, Lcom/google/protobuf/micro/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lkac$h;->e:I

    return v0
.end method

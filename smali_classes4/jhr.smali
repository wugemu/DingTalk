.class final Ljhr;
.super Ljava/lang/Object;
.source "LineWrapper.java"


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Ljava/lang/StringBuilder;

.field private e:I

.field private f:I


# direct methods
.method constructor <init>(Ljava/lang/Appendable;Ljava/lang/String;I)V
    .locals 2
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "columnLimit"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Ljhr;->d:Ljava/lang/StringBuilder;

    .line 36
    iput v1, p0, Ljhr;->e:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Ljhr;->f:I

    .line 42
    const-string/jumbo v0, "out == null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ljhx;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Ljhr;->a:Ljava/lang/Appendable;

    .line 44
    iput-object p2, p0, Ljhr;->b:Ljava/lang/String;

    .line 45
    const/16 v0, 0x64

    iput v0, p0, Ljhr;->c:I

    .line 46
    return-void
.end method

.method private a(Z)V
    .locals 4
    .param p1, "wrap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 92
    if-eqz p1, :cond_1

    .line 93
    iget-object v1, p0, Ljhr;->a:Ljava/lang/Appendable;

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljhr;->f:I

    if-ge v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Ljhr;->a:Ljava/lang/Appendable;

    iget-object v2, p0, Ljhr;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget v1, p0, Ljhr;->f:I

    iget-object v2, p0, Ljhr;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Ljhr;->e:I

    .line 98
    iget v1, p0, Ljhr;->e:I

    iget-object v2, p0, Ljhr;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljhr;->e:I

    .line 102
    .end local v0    # "i":I
    :goto_1
    iget-object v1, p0, Ljhr;->a:Ljava/lang/Appendable;

    iget-object v2, p0, Ljhr;->d:Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 103
    iget-object v1, p0, Ljhr;->d:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v3, p0, Ljhr;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Ljhr;->f:I

    .line 105
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Ljhr;->a:Ljava/lang/Appendable;

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1
.end method


# virtual methods
.method final a(I)V
    .locals 2
    .param p1, "indentLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 79
    iget v0, p0, Ljhr;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljhr;->a(Z)V

    .line 80
    :cond_0
    iget v0, p0, Ljhr;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljhr;->e:I

    .line 81
    iput p1, p0, Ljhr;->f:I

    .line 82
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v6, 0xa

    const/4 v5, -0x1

    .line 52
    iget v3, p0, Ljhr;->f:I

    if-eq v3, v5, :cond_2

    .line 53
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 57
    .local v1, "nextNewline":I
    if-ne v1, v5, :cond_0

    iget v3, p0, Ljhr;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Ljhr;->c:I

    if-gt v3, v4, :cond_0

    .line 58
    iget-object v3, p0, Ljhr;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v3, p0, Ljhr;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Ljhr;->e:I

    .line 73
    .end local v1    # "nextNewline":I
    :goto_0
    return-void

    .line 64
    .restart local v1    # "nextNewline":I
    :cond_0
    if-eq v1, v5, :cond_1

    iget v3, p0, Ljhr;->e:I

    add-int/2addr v3, v1

    iget v4, p0, Ljhr;->c:I

    if-le v3, v4, :cond_3

    :cond_1
    const/4 v2, 0x1

    .line 65
    .local v2, "wrap":Z
    :goto_1
    invoke-direct {p0, v2}, Ljhr;->a(Z)V

    .line 68
    .end local v1    # "nextNewline":I
    .end local v2    # "wrap":Z
    :cond_2
    iget-object v3, p0, Ljhr;->a:Ljava/lang/Appendable;

    invoke-interface {v3, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 69
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 70
    .local v0, "lastNewline":I
    if-eq v0, v5, :cond_4

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    .line 72
    :goto_2
    iput v3, p0, Ljhr;->e:I

    goto :goto_0

    .line 64
    .end local v0    # "lastNewline":I
    .restart local v1    # "nextNewline":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 72
    .end local v1    # "nextNewline":I
    .restart local v0    # "lastNewline":I
    :cond_4
    iget v3, p0, Ljhr;->e:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2
.end method

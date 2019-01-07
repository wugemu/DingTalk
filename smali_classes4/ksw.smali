.class public final Lksw;
.super Ljava/lang/Object;
.source "RawField.java"


# static fields
.field private static final e:Ljava/util/BitSet;


# instance fields
.field public a:Lksy;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field final d:Z

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    sput-object v1, Lksw;->e:Ljava/util/BitSet;

    .line 37
    const/16 v0, 0x21

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 38
    sget-object v1, Lksw;->e:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 41
    sget-object v1, Lksw;->e:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    :cond_1
    return-void
.end method

.method public constructor <init>(Lksy;)V
    .locals 6
    .param p1, "raw"    # Lksy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lksw;->a:Lksy;

    .line 68
    iput v5, p0, Lksw;->f:I

    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, "obsolete":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lksy;->b()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 71
    sget-object v3, Lksw;->e:Ljava/util/BitSet;

    invoke-interface {p1, v0}, Lksy;->b(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 72
    iput v0, p0, Lksw;->g:I

    .line 73
    :goto_1
    invoke-interface {p1}, Lksy;->b()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 74
    invoke-interface {p1, v0}, Lksy;->b(I)B

    move-result v3

    and-int/lit16 v1, v3, 0xff

    .line 75
    .local v1, "j":I
    const/16 v3, 0x3a

    if-ne v1, v3, :cond_1

    .line 76
    iput v0, p0, Lksw;->f:I

    .line 87
    .end local v1    # "j":I
    :cond_0
    iget v3, p0, Lksw;->f:I

    if-ne v3, v5, :cond_4

    new-instance v3, Lorg/apache/james/mime4j/MimeException;

    const-string/jumbo v4, "Invalid header. No colon found."

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    .restart local v1    # "j":I
    :cond_1
    const/16 v3, 0x20

    if-eq v1, v3, :cond_2

    const/16 v3, 0x9

    if-eq v1, v3, :cond_2

    .line 79
    new-instance v3, Lorg/apache/james/mime4j/MimeException;

    const-string/jumbo v4, "Invalid header"

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_2
    const/4 v2, 0x1

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    .end local v1    # "j":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_4
    iput-boolean v2, p0, Lksw;->d:Z

    .line 89
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 92
    iget-object v0, p0, Lksw;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Lksw;->a:Lksy;

    const/4 v1, 0x0

    iget v2, p0, Lksw;->g:I

    invoke-static {v0, v1, v2}, Lkta;->a(Lksy;II)Ljava/lang/String;

    move-result-object v0

    .line 93
    iput-object v0, p0, Lksw;->b:Ljava/lang/String;

    .line 96
    :cond_0
    iget-object v0, p0, Lksw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 100
    iget-object v0, p0, Lksw;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1125
    iget v0, p0, Lksw;->f:I

    add-int/lit8 v0, v0, 0x1

    .line 1127
    iget-object v1, p0, Lksw;->a:Lksy;

    invoke-interface {v1}, Lksy;->b()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lksw;->a:Lksy;

    invoke-interface {v1, v0}, Lksy;->b(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1128
    :cond_0
    iget-object v1, p0, Lksw;->a:Lksy;

    invoke-interface {v1}, Lksy;->b()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1129
    iget-object v2, p0, Lksw;->a:Lksy;

    invoke-static {v2, v0, v1}, Lkta;->a(Lksy;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    iput-object v0, p0, Lksw;->c:Ljava/lang/String;

    .line 104
    :cond_1
    iget-object v0, p0, Lksw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lksw;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lksw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

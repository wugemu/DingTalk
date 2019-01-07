.class public final Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
.super Ljava/lang/Object;
.source "AddressListParser.java"

# interfaces
.implements Lkrn;
.implements Lkrp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;,
        Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    }
.end annotation


# static fields
.field private static m:[I

.field private static n:[I


# instance fields
.field protected a:Lkrs;

.field public b:Lkro;

.field c:Lkru;

.field public d:Lorg/apache/james/mime4j/field/address/parser/Token;

.field public e:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private g:I

.field private h:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private i:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private j:I

.field private k:I

.field private final l:[I

.field private final o:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;

.field private p:Z

.field private q:I

.field private final r:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field

.field private t:[I

.field private u:I

.field private v:[I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x16

    .line 7743
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->m:[I

    .line 7746
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->n:[I

    .line 741
    return-void

    .line 7743
    .line 7746
    nop

    :array_0
    .array-data 4
        0x2
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x50
        -0x7fffbfc0
        -0x7fffbfc0
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x100
        0x108
        0x8
        -0x7fffc000
        -0x7fffc000
        -0x7fffc000
        -0x7fffbe00
        0x200
        -0x7fffc000
        0x4200
        0x200
        0x44000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 8
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/16 v7, 0x16

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v1, Lkrs;

    invoke-direct {v1}, Lkrs;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    .line 735
    new-array v1, v7, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    .line 748
    new-array v1, v6, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->o:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;

    .line 749
    iput-boolean v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->p:Z

    .line 750
    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->q:I

    .line 852
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->r:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 901
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->s:Ljava/util/List;

    .line 903
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->u:I

    .line 904
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->v:[I

    .line 785
    new-instance v1, Lkru;

    invoke-direct {v1, p1, v5, v5}, Lkru;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c:Lkru;

    .line 786
    new-instance v1, Lkro;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c:Lkru;

    invoke-direct {v1, v2}, Lkro;-><init>(Lkru;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b:Lkro;

    .line 787
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 788
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    .line 789
    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    .line 790
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->o:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 792
    :cond_1
    return-void
.end method

.method private a(II)V
    .locals 6
    .param p1, "kind"    # I
    .param p2, "pos"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 908
    const/16 v3, 0x64

    if-lt p2, v3, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->w:I

    add-int/lit8 v3, v3, 0x1

    if-ne p2, v3, :cond_2

    .line 910
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->v:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->w:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->w:I

    aput p1, v3, v4

    goto :goto_0

    .line 911
    :cond_2
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->w:I

    if-eqz v3, :cond_0

    .line 912
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->w:I

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->t:[I

    .line 913
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->w:I

    if-ge v0, v3, :cond_3

    .line 914
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->t:[I

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->v:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 913
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 916
    :cond_3
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 917
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 918
    .local v2, "oldentry":[I
    array-length v3, v2

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->t:[I

    array-length v4, v4

    if-ne v3, v4, :cond_4

    .line 919
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->t:[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 920
    aget v3, v2, v0

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->t:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_4

    .line 919
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 924
    :cond_5
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->s:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->t:[I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    .end local v2    # "oldentry":[I
    :cond_6
    if-eqz p2, :cond_0

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->v:[I

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->w:I

    add-int/lit8 v4, p2, -0x1

    aput p1, v3, v4

    goto :goto_0
.end method

.method private a(Lkrt;)V
    .locals 1
    .param p1, "n"    # Lkrt;

    .prologue
    .line 64
    check-cast p1, Lkrv;

    .end local p1    # "n":Lkrt;
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->e(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lkrv;->a:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 65
    return-void
.end method

.method private a(I)Z
    .locals 4
    .param p1, "xla"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x1

    const v3, 0x7fffffff

    const/4 v1, 0x0

    .line 640
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->j:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->i:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 641
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->j()Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 643
    :goto_0
    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(II)V

    :goto_1
    return v0

    :cond_0
    move v0, v1

    .line 641
    goto :goto_0

    .line 643
    :catch_0
    move-exception v2

    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(II)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(II)V

    throw v0
.end method

.method private b()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 101
    new-instance v2, Lkrd;

    invoke-direct {v2, v6}, Lkrd;-><init>(I)V

    .line 102
    .local v2, "jjtn000":Lkrd;
    const/4 v0, 0x1

    .line 103
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3, v2}, Lkrs;->a(Lkrt;)V

    .line 104
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lkrt;)V

    .line 106
    :try_start_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v3, v7, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 113
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/4 v4, 0x1

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v5, v3, v4

    .line 118
    :goto_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v3, v7, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 123
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/4 v4, 0x2

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3, v2, v6}, Lkrs;->a(Lkrt;Z)V

    .line 155
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    return-void

    .line 106
    :cond_0
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_0

    .line 110
    :sswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v1

    .line 140
    .local v1, "jjte000":Ljava/lang/Throwable;
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3}, Lkrs;->b()V

    .line 141
    const/4 v0, 0x0

    .line 145
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_4

    .line 146
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 154
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v4, v2, v6}, Lkrs;->a(Lkrt;Z)V

    .line 155
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    :cond_1
    throw v3

    .line 118
    :cond_2
    :try_start_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_2

    .line 126
    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 127
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v3, v7, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v3

    :goto_3
    sparse-switch v3, :sswitch_data_1

    .line 134
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/4 v4, 0x3

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v5, v3, v4

    goto :goto_1

    .line 127
    :cond_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_3

    .line 131
    :sswitch_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 148
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_4
    :try_start_4
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_5

    .line 149
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 151
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_5
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    .line 118
    .line 127
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_1
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method private b(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "xla"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 998
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->o:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;

    aget-object v0, v2, p1

    .line 999
    .local v0, "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;
    :goto_0
    iget v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;->a:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    if-le v2, v3, :cond_0

    .line 1000
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;->d:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;

    if-nez v2, :cond_1

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;-><init>()V

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;->d:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;

    .end local v0    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;
    .local v1, "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;
    move-object v0, v1

    .line 1003
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;
    .restart local v0    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;
    :cond_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    add-int/2addr v2, p2

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->j:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;->a:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;->b:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput p2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;->c:I

    .line 1004
    return-void

    .line 1001
    :cond_1
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;->d:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;

    goto :goto_0
.end method

.method private b(Lkrt;)V
    .locals 1
    .param p1, "n"    # Lkrt;

    .prologue
    .line 68
    check-cast p1, Lkrv;

    .end local p1    # "n":Lkrt;
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->e(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lkrv;->b:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 69
    return-void
.end method

.method private b(I)Z
    .locals 3
    .param p1, "xla"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const v2, 0x7fffffff

    const/4 v1, 0x1

    .line 647
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->j:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->i:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 648
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k()Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 650
    :goto_0
    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(II)V

    :goto_1
    return v0

    .line 648
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(II)V

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(II)V

    throw v0
.end method

.method private c(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 11
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v10, 0x22

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 829
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    .local v2, "oldToken":Lorg/apache/james/mime4j/field/address/parser/Token;
    iget-object v4, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v4, v4, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 831
    :goto_0
    iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    .line 832
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v4, v4, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-ne v4, p1, :cond_4

    .line 833
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    .line 834
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->q:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->q:I

    const/16 v5, 0x64

    if-le v4, v5, :cond_3

    .line 835
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->q:I

    .line 836
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_3

    .line 837
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->o:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;

    aget-object v0, v3, v1

    .line 838
    .local v0, "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;
    :goto_2
    if-eqz v0, :cond_2

    .line 839
    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;->a:I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;->b:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 840
    :cond_0
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;->d:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;

    goto :goto_2

    .line 830
    .end local v0    # "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;
    .end local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b:Lkro;

    invoke-virtual {v5}, Lkro;->a()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 836
    .restart local v0    # "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 844
    .end local v0    # "c":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-object v3

    .line 846
    :cond_4
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 847
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->u:I

    .line 6934
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 6935
    new-array v6, v10, [Z

    .line 6936
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->u:I

    if-ltz v4, :cond_5

    .line 6937
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->u:I

    aput-boolean v9, v6, v4

    .line 6938
    iput v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->u:I

    :cond_5
    move v5, v3

    .line 6940
    :goto_3
    const/16 v4, 0x16

    if-ge v5, v4, :cond_9

    .line 6941
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    aget v4, v4, v5

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    if-ne v4, v7, :cond_8

    move v4, v3

    .line 6942
    :goto_4
    const/16 v7, 0x20

    if-ge v4, v7, :cond_8

    .line 6943
    sget-object v7, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->m:[I

    aget v7, v7, v5

    shl-int v8, v9, v4

    and-int/2addr v7, v8

    if-eqz v7, :cond_6

    .line 6944
    aput-boolean v9, v6, v4

    .line 6946
    :cond_6
    sget-object v7, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->n:[I

    aget v7, v7, v5

    shl-int v8, v9, v4

    and-int/2addr v7, v8

    if-eqz v7, :cond_7

    .line 6947
    add-int/lit8 v7, v4, 0x20

    aput-boolean v9, v6, v7

    .line 6942
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 6940
    :cond_8
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    :cond_9
    move v4, v3

    .line 6952
    :goto_5
    if-ge v4, v10, :cond_b

    .line 6953
    aget-boolean v5, v6, v4

    if-eqz v5, :cond_a

    .line 6954
    new-array v5, v9, [I

    iput-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->t:[I

    .line 6955
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->t:[I

    aput v4, v5, v3

    .line 6956
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->s:Ljava/util/List;

    iget-object v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->t:[I

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6952
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 6959
    :cond_b
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->w:I

    .line 6960
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->m()V

    .line 6961
    invoke-direct {p0, v3, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(II)V

    .line 6962
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->s:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [[I

    move v4, v3

    .line 6963
    :goto_6
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_c

    .line 6964
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->s:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aput-object v3, v5, v4

    .line 6963
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_6

    .line 6966
    :cond_c
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    sget-object v6, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a_:[Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/address/parser/Token;[[I[Ljava/lang/String;)V

    .line 848
    throw v3
.end method

.method private c()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v8, -0x1

    .line 162
    new-instance v2, Lkrc;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lkrc;-><init>(I)V

    .line 163
    .local v2, "jjtn000":Lkrc;
    const/4 v0, 0x1

    .line 164
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3, v2}, Lkrs;->a(Lkrt;)V

    .line 165
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lkrt;)V

    .line 167
    const v3, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :goto_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3, v2, v5}, Lkrs;->a(Lkrt;Z)V

    .line 213
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    return-void

    .line 170
    :cond_0
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v3, v8, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 191
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/4 v4, 0x5

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v6, v3, v4

    .line 192
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 193
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :catch_0
    move-exception v1

    .line 198
    .local v1, "jjte000":Ljava/lang/Throwable;
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3}, Lkrs;->b()V

    .line 199
    const/4 v0, 0x0

    .line 203
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_a

    .line 204
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 212
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v4, v2, v5}, Lkrs;->a(Lkrt;Z)V

    .line 213
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    :cond_1
    throw v3

    .line 170
    :cond_2
    :try_start_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_1

    .line 172
    :sswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->e()V

    goto :goto_0

    .line 176
    :sswitch_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->f()V

    .line 177
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v3, v8, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 185
    :pswitch_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/4 v4, 0x4

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v6, v3, v4

    .line 186
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 187
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    .line 177
    :cond_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_2

    .line 2297
    :pswitch_1
    new-instance v6, Lkrg;

    const/4 v3, 0x5

    invoke-direct {v6, v3}, Lkrg;-><init>(I)V

    .line 2299
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3, v6}, Lkrs;->a(Lkrt;)V

    .line 2300
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lkrt;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2302
    const/4 v3, 0x4

    :try_start_4
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 2303
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v3, v8, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v3

    :goto_3
    sparse-switch v3, :sswitch_data_1

    .line 2310
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/4 v4, 0x7

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v7, v3, v4

    .line 2315
    :goto_4
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v3, v8, :cond_6

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v3

    :goto_5
    packed-switch v3, :pswitch_data_1

    .line 2320
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/16 v4, 0x8

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v7, v3, v4

    .line 2335
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2352
    :try_start_5
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    const/4 v4, 0x1

    invoke-virtual {v3, v6, v4}, Lkrs;->a(Lkrt;Z)V

    .line 2353
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 2303
    :cond_4
    :try_start_6
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_3

    .line 2307
    :sswitch_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 2336
    :catch_1
    move-exception v3

    .line 2338
    :try_start_7
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v4}, Lkrs;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2339
    const/4 v4, 0x0

    .line 2343
    :try_start_8
    instance-of v7, v3, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_8

    .line 2344
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2351
    :catchall_1
    move-exception v3

    :goto_6
    if-eqz v4, :cond_5

    .line 2352
    :try_start_9
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lkrs;->a(Lkrt;Z)V

    .line 2353
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    :cond_5
    throw v3
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2315
    :cond_6
    :try_start_a
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_5

    .line 2323
    :pswitch_2
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 2324
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v3, v8, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v3

    :goto_7
    sparse-switch v3, :sswitch_data_2

    .line 2331
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/16 v4, 0x9

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v7, v3, v4

    goto :goto_4

    .line 2351
    :catchall_2
    move-exception v3

    move v4, v5

    goto :goto_6

    .line 2324
    :cond_7
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_7

    .line 2328
    :sswitch_3
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    .line 2346
    :cond_8
    :try_start_b
    instance-of v7, v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v7, :cond_9

    .line 2347
    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v3

    .line 2349
    :cond_9
    check-cast v3, Ljava/lang/Error;

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 182
    :pswitch_3
    :try_start_c
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->e()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 206
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_a
    :try_start_d
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_b

    .line 207
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 209
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_b
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 170
    .line 177
    .line 2303
    .line 2315
    .line 2324
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_2
        0xe -> :sswitch_2
        0x1f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x6 -> :sswitch_3
        0xe -> :sswitch_3
        0x1f -> :sswitch_3
    .end sparse-switch
.end method

.method private d()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 220
    new-instance v2, Lkri;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lkri;-><init>(I)V

    .line 221
    .local v2, "jjtn000":Lkri;
    const/4 v0, 0x1

    .line 222
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3, v2}, Lkrs;->a(Lkrt;)V

    .line 223
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lkrt;)V

    .line 225
    const v3, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :goto_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3, v2, v5}, Lkrs;->a(Lkrt;Z)V

    .line 259
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    return-void

    .line 228
    :cond_0
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 237
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/4 v4, 0x6

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v6, v3, v4

    .line 238
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 239
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :catch_0
    move-exception v1

    .line 244
    .local v1, "jjte000":Ljava/lang/Throwable;
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3}, Lkrs;->b()V

    .line 245
    const/4 v0, 0x0

    .line 249
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    .line 250
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 258
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v4, v2, v5}, Lkrs;->a(Lkrt;Z)V

    .line 259
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    :cond_1
    throw v3

    .line 228
    :cond_2
    :try_start_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_1

    .line 230
    :sswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->e()V

    goto :goto_0

    .line 3266
    :sswitch_1
    new-instance v6, Lkrj;

    const/4 v3, 0x4

    invoke-direct {v6, v3}, Lkrj;-><init>(I)V

    .line 3268
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3, v6}, Lkrs;->a(Lkrt;)V

    .line 3269
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lkrt;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3271
    :try_start_4
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->f()V

    .line 3272
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->e()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3289
    :try_start_5
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    const/4 v4, 0x1

    invoke-virtual {v3, v6, v4}, Lkrs;->a(Lkrt;Z)V

    .line 3290
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 3273
    :catch_1
    move-exception v3

    .line 3275
    :try_start_6
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v4}, Lkrs;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3276
    const/4 v4, 0x0

    .line 3280
    :try_start_7
    instance-of v7, v3, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_4

    .line 3281
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3288
    :catchall_1
    move-exception v3

    :goto_2
    if-eqz v4, :cond_3

    .line 3289
    :try_start_8
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lkrs;->a(Lkrt;Z)V

    .line 3290
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    :cond_3
    throw v3
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3283
    :cond_4
    :try_start_9
    instance-of v7, v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v7, :cond_5

    .line 3284
    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v3

    .line 3286
    :cond_5
    check-cast v3, Ljava/lang/Error;

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 252
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_6
    :try_start_a
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_7

    .line 253
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 255
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_7
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3288
    :catchall_2
    move-exception v3

    move v4, v5

    goto :goto_2

    .line 228
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method private d(I)Z
    .locals 4
    .param p1, "kind"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 854
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->i:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_1

    .line 855
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->j:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->j:I

    .line 856
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez v2, :cond_0

    .line 857
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b:Lkro;

    invoke-virtual {v3}, Lkro;->a()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->i:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 864
    :goto_0
    iget-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->p:Z

    if-eqz v2, :cond_3

    .line 865
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 866
    .local v1, "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_1

    .line 859
    .end local v0    # "i":I
    .end local v1    # "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->i:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 862
    :cond_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 867
    .restart local v0    # "i":I
    .restart local v1    # "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(II)V

    .line 869
    .end local v0    # "i":I
    .end local v1    # "tok":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_3
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-eq v2, p1, :cond_4

    const/4 v2, 0x1

    .line 871
    :goto_2
    return v2

    .line 870
    :cond_4
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->j:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->i:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->r:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    throw v2

    .line 871
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private e(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 4
    .param p1, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 886
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 887
    .local v1, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .local v2, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_0
    if-ge v0, p1, :cond_1

    .line 888
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v3, :cond_0

    iget-object v1, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 887
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_0

    .line 889
    :cond_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b:Lkro;

    invoke-virtual {v3}, Lkro;->a()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    goto :goto_1

    .line 891
    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_1
    return-object v2
.end method

.method private e()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x6

    const/4 v8, -0x1

    const/4 v5, 0x1

    .line 360
    new-instance v2, Lkre;

    invoke-direct {v2, v3}, Lkre;-><init>(I)V

    .line 361
    .local v2, "jjtn000":Lkre;
    const/4 v0, 0x1

    .line 362
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3, v2}, Lkrs;->a(Lkrt;)V

    .line 363
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lkrt;)V

    .line 365
    const/4 v3, 0x6

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 366
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v3, v8, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 371
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/16 v4, 0xa

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v6, v3, v4

    .line 374
    :goto_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g()V

    .line 375
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3, v2, v5}, Lkrs;->a(Lkrt;Z)V

    .line 393
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    return-void

    .line 366
    :cond_0
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_0

    .line 3400
    :pswitch_0
    new-instance v6, Lkrl;

    const/4 v3, 0x7

    invoke-direct {v6, v3}, Lkrl;-><init>(I)V

    .line 3402
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3, v6}, Lkrs;->a(Lkrt;)V

    .line 3403
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lkrt;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3405
    const/16 v3, 0x8

    :try_start_2
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 3406
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h()V

    .line 3409
    :goto_2
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v3, v8, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v3

    :goto_3
    sparse-switch v3, :sswitch_data_0

    .line 3415
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/16 v4, 0xb

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v7, v3, v4

    .line 3433
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3450
    :try_start_3
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    const/4 v4, 0x1

    invoke-virtual {v3, v6, v4}, Lkrs;->a(Lkrt;Z)V

    .line 3451
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 376
    :catch_0
    move-exception v1

    .line 378
    .local v1, "jjte000":Ljava/lang/Throwable;
    :try_start_4
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3}, Lkrs;->b()V

    .line 379
    const/4 v0, 0x0

    .line 383
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_7

    .line 384
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 391
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 392
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v4, v2, v5}, Lkrs;->a(Lkrt;Z)V

    .line 393
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    :cond_1
    throw v3

    .line 3409
    :cond_2
    :try_start_5
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_3

    .line 3428
    :pswitch_1
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 3420
    :sswitch_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v3, v8, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v3

    :goto_4
    packed-switch v3, :pswitch_data_1

    .line 3425
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/16 v4, 0xc

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v7, v3, v4

    .line 3430
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 3431
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    .line 3434
    :catch_1
    move-exception v3

    .line 3436
    :try_start_6
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v4}, Lkrs;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3437
    const/4 v4, 0x0

    .line 3441
    :try_start_7
    instance-of v7, v3, Ljava/lang/RuntimeException;

    if-eqz v7, :cond_5

    .line 3442
    check-cast v3, Ljava/lang/RuntimeException;

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3449
    :catchall_1
    move-exception v3

    :goto_5
    if-eqz v4, :cond_3

    .line 3450
    :try_start_8
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lkrs;->a(Lkrt;Z)V

    .line 3451
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    :cond_3
    throw v3
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3420
    :cond_4
    :try_start_9
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_4

    .line 3444
    :cond_5
    :try_start_a
    instance-of v7, v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v7, :cond_6

    .line 3445
    check-cast v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v3

    .line 3447
    :cond_6
    check-cast v3, Ljava/lang/Error;

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 386
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_7
    :try_start_b
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_8

    .line 387
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 389
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_8
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 3449
    :catchall_2
    move-exception v3

    move v4, v5

    goto :goto_5

    .line 366
    .line 3409
    .line 3420
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method private f()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 458
    new-instance v0, Lkrk;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lkrk;-><init>(I)V

    .line 460
    .local v0, "jjtn000":Lkrk;
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v1, v0}, Lkrs;->a(Lkrt;)V

    .line 461
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lkrt;)V

    .line 465
    :sswitch_0
    :try_start_0
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 473
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/16 v2, 0xd

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v3, v1, v2

    .line 474
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 475
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :catchall_0
    move-exception v1

    .line 489
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v2, v0, v4}, Lkrs;->a(Lkrt;Z)V

    .line 490
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    throw v1

    .line 465
    :cond_0
    :try_start_1
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_0

    .line 467
    :sswitch_1
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 477
    :goto_1
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v1

    :goto_2
    sparse-switch v1, :sswitch_data_1

    .line 483
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/16 v2, 0xe

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v3, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v1, v0, v4}, Lkrs;->a(Lkrt;Z)V

    .line 490
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    return-void

    .line 470
    :sswitch_2
    const/16 v1, 0x1f

    :try_start_2
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_1

    .line 477
    :cond_1
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 465
    .line 477
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method private g()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v3, 0x9

    const/16 v10, 0x1f

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 497
    new-instance v2, Lkrb;

    invoke-direct {v2, v3}, Lkrb;-><init>(I)V

    .line 498
    .local v2, "jjtn000":Lkrb;
    const/4 v0, 0x1

    .line 499
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3, v2}, Lkrs;->a(Lkrt;)V

    .line 500
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lkrt;)V

    .line 3529
    :try_start_0
    new-instance v5, Lkrh;

    const/16 v3, 0xa

    invoke-direct {v5, v3}, Lkrh;-><init>(I)V

    .line 3531
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3, v5}, Lkrs;->a(Lkrt;)V

    .line 3532
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lkrt;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3534
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v3, v8, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 3542
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/16 v4, 0xf

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v6, v3, v4

    .line 3543
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 3544
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3582
    :catchall_0
    move-exception v3

    .line 3583
    :try_start_2
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lkrs;->a(Lkrt;Z)V

    .line 3584
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 505
    :catch_0
    move-exception v1

    .line 507
    .local v1, "jjte000":Ljava/lang/Throwable;
    :try_start_3
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3}, Lkrs;->b()V

    .line 508
    const/4 v0, 0x0

    .line 512
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_7

    .line 513
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 520
    :catchall_1
    move-exception v3

    if-eqz v0, :cond_0

    .line 521
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v4, v2, v9}, Lkrs;->a(Lkrt;Z)V

    .line 522
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    :cond_0
    throw v3

    .line 3534
    :cond_1
    :try_start_4
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_0

    .line 3536
    :sswitch_0
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    .line 3548
    :goto_1
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v4, v8, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v4

    :goto_2
    sparse-switch v4, :sswitch_data_1

    .line 3555
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/16 v4, 0x10

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v6, v3, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3583
    :try_start_5
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Lkrs;->a(Lkrt;Z)V

    .line 3584
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    .line 503
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 504
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 521
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3, v2, v9}, Lkrs;->a(Lkrt;Z)V

    .line 522
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    return-void

    .line 3539
    :sswitch_1
    const/16 v3, 0x1f

    :try_start_6
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    goto :goto_1

    .line 3548
    :cond_2
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_2

    .line 3558
    :sswitch_2
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v4, v8, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v4

    :goto_3
    packed-switch v4, :pswitch_data_0

    .line 3563
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/16 v6, 0x11

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v7, v4, v6

    .line 3566
    :goto_4
    iget v4, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-eq v4, v10, :cond_3

    iget-object v4, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v3, v3, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_5

    .line 3567
    :cond_3
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string/jumbo v4, "Words in local part must be separated by \'.\'"

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3558
    :cond_4
    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_3

    .line 3560
    :pswitch_0
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    goto :goto_4

    .line 3568
    :cond_5
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v3, v8, :cond_6

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v3

    :goto_5
    sparse-switch v3, :sswitch_data_2

    .line 3576
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/16 v4, 0x12

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v6, v3, v4

    .line 3577
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 3578
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v3

    .line 3568
    :cond_6
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_5

    .line 3570
    :sswitch_3
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    goto/16 :goto_1

    .line 3573
    :sswitch_4
    const/16 v3, 0x1f

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    goto/16 :goto_1

    .line 515
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_7
    :try_start_7
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v3, :cond_8

    .line 516
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 518
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_8
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3534
    .line 3548
    .line 3558
    .line 3568
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_2
        0xe -> :sswitch_2
        0x1f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0xe -> :sswitch_3
        0x1f -> :sswitch_4
    .end sparse-switch
.end method

.method private h()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 591
    new-instance v0, Lkrf;

    const/16 v2, 0xb

    invoke-direct {v0, v2}, Lkrf;-><init>(I)V

    .line 593
    .local v0, "jjtn000":Lkrf;
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v2, v0}, Lkrs;->a(Lkrt;)V

    .line 594
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a(Lkrt;)V

    .line 596
    :try_start_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 627
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/16 v3, 0x15

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v4, v2, v3

    .line 628
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 629
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    :catchall_0
    move-exception v2

    .line 633
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v3, v0, v6}, Lkrs;->a(Lkrt;Z)V

    .line 634
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    throw v2

    .line 596
    :cond_0
    :try_start_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_0

    .line 598
    :sswitch_0
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    .line 601
    .local v1, "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v2

    :goto_2
    sparse-switch v2, :sswitch_data_1

    .line 607
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/16 v3, 0x13

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :goto_3
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    invoke-virtual {v2, v0, v6}, Lkrs;->a(Lkrt;Z)V

    .line 634
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b(Lkrt;)V

    return-void

    .line 601
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :cond_1
    :try_start_2
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_2

    .line 610
    :sswitch_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    if-ne v2, v5, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l()I

    move-result v2

    :goto_4
    packed-switch v2, :pswitch_data_0

    .line 615
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->l:[I

    const/16 v3, 0x14

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    aput v4, v2, v3

    .line 618
    :goto_5
    iget-object v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3

    .line 619
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string/jumbo v3, "Atoms in domain names must be separated by \'.\'"

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 610
    :cond_2
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_4

    .line 612
    :pswitch_0
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    .line 613
    goto :goto_5

    .line 620
    :cond_3
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    goto :goto_1

    .line 624
    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/parser/Token;
    :sswitch_2
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 596
    .line 601
    .line 610
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x12 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_1
        0xe -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private i()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v5, 0x1f

    const/16 v7, 0x9

    const/16 v6, 0xe

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 674
    .line 3712
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 3713
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3714
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 3715
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 674
    :goto_0
    if-eqz v2, :cond_4

    .line 677
    :cond_0
    :goto_1
    return v0

    .line 3718
    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 4655
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 4656
    invoke-direct {p0, v7}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 4657
    :cond_2
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 4658
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4659
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 4660
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    .line 3719
    :goto_2
    if-eqz v2, :cond_1

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    move v2, v1

    .line 3721
    goto :goto_0

    :cond_3
    move v2, v1

    .line 4662
    goto :goto_2

    .line 675
    :cond_4
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4697
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 5686
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    .line 4698
    :goto_3
    if-eqz v2, :cond_8

    .line 4699
    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 4700
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d(I)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    .line 676
    :goto_4
    if-nez v2, :cond_0

    move v0, v1

    .line 677
    goto :goto_1

    .line 5689
    :cond_5
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 6667
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 6668
    invoke-direct {p0, v7}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 6669
    :cond_6
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    .line 5690
    :goto_5
    if-eqz v2, :cond_5

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    move v2, v1

    .line 5692
    goto :goto_3

    :cond_7
    move v2, v1

    .line 6670
    goto :goto_5

    :cond_8
    move v2, v1

    .line 4702
    goto :goto_4
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 681
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 682
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    .prologue
    .line 706
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 707
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 895
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->e:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez v0, :cond_0

    .line 896
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->d:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b:Lkro;

    invoke-virtual {v1}, Lkro;->a()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    .line 898
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->e:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->g:I

    goto :goto_0
.end method

.method private m()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 978
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->p:Z

    .line 979
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 981
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->o:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;

    aget-object v1, v2, v0

    .line 983
    .local v1, "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;
    :cond_0
    iget v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;->a:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k:I

    if-le v2, v3, :cond_1

    .line 984
    iget v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;->c:I

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->j:I

    iget-object v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;->b:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->h:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->i:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 985
    packed-switch v0, :pswitch_data_0

    .line 990
    :cond_1
    :goto_1
    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;->d:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;

    .line 991
    if-nez v1, :cond_0

    .line 979
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 986
    .restart local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->j()Z

    goto :goto_1

    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 987
    .restart local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;
    :pswitch_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->k()Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 994
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/parser/AddressListParser$a;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->p:Z

    .line 995
    return-void

    .line 985
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()Lkrd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 38
    .line 1085
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->b()V

    .line 1086
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->c(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 39
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->a:Lkrs;

    .line 2038
    iget-object v1, v1, Lkrs;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkrt;

    .line 39
    check-cast v1, Lkrd;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "tme":Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

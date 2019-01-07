.class public final Lgxt;
.super Ljava/lang/Object;
.source "JSONLexer.java"


# static fields
.field private static final A:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field

.field protected static final u:[I

.field public static final v:[C

.field static final w:[I

.field public static final x:[Z

.field public static final y:[Z

.field private static z:Z


# instance fields
.field protected a:I

.field protected b:I

.field public c:I

.field protected d:C

.field protected e:I

.field protected f:[C

.field protected g:I

.field protected h:Z

.field protected i:Z

.field protected j:I

.field protected k:Z

.field public l:Ljava/util/TimeZone;

.field public m:Ljava/util/Locale;

.field public n:Ljava/util/Calendar;

.field public o:I

.field protected final p:Ljava/lang/String;

.field protected final q:I

.field protected r:Ljava/lang/String;

.field public s:Z

.field protected t:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x41

    const/16 v11, 0x39

    const/4 v8, 0x0

    const/16 v10, 0x100

    const/4 v7, 0x1

    .line 36
    const/4 v5, -0x1

    .line 39
    .local v5, "version":I
    :try_start_0
    const-string/jumbo v6, "android.os.Build$VERSION"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 40
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v6, "SDK_INT"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 41
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 46
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    move v6, v7

    :goto_1
    sput-boolean v6, Lgxt;->z:Z

    .line 79
    new-instance v6, Ljava/lang/ThreadLocal;

    invoke-direct {v6}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v6, Lgxt;->A:Ljava/lang/ThreadLocal;

    .line 1942
    const/16 v6, 0x67

    new-array v6, v6, [I

    sput-object v6, Lgxt;->u:[I

    .line 1945
    const/16 v3, 0x30

    .local v3, "i":I
    :goto_2
    if-gt v3, v11, :cond_1

    .line 1946
    sget-object v6, Lgxt;->u:[I

    add-int/lit8 v9, v3, -0x30

    aput v9, v6, v3

    .line 1945
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3    # "i":I
    :cond_0
    move v6, v8

    .line 46
    goto :goto_1

    .line 1949
    .restart local v3    # "i":I
    :cond_1
    const/16 v3, 0x61

    :goto_3
    const/16 v6, 0x66

    if-gt v3, v6, :cond_2

    .line 1950
    sget-object v6, Lgxt;->u:[I

    add-int/lit8 v9, v3, -0x61

    add-int/lit8 v9, v9, 0xa

    aput v9, v6, v3

    .line 1949
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1952
    :cond_2
    const/16 v3, 0x41

    :goto_4
    const/16 v6, 0x46

    if-gt v3, v6, :cond_3

    .line 1953
    sget-object v6, Lgxt;->u:[I

    add-int/lit8 v9, v3, -0x41

    add-int/lit8 v9, v9, 0xa

    aput v9, v6, v3

    .line 1952
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 4715
    :cond_3
    const-string/jumbo v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    sput-object v6, Lgxt;->v:[C

    .line 4716
    new-array v6, v10, [I

    .line 4718
    sput-object v6, Lgxt;->w:[I

    const/4 v9, -0x1

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([II)V

    .line 4719
    const/4 v3, 0x0

    sget-object v6, Lgxt;->v:[C

    array-length v4, v6

    .local v4, "iS":I
    :goto_5
    if-ge v3, v4, :cond_4

    .line 4720
    sget-object v6, Lgxt;->w:[I

    sget-object v9, Lgxt;->v:[C

    aget-char v9, v9, v3

    aput v3, v6, v9

    .line 4719
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4722
    :cond_4
    sget-object v6, Lgxt;->w:[I

    const/16 v9, 0x3d

    aput v8, v6, v9

    .line 4781
    new-array v6, v10, [Z

    sput-object v6, Lgxt;->x:[Z

    .line 4783
    const/4 v0, 0x0

    .local v0, "c":C
    :goto_6
    if-ge v0, v10, :cond_8

    .line 4784
    if-lt v0, v12, :cond_6

    const/16 v6, 0x5a

    if-gt v0, v6, :cond_6

    .line 4785
    sget-object v6, Lgxt;->x:[Z

    aput-boolean v7, v6, v0

    .line 4783
    :cond_5
    :goto_7
    add-int/lit8 v6, v0, 0x1

    int-to-char v0, v6

    goto :goto_6

    .line 4786
    :cond_6
    const/16 v6, 0x61

    if-lt v0, v6, :cond_7

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_7

    .line 4787
    sget-object v6, Lgxt;->x:[Z

    aput-boolean v7, v6, v0

    goto :goto_7

    .line 4788
    :cond_7
    const/16 v6, 0x5f

    if-ne v0, v6, :cond_5

    .line 4789
    sget-object v6, Lgxt;->x:[Z

    aput-boolean v7, v6, v0

    goto :goto_7

    .line 4794
    :cond_8
    new-array v6, v10, [Z

    sput-object v6, Lgxt;->y:[Z

    .line 4797
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v10, :cond_d

    .line 4798
    if-lt v0, v12, :cond_a

    const/16 v6, 0x5a

    if-gt v0, v6, :cond_a

    .line 4799
    sget-object v6, Lgxt;->y:[Z

    aput-boolean v7, v6, v0

    .line 4797
    :cond_9
    :goto_9
    add-int/lit8 v6, v0, 0x1

    int-to-char v0, v6

    goto :goto_8

    .line 4800
    :cond_a
    const/16 v6, 0x61

    if-lt v0, v6, :cond_b

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_b

    .line 4801
    sget-object v6, Lgxt;->y:[Z

    aput-boolean v7, v6, v0

    goto :goto_9

    .line 4802
    :cond_b
    const/16 v6, 0x5f

    if-ne v0, v6, :cond_c

    .line 4803
    sget-object v6, Lgxt;->y:[Z

    aput-boolean v7, v6, v0

    goto :goto_9

    .line 4804
    :cond_c
    const/16 v6, 0x30

    if-lt v0, v6, :cond_9

    if-gt v0, v11, :cond_9

    .line 4805
    sget-object v6, Lgxt;->y:[Z

    aput-boolean v7, v6, v0

    goto :goto_9

    .line 4808
    :cond_d
    return-void

    .end local v0    # "c":C
    .end local v3    # "i":I
    .end local v4    # "iS":I
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 90
    sget v0, Lgxk;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lgxt;-><init>(Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "features"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v1, Lgxk;->DEFAULT_PARSER_FEATURE:I

    iput v1, p0, Lgxt;->c:I

    .line 63
    iput-boolean v3, p0, Lgxt;->h:Z

    .line 64
    iput-boolean v3, p0, Lgxt;->i:Z

    .line 73
    sget-object v1, Lgxk;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v1, p0, Lgxt;->l:Ljava/util/TimeZone;

    .line 74
    sget-object v1, Lgxk;->defaultLocale:Ljava/util/Locale;

    iput-object v1, p0, Lgxt;->m:Ljava/util/Locale;

    .line 75
    iput-object v2, p0, Lgxt;->n:Ljava/util/Calendar;

    .line 77
    iput v3, p0, Lgxt;->o:I

    .line 102
    sget-object v1, Lgxt;->A:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lgxt;->f:[C

    .line 104
    iget-object v1, p0, Lgxt;->f:[C

    if-nez v1, :cond_0

    .line 105
    const/16 v1, 0x200

    new-array v1, v1, [C

    iput-object v1, p0, Lgxt;->f:[C

    .line 108
    :cond_0
    iput p2, p0, Lgxt;->c:I

    .line 110
    iput-object p1, p0, Lgxt;->p:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lgxt;->q:I

    .line 112
    const/4 v1, -0x1

    iput v1, p0, Lgxt;->e:I

    .line 116
    iget v1, p0, Lgxt;->e:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 117
    .local v0, "index":I
    iget v1, p0, Lgxt;->q:I

    if-lt v0, v1, :cond_2

    const/16 v1, 0x1a

    .line 119
    :goto_0
    iput-char v1, p0, Lgxt;->d:C

    .line 121
    iget-char v1, p0, Lgxt;->d:C

    const v4, 0xfeff

    if-ne v1, v4, :cond_1

    .line 122
    invoke-virtual {p0}, Lgxt;->c()C

    .line 125
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_3

    const-string/jumbo v1, ""

    :goto_1
    iput-object v1, p0, Lgxt;->r:Ljava/lang/String;

    .line 128
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lgxt;->s:Z

    .line 129
    return-void

    .line 117
    :cond_2
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 125
    goto :goto_1

    :cond_4
    move v1, v3

    .line 128
    goto :goto_2
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I
    .param p3, "features"    # I

    .prologue
    .line 98
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lgxt;-><init>(Ljava/lang/String;I)V

    .line 99
    return-void
.end method

.method private final a(II)Ljava/lang/String;
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1225
    iget-object v1, p0, Lgxt;->f:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 1226
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lgxt;->f:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1227
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lgxt;->f:[C

    invoke-direct {v1, v2, v4, p2}, Ljava/lang/String;-><init>([CII)V

    .line 1231
    :goto_0
    return-object v1

    .line 1229
    :cond_0
    new-array v0, p2, [C

    .line 1230
    .local v0, "chars":[C
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1231
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private static a([CI)Ljava/lang/String;
    .locals 13
    .param p0, "chars"    # [C
    .param p1, "chars_len"    # I

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 825
    new-array v4, p1, [C

    .line 826
    .local v4, "sbuf":[C
    const/4 v2, 0x0

    .line 827
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "len":I
    .local v3, "len":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 828
    aget-char v0, p0, v1

    .line 830
    .local v0, "ch":C
    const/16 v5, 0x5c

    if-eq v0, v5, :cond_0

    .line 831
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v0, v4, v3

    .line 827
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "len":I
    .restart local v3    # "len":I
    goto :goto_0

    .line 834
    :cond_0
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p0, v1

    .line 836
    sparse-switch v0, :sswitch_data_0

    .line 903
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "unclosed.str.lit"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 838
    :sswitch_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v8, v4, v3

    goto :goto_1

    .line 841
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_1
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v9, v4, v3

    goto :goto_1

    .line 844
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_2
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v10, v4, v3

    goto :goto_1

    .line 847
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_3
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v11, v4, v3

    goto :goto_1

    .line 850
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_4
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    aput-char v12, v4, v3

    goto :goto_1

    .line 853
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_5
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x5

    aput-char v5, v4, v3

    goto :goto_1

    .line 856
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_6
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x6

    aput-char v5, v4, v3

    goto :goto_1

    .line 859
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_7
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/4 v5, 0x7

    aput-char v5, v4, v3

    goto :goto_1

    .line 862
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_8
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x8

    aput-char v5, v4, v3

    goto :goto_1

    .line 865
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_9
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x9

    aput-char v5, v4, v3

    goto :goto_1

    .line 868
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_a
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xa

    aput-char v5, v4, v3

    goto :goto_1

    .line 871
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_b
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xb

    aput-char v5, v4, v3

    goto :goto_1

    .line 875
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_c
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xc

    aput-char v5, v4, v3

    goto :goto_1

    .line 878
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_d
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0xd

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 881
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_e
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x22

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 884
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_f
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x27

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 887
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_10
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x2f

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 890
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_11
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    const/16 v5, 0x5c

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 893
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_12
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    sget-object v5, Lgxt;->u:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v6, p0, v1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x10

    sget-object v6, Lgxt;->u:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aget v6, v6, v7

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 896
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :sswitch_13
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "len":I
    .restart local v2    # "len":I
    new-instance v5, Ljava/lang/String;

    new-array v6, v12, [C

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v8

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v9

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v10

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v11

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    .line 906
    .end local v0    # "ch":C
    .end local v2    # "len":I
    .restart local v3    # "len":I
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    .line 836
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method private a(CCC)V
    .locals 5
    .param p1, "timeZoneFlag"    # C
    .param p2, "t0"    # C
    .param p3, "t1"    # C

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 4601
    add-int/lit8 v3, p2, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p3, -0x30

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit16 v2, v3, 0x3e8

    .line 4602
    .local v2, "timeZoneOffset":I
    const/16 v3, 0x2d

    if-ne p1, v3, :cond_0

    .line 4603
    neg-int v2, v2

    .line 4606
    :cond_0
    iget-object v3, p0, Lgxt;->n:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 4607
    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 4608
    .local v1, "timeZoneIDs":[Ljava/lang/String;
    array-length v3, v1

    if-lez v3, :cond_1

    .line 4609
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 4610
    .local v0, "timeZone":Ljava/util/TimeZone;
    iget-object v3, p0, Lgxt;->n:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4613
    .end local v0    # "timeZone":Ljava/util/TimeZone;
    .end local v1    # "timeZoneIDs":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private a(CCCCCC)V
    .locals 5
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 4592
    add-int/lit8 v3, p1, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p2, -0x30

    add-int v0, v3, v4

    .line 4593
    .local v0, "hour":I
    add-int/lit8 v3, p3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p4, -0x30

    add-int v1, v3, v4

    .line 4594
    .local v1, "minute":I
    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int v2, v3, v4

    .line 4595
    .local v2, "seconds":I
    iget-object v3, p0, Lgxt;->n:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 4596
    iget-object v3, p0, Lgxt;->n:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 4597
    iget-object v3, p0, Lgxt;->n:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 4598
    return-void
.end method

.method private a(CCCCCCCC)V
    .locals 5
    .param p1, "y0"    # C
    .param p2, "y1"    # C
    .param p3, "y2"    # C
    .param p4, "y3"    # C
    .param p5, "M0"    # C
    .param p6, "M1"    # C
    .param p7, "d0"    # C
    .param p8, "d1"    # C

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 4660
    iget-object v3, p0, Lgxt;->l:Ljava/util/TimeZone;

    iget-object v4, p0, Lgxt;->m:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lgxt;->n:Ljava/util/Calendar;

    .line 4661
    add-int/lit8 v3, p1, -0x30

    mul-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v4, p2, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int/lit8 v4, p3, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, p4, -0x30

    add-int v2, v3, v4

    .line 4662
    .local v2, "year":I
    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 4663
    .local v1, "month":I
    add-int/lit8 v3, p7, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p8, -0x30

    add-int v0, v3, v4

    .line 4664
    .local v0, "day":I
    iget-object v3, p0, Lgxt;->n:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 4665
    iget-object v3, p0, Lgxt;->n:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 4666
    iget-object v3, p0, Lgxt;->n:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 4667
    return-void
.end method

.method private static a(CCCCCCII)Z
    .locals 6
    .param p0, "y0"    # C
    .param p1, "y1"    # C
    .param p2, "y2"    # C
    .param p3, "y3"    # C
    .param p4, "M0"    # C
    .param p5, "M1"    # C
    .param p6, "d0"    # I
    .param p7, "d1"    # I

    .prologue
    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 4670
    if-lt p0, v3, :cond_0

    const/16 v1, 0x33

    if-le p0, v1, :cond_1

    .line 4711
    :cond_0
    :goto_0
    return v0

    .line 4673
    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v4, :cond_0

    .line 4676
    if-lt p2, v2, :cond_0

    if-gt p2, v4, :cond_0

    .line 4679
    if-lt p3, v2, :cond_0

    if-gt p3, v4, :cond_0

    .line 4683
    if-ne p4, v2, :cond_4

    .line 4684
    if-lt p5, v3, :cond_0

    if-gt p5, v4, :cond_0

    .line 4695
    :cond_2
    if-ne p6, v2, :cond_5

    .line 4696
    if-lt p7, v3, :cond_0

    if-gt p7, v4, :cond_0

    .line 4711
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 4687
    :cond_4
    if-ne p4, v3, :cond_0

    .line 4688
    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v5, :cond_2

    goto :goto_0

    .line 4699
    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v5, :cond_7

    .line 4700
    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v4, :cond_3

    goto :goto_0

    .line 4703
    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    .line 4704
    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method

.method private a(ZI)Z
    .locals 73
    .param p1, "strict"    # Z
    .param p2, "rest"    # I

    .prologue
    .line 4171
    if-nez p1, :cond_4

    const/16 v18, 0xd

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 4172
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v31

    .line 4173
    .local v31, "c0":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v32

    .line 4174
    .local v32, "c1":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v37

    .line 4175
    .local v37, "c2":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v38

    .line 4176
    .local v38, "c3":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v39

    .line 4177
    .local v39, "c4":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v40

    .line 4179
    .local v40, "c5":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, p2

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v46

    .line 4180
    .local v46, "c_r0":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, p2

    add-int/lit8 v18, v18, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v47

    .line 4181
    .local v47, "c_r1":C
    const/16 v18, 0x2f

    move/from16 v0, v31

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x44

    move/from16 v0, v32

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x61

    move/from16 v0, v37

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x74

    move/from16 v0, v38

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x65

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x28

    move/from16 v0, v40

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x2f

    move/from16 v0, v46

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x29

    move/from16 v0, v47

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 4183
    const/16 v59, -0x1

    .line 4184
    .local v59, "plusIndex":I
    const/16 v52, 0x6

    .local v52, "i":I
    :goto_0
    move/from16 v0, v52

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 4185
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v52

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v30

    .line 4186
    .local v30, "c":C
    const/16 v18, 0x2b

    move/from16 v0, v30

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 4187
    move/from16 v59, v52

    .line 4184
    :cond_0
    add-int/lit8 v52, v52, 0x1

    goto :goto_0

    .line 4188
    :cond_1
    const/16 v18, 0x30

    move/from16 v0, v30

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    const/16 v18, 0x39

    move/from16 v0, v30

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 4192
    .end local v30    # "c":C
    :cond_2
    const/16 v18, -0x1

    move/from16 v0, v59

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 4193
    const/16 v18, 0x0

    .line 4588
    .end local v31    # "c0":C
    .end local v32    # "c1":C
    .end local v37    # "c2":C
    .end local v38    # "c3":C
    .end local v39    # "c4":C
    .end local v40    # "c5":C
    .end local v46    # "c_r0":C
    .end local v47    # "c_r1":C
    .end local v52    # "i":I
    .end local v59    # "plusIndex":I
    :goto_1
    return v18

    .line 4195
    .restart local v31    # "c0":C
    .restart local v32    # "c1":C
    .restart local v37    # "c2":C
    .restart local v38    # "c3":C
    .restart local v39    # "c4":C
    .restart local v40    # "c5":C
    .restart local v46    # "c_r0":C
    .restart local v47    # "c_r1":C
    .restart local v52    # "i":I
    .restart local v59    # "plusIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v58, v18, 0x6

    .line 4196
    .local v58, "offset":I
    sub-int v18, v59, v58

    move-object/from16 v0, p0

    move/from16 v1, v58

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lgxt;->a(II)Ljava/lang/String;

    move-result-object v57

    .line 4197
    .local v57, "numberText":Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v54

    .line 4199
    .local v54, "millis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->l:Ljava/util/TimeZone;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->m:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lgxt;->n:Ljava/util/Calendar;

    .line 4200
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4202
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 4203
    const/16 v18, 0x1

    goto :goto_1

    .line 4208
    .end local v31    # "c0":C
    .end local v32    # "c1":C
    .end local v37    # "c2":C
    .end local v38    # "c3":C
    .end local v39    # "c4":C
    .end local v40    # "c5":C
    .end local v46    # "c_r0":C
    .end local v47    # "c_r1":C
    .end local v52    # "i":I
    .end local v54    # "millis":J
    .end local v57    # "numberText":Ljava/lang/String;
    .end local v58    # "offset":I
    .end local v59    # "plusIndex":I
    :cond_4
    const/16 v18, 0x8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v18, 0xe

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v18, 0x10

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    .line 4210
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v33

    .local v33, "c10":C
    const/16 v18, 0x54

    move/from16 v0, v33

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v18, 0x20

    move/from16 v0, v33

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .end local v33    # "c10":C
    :cond_5
    const/16 v18, 0x11

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x6

    .line 4211
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1b

    .line 4212
    :cond_6
    if-eqz p1, :cond_7

    .line 4213
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4218
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v31

    .line 4219
    .restart local v31    # "c0":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v32

    .line 4220
    .restart local v32    # "c1":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v37

    .line 4221
    .restart local v37    # "c2":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v38

    .line 4222
    .restart local v38    # "c3":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v39

    .line 4223
    .restart local v39    # "c4":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v40

    .line 4224
    .restart local v40    # "c5":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v41

    .line 4225
    .local v41, "c6":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v42

    .line 4226
    .local v42, "c7":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v43

    .line 4228
    .local v43, "c8":C
    const/16 v18, 0x2d

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v18, 0x2d

    move/from16 v0, v42

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v45, 0x1

    .line 4229
    .local v45, "c_47":Z
    :goto_2
    if-eqz v45, :cond_a

    const/16 v18, 0x10

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    const/16 v61, 0x1

    .line 4230
    .local v61, "sperate16":Z
    :goto_3
    if-eqz v45, :cond_b

    const/16 v18, 0x11

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    const/16 v62, 0x1

    .line 4231
    .local v62, "sperate17":Z
    :goto_4
    if-nez v62, :cond_8

    if-eqz v61, :cond_c

    .line 4232
    :cond_8
    move/from16 v4, v31

    .line 4233
    .local v4, "y0":C
    move/from16 v5, v32

    .line 4234
    .local v5, "y1":C
    move/from16 v6, v37

    .line 4235
    .local v6, "y2":C
    move/from16 v7, v38

    .line 4236
    .local v7, "y3":C
    move/from16 v8, v40

    .line 4237
    .local v8, "M0":C
    move/from16 v9, v41

    .line 4238
    .local v9, "M1":C
    move/from16 v10, v43

    .line 4239
    .local v10, "d0":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v11

    .line 4252
    .local v11, "d1":C
    :goto_5
    invoke-static/range {v4 .. v11}, Lgxt;->a(CCCCCCII)Z

    move-result v18

    if-nez v18, :cond_d

    .line 4253
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4228
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    .end local v45    # "c_47":Z
    .end local v61    # "sperate16":Z
    .end local v62    # "sperate17":Z
    :cond_9
    const/16 v45, 0x0

    goto :goto_2

    .line 4229
    .restart local v45    # "c_47":Z
    :cond_a
    const/16 v61, 0x0

    goto :goto_3

    .line 4230
    .restart local v61    # "sperate16":Z
    :cond_b
    const/16 v62, 0x0

    goto :goto_4

    .line 4241
    .restart local v62    # "sperate17":Z
    :cond_c
    move/from16 v4, v31

    .line 4242
    .restart local v4    # "y0":C
    move/from16 v5, v32

    .line 4243
    .restart local v5    # "y1":C
    move/from16 v6, v37

    .line 4244
    .restart local v6    # "y2":C
    move/from16 v7, v38

    .line 4245
    .restart local v7    # "y3":C
    move/from16 v8, v39

    .line 4246
    .restart local v8    # "M0":C
    move/from16 v9, v40

    .line 4247
    .restart local v9    # "M1":C
    move/from16 v10, v41

    .line 4248
    .restart local v10    # "d0":C
    move/from16 v11, v42

    .restart local v11    # "d1":C
    goto :goto_5

    :cond_d
    move-object/from16 v12, p0

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    .line 4256
    invoke-direct/range {v12 .. v20}, Lgxt;->a(CCCCCCCC)V

    .line 4259
    const/16 v18, 0x8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a

    .line 4260
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v44

    .line 4261
    .local v44, "c9":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v33

    .line 4262
    .restart local v33    # "c10":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v34

    .line 4263
    .local v34, "c11":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v35

    .line 4264
    .local v35, "c12":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v36

    .line 4268
    .local v36, "c13":C
    if-eqz v62, :cond_e

    const/16 v18, 0x54

    move/from16 v0, v33

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    const/16 v18, 0x3a

    move/from16 v0, v36

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v18

    const/16 v19, 0x5a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    :cond_e
    if-eqz v61, :cond_11

    const/16 v18, 0x20

    move/from16 v0, v33

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    const/16 v18, 0x54

    move/from16 v0, v33

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    :cond_f
    const/16 v18, 0x3a

    move/from16 v0, v36

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 4270
    :cond_10
    move/from16 v12, v34

    .line 4271
    .local v12, "h0":C
    move/from16 v13, v35

    .line 4272
    .local v13, "h1":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v14

    .line 4273
    .local v14, "m0":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v15

    .line 4274
    .local v15, "m1":C
    const/16 v16, 0x30

    .line 4275
    .local v16, "s0":C
    const/16 v17, 0x30

    .line 4285
    .local v17, "s1":C
    :goto_6
    invoke-static/range {v12 .. v17}, Lgxt;->b(CCCCCC)Z

    move-result v18

    if-nez v18, :cond_12

    .line 4286
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4277
    .end local v12    # "h0":C
    .end local v13    # "h1":C
    .end local v14    # "m0":C
    .end local v15    # "m1":C
    .end local v16    # "s0":C
    .end local v17    # "s1":C
    :cond_11
    move/from16 v12, v43

    .line 4278
    .restart local v12    # "h0":C
    move/from16 v13, v44

    .line 4279
    .restart local v13    # "h1":C
    move/from16 v14, v33

    .line 4280
    .restart local v14    # "m0":C
    move/from16 v15, v34

    .line 4281
    .restart local v15    # "m1":C
    move/from16 v16, v35

    .line 4282
    .restart local v16    # "s0":C
    move/from16 v17, v36

    .restart local v17    # "s1":C
    goto :goto_6

    .line 4289
    :cond_12
    const/16 v18, 0x11

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    if-nez v62, :cond_19

    .line 4290
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v27

    .line 4291
    .local v27, "S0":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v28

    .line 4292
    .local v28, "S1":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v29

    .line 4293
    .local v29, "S2":C
    const/16 v18, 0x30

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_13

    const/16 v18, 0x39

    move/from16 v0, v27

    move/from16 v1, v18

    if-le v0, v1, :cond_14

    .line 4294
    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4296
    :cond_14
    const/16 v18, 0x30

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_15

    const/16 v18, 0x39

    move/from16 v0, v28

    move/from16 v1, v18

    if-le v0, v1, :cond_16

    .line 4297
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4299
    :cond_16
    const/16 v18, 0x30

    move/from16 v0, v29

    move/from16 v1, v18

    if-lt v0, v1, :cond_17

    const/16 v18, 0x39

    move/from16 v0, v29

    move/from16 v1, v18

    if-le v0, v1, :cond_18

    .line 4300
    :cond_17
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4303
    :cond_18
    add-int/lit8 v18, v27, -0x30

    mul-int/lit8 v18, v18, 0x64

    add-int/lit8 v19, v28, -0x30

    mul-int/lit8 v19, v19, 0xa

    add-int v18, v18, v19

    add-int/lit8 v19, v29, -0x30

    add-int v54, v18, v19

    .line 4308
    .end local v27    # "S0":C
    .end local v28    # "S1":C
    .end local v29    # "S2":C
    .local v54, "millis":I
    :goto_7
    add-int/lit8 v18, v12, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v13, -0x30

    add-int v51, v18, v19

    .line 4309
    .local v51, "hour":I
    add-int/lit8 v18, v14, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v15, -0x30

    add-int v56, v18, v19

    .line 4310
    .local v56, "minute":I
    add-int/lit8 v18, v16, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v17, -0x30

    add-int v60, v18, v19

    .line 4318
    .end local v12    # "h0":C
    .end local v13    # "h1":C
    .end local v14    # "m0":C
    .end local v15    # "m1":C
    .end local v16    # "s0":C
    .end local v17    # "s1":C
    .end local v33    # "c10":C
    .end local v34    # "c11":C
    .end local v35    # "c12":C
    .end local v36    # "c13":C
    .end local v44    # "c9":C
    .local v60, "seconds":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4319
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4320
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4321
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4323
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 4324
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 4305
    .end local v51    # "hour":I
    .end local v54    # "millis":I
    .end local v56    # "minute":I
    .end local v60    # "seconds":I
    .restart local v12    # "h0":C
    .restart local v13    # "h1":C
    .restart local v14    # "m0":C
    .restart local v15    # "m1":C
    .restart local v16    # "s0":C
    .restart local v17    # "s1":C
    .restart local v33    # "c10":C
    .restart local v34    # "c11":C
    .restart local v35    # "c12":C
    .restart local v36    # "c13":C
    .restart local v44    # "c9":C
    :cond_19
    const/16 v54, 0x0

    .restart local v54    # "millis":I
    goto :goto_7

    .line 4312
    .end local v12    # "h0":C
    .end local v13    # "h1":C
    .end local v14    # "m0":C
    .end local v15    # "m1":C
    .end local v16    # "s0":C
    .end local v17    # "s1":C
    .end local v33    # "c10":C
    .end local v34    # "c11":C
    .end local v35    # "c12":C
    .end local v36    # "c13":C
    .end local v44    # "c9":C
    .end local v54    # "millis":I
    :cond_1a
    const/16 v51, 0x0

    .line 4313
    .restart local v51    # "hour":I
    const/16 v56, 0x0

    .line 4314
    .restart local v56    # "minute":I
    const/16 v60, 0x0

    .line 4315
    .restart local v60    # "seconds":I
    const/16 v54, 0x0

    .restart local v54    # "millis":I
    goto :goto_8

    .line 4327
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    .end local v31    # "c0":C
    .end local v32    # "c1":C
    .end local v37    # "c2":C
    .end local v38    # "c3":C
    .end local v39    # "c4":C
    .end local v40    # "c5":C
    .end local v41    # "c6":C
    .end local v42    # "c7":C
    .end local v43    # "c8":C
    .end local v45    # "c_47":Z
    .end local v51    # "hour":I
    .end local v54    # "millis":I
    .end local v56    # "minute":I
    .end local v60    # "seconds":I
    .end local v61    # "sperate16":Z
    .end local v62    # "sperate17":Z
    :cond_1b
    const/16 v18, 0x9

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_1c

    .line 4328
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4331
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v31

    .line 4332
    .restart local v31    # "c0":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v32

    .line 4333
    .restart local v32    # "c1":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v37

    .line 4334
    .restart local v37    # "c2":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v38

    .line 4335
    .restart local v38    # "c3":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v39

    .line 4336
    .restart local v39    # "c4":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v40

    .line 4337
    .restart local v40    # "c5":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v41

    .line 4338
    .restart local v41    # "c6":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v42

    .line 4339
    .restart local v42    # "c7":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v43

    .line 4340
    .restart local v43    # "c8":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v44

    .line 4342
    .restart local v44    # "c9":C
    const/16 v48, 0xa

    .line 4344
    .local v48, "date_len":I
    const/16 v18, 0x2d

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d

    const/16 v18, 0x2d

    move/from16 v0, v42

    move/from16 v1, v18

    if-eq v0, v1, :cond_1e

    :cond_1d
    const/16 v18, 0x2f

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    const/16 v18, 0x2f

    move/from16 v0, v42

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    .line 4347
    :cond_1e
    move/from16 v4, v31

    .line 4348
    .restart local v4    # "y0":C
    move/from16 v5, v32

    .line 4349
    .restart local v5    # "y1":C
    move/from16 v6, v37

    .line 4350
    .restart local v6    # "y2":C
    move/from16 v7, v38

    .line 4351
    .restart local v7    # "y3":C
    move/from16 v8, v40

    .line 4352
    .restart local v8    # "M0":C
    move/from16 v9, v41

    .line 4353
    .restart local v9    # "M1":C
    move/from16 v10, v43

    .line 4354
    .restart local v10    # "d0":C
    move/from16 v11, v44

    .line 4424
    .restart local v11    # "d1":C
    :goto_9
    invoke-static/range {v4 .. v11}, Lgxt;->a(CCCCCCII)Z

    move-result v18

    if-nez v18, :cond_33

    .line 4425
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4355
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_1f
    const/16 v18, 0x2d

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_21

    const/16 v18, 0x2d

    move/from16 v0, v41

    move/from16 v1, v18

    if-ne v0, v1, :cond_21

    .line 4357
    move/from16 v4, v31

    .line 4358
    .restart local v4    # "y0":C
    move/from16 v5, v32

    .line 4359
    .restart local v5    # "y1":C
    move/from16 v6, v37

    .line 4360
    .restart local v6    # "y2":C
    move/from16 v7, v38

    .line 4361
    .restart local v7    # "y3":C
    const/16 v8, 0x30

    .line 4362
    .restart local v8    # "M0":C
    move/from16 v9, v40

    .line 4364
    .restart local v9    # "M1":C
    const/16 v18, 0x20

    move/from16 v0, v43

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    .line 4365
    const/16 v10, 0x30

    .line 4366
    .restart local v10    # "d0":C
    move/from16 v11, v42

    .line 4367
    .restart local v11    # "d1":C
    const/16 v48, 0x8

    goto :goto_9

    .line 4369
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_20
    move/from16 v10, v42

    .line 4370
    .restart local v10    # "d0":C
    move/from16 v11, v43

    .line 4371
    .restart local v11    # "d1":C
    const/16 v48, 0x9

    goto :goto_9

    .line 4373
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_21
    const/16 v18, 0x2e

    move/from16 v0, v37

    move/from16 v1, v18

    if-ne v0, v1, :cond_22

    const/16 v18, 0x2e

    move/from16 v0, v40

    move/from16 v1, v18

    if-eq v0, v1, :cond_23

    :cond_22
    const/16 v18, 0x2d

    move/from16 v0, v37

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    const/16 v18, 0x2d

    move/from16 v0, v40

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    .line 4376
    :cond_23
    move/from16 v10, v31

    .line 4377
    .restart local v10    # "d0":C
    move/from16 v11, v32

    .line 4378
    .restart local v11    # "d1":C
    move/from16 v8, v38

    .line 4379
    .restart local v8    # "M0":C
    move/from16 v9, v39

    .line 4380
    .restart local v9    # "M1":C
    move/from16 v4, v41

    .line 4381
    .restart local v4    # "y0":C
    move/from16 v5, v42

    .line 4382
    .restart local v5    # "y1":C
    move/from16 v6, v43

    .line 4383
    .restart local v6    # "y2":C
    move/from16 v7, v44

    .restart local v7    # "y3":C
    goto :goto_9

    .line 4385
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_24
    const/16 v18, 0x5e74

    move/from16 v0, v39

    move/from16 v1, v18

    if-eq v0, v1, :cond_25

    const v18, 0xb144

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_32

    .line 4386
    :cond_25
    move/from16 v4, v31

    .line 4387
    .restart local v4    # "y0":C
    move/from16 v5, v32

    .line 4388
    .restart local v5    # "y1":C
    move/from16 v6, v37

    .line 4389
    .restart local v6    # "y2":C
    move/from16 v7, v38

    .line 4391
    .restart local v7    # "y3":C
    const/16 v18, 0x6708

    move/from16 v0, v42

    move/from16 v1, v18

    if-eq v0, v1, :cond_26

    const v18, 0xc6d4

    move/from16 v0, v42

    move/from16 v1, v18

    if-ne v0, v1, :cond_2b

    .line 4392
    :cond_26
    move/from16 v8, v40

    .line 4393
    .restart local v8    # "M0":C
    move/from16 v9, v41

    .line 4394
    .restart local v9    # "M1":C
    const/16 v18, 0x65e5

    move/from16 v0, v44

    move/from16 v1, v18

    if-eq v0, v1, :cond_27

    const v18, 0xc77c

    move/from16 v0, v44

    move/from16 v1, v18

    if-ne v0, v1, :cond_28

    .line 4395
    :cond_27
    const/16 v10, 0x30

    .line 4396
    .restart local v10    # "d0":C
    move/from16 v11, v43

    .restart local v11    # "d1":C
    goto/16 :goto_9

    .line 4397
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v18

    const/16 v19, 0x65e5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v18

    const v19, 0xc77c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2a

    .line 4398
    :cond_29
    move/from16 v10, v43

    .line 4399
    .restart local v10    # "d0":C
    move/from16 v11, v44

    .line 4400
    .restart local v11    # "d1":C
    const/16 v48, 0xb

    goto/16 :goto_9

    .line 4402
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_2a
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4404
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    :cond_2b
    const/16 v18, 0x6708

    move/from16 v0, v41

    move/from16 v1, v18

    if-eq v0, v1, :cond_2c

    const v18, 0xc6d4

    move/from16 v0, v41

    move/from16 v1, v18

    if-ne v0, v1, :cond_31

    .line 4405
    :cond_2c
    const/16 v8, 0x30

    .line 4406
    .restart local v8    # "M0":C
    move/from16 v9, v40

    .line 4407
    .restart local v9    # "M1":C
    const/16 v18, 0x65e5

    move/from16 v0, v43

    move/from16 v1, v18

    if-eq v0, v1, :cond_2d

    const v18, 0xc77c

    move/from16 v0, v43

    move/from16 v1, v18

    if-ne v0, v1, :cond_2e

    .line 4408
    :cond_2d
    const/16 v10, 0x30

    .line 4409
    .restart local v10    # "d0":C
    move/from16 v11, v42

    .restart local v11    # "d1":C
    goto/16 :goto_9

    .line 4410
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_2e
    const/16 v18, 0x65e5

    move/from16 v0, v44

    move/from16 v1, v18

    if-eq v0, v1, :cond_2f

    const v18, 0xc77c

    move/from16 v0, v44

    move/from16 v1, v18

    if-ne v0, v1, :cond_30

    .line 4411
    :cond_2f
    move/from16 v10, v42

    .line 4412
    .restart local v10    # "d0":C
    move/from16 v11, v43

    .restart local v11    # "d1":C
    goto/16 :goto_9

    .line 4414
    .end local v10    # "d0":C
    .end local v11    # "d1":C
    :cond_30
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4417
    .end local v8    # "M0":C
    .end local v9    # "M1":C
    :cond_31
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4420
    .end local v4    # "y0":C
    .end local v5    # "y1":C
    .end local v6    # "y2":C
    .end local v7    # "y3":C
    :cond_32
    const/16 v18, 0x0

    goto/16 :goto_1

    .restart local v4    # "y0":C
    .restart local v5    # "y1":C
    .restart local v6    # "y2":C
    .restart local v7    # "y3":C
    .restart local v8    # "M0":C
    .restart local v9    # "M1":C
    .restart local v10    # "d0":C
    .restart local v11    # "d1":C
    :cond_33
    move-object/from16 v18, p0

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    .line 4428
    invoke-direct/range {v18 .. v26}, Lgxt;->a(CCCCCCCC)V

    .line 4430
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v63

    .line 4431
    .local v63, "t":C
    const/16 v18, 0x54

    move/from16 v0, v63

    move/from16 v1, v18

    if-eq v0, v1, :cond_34

    const/16 v18, 0x20

    move/from16 v0, v63

    move/from16 v1, v18

    if-ne v0, v1, :cond_35

    if-nez p1, :cond_35

    .line 4432
    :cond_34
    add-int/lit8 v18, v48, 0x9

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_3d

    .line 4433
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4435
    :cond_35
    const/16 v18, 0x22

    move/from16 v0, v63

    move/from16 v1, v18

    if-eq v0, v1, :cond_36

    const/16 v18, 0x1a

    move/from16 v0, v63

    move/from16 v1, v18

    if-eq v0, v1, :cond_36

    const/16 v18, 0x65e5

    move/from16 v0, v63

    move/from16 v1, v18

    if-eq v0, v1, :cond_36

    const v18, 0xc77c

    move/from16 v0, v63

    move/from16 v1, v18

    if-ne v0, v1, :cond_37

    .line 4436
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4437
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4438
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4439
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4441
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    .line 4443
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 4444
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 4445
    :cond_37
    const/16 v18, 0x2b

    move/from16 v0, v63

    move/from16 v1, v18

    if-eq v0, v1, :cond_38

    const/16 v18, 0x2d

    move/from16 v0, v63

    move/from16 v1, v18

    if-ne v0, v1, :cond_3c

    .line 4446
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v18, v0

    add-int/lit8 v19, v48, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3b

    .line 4447
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v18

    const/16 v19, 0x3a

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x4

    .line 4448
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x5

    .line 4449
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3a

    .line 4450
    :cond_39
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4453
    :cond_3a
    const/16 v19, 0x30

    const/16 v20, 0x30

    const/16 v21, 0x30

    const/16 v22, 0x30

    const/16 v23, 0x30

    const/16 v24, 0x30

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v24}, Lgxt;->a(CCCCCC)V

    .line 4454
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4455
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v19, v0

    add-int v19, v19, v48

    add-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lgxt;->a(CCC)V

    .line 4456
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 4458
    :cond_3b
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4460
    :cond_3c
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4463
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v18

    const/16 v19, 0x3a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3e

    .line 4464
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4466
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v18

    const/16 v19, 0x3a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3f

    .line 4467
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4470
    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v12

    .line 4471
    .restart local v12    # "h0":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v13

    .line 4472
    .restart local v13    # "h1":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v14

    .line 4473
    .restart local v14    # "m0":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v15

    .line 4474
    .restart local v15    # "m1":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v16

    .line 4475
    .restart local v16    # "s0":C
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v17

    .line 4477
    .restart local v17    # "s1":C
    invoke-static/range {v12 .. v17}, Lgxt;->b(CCCCCC)Z

    move-result v18

    if-nez v18, :cond_40

    .line 4478
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_40
    move-object/from16 v18, p0

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v23, v16

    move/from16 v24, v17

    .line 4481
    invoke-direct/range {v18 .. v24}, Lgxt;->a(CCCCCC)V

    .line 4483
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v49

    .line 4484
    .local v49, "dot":C
    const/16 v18, 0x2e

    move/from16 v0, v49

    move/from16 v1, v18

    if-ne v0, v1, :cond_41

    .line 4485
    add-int/lit8 v18, v48, 0xb

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_43

    .line 4486
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4489
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    .line 4491
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v19, v48, 0x9

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    .line 4493
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 4495
    const/16 v18, 0x5a

    move/from16 v0, v49

    move/from16 v1, v18

    if-ne v0, v1, :cond_42

    .line 4497
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    if-eqz v18, :cond_42

    .line 4498
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v71

    .line 4499
    .local v71, "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v71

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_42

    .line 4500
    const/16 v18, 0x0

    aget-object v18, v71, v18

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v69

    .line 4501
    .local v69, "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4505
    .end local v69    # "timeZone":Ljava/util/TimeZone;
    .end local v71    # "timeZoneIDs":[Ljava/lang/String;
    :cond_42
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 4508
    :cond_43
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v27

    .line 4509
    .restart local v27    # "S0":C
    const/16 v18, 0x30

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_44

    const/16 v18, 0x39

    move/from16 v0, v27

    move/from16 v1, v18

    if-le v0, v1, :cond_45

    .line 4510
    :cond_44
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4512
    :cond_45
    add-int/lit8 v54, v27, -0x30

    .line 4513
    .restart local v54    # "millis":I
    const/16 v53, 0x1

    .line 4515
    .local v53, "millisLen":I
    add-int/lit8 v18, v48, 0xb

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_46

    .line 4516
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v28

    .line 4517
    .restart local v28    # "S1":C
    const/16 v18, 0x30

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_46

    const/16 v18, 0x39

    move/from16 v0, v28

    move/from16 v1, v18

    if-gt v0, v1, :cond_46

    .line 4518
    mul-int/lit8 v18, v54, 0xa

    add-int/lit8 v19, v28, -0x30

    add-int v54, v18, v19

    .line 4519
    const/16 v53, 0x2

    .line 4523
    .end local v28    # "S1":C
    :cond_46
    const/16 v18, 0x2

    move/from16 v0, v53

    move/from16 v1, v18

    if-ne v0, v1, :cond_47

    .line 4524
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v29

    .line 4525
    .restart local v29    # "S2":C
    const/16 v18, 0x30

    move/from16 v0, v29

    move/from16 v1, v18

    if-lt v0, v1, :cond_47

    const/16 v18, 0x39

    move/from16 v0, v29

    move/from16 v1, v18

    if-gt v0, v1, :cond_47

    .line 4526
    mul-int/lit8 v18, v54, 0xa

    add-int/lit8 v19, v29, -0x30

    add-int v54, v18, v19

    .line 4527
    const/16 v53, 0x3

    .line 4531
    .end local v29    # "S2":C
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4533
    const/16 v72, 0x0

    .line 4534
    .local v72, "timzeZoneLength":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v70

    .line 4535
    .local v70, "timeZoneFlag":C
    const/16 v18, 0x2b

    move/from16 v0, v70

    move/from16 v1, v18

    if-eq v0, v1, :cond_48

    const/16 v18, 0x2d

    move/from16 v0, v70

    move/from16 v1, v18

    if-ne v0, v1, :cond_53

    .line 4536
    :cond_48
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v64

    .line 4537
    .local v64, "t0":C
    const/16 v18, 0x30

    move/from16 v0, v64

    move/from16 v1, v18

    if-lt v0, v1, :cond_49

    const/16 v18, 0x31

    move/from16 v0, v64

    move/from16 v1, v18

    if-le v0, v1, :cond_4a

    .line 4538
    :cond_49
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4541
    :cond_4a
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v65

    .line 4542
    .local v65, "t1":C
    const/16 v18, 0x30

    move/from16 v0, v65

    move/from16 v1, v18

    if-lt v0, v1, :cond_4b

    const/16 v18, 0x39

    move/from16 v0, v65

    move/from16 v1, v18

    if-le v0, v1, :cond_4c

    .line 4543
    :cond_4b
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4546
    :cond_4c
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v66

    .line 4547
    .local v66, "t2":C
    const/16 v18, 0x3a

    move/from16 v0, v66

    move/from16 v1, v18

    if-ne v0, v1, :cond_50

    .line 4548
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v67

    .line 4549
    .local v67, "t3":C
    const/16 v18, 0x30

    move/from16 v0, v67

    move/from16 v1, v18

    if-eq v0, v1, :cond_4d

    .line 4550
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4553
    :cond_4d
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v68

    .line 4554
    .local v68, "t4":C
    const/16 v18, 0x30

    move/from16 v0, v68

    move/from16 v1, v18

    if-eq v0, v1, :cond_4e

    .line 4555
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4557
    :cond_4e
    const/16 v72, 0x6

    .line 4568
    .end local v67    # "t3":C
    .end local v68    # "t4":C
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v70

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-direct {v0, v1, v2, v3}, Lgxt;->a(CCC)V

    .line 4581
    .end local v64    # "t0":C
    .end local v65    # "t1":C
    .end local v66    # "t2":C
    :cond_4f
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v19, v48, 0xa

    add-int v19, v19, v53

    add-int v19, v19, v72

    add-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v50

    .line 4582
    .local v50, "end":C
    const/16 v18, 0x1a

    move/from16 v0, v50

    move/from16 v1, v18

    if-eq v0, v1, :cond_54

    const/16 v18, 0x22

    move/from16 v0, v50

    move/from16 v1, v18

    if-eq v0, v1, :cond_54

    .line 4583
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4558
    .end local v50    # "end":C
    .restart local v64    # "t0":C
    .restart local v65    # "t1":C
    .restart local v66    # "t2":C
    :cond_50
    const/16 v18, 0x30

    move/from16 v0, v66

    move/from16 v1, v18

    if-ne v0, v1, :cond_52

    .line 4559
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v67

    .line 4560
    .restart local v67    # "t3":C
    const/16 v18, 0x30

    move/from16 v0, v67

    move/from16 v1, v18

    if-eq v0, v1, :cond_51

    .line 4561
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 4563
    :cond_51
    const/16 v72, 0x5

    .line 4564
    goto :goto_a

    .line 4565
    .end local v67    # "t3":C
    :cond_52
    const/16 v72, 0x3

    goto :goto_a

    .line 4570
    .end local v64    # "t0":C
    .end local v65    # "t1":C
    .end local v66    # "t2":C
    :cond_53
    const/16 v18, 0x5a

    move/from16 v0, v70

    move/from16 v1, v18

    if-ne v0, v1, :cond_4f

    .line 4571
    const/16 v72, 0x1

    .line 4572
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    if-eqz v18, :cond_4f

    .line 4573
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v71

    .line 4574
    .restart local v71    # "timeZoneIDs":[Ljava/lang/String;
    move-object/from16 v0, v71

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_4f

    .line 4575
    const/16 v18, 0x0

    aget-object v18, v71, v18

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v69

    .line 4576
    .restart local v69    # "timeZone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->n:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_b

    .line 4585
    .end local v69    # "timeZone":Ljava/util/TimeZone;
    .end local v71    # "timeZoneIDs":[Ljava/lang/String;
    .restart local v50    # "end":C
    :cond_54
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v18, v0

    add-int/lit8 v19, v48, 0xa

    add-int v19, v19, v53

    add-int v19, v19, v72

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    .line 4587
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 4588
    const/16 v18, 0x1

    goto/16 :goto_1
.end method

.method public static final a(Ljava/lang/String;II)[B
    .locals 20
    .param p0, "chars"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "charsLen"    # I

    .prologue
    .line 4727
    if-nez p2, :cond_0

    .line 4728
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v2, v0, [B

    .line 4778
    :goto_0
    return-object v2

    .line 4731
    :cond_0
    move/from16 v14, p1

    .local v14, "sIx":I
    add-int v17, p1, p2

    add-int/lit8 v7, v17, -0x1

    .line 4734
    .local v7, "eIx":I
    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v17, Lgxt;->w:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_1

    .line 4735
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 4738
    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v17, Lgxt;->w:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_2

    .line 4739
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 4742
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    add-int/lit8 v17, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    .line 4743
    .local v12, "pad":I
    :goto_3
    sub-int v17, v7, v14

    add-int/lit8 v3, v17, 0x1

    .line 4744
    .local v3, "cCnt":I
    const/16 v17, 0x4c

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    const/16 v17, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    div-int/lit8 v17, v3, 0x4e

    :goto_4
    shl-int/lit8 v16, v17, 0x1

    .line 4746
    .local v16, "sepCnt":I
    :goto_5
    sub-int v17, v3, v16

    mul-int/lit8 v17, v17, 0x6

    shr-int/lit8 v17, v17, 0x3

    sub-int v11, v17, v12

    .line 4747
    .local v11, "len":I
    new-array v2, v11, [B

    .line 4750
    .local v2, "bytes":[B
    const/4 v5, 0x0

    .line 4751
    .local v5, "d":I
    const/4 v4, 0x0

    .local v4, "cc":I
    div-int/lit8 v17, v11, 0x3

    mul-int/lit8 v8, v17, 0x3

    .local v8, "eLen":I
    move v6, v5

    .end local v5    # "d":I
    .local v6, "d":I
    move v15, v14

    .end local v14    # "sIx":I
    .local v15, "sIx":I
    :goto_6
    if-ge v6, v8, :cond_7

    .line 4753
    sget-object v17, Lgxt;->w:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    shl-int/lit8 v17, v17, 0x12

    sget-object v18, Lgxt;->w:[I

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0xc

    or-int v17, v17, v18

    sget-object v18, Lgxt;->w:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x6

    or-int v17, v17, v18

    sget-object v18, Lgxt;->w:[I

    add-int/lit8 v15, v14, 0x1

    .line 4754
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    or-int v9, v17, v18

    .line 4757
    .local v9, "i":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int/lit8 v17, v9, 0x10

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 4758
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "d":I
    .restart local v6    # "d":I
    shr-int/lit8 v17, v9, 0x8

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v5

    .line 4759
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    int-to-byte v0, v9

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 4762
    if-lez v16, :cond_a

    add-int/lit8 v4, v4, 0x1

    const/16 v17, 0x13

    move/from16 v0, v17

    if-ne v4, v0, :cond_a

    .line 4763
    add-int/lit8 v14, v15, 0x2

    .line 4764
    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    const/4 v4, 0x0

    :goto_7
    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    move v15, v14

    .line 4766
    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_6

    .line 4742
    .end local v2    # "bytes":[B
    .end local v3    # "cCnt":I
    .end local v4    # "cc":I
    .end local v6    # "d":I
    .end local v8    # "eLen":I
    .end local v9    # "i":I
    .end local v11    # "len":I
    .end local v12    # "pad":I
    .end local v15    # "sIx":I
    .end local v16    # "sepCnt":I
    .restart local v14    # "sIx":I
    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 4744
    .restart local v3    # "cCnt":I
    .restart local v12    # "pad":I
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 4768
    .end local v14    # "sIx":I
    .restart local v2    # "bytes":[B
    .restart local v4    # "cc":I
    .restart local v6    # "d":I
    .restart local v8    # "eLen":I
    .restart local v11    # "len":I
    .restart local v15    # "sIx":I
    .restart local v16    # "sepCnt":I
    :cond_7
    if-ge v6, v11, :cond_9

    .line 4770
    const/4 v9, 0x0

    .line 4771
    .restart local v9    # "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    sub-int v17, v7, v12

    move/from16 v0, v17

    if-gt v15, v0, :cond_8

    .line 4772
    sget-object v17, Lgxt;->w:[I

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    mul-int/lit8 v18, v10, 0x6

    rsub-int/lit8 v18, v18, 0x12

    shl-int v17, v17, v18

    or-int v9, v9, v17

    .line 4771
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .end local v14    # "sIx":I
    .restart local v15    # "sIx":I
    goto :goto_8

    .line 4774
    :cond_8
    const/16 v13, 0x10

    .local v13, "r":I
    :goto_9
    if-ge v6, v11, :cond_9

    .line 4775
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "d":I
    .restart local v5    # "d":I
    shr-int v17, v9, v13

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    .line 4774
    add-int/lit8 v13, v13, -0x8

    move v6, v5

    .end local v5    # "d":I
    .restart local v6    # "d":I
    goto :goto_9

    .end local v9    # "i":I
    .end local v10    # "j":I
    .end local v13    # "r":I
    :cond_9
    move v5, v6

    .end local v6    # "d":I
    .restart local v5    # "d":I
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto/16 :goto_0

    .end local v14    # "sIx":I
    .restart local v9    # "i":I
    .restart local v15    # "sIx":I
    :cond_a
    move v14, v15

    .end local v15    # "sIx":I
    .restart local v14    # "sIx":I
    goto :goto_7
.end method

.method private b(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 216
    iget v0, p0, Lgxt;->q:I

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1a

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lgxt;->p:Ljava/lang/String;

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private static b(CCCCCC)Z
    .locals 6
    .param p0, "h0"    # C
    .param p1, "h1"    # C
    .param p2, "m0"    # C
    .param p3, "m1"    # C
    .param p4, "s0"    # C
    .param p5, "s1"    # C

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 4616
    if-ne p0, v2, :cond_1

    .line 4617
    if-lt p1, v2, :cond_0

    if-le p1, v3, :cond_2

    .line 4656
    :cond_0
    :goto_0
    return v0

    .line 4620
    :cond_1
    const/16 v1, 0x31

    if-ne p0, v1, :cond_5

    .line 4621
    if-lt p1, v2, :cond_0

    if-gt p1, v3, :cond_0

    .line 4632
    :cond_2
    if-lt p2, v2, :cond_6

    if-gt p2, v4, :cond_6

    .line 4633
    if-lt p3, v2, :cond_0

    if-gt p3, v3, :cond_0

    .line 4644
    :cond_3
    if-lt p4, v2, :cond_7

    if-gt p4, v4, :cond_7

    .line 4645
    if-lt p5, v2, :cond_0

    if-gt p5, v3, :cond_0

    .line 4656
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 4624
    :cond_5
    const/16 v1, 0x32

    if-ne p0, v1, :cond_0

    .line 4625
    if-lt p1, v2, :cond_0

    const/16 v1, 0x34

    if-le p1, v1, :cond_2

    goto :goto_0

    .line 4636
    :cond_6
    if-ne p2, v5, :cond_0

    .line 4637
    if-eq p3, v2, :cond_3

    goto :goto_0

    .line 4648
    :cond_7
    if-ne p4, v5, :cond_0

    .line 4649
    if-eq p5, v2, :cond_4

    goto :goto_0
.end method

.method private b(II)[C
    .locals 5
    .param p1, "offset"    # I
    .param p2, "count"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1236
    iget-object v1, p0, Lgxt;->f:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    .line 1237
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lgxt;->f:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1238
    iget-object v0, p0, Lgxt;->f:[C

    .line 1242
    :goto_0
    return-object v0

    .line 1240
    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lgxt;->f:[C

    .line 1241
    .local v0, "chars":[C
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method private o(J)I
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2057
    const/4 v7, 0x1

    .line 2058
    .local v7, "offset":I
    iget-char v3, p0, Lgxt;->d:C

    .local v3, "fieldQuote":C
    move v8, v7

    .line 2061
    .end local v7    # "offset":I
    .local v8, "offset":I
    :goto_0
    const/16 v9, 0x22

    if-eq v3, v9, :cond_3

    .line 2063
    const/16 v9, 0x27

    if-eq v3, v9, :cond_3

    .line 2065
    const/16 v9, 0x20

    if-eq v3, v9, :cond_0

    const/16 v9, 0xa

    if-eq v3, v9, :cond_0

    const/16 v9, 0xd

    if-eq v3, v9, :cond_0

    const/16 v9, 0x9

    if-eq v3, v9, :cond_0

    const/16 v9, 0xc

    if-eq v3, v9, :cond_0

    const/16 v9, 0x8

    if-ne v3, v9, :cond_2

    .line 2071
    :cond_0
    iget v9, p0, Lgxt;->e:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int v2, v9, v8

    .line 2072
    .local v2, "charIndex":I
    iget v9, p0, Lgxt;->q:I

    if-lt v2, v9, :cond_1

    const/16 v3, 0x1a

    :goto_1
    move v8, v7

    .line 2074
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_0

    .line 2072
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_1
    iget-object v9, p0, Lgxt;->p:Ljava/lang/String;

    .line 2074
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    .line 2076
    .end local v2    # "charIndex":I
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_2
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lgxt;->t:J

    .line 2077
    const/4 v9, -0x2

    iput v9, p0, Lgxt;->o:I

    .line 2078
    const/4 v7, 0x0

    move v9, v7

    move v7, v8

    .line 2128
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :goto_2
    return v9

    .line 2082
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_3
    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2083
    .local v4, "hash":J
    iget v9, p0, Lgxt;->e:I

    add-int v6, v9, v8

    .local v6, "i":I
    :goto_3
    iget v9, p0, Lgxt;->q:I

    if-ge v6, v9, :cond_b

    .line 2084
    iget-object v9, p0, Lgxt;->p:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2085
    .local v0, "ch":C
    if-ne v0, v3, :cond_4

    .line 2087
    iget v9, p0, Lgxt;->e:I

    sub-int v9, v6, v9

    sub-int/2addr v9, v8

    add-int v7, v8, v9

    .line 2095
    .end local v0    # "ch":C
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :goto_4
    cmp-long v9, v4, p1

    if-eqz v9, :cond_5

    .line 2096
    iput-wide v4, p0, Lgxt;->t:J

    .line 2097
    const/4 v9, -0x2

    iput v9, p0, Lgxt;->o:I

    .line 2098
    const/4 v9, 0x0

    goto :goto_2

    .line 2091
    .end local v7    # "offset":I
    .restart local v0    # "ch":C
    .restart local v8    # "offset":I
    :cond_4
    int-to-long v10, v0

    xor-long/2addr v4, v10

    .line 2092
    const-wide v10, 0x100000001b3L

    mul-long/2addr v4, v10

    .line 2083
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2101
    .end local v0    # "ch":C
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_5
    iget v9, p0, Lgxt;->e:I

    add-int/lit8 v7, v7, 0x1

    add-int v2, v9, v7

    .line 2102
    .restart local v2    # "charIndex":I
    iget v9, p0, Lgxt;->q:I

    if-lt v2, v9, :cond_6

    const/16 v1, 0x1a

    .local v1, "chLocal":C
    :goto_5
    move v8, v7

    .line 2106
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :goto_6
    const/16 v9, 0x3a

    if-ne v1, v9, :cond_7

    .line 2107
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    move v9, v7

    .line 2128
    goto :goto_2

    .line 2102
    .end local v1    # "chLocal":C
    :cond_6
    iget-object v9, p0, Lgxt;->p:Ljava/lang/String;

    .line 2104
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 2111
    .end local v7    # "offset":I
    .restart local v1    # "chLocal":C
    .restart local v8    # "offset":I
    :cond_7
    const/16 v9, 0x20

    if-gt v1, v9, :cond_a

    const/16 v9, 0x20

    if-eq v1, v9, :cond_8

    const/16 v9, 0xa

    if-eq v1, v9, :cond_8

    const/16 v9, 0xd

    if-eq v1, v9, :cond_8

    const/16 v9, 0x9

    if-eq v1, v9, :cond_8

    const/16 v9, 0xc

    if-eq v1, v9, :cond_8

    const/16 v9, 0x8

    if-ne v1, v9, :cond_a

    .line 2118
    :cond_8
    iget v9, p0, Lgxt;->e:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int v2, v9, v8

    .line 2119
    iget v9, p0, Lgxt;->q:I

    if-lt v2, v9, :cond_9

    const/16 v1, 0x1a

    :goto_7
    move v8, v7

    .line 2122
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_6

    .line 2119
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_9
    iget-object v9, p0, Lgxt;->p:Ljava/lang/String;

    .line 2121
    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    .line 2125
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_a
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v10, "match feild error expect \':\'"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v1    # "chLocal":C
    .end local v2    # "charIndex":I
    :cond_b
    move v7, v8

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_4
.end method

.method private t()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v3, 0x2f

    const/16 v2, 0x2a

    .line 918
    invoke-virtual {p0}, Lgxt;->c()C

    .line 919
    iget-char v0, p0, Lgxt;->d:C

    if-ne v0, v3, :cond_2

    .line 921
    :cond_0
    invoke-virtual {p0}, Lgxt;->c()C

    .line 922
    iget-char v0, p0, Lgxt;->d:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 923
    invoke-virtual {p0}, Lgxt;->c()C

    .line 945
    :cond_1
    :goto_0
    return-void

    .line 927
    :cond_2
    iget-char v0, p0, Lgxt;->d:C

    if-ne v0, v2, :cond_5

    .line 928
    invoke-virtual {p0}, Lgxt;->c()C

    .line 930
    :cond_3
    :goto_1
    iget-char v0, p0, Lgxt;->d:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 931
    iget-char v0, p0, Lgxt;->d:C

    if-ne v0, v2, :cond_4

    .line 932
    invoke-virtual {p0}, Lgxt;->c()C

    .line 933
    iget-char v0, p0, Lgxt;->d:C

    if-ne v0, v3, :cond_3

    .line 934
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_0

    .line 940
    :cond_4
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_1

    .line 943
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private u()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1183
    iget v1, p0, Lgxt;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lgxt;->j:I

    .line 1184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgxt;->k:Z

    .line 1187
    :cond_0
    iget v1, p0, Lgxt;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgxt;->g:I

    .line 1189
    invoke-virtual {p0}, Lgxt;->c()C

    .line 1190
    iget-char v1, p0, Lgxt;->d:C

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1194
    invoke-virtual {p0}, Lgxt;->k()Ljava/lang/String;

    move-result-object v0

    .line 1196
    .local v0, "ident":Ljava/lang/String;
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1197
    const/16 v1, 0x8

    iput v1, p0, Lgxt;->a:I

    .line 1214
    :goto_0
    return-void

    .line 1198
    :cond_1
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1199
    const/4 v1, 0x6

    iput v1, p0, Lgxt;->a:I

    goto :goto_0

    .line 1200
    :cond_2
    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1201
    const/4 v1, 0x7

    iput v1, p0, Lgxt;->a:I

    goto :goto_0

    .line 1202
    :cond_3
    const-string/jumbo v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1203
    const/16 v1, 0x9

    iput v1, p0, Lgxt;->a:I

    goto :goto_0

    .line 1204
    :cond_4
    const-string/jumbo v1, "undefined"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1205
    const/16 v1, 0x17

    iput v1, p0, Lgxt;->a:I

    goto :goto_0

    .line 1206
    :cond_5
    const-string/jumbo v1, "Set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1207
    const/16 v1, 0x15

    iput v1, p0, Lgxt;->a:I

    goto :goto_0

    .line 1208
    :cond_6
    const-string/jumbo v1, "TreeSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1209
    const/16 v1, 0x16

    iput v1, p0, Lgxt;->a:I

    goto :goto_0

    .line 1211
    :cond_7
    const/16 v1, 0x12

    iput v1, p0, Lgxt;->a:I

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lgxt;->a:I

    return v0
.end method

.method public final a(Z)Ljava/lang/Number;
    .locals 28
    .param p1, "decimal"    # Z

    .prologue
    .line 1825
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->g:I

    move/from16 v24, v0

    add-int v23, v23, v24

    add-int/lit8 v8, v23, -0x1

    .line 1826
    .local v8, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v8, v0, :cond_0

    const/16 v7, 0x1a

    .line 1830
    .local v7, "chLocal":C
    :goto_0
    const/16 v23, 0x46

    move/from16 v0, v23

    if-ne v7, v0, :cond_1

    .line 1831
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lgxt;->d()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    .line 1909
    :goto_1
    return-object v23

    .line 1826
    .end local v7    # "chLocal":C
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1828
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_0

    .line 1834
    .restart local v7    # "chLocal":C
    :cond_1
    const/16 v23, 0x44

    move/from16 v0, v23

    if-ne v7, v0, :cond_2

    .line 1835
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lgxt;->d()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    goto :goto_1

    .line 1838
    :cond_2
    if-eqz p1, :cond_3

    .line 1839
    invoke-virtual/range {p0 .. p0}, Lgxt;->s()Ljava/math/BigDecimal;

    move-result-object v23

    goto :goto_1

    .line 1841
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->g:I

    move/from16 v24, v0

    add-int v23, v23, v24

    add-int/lit8 v16, v23, -0x1

    .line 1842
    .local v16, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 1844
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->g:I

    move/from16 v21, v0

    .line 1845
    .local v21, "sp":I
    const/16 v23, 0x4c

    move/from16 v0, v23

    if-eq v7, v0, :cond_4

    const/16 v23, 0x53

    move/from16 v0, v23

    if-eq v7, v0, :cond_4

    const/16 v23, 0x42

    move/from16 v0, v23

    if-eq v7, v0, :cond_4

    const/16 v23, 0x46

    move/from16 v0, v23

    if-eq v7, v0, :cond_4

    const/16 v23, 0x44

    move/from16 v0, v23

    if-ne v7, v0, :cond_5

    .line 1850
    :cond_4
    add-int/lit8 v21, v21, -0x1

    .line 1856
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v19, v0

    .line 1858
    .local v19, "offset":I
    move/from16 v10, v21

    .local v10, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->f:[C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    .line 1859
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v23, v0

    add-int v24, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->f:[C

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move-object/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1860
    move-object/from16 v0, p0

    iget-object v9, v0, Lgxt;->f:[C

    .line 1866
    .local v9, "chars":[C
    :goto_2
    const/16 v23, 0x9

    move/from16 v0, v23

    if-gt v10, v0, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lgxt;->h:Z

    move/from16 v23, v0

    if-nez v23, :cond_d

    .line 1867
    const/16 v18, 0x0

    .line 1869
    .local v18, "negative":Z
    const/4 v15, 0x0

    .line 1870
    .local v15, "i":I
    const/16 v23, 0x0

    add-int/lit8 v15, v15, 0x1

    aget-char v6, v9, v23

    .line 1872
    .local v6, "c":C
    const/16 v23, 0x2d

    move/from16 v0, v23

    if-ne v6, v0, :cond_9

    .line 1873
    const/16 v18, 0x1

    .line 1874
    const/16 v23, 0x1

    add-int/lit8 v15, v15, 0x1

    aget-char v6, v9, v23

    .line 1883
    :cond_6
    :goto_3
    add-int/lit8 v17, v6, -0x30

    .line 1884
    .local v17, "intVal":I
    const/16 v20, 0x0

    .line 1885
    .local v20, "power":I
    :goto_4
    if-ge v15, v10, :cond_b

    .line 1886
    aget-char v6, v9, v15

    .line 1888
    const/16 v23, 0x2e

    move/from16 v0, v23

    if-ne v6, v0, :cond_a

    .line 1889
    const/16 v20, 0x1

    .line 1885
    :cond_7
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1862
    .end local v6    # "c":C
    .end local v9    # "chars":[C
    .end local v15    # "i":I
    .end local v17    # "intVal":I
    .end local v18    # "negative":Z
    .end local v20    # "power":I
    :cond_8
    new-array v9, v10, [C

    .line 1863
    .restart local v9    # "chars":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v23, v0

    add-int v24, v19, v10

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v9, v3}, Ljava/lang/String;->getChars(II[CI)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1911
    .end local v9    # "chars":[C
    .end local v10    # "count":I
    .end local v16    # "index":I
    .end local v19    # "offset":I
    .end local v21    # "sp":I
    :catch_0
    move-exception v14

    .line 1912
    .local v14, "ex":Ljava/lang/NumberFormatException;
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lgxt;->g()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1876
    .end local v14    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "c":C
    .restart local v9    # "chars":[C
    .restart local v10    # "count":I
    .restart local v15    # "i":I
    .restart local v16    # "index":I
    .restart local v18    # "negative":Z
    .restart local v19    # "offset":I
    .restart local v21    # "sp":I
    :cond_9
    const/16 v23, 0x2b

    move/from16 v0, v23

    if-ne v6, v0, :cond_6

    .line 1877
    const/16 v23, 0x1

    add-int/lit8 v15, v15, 0x1

    :try_start_2
    aget-char v6, v9, v23

    goto :goto_3

    .line 1892
    .restart local v17    # "intVal":I
    .restart local v20    # "power":I
    :cond_a
    add-int/lit8 v11, v6, -0x30

    .line 1893
    .local v11, "digit":I
    mul-int/lit8 v23, v17, 0xa

    add-int v17, v23, v11

    .line 1895
    if-eqz v20, :cond_7

    .line 1896
    mul-int/lit8 v20, v20, 0xa

    goto :goto_5

    .line 1900
    .end local v11    # "digit":I
    :cond_b
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v12, v24, v26

    .line 1901
    .local v12, "doubleVal":D
    if-eqz v18, :cond_c

    .line 1902
    neg-double v12, v12

    .line 1905
    :cond_c
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    goto/16 :goto_1

    .line 1907
    .end local v6    # "c":C
    .end local v12    # "doubleVal":D
    .end local v15    # "i":I
    .end local v17    # "intVal":I
    .end local v18    # "negative":Z
    .end local v20    # "power":I
    :cond_d
    new-instance v22, Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v9, v1, v10}, Ljava/lang/String;-><init>([CII)V

    .line 1909
    .local v22, "str":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v23

    goto/16 :goto_1
.end method

.method public final a(Lgyd;)Ljava/lang/String;
    .locals 6
    .param p1, "symbolTable"    # Lgyd;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v5, 0x27

    const/16 v4, 0x22

    const/16 v3, 0xd

    const/4 v0, 0x0

    .line 703
    :goto_0
    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lgxt;->d:C

    if-eq v1, v3, :cond_0

    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 709
    :cond_0
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_0

    .line 715
    :cond_1
    iget-char v1, p0, Lgxt;->d:C

    if-ne v1, v4, :cond_2

    .line 716
    invoke-virtual {p0, p1, v4}, Lgxt;->a(Lgyd;C)Ljava/lang/String;

    move-result-object v0

    .line 740
    :goto_1
    return-object v0

    .line 719
    :cond_2
    iget-char v1, p0, Lgxt;->d:C

    if-ne v1, v5, :cond_3

    .line 720
    invoke-virtual {p0, p1, v5}, Lgxt;->a(Lgyd;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 723
    :cond_3
    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_4

    .line 724
    invoke-virtual {p0}, Lgxt;->c()C

    .line 725
    iput v3, p0, Lgxt;->a:I

    goto :goto_1

    .line 729
    :cond_4
    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_5

    .line 730
    invoke-virtual {p0}, Lgxt;->c()C

    .line 731
    const/16 v1, 0x10

    iput v1, p0, Lgxt;->a:I

    goto :goto_1

    .line 735
    :cond_5
    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_6

    .line 736
    const/16 v1, 0x14

    iput v1, p0, Lgxt;->a:I

    goto :goto_1

    .line 740
    :cond_6
    invoke-virtual {p0, p1}, Lgxt;->b(Lgyd;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Lgyd;C)Ljava/lang/String;
    .locals 22
    .param p1, "symbolTable"    # Lgyd;
    .param p2, "quoteChar"    # C

    .prologue
    .line 744
    const/4 v8, 0x0

    .line 746
    .local v8, "hash":I
    const/4 v7, 0x0

    .line 747
    .local v7, "hasSpecial":Z
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v19, v0

    add-int/lit8 v17, v19, 0x1

    .line 748
    .local v17, "startIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 749
    .local v6, "endIndex":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_0

    .line 750
    new-instance v19, Lcom/alibaba/fastjson/JSONException;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "unclosed str, "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lgxt;->g()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 756
    :cond_0
    sub-int v5, v6, v17

    .line 757
    .local v5, "chars_len":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v5}, Lgxt;->b(II)[C

    move-result-object v4

    .line 758
    .local v4, "chars":[C
    :goto_0
    if-lez v5, :cond_4

    add-int/lit8 v19, v5, -0x1

    aget-char v19, v4, v19

    const/16 v20, 0x5c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 761
    const/16 v16, 0x1

    .line 762
    .local v16, "slashCount":I
    add-int/lit8 v9, v5, -0x2

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_1

    .line 763
    aget-char v19, v4, v9

    const/16 v20, 0x5c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 764
    add-int/lit8 v16, v16, 0x1

    .line 762
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 769
    :cond_1
    rem-int/lit8 v19, v16, 0x2

    if-eqz v19, :cond_4

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 774
    .local v13, "nextIndex":I
    sub-int v14, v13, v6

    .line 775
    .local v14, "nextLen":I
    add-int v15, v5, v14

    .line 777
    .local v15, "next_chars_len":I
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v15, v0, :cond_3

    .line 778
    array-length v0, v4

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    div-int/lit8 v12, v19, 0x2

    .line 779
    .local v12, "newLen":I
    if-ge v12, v15, :cond_2

    .line 780
    move v12, v15

    .line 782
    :cond_2
    new-array v11, v12, [C

    .line 783
    .local v11, "newChars":[C
    const/16 v19, 0x0

    const/16 v20, 0x0

    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v4, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    move-object v4, v11

    .line 786
    .end local v11    # "newChars":[C
    .end local v12    # "newLen":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v13, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 788
    move v5, v15

    .line 789
    move v6, v13

    .line 790
    const/4 v7, 0x1

    .line 791
    goto :goto_0

    .line 794
    .end local v9    # "i":I
    .end local v13    # "nextIndex":I
    .end local v14    # "nextLen":I
    .end local v15    # "next_chars_len":I
    .end local v16    # "slashCount":I
    :cond_4
    if-nez v7, :cond_9

    .line 795
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v5, :cond_6

    .line 796
    aget-char v3, v4, v9

    .line 797
    .local v3, "ch":C
    mul-int/lit8 v19, v8, 0x1f

    add-int v8, v19, v3

    .line 798
    const/16 v19, 0x5c

    move/from16 v0, v19

    if-ne v3, v0, :cond_5

    .line 799
    const/4 v7, 0x1

    .line 795
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 803
    .end local v3    # "ch":C
    :cond_6
    if-eqz v7, :cond_7

    .line 804
    invoke-static {v4, v5}, Lgxt;->a([CI)Ljava/lang/String;

    move-result-object v18

    .line 812
    .end local v9    # "i":I
    .local v18, "strVal":Ljava/lang/String;
    :goto_3
    add-int/lit8 v19, v6, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 815
    move-object/from16 v0, p0

    iget v10, v0, Lgxt;->e:I

    .line 816
    .local v10, "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v10, v0, :cond_a

    const/16 v19, 0x1a

    .line 818
    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    .line 821
    return-object v18

    .line 804
    .end local v10    # "index":I
    .end local v18    # "strVal":Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_7
    const/16 v19, 0x14

    move/from16 v0, v19

    if-ge v5, v0, :cond_8

    const/16 v19, 0x0

    .line 806
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1, v5, v8}, Lgyd;->a([CIII)Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    :cond_8
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    .line 809
    .end local v9    # "i":I
    :cond_9
    invoke-static {v4, v5}, Lgxt;->a([CI)Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "strVal":Ljava/lang/String;
    goto :goto_3

    .line 816
    .restart local v10    # "index":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 818
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v19

    goto :goto_4
.end method

.method public final a(C)V
    .locals 5
    .param p1, "expect"    # C

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v4, 0x3a

    .line 169
    const/4 v1, 0x0

    iput v1, p0, Lgxt;->g:I

    .line 172
    :goto_0
    iget-char v1, p0, Lgxt;->d:C

    if-ne v1, v4, :cond_1

    .line 175
    iget v1, p0, Lgxt;->e:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 176
    .local v0, "index":I
    iget v1, p0, Lgxt;->q:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    .line 178
    :goto_1
    iput-char v1, p0, Lgxt;->d:C

    .line 180
    invoke-virtual {p0}, Lgxt;->e()V

    .line 181
    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    .line 184
    .end local v0    # "index":I
    :cond_1
    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 190
    :cond_2
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_0

    .line 194
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "not match "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, p0, Lgxt;->d:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(I)V
    .locals 8
    .param p1, "expect"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v5, 0x7b

    const/16 v4, 0xc

    const/16 v1, 0x1a

    .line 412
    const/4 v2, 0x0

    iput v2, p0, Lgxt;->g:I

    .line 415
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 565
    :cond_0
    :pswitch_0
    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lgxt;->d:C

    if-eq v2, v6, :cond_1

    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lgxt;->d:C

    if-eq v2, v4, :cond_1

    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x8

    if-ne v2, v3, :cond_18

    .line 571
    :cond_1
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_0

    .line 417
    :pswitch_1
    iget-char v2, p0, Lgxt;->d:C

    if-ne v2, v5, :cond_3

    .line 418
    iput v4, p0, Lgxt;->a:I

    .line 421
    iget v2, p0, Lgxt;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 422
    .local v0, "index":I
    iget v2, p0, Lgxt;->q:I

    if-lt v0, v2, :cond_2

    .line 424
    :goto_1
    iput-char v1, p0, Lgxt;->d:C

    .line 5597
    .end local v0    # "index":I
    :goto_2
    return-void

    .line 422
    .restart local v0    # "index":I
    :cond_2
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 424
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    .line 428
    .end local v0    # "index":I
    :cond_3
    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    .line 429
    iput v7, p0, Lgxt;->a:I

    .line 432
    iget v2, p0, Lgxt;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 433
    .restart local v0    # "index":I
    iget v2, p0, Lgxt;->q:I

    if-lt v0, v2, :cond_4

    .line 435
    :goto_3
    iput-char v1, p0, Lgxt;->d:C

    goto :goto_2

    .line 433
    :cond_4
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 435
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    .line 441
    .end local v0    # "index":I
    :pswitch_2
    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_6

    .line 442
    const/16 v2, 0x10

    iput v2, p0, Lgxt;->a:I

    .line 445
    iget v2, p0, Lgxt;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 446
    .restart local v0    # "index":I
    iget v2, p0, Lgxt;->q:I

    if-lt v0, v2, :cond_5

    .line 448
    :goto_4
    iput-char v1, p0, Lgxt;->d:C

    goto :goto_2

    .line 446
    :cond_5
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 448
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_4

    .line 453
    .end local v0    # "index":I
    :cond_6
    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_8

    .line 454
    iput v6, p0, Lgxt;->a:I

    .line 457
    iget v2, p0, Lgxt;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 458
    .restart local v0    # "index":I
    iget v2, p0, Lgxt;->q:I

    if-lt v0, v2, :cond_7

    .line 460
    :goto_5
    iput-char v1, p0, Lgxt;->d:C

    goto :goto_2

    .line 458
    :cond_7
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 465
    .end local v0    # "index":I
    :cond_8
    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_a

    .line 466
    const/16 v2, 0xf

    iput v2, p0, Lgxt;->a:I

    .line 469
    iget v2, p0, Lgxt;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 470
    .restart local v0    # "index":I
    iget v2, p0, Lgxt;->q:I

    if-lt v0, v2, :cond_9

    .line 472
    :goto_6
    iput-char v1, p0, Lgxt;->d:C

    goto/16 :goto_2

    .line 470
    :cond_9
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 472
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_6

    .line 477
    .end local v0    # "index":I
    :cond_a
    iget-char v2, p0, Lgxt;->d:C

    if-ne v2, v1, :cond_0

    .line 478
    const/16 v1, 0x14

    iput v1, p0, Lgxt;->a:I

    goto/16 :goto_2

    .line 483
    :pswitch_3
    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x30

    if-lt v2, v3, :cond_b

    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x39

    if-gt v2, v3, :cond_b

    .line 484
    iget v1, p0, Lgxt;->e:I

    iput v1, p0, Lgxt;->b:I

    .line 485
    invoke-virtual {p0}, Lgxt;->n()V

    goto/16 :goto_2

    .line 489
    :cond_b
    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_c

    .line 490
    iget v1, p0, Lgxt;->e:I

    iput v1, p0, Lgxt;->b:I

    .line 491
    invoke-virtual {p0}, Lgxt;->h()V

    goto/16 :goto_2

    .line 495
    :cond_c
    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_d

    .line 496
    iput v7, p0, Lgxt;->a:I

    .line 497
    invoke-virtual {p0}, Lgxt;->c()C

    goto/16 :goto_2

    .line 501
    :cond_d
    iget-char v2, p0, Lgxt;->d:C

    if-ne v2, v5, :cond_0

    .line 502
    iput v4, p0, Lgxt;->a:I

    .line 503
    invoke-virtual {p0}, Lgxt;->c()C

    goto/16 :goto_2

    .line 509
    :pswitch_4
    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_e

    .line 510
    iget v1, p0, Lgxt;->e:I

    iput v1, p0, Lgxt;->b:I

    .line 511
    invoke-virtual {p0}, Lgxt;->h()V

    goto/16 :goto_2

    .line 515
    :cond_e
    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x30

    if-lt v2, v3, :cond_f

    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x39

    if-gt v2, v3, :cond_f

    .line 516
    iget v1, p0, Lgxt;->e:I

    iput v1, p0, Lgxt;->b:I

    .line 517
    invoke-virtual {p0}, Lgxt;->n()V

    goto/16 :goto_2

    .line 521
    :cond_f
    iget-char v2, p0, Lgxt;->d:C

    if-ne v2, v5, :cond_0

    .line 522
    iput v4, p0, Lgxt;->a:I

    .line 525
    iget v2, p0, Lgxt;->e:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 526
    .restart local v0    # "index":I
    iget v2, p0, Lgxt;->q:I

    if-lt v0, v2, :cond_10

    .line 528
    :goto_7
    iput-char v1, p0, Lgxt;->d:C

    goto/16 :goto_2

    .line 526
    :cond_10
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 528
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    .line 534
    .end local v0    # "index":I
    :pswitch_5
    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_11

    .line 535
    iput v7, p0, Lgxt;->a:I

    .line 536
    invoke-virtual {p0}, Lgxt;->c()C

    goto/16 :goto_2

    .line 540
    :cond_11
    iget-char v2, p0, Lgxt;->d:C

    if-ne v2, v5, :cond_0

    .line 541
    iput v4, p0, Lgxt;->a:I

    .line 542
    invoke-virtual {p0}, Lgxt;->c()C

    goto/16 :goto_2

    .line 547
    :pswitch_6
    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_12

    .line 548
    const/16 v1, 0xf

    iput v1, p0, Lgxt;->a:I

    .line 549
    invoke-virtual {p0}, Lgxt;->c()C

    goto/16 :goto_2

    .line 553
    :cond_12
    :pswitch_7
    iget-char v2, p0, Lgxt;->d:C

    if-ne v2, v1, :cond_0

    .line 554
    const/16 v1, 0x14

    iput v1, p0, Lgxt;->a:I

    goto/16 :goto_2

    .line 5582
    :goto_8
    :pswitch_8
    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x20

    if-gt v1, v2, :cond_14

    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_13

    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_13

    iget-char v1, p0, Lgxt;->d:C

    if-eq v1, v6, :cond_13

    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_13

    iget-char v1, p0, Lgxt;->d:C

    if-eq v1, v4, :cond_13

    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_14

    :cond_13
    const/4 v1, 0x1

    .line 5589
    :goto_9
    if-eqz v1, :cond_15

    .line 5592
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_8

    .line 5582
    :cond_14
    const/4 v1, 0x0

    goto :goto_9

    .line 5595
    :cond_15
    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_16

    iget-char v1, p0, Lgxt;->d:C

    .line 5596
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 5597
    :cond_16
    invoke-direct {p0}, Lgxt;->u()V

    goto/16 :goto_2

    .line 5599
    :cond_17
    invoke-virtual {p0}, Lgxt;->e()V

    goto/16 :goto_2

    .line 575
    :cond_18
    invoke-virtual {p0}, Lgxt;->e()V

    goto/16 :goto_2

    .line 415
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final a(J)Z
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 1958
    const/4 v8, 0x1

    .line 1959
    .local v8, "offset":I
    iget-char v3, p0, Lgxt;->d:C

    .line 1960
    .local v3, "fieldQuote":C
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v4, v10, 0x1

    .local v4, "fieldStartIndex":I
    move v9, v8

    .line 1962
    .end local v8    # "offset":I
    .local v9, "offset":I
    :goto_0
    const/16 v10, 0x22

    if-eq v3, v10, :cond_3

    .line 1964
    const/16 v10, 0x27

    if-eq v3, v10, :cond_3

    .line 1966
    const/16 v10, 0x20

    if-gt v3, v10, :cond_2

    const/16 v10, 0x20

    if-eq v3, v10, :cond_0

    const/16 v10, 0xa

    if-eq v3, v10, :cond_0

    const/16 v10, 0xd

    if-eq v3, v10, :cond_0

    const/16 v10, 0x9

    if-eq v3, v10, :cond_0

    const/16 v10, 0xc

    if-eq v3, v10, :cond_0

    const/16 v10, 0x8

    if-ne v3, v10, :cond_2

    .line 1973
    :cond_0
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 1974
    .local v2, "charIndex":I
    iget v10, p0, Lgxt;->q:I

    if-lt v2, v10, :cond_1

    const/16 v3, 0x1a

    :goto_1
    move v9, v8

    .line 1976
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_0

    .line 1974
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_1
    iget-object v10, p0, Lgxt;->p:Ljava/lang/String;

    .line 1976
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    .line 1978
    .end local v2    # "charIndex":I
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_2
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lgxt;->t:J

    .line 1979
    const/4 v10, -0x2

    iput v10, p0, Lgxt;->o:I

    .line 1980
    const/4 v10, 0x0

    move v8, v9

    .line 2053
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :goto_2
    return v10

    .line 1984
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_3
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 1985
    .local v6, "hash":J
    move v5, v4

    .local v5, "i":I
    :goto_3
    iget v10, p0, Lgxt;->q:I

    if-ge v5, v10, :cond_4

    .line 1986
    iget-object v10, p0, Lgxt;->p:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1987
    .local v0, "ch":C
    if-ne v0, v3, :cond_5

    .line 1989
    sub-int v10, v5, v4

    add-int/lit8 v10, v10, 0x1

    add-int v8, v9, v10

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    move v9, v8

    .line 1997
    .end local v0    # "ch":C
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_4
    cmp-long v10, v6, p1

    if-eqz v10, :cond_6

    .line 1998
    const/4 v10, -0x2

    iput v10, p0, Lgxt;->o:I

    .line 1999
    iput-wide v6, p0, Lgxt;->t:J

    .line 2000
    const/4 v10, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_2

    .line 1993
    .end local v8    # "offset":I
    .restart local v0    # "ch":C
    .restart local v9    # "offset":I
    :cond_5
    int-to-long v10, v0

    xor-long/2addr v6, v10

    .line 1994
    const-wide v10, 0x100000001b3L

    mul-long/2addr v6, v10

    .line 1985
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2003
    .end local v0    # "ch":C
    :cond_6
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2004
    .restart local v2    # "charIndex":I
    iget v10, p0, Lgxt;->q:I

    if-lt v2, v10, :cond_7

    const/16 v1, 0x1a

    .local v1, "chLocal":C
    :goto_4
    move v9, v8

    .line 2008
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :goto_5
    const/16 v10, 0x3a

    if-ne v1, v10, :cond_9

    .line 2009
    iget v10, p0, Lgxt;->e:I

    add-int v2, v10, v9

    .line 2010
    iget v10, p0, Lgxt;->q:I

    if-lt v2, v10, :cond_8

    const/16 v1, 0x1a

    .line 2033
    :goto_6
    const/16 v10, 0x7b

    if-ne v1, v10, :cond_e

    .line 2034
    add-int/lit8 v10, v2, 0x1

    iput v10, p0, Lgxt;->e:I

    .line 2035
    iget v10, p0, Lgxt;->e:I

    iget v11, p0, Lgxt;->q:I

    if-lt v10, v11, :cond_d

    const/16 v10, 0x1a

    .line 2037
    :goto_7
    iput-char v10, p0, Lgxt;->d:C

    .line 2038
    const/16 v10, 0xc

    iput v10, p0, Lgxt;->a:I

    .line 2053
    :goto_8
    const/4 v10, 0x1

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_2

    .line 2004
    .end local v1    # "chLocal":C
    :cond_7
    iget-object v10, p0, Lgxt;->p:Ljava/lang/String;

    .line 2006
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_4

    .line 2010
    .end local v8    # "offset":I
    .restart local v1    # "chLocal":C
    .restart local v9    # "offset":I
    :cond_8
    iget-object v10, p0, Lgxt;->p:Ljava/lang/String;

    .line 2012
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_6

    .line 2016
    :cond_9
    const/16 v10, 0x20

    if-gt v1, v10, :cond_c

    const/16 v10, 0x20

    if-eq v1, v10, :cond_a

    const/16 v10, 0xa

    if-eq v1, v10, :cond_a

    const/16 v10, 0xd

    if-eq v1, v10, :cond_a

    const/16 v10, 0x9

    if-eq v1, v10, :cond_a

    const/16 v10, 0xc

    if-eq v1, v10, :cond_a

    const/16 v10, 0x8

    if-ne v1, v10, :cond_c

    .line 2023
    :cond_a
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v2, v10, v9

    .line 2024
    iget v10, p0, Lgxt;->q:I

    if-lt v2, v10, :cond_b

    const/16 v1, 0x1a

    :goto_9
    move v9, v8

    .line 2027
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_5

    .line 2024
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :cond_b
    iget-object v10, p0, Lgxt;->p:Ljava/lang/String;

    .line 2026
    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_9

    .line 2030
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_c
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v11, "match feild error expect \':\'"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2035
    :cond_d
    iget-object v10, p0, Lgxt;->p:Ljava/lang/String;

    iget v11, p0, Lgxt;->e:I

    .line 2037
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_7

    .line 2039
    :cond_e
    const/16 v10, 0x5b

    if-ne v1, v10, :cond_10

    .line 2040
    add-int/lit8 v10, v2, 0x1

    iput v10, p0, Lgxt;->e:I

    .line 2041
    iget v10, p0, Lgxt;->e:I

    iget v11, p0, Lgxt;->q:I

    if-lt v10, v11, :cond_f

    const/16 v10, 0x1a

    .line 2043
    :goto_a
    iput-char v10, p0, Lgxt;->d:C

    .line 2044
    const/16 v10, 0xe

    iput v10, p0, Lgxt;->a:I

    goto :goto_8

    .line 2041
    :cond_f
    iget-object v10, p0, Lgxt;->p:Ljava/lang/String;

    iget v11, p0, Lgxt;->e:I

    .line 2043
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_a

    .line 2046
    :cond_10
    iput v2, p0, Lgxt;->e:I

    .line 2047
    iget v10, p0, Lgxt;->e:I

    iget v11, p0, Lgxt;->q:I

    if-lt v10, v11, :cond_11

    const/16 v10, 0x1a

    .line 2049
    :goto_b
    iput-char v10, p0, Lgxt;->d:C

    .line 2050
    invoke-virtual {p0}, Lgxt;->e()V

    goto/16 :goto_8

    .line 2047
    :cond_11
    iget-object v10, p0, Lgxt;->p:Ljava/lang/String;

    iget v11, p0, Lgxt;->e:I

    .line 2049
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_b
.end method

.method public final a(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 2
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 165
    iget v0, p0, Lgxt;->c:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(J)I
    .locals 11
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2132
    const/4 v8, 0x0

    iput v8, p0, Lgxt;->o:I

    .line 2134
    invoke-direct {p0, p1, p2}, Lgxt;->o(J)I

    move-result v4

    .line 2135
    .local v4, "offset":I
    if-nez v4, :cond_1

    .line 2136
    const/4 v7, 0x0

    .line 2275
    :cond_0
    :goto_0
    return v7

    .line 2140
    :cond_1
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    add-int v1, v8, v4

    .line 2141
    .local v1, "charIndex":I
    iget v8, p0, Lgxt;->q:I

    if-lt v1, v8, :cond_3

    const/16 v0, 0x1a

    .line 2145
    .local v0, "chLocal":C
    :goto_1
    const/16 v8, 0x22

    if-ne v0, v8, :cond_4

    const/4 v6, 0x1

    .line 2146
    .local v6, "quote":Z
    :goto_2
    if-eqz v6, :cond_2

    .line 2147
    const/4 v6, 0x1

    .line 2149
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int v1, v8, v5

    .line 2150
    iget v8, p0, Lgxt;->q:I

    if-lt v1, v8, :cond_5

    const/16 v0, 0x1a

    :goto_3
    move v5, v4

    .line 2155
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_2
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_6

    const/4 v3, 0x1

    .line 2156
    .local v3, "negative":Z
    :goto_4
    if-eqz v3, :cond_1e

    .line 2157
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int v1, v8, v5

    .line 2158
    iget v8, p0, Lgxt;->q:I

    if-lt v1, v8, :cond_7

    const/16 v0, 0x1a

    .line 2164
    :goto_5
    const/16 v8, 0x30

    if-lt v0, v8, :cond_d

    const/16 v8, 0x39

    if-gt v0, v8, :cond_d

    .line 2165
    add-int/lit8 v7, v0, -0x30

    .line 2168
    .local v7, "value":I
    :goto_6
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    add-int v1, v8, v4

    .line 2169
    iget v8, p0, Lgxt;->q:I

    if-lt v1, v8, :cond_8

    const/16 v0, 0x1a

    .line 2172
    :goto_7
    const/16 v8, 0x30

    if-lt v0, v8, :cond_9

    const/16 v8, 0x39

    if-gt v0, v8, :cond_9

    .line 2173
    mul-int/lit8 v8, v7, 0xa

    add-int/lit8 v9, v0, -0x30

    add-int v7, v8, v9

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_6

    .line 2141
    .end local v0    # "chLocal":C
    .end local v3    # "negative":Z
    .end local v4    # "offset":I
    .end local v6    # "quote":Z
    .end local v7    # "value":I
    .restart local v5    # "offset":I
    :cond_3
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2143
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 2145
    .restart local v0    # "chLocal":C
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 2150
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    .restart local v6    # "quote":Z
    :cond_5
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2152
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    .line 2155
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    .line 2158
    .end local v5    # "offset":I
    .restart local v3    # "negative":Z
    .restart local v4    # "offset":I
    :cond_7
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2160
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    .line 2169
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    .restart local v7    # "value":I
    :cond_8
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2171
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_7

    .line 2174
    :cond_9
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_a

    .line 2175
    const/4 v8, -0x1

    iput v8, p0, Lgxt;->o:I

    .line 2176
    const/4 v7, 0x0

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_0

    .line 2177
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_a
    const/16 v8, 0x22

    if-ne v0, v8, :cond_1d

    .line 2178
    if-nez v6, :cond_b

    .line 2179
    const/4 v8, -0x1

    iput v8, p0, Lgxt;->o:I

    .line 2180
    const/4 v7, 0x0

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_0

    .line 2182
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_b
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int v2, v8, v5

    .line 2183
    .local v2, "index":I
    iget v8, p0, Lgxt;->q:I

    if-lt v2, v8, :cond_c

    const/16 v0, 0x1a

    .line 2191
    .end local v2    # "index":I
    :goto_8
    if-gez v7, :cond_1c

    .line 2192
    const/4 v8, -0x1

    iput v8, p0, Lgxt;->o:I

    .line 2193
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2183
    .restart local v2    # "index":I
    :cond_c
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2185
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_8

    .line 2196
    .end local v2    # "index":I
    .end local v7    # "value":I
    :cond_d
    const/4 v8, -0x1

    iput v8, p0, Lgxt;->o:I

    .line 2197
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2213
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    .restart local v7    # "value":I
    :cond_e
    const/16 v8, 0x20

    if-gt v0, v8, :cond_13

    const/16 v8, 0x20

    if-eq v0, v8, :cond_f

    const/16 v8, 0xa

    if-eq v0, v8, :cond_f

    const/16 v8, 0xd

    if-eq v0, v8, :cond_f

    const/16 v8, 0x9

    if-eq v0, v8, :cond_f

    const/16 v8, 0xc

    if-eq v0, v8, :cond_f

    const/16 v8, 0x8

    if-ne v0, v8, :cond_13

    .line 2220
    :cond_f
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int v1, v8, v5

    .line 2221
    iget v8, p0, Lgxt;->q:I

    if-lt v1, v8, :cond_12

    const/16 v0, 0x1a

    :goto_9
    move v5, v4

    .line 2201
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :goto_a
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_e

    .line 2202
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v9, v5, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lgxt;->e:I

    .line 2205
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p0, Lgxt;->e:I

    .line 2206
    .restart local v2    # "index":I
    iget v8, p0, Lgxt;->q:I

    if-lt v2, v8, :cond_10

    const/16 v8, 0x1a

    .line 2208
    :goto_b
    iput-char v8, p0, Lgxt;->d:C

    .line 2210
    const/4 v8, 0x3

    iput v8, p0, Lgxt;->o:I

    .line 2211
    const/16 v8, 0x10

    iput v8, p0, Lgxt;->a:I

    .line 2212
    if-eqz v3, :cond_11

    neg-int v7, v7

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_0

    .line 2206
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_10
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2208
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_b

    :cond_11
    move v4, v5

    .line 2212
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_0

    .line 2221
    .end local v2    # "index":I
    :cond_12
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2223
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9

    .line 2229
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_13
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_1b

    .line 2230
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v8, v5

    invoke-direct {p0, v8}, Lgxt;->b(I)C

    move-result v0

    .line 2231
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_15

    .line 2232
    const/16 v8, 0x10

    iput v8, p0, Lgxt;->a:I

    .line 2233
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lgxt;->e:I

    .line 2236
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p0, Lgxt;->e:I

    .line 2237
    .restart local v2    # "index":I
    iget v8, p0, Lgxt;->q:I

    if-lt v2, v8, :cond_14

    const/16 v8, 0x1a

    .line 2239
    :goto_c
    iput-char v8, p0, Lgxt;->d:C

    .line 2269
    .end local v2    # "index":I
    :goto_d
    const/4 v8, 0x4

    iput v8, p0, Lgxt;->o:I

    .line 2275
    if-eqz v3, :cond_0

    neg-int v7, v7

    goto/16 :goto_0

    .line 2237
    .restart local v2    # "index":I
    :cond_14
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2239
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_c

    .line 2241
    .end local v2    # "index":I
    :cond_15
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_17

    .line 2242
    const/16 v8, 0xf

    iput v8, p0, Lgxt;->a:I

    .line 2243
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lgxt;->e:I

    .line 2246
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p0, Lgxt;->e:I

    .line 2247
    .restart local v2    # "index":I
    iget v8, p0, Lgxt;->q:I

    if-lt v2, v8, :cond_16

    const/16 v8, 0x1a

    .line 2249
    :goto_e
    iput-char v8, p0, Lgxt;->d:C

    goto :goto_d

    .line 2247
    :cond_16
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2249
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_e

    .line 2251
    .end local v2    # "index":I
    :cond_17
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_19

    .line 2252
    const/16 v8, 0xd

    iput v8, p0, Lgxt;->a:I

    .line 2253
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lgxt;->e:I

    .line 2256
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p0, Lgxt;->e:I

    .line 2257
    .restart local v2    # "index":I
    iget v8, p0, Lgxt;->q:I

    if-lt v2, v8, :cond_18

    const/16 v8, 0x1a

    .line 2259
    :goto_f
    iput-char v8, p0, Lgxt;->d:C

    goto :goto_d

    .line 2257
    :cond_18
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2259
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_f

    .line 2261
    .end local v2    # "index":I
    :cond_19
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_1a

    .line 2262
    const/16 v8, 0x14

    iput v8, p0, Lgxt;->a:I

    .line 2263
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lgxt;->e:I

    .line 2264
    const/16 v8, 0x1a

    iput-char v8, p0, Lgxt;->d:C

    goto :goto_d

    .line 2266
    :cond_1a
    const/4 v8, -0x1

    iput v8, p0, Lgxt;->o:I

    .line 2267
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2271
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_1b
    const/4 v8, -0x1

    iput v8, p0, Lgxt;->o:I

    .line 2272
    const/4 v7, 0x0

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_0

    :cond_1c
    move v5, v4

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_a

    :cond_1d
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_8

    .end local v4    # "offset":I
    .end local v7    # "value":I
    .restart local v5    # "offset":I
    :cond_1e
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_5
.end method

.method public final b(C)Ljava/lang/String;
    .locals 12
    .param p1, "quoteChar"    # C

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v11, 0x5c

    const/16 v10, 0x22

    const/4 v9, -0x1

    .line 1061
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v6, v8, 0x1

    .line 1062
    .local v6, "startIndex":I
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    invoke-virtual {v8, v10, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1063
    .local v2, "endIndex":I
    if-ne v2, v9, :cond_0

    .line 1064
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "unclosed str, "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgxt;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1068
    :cond_0
    sget-boolean v8, Lgxt;->z:Z

    if-eqz v8, :cond_1

    .line 1069
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    invoke-virtual {v8, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1076
    .local v7, "strVal":Ljava/lang/String;
    :goto_0
    invoke-virtual {v7, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_4

    .line 1078
    :goto_1
    const/4 v5, 0x0

    .line 1079
    .local v5, "slashCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_2

    .line 1080
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v11, :cond_2

    .line 1081
    add-int/lit8 v5, v5, 0x1

    .line 1079
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1071
    .end local v3    # "i":I
    .end local v5    # "slashCount":I
    .end local v7    # "strVal":Ljava/lang/String;
    :cond_1
    sub-int v1, v2, v6

    .line 1072
    .local v1, "chars_len":I
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8, v1}, Lgxt;->b(II)[C

    move-result-object v0

    .line 1073
    .local v0, "chars":[C
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v1}, Ljava/lang/String;-><init>([CII)V

    .restart local v7    # "strVal":Ljava/lang/String;
    goto :goto_0

    .line 1086
    .end local v0    # "chars":[C
    .end local v1    # "chars_len":I
    .restart local v3    # "i":I
    .restart local v5    # "slashCount":I
    :cond_2
    rem-int/lit8 v8, v5, 0x2

    if-eqz v8, :cond_3

    .line 1089
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1090
    goto :goto_1

    .line 1092
    :cond_3
    sub-int v1, v2, v6

    .line 1093
    .restart local v1    # "chars_len":I
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, v8, v1}, Lgxt;->b(II)[C

    move-result-object v0

    .line 1094
    .restart local v0    # "chars":[C
    invoke-static {v0, v1}, Lgxt;->a([CI)Ljava/lang/String;

    move-result-object v7

    .line 1097
    .end local v0    # "chars":[C
    .end local v1    # "chars_len":I
    .end local v3    # "i":I
    .end local v5    # "slashCount":I
    :cond_4
    add-int/lit8 v8, v2, 0x1

    iput v8, p0, Lgxt;->e:I

    .line 1100
    iget v4, p0, Lgxt;->e:I

    .line 1101
    .local v4, "index":I
    iget v8, p0, Lgxt;->q:I

    if-lt v4, v8, :cond_5

    const/16 v8, 0x1a

    .line 1103
    :goto_3
    iput-char v8, p0, Lgxt;->d:C

    .line 1106
    return-object v7

    .line 1101
    :cond_5
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 1103
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_3
.end method

.method public final b(Lgyd;)Ljava/lang/String;
    .locals 7
    .param p1, "symbolTable"    # Lgyd;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v6, 0x100

    const/4 v4, 0x1

    .line 948
    iget-char v1, p0, Lgxt;->d:C

    .line 950
    .local v1, "first":C
    iget-char v5, p0, Lgxt;->d:C

    if-ge v5, v6, :cond_0

    sget-object v5, Lgxt;->x:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_1

    :cond_0
    move v2, v4

    .line 951
    .local v2, "firstFlag":Z
    :goto_0
    if-nez v2, :cond_2

    .line 952
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "illegal identifier : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v6, p0, Lgxt;->d:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 953
    invoke-virtual {p0}, Lgxt;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 950
    .end local v2    # "firstFlag":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 956
    .restart local v2    # "firstFlag":Z
    :cond_2
    move v3, v1

    .line 958
    .local v3, "hash":I
    iget v5, p0, Lgxt;->e:I

    iput v5, p0, Lgxt;->j:I

    .line 959
    iput v4, p0, Lgxt;->g:I

    .line 961
    :goto_1
    invoke-virtual {p0}, Lgxt;->c()C

    move-result v0

    .line 963
    .local v0, "ch":C
    if-ge v0, v6, :cond_3

    .line 964
    sget-object v4, Lgxt;->y:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_4

    .line 969
    :cond_3
    mul-int/lit8 v4, v3, 0x1f

    add-int v3, v4, v0

    .line 971
    iget v4, p0, Lgxt;->g:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lgxt;->g:I

    goto :goto_1

    .line 975
    :cond_4
    iget v4, p0, Lgxt;->e:I

    invoke-direct {p0, v4}, Lgxt;->b(I)C

    move-result v4

    iput-char v4, p0, Lgxt;->d:C

    .line 976
    const/16 v4, 0x12

    iput v4, p0, Lgxt;->a:I

    .line 978
    iget v4, p0, Lgxt;->g:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lgxt;->p:Ljava/lang/String;

    const-string/jumbo v5, "null"

    iget v6, p0, Lgxt;->j:I

    .line 979
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 980
    const/4 v4, 0x0

    .line 983
    :goto_2
    return-object v4

    :cond_5
    iget-object v4, p0, Lgxt;->p:Ljava/lang/String;

    iget v5, p0, Lgxt;->j:I

    iget v6, p0, Lgxt;->g:I

    invoke-virtual {p1, v4, v5, v6, v3}, Lgyd;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Lgxt;->f:[C

    array-length v0, v0

    const/16 v1, 0x2004

    if-gt v0, v1, :cond_0

    .line 137
    sget-object v0, Lgxt;->A:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lgxt;->f:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 139
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lgxt;->f:[C

    .line 140
    return-void
.end method

.method public final b(Z)Z
    .locals 2
    .param p1, "strict"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 4167
    iget v0, p0, Lgxt;->q:I

    iget v1, p0, Lgxt;->e:I

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lgxt;->a(ZI)Z

    move-result v0

    return v0
.end method

.method public final c()C
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 143
    iget v1, p0, Lgxt;->e:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 144
    .local v0, "index":I
    iget v1, p0, Lgxt;->q:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    .line 146
    :goto_0
    iput-char v1, p0, Lgxt;->d:C

    .line 144
    return v1

    :cond_0
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0
.end method

.method public final c(J)[I
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2279
    const/4 v10, 0x0

    iput v10, p0, Lgxt;->o:I

    .line 2281
    invoke-direct {p0, p1, p2}, Lgxt;->o(J)I

    move-result v6

    .line 2282
    .local v6, "offset":I
    if-nez v6, :cond_0

    .line 2283
    const/4 v0, 0x0

    .line 2408
    :goto_0
    return-object v0

    .line 2286
    :cond_0
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    add-int v4, v10, v6

    .line 2287
    .local v4, "charIndex":I
    iget v10, p0, Lgxt;->q:I

    if-lt v4, v10, :cond_1

    const/16 v3, 0x1a

    .line 2290
    .local v3, "chLocal":C
    :goto_1
    const/16 v10, 0x5b

    if-eq v3, v10, :cond_2

    .line 2291
    const/4 v10, -0x1

    iput v10, p0, Lgxt;->o:I

    .line 2292
    const/4 v0, 0x0

    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_0

    .line 2287
    .end local v3    # "chLocal":C
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_1
    iget-object v10, p0, Lgxt;->p:Ljava/lang/String;

    .line 2289
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    .line 2295
    .restart local v3    # "chLocal":C
    :cond_2
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2296
    iget v10, p0, Lgxt;->q:I

    if-lt v4, v10, :cond_4

    const/16 v3, 0x1a

    .line 2301
    :goto_2
    const/16 v10, 0x10

    new-array v0, v10, [I

    .line 2302
    .local v0, "array":[I
    const/4 v1, 0x0

    .line 2304
    .local v1, "arrayIndex":I
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_17

    .line 2306
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int v4, v10, v6

    .line 2307
    iget v10, p0, Lgxt;->q:I

    if-lt v4, v10, :cond_5

    const/16 v3, 0x1a

    :goto_3
    move v6, v7

    .line 2366
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    :goto_4
    array-length v10, v0

    if-eq v1, v10, :cond_3

    .line 2367
    new-array v8, v1, [I

    .line 2368
    .local v8, "tmp":[I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v8, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2369
    move-object v0, v8

    .line 2372
    .end local v8    # "tmp":[I
    :cond_3
    const/16 v10, 0x2c

    if-ne v3, v10, :cond_10

    .line 2373
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v11, v6, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lgxt;->e:I

    .line 2374
    invoke-virtual {p0}, Lgxt;->c()C

    .line 2375
    const/4 v10, 0x3

    iput v10, p0, Lgxt;->o:I

    .line 2376
    const/16 v10, 0x10

    iput v10, p0, Lgxt;->a:I

    goto :goto_0

    .line 2296
    .end local v0    # "array":[I
    .end local v1    # "arrayIndex":I
    :cond_4
    iget-object v10, p0, Lgxt;->p:Ljava/lang/String;

    .line 2298
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_2

    .line 2307
    .end local v6    # "offset":I
    .restart local v0    # "array":[I
    .restart local v1    # "arrayIndex":I
    .restart local v7    # "offset":I
    :cond_5
    iget-object v10, p0, Lgxt;->p:Ljava/lang/String;

    .line 2309
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_3

    .local v5, "nagative":Z
    :cond_6
    move v2, v1

    .line 2312
    .end local v1    # "arrayIndex":I
    .end local v5    # "nagative":Z
    .local v2, "arrayIndex":I
    :goto_5
    const/4 v5, 0x0

    .line 2313
    .restart local v5    # "nagative":Z
    const/16 v10, 0x2d

    if-ne v3, v10, :cond_16

    .line 2315
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2316
    iget v10, p0, Lgxt;->q:I

    if-lt v4, v10, :cond_7

    const/16 v3, 0x1a

    .line 2319
    :goto_6
    const/4 v5, 0x1

    .line 2321
    :goto_7
    const/16 v10, 0x30

    if-lt v3, v10, :cond_f

    const/16 v10, 0x39

    if-gt v3, v10, :cond_f

    .line 2322
    add-int/lit8 v9, v3, -0x30

    .line 2325
    .local v9, "value":I
    :goto_8
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int v4, v10, v6

    .line 2326
    iget v10, p0, Lgxt;->q:I

    if-lt v4, v10, :cond_8

    const/16 v3, 0x1a

    .line 2330
    :goto_9
    const/16 v10, 0x30

    if-lt v3, v10, :cond_9

    const/16 v10, 0x39

    if-gt v3, v10, :cond_9

    .line 2331
    mul-int/lit8 v10, v9, 0xa

    add-int/lit8 v11, v3, -0x30

    add-int v9, v10, v11

    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto :goto_8

    .line 2316
    .end local v9    # "value":I
    :cond_7
    iget-object v10, p0, Lgxt;->p:Ljava/lang/String;

    .line 2318
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_6

    .line 2326
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    .restart local v9    # "value":I
    :cond_8
    iget-object v10, p0, Lgxt;->p:Ljava/lang/String;

    .line 2328
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_9

    .line 2337
    :cond_9
    array-length v10, v0

    if-lt v2, v10, :cond_a

    .line 2338
    array-length v10, v0

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v10, v10, 0x2

    new-array v8, v10, [I

    .line 2339
    .restart local v8    # "tmp":[I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v8, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2340
    move-object v0, v8

    .line 2342
    .end local v8    # "tmp":[I
    :cond_a
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "arrayIndex":I
    .restart local v1    # "arrayIndex":I
    if-eqz v5, :cond_b

    neg-int v9, v9

    .end local v9    # "value":I
    :cond_b
    aput v9, v0, v2

    .line 2344
    const/16 v10, 0x2c

    if-ne v3, v10, :cond_d

    .line 2346
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2347
    iget v10, p0, Lgxt;->q:I

    if-lt v4, v10, :cond_c

    const/16 v3, 0x1a

    :goto_a
    move v2, v1

    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    move v7, v6

    .line 2362
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_5

    .line 2347
    .end local v2    # "arrayIndex":I
    .end local v7    # "offset":I
    .restart local v1    # "arrayIndex":I
    .restart local v6    # "offset":I
    :cond_c
    iget-object v10, p0, Lgxt;->p:Ljava/lang/String;

    .line 2349
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_a

    .line 2350
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_d
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_6

    .line 2352
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    add-int v4, v10, v7

    .line 2353
    iget v10, p0, Lgxt;->q:I

    if-lt v4, v10, :cond_e

    const/16 v3, 0x1a

    .line 2356
    :goto_b
    goto/16 :goto_4

    .line 2353
    :cond_e
    iget-object v10, p0, Lgxt;->p:Ljava/lang/String;

    .line 2355
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_b

    .line 2359
    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    :cond_f
    const/4 v10, -0x1

    iput v10, p0, Lgxt;->o:I

    .line 2360
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2380
    .end local v2    # "arrayIndex":I
    .end local v5    # "nagative":Z
    .restart local v1    # "arrayIndex":I
    :cond_10
    const/16 v10, 0x7d

    if-ne v3, v10, :cond_15

    .line 2381
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v10, v6

    invoke-direct {p0, v10}, Lgxt;->b(I)C

    move-result v3

    .line 2382
    const/16 v10, 0x2c

    if-ne v3, v10, :cond_11

    .line 2383
    const/16 v10, 0x10

    iput v10, p0, Lgxt;->a:I

    .line 2384
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lgxt;->e:I

    .line 2385
    invoke-virtual {p0}, Lgxt;->c()C

    .line 2402
    :goto_c
    const/4 v10, 0x4

    iput v10, p0, Lgxt;->o:I

    move v6, v7

    .line 2408
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_0

    .line 2386
    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    :cond_11
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_12

    .line 2387
    const/16 v10, 0xf

    iput v10, p0, Lgxt;->a:I

    .line 2388
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lgxt;->e:I

    .line 2389
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_c

    .line 2390
    :cond_12
    const/16 v10, 0x7d

    if-ne v3, v10, :cond_13

    .line 2391
    const/16 v10, 0xd

    iput v10, p0, Lgxt;->a:I

    .line 2392
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lgxt;->e:I

    .line 2393
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_c

    .line 2394
    :cond_13
    const/16 v10, 0x1a

    if-ne v3, v10, :cond_14

    .line 2395
    iget v10, p0, Lgxt;->e:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lgxt;->e:I

    .line 2396
    const/16 v10, 0x14

    iput v10, p0, Lgxt;->a:I

    .line 2397
    const/16 v10, 0x1a

    iput-char v10, p0, Lgxt;->d:C

    goto :goto_c

    .line 2399
    :cond_14
    const/4 v10, -0x1

    iput v10, p0, Lgxt;->o:I

    .line 2400
    const/4 v0, 0x0

    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_0

    .line 2404
    :cond_15
    const/4 v10, -0x1

    iput v10, p0, Lgxt;->o:I

    .line 2405
    const/4 v0, 0x0

    goto/16 :goto_0

    .end local v1    # "arrayIndex":I
    .end local v6    # "offset":I
    .restart local v2    # "arrayIndex":I
    .restart local v5    # "nagative":Z
    .restart local v7    # "offset":I
    :cond_16
    move v6, v7

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    goto/16 :goto_7

    .end local v2    # "arrayIndex":I
    .end local v5    # "nagative":Z
    .restart local v1    # "arrayIndex":I
    :cond_17
    move v2, v1

    .end local v1    # "arrayIndex":I
    .restart local v2    # "arrayIndex":I
    move v7, v6

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_5
.end method

.method public final d(J)J
    .locals 13
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2412
    const/4 v8, 0x0

    iput v8, p0, Lgxt;->o:I

    .line 2414
    invoke-direct {p0, p1, p2}, Lgxt;->o(J)I

    move-result v3

    .line 2415
    .local v3, "offset":I
    if-nez v3, :cond_1

    .line 2416
    const-wide/16 v6, 0x0

    .line 2545
    :cond_0
    :goto_0
    return-wide v6

    .line 2422
    :cond_1
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int v1, v8, v3

    .line 2423
    .local v1, "index":I
    iget v8, p0, Lgxt;->q:I

    if-lt v1, v8, :cond_3

    const/16 v0, 0x1a

    .line 2430
    .local v0, "chLocal":C
    :goto_1
    const/16 v8, 0x22

    if-ne v0, v8, :cond_4

    const/4 v5, 0x1

    .line 2431
    .local v5, "quote":Z
    :goto_2
    if-eqz v5, :cond_2

    .line 2432
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int v1, v8, v4

    .line 2433
    iget v8, p0, Lgxt;->q:I

    if-lt v1, v8, :cond_5

    const/16 v0, 0x1a

    :goto_3
    move v4, v3

    .line 2438
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_2
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_6

    const/4 v2, 0x1

    .line 2439
    .local v2, "negative":Z
    :goto_4
    if-eqz v2, :cond_1b

    .line 2440
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int v1, v8, v4

    .line 2441
    iget v8, p0, Lgxt;->q:I

    if-lt v1, v8, :cond_7

    const/16 v0, 0x1a

    .line 2446
    :goto_5
    const/16 v8, 0x30

    if-lt v0, v8, :cond_e

    const/16 v8, 0x39

    if-gt v0, v8, :cond_e

    .line 2448
    add-int/lit8 v8, v0, -0x30

    int-to-long v6, v8

    .line 2452
    .local v6, "value":J
    :goto_6
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int v1, v8, v3

    .line 2453
    iget v8, p0, Lgxt;->q:I

    if-lt v1, v8, :cond_8

    const/16 v0, 0x1a

    .line 2457
    :goto_7
    const/16 v8, 0x30

    if-lt v0, v8, :cond_9

    const/16 v8, 0x39

    if-gt v0, v8, :cond_9

    .line 2458
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v10, v0, -0x30

    int-to-long v10, v10

    add-long v6, v8, v10

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_6

    .line 2423
    .end local v0    # "chLocal":C
    .end local v2    # "negative":Z
    .end local v3    # "offset":I
    .end local v5    # "quote":Z
    .end local v6    # "value":J
    .restart local v4    # "offset":I
    :cond_3
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2425
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 2430
    .restart local v0    # "chLocal":C
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 2433
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    .restart local v5    # "quote":Z
    :cond_5
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2435
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    .line 2438
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 2441
    .end local v4    # "offset":I
    .restart local v2    # "negative":Z
    .restart local v3    # "offset":I
    :cond_7
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2443
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    .line 2453
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    .restart local v6    # "value":J
    :cond_8
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2455
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_7

    .line 2459
    :cond_9
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_a

    .line 2460
    const/4 v8, -0x1

    iput v8, p0, Lgxt;->o:I

    .line 2461
    const-wide/16 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .line 2462
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_a
    const/16 v8, 0x22

    if-ne v0, v8, :cond_c

    .line 2463
    if-nez v5, :cond_b

    .line 2464
    const/4 v8, -0x1

    iput v8, p0, Lgxt;->o:I

    .line 2465
    const-wide/16 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .line 2467
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_b
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int v1, v8, v4

    .line 2468
    iget v8, p0, Lgxt;->q:I

    if-lt v1, v8, :cond_d

    const/16 v0, 0x1a

    :goto_8
    move v4, v3

    .line 2476
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_c
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_f

    .line 2477
    const/4 v8, -0x1

    iput v8, p0, Lgxt;->o:I

    .line 2478
    const-wide/16 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .line 2468
    :cond_d
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2470
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_8

    .line 2481
    .end local v6    # "value":J
    :cond_e
    const/4 v8, -0x1

    iput v8, p0, Lgxt;->o:I

    .line 2482
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 2485
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    .restart local v6    # "value":J
    :cond_f
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_12

    .line 2486
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lgxt;->e:I

    .line 2489
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v1, v8, 0x1

    iput v1, p0, Lgxt;->e:I

    .line 2490
    iget v8, p0, Lgxt;->q:I

    if-lt v1, v8, :cond_10

    const/16 v8, 0x1a

    .line 2492
    :goto_9
    iput-char v8, p0, Lgxt;->d:C

    .line 2494
    const/4 v8, 0x3

    iput v8, p0, Lgxt;->o:I

    .line 2495
    const/16 v8, 0x10

    iput v8, p0, Lgxt;->a:I

    .line 2496
    if-eqz v2, :cond_11

    neg-long v6, v6

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .line 2490
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_10
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2492
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_9

    :cond_11
    move v3, v4

    .line 2496
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .line 2499
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_12
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_1a

    .line 2500
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v4

    invoke-direct {p0, v8}, Lgxt;->b(I)C

    move-result v0

    .line 2501
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_14

    .line 2502
    const/16 v8, 0x10

    iput v8, p0, Lgxt;->a:I

    .line 2503
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lgxt;->e:I

    .line 2506
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v1, v8, 0x1

    iput v1, p0, Lgxt;->e:I

    .line 2507
    iget v8, p0, Lgxt;->q:I

    if-lt v1, v8, :cond_13

    const/16 v8, 0x1a

    .line 2509
    :goto_a
    iput-char v8, p0, Lgxt;->d:C

    .line 2539
    :goto_b
    const/4 v8, 0x4

    iput v8, p0, Lgxt;->o:I

    .line 2545
    if-eqz v2, :cond_0

    neg-long v6, v6

    goto/16 :goto_0

    .line 2507
    :cond_13
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2509
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_a

    .line 2511
    :cond_14
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_16

    .line 2512
    const/16 v8, 0xf

    iput v8, p0, Lgxt;->a:I

    .line 2513
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lgxt;->e:I

    .line 2516
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v1, v8, 0x1

    iput v1, p0, Lgxt;->e:I

    .line 2517
    iget v8, p0, Lgxt;->q:I

    if-lt v1, v8, :cond_15

    const/16 v8, 0x1a

    .line 2519
    :goto_c
    iput-char v8, p0, Lgxt;->d:C

    goto :goto_b

    .line 2517
    :cond_15
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2519
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_c

    .line 2521
    :cond_16
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_18

    .line 2522
    const/16 v8, 0xd

    iput v8, p0, Lgxt;->a:I

    .line 2523
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lgxt;->e:I

    .line 2526
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v1, v8, 0x1

    iput v1, p0, Lgxt;->e:I

    .line 2527
    iget v8, p0, Lgxt;->q:I

    if-lt v1, v8, :cond_17

    const/16 v8, 0x1a

    .line 2529
    :goto_d
    iput-char v8, p0, Lgxt;->d:C

    goto :goto_b

    .line 2527
    :cond_17
    iget-object v8, p0, Lgxt;->p:Ljava/lang/String;

    .line 2529
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_d

    .line 2531
    :cond_18
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_19

    .line 2532
    const/16 v8, 0x14

    iput v8, p0, Lgxt;->a:I

    .line 2533
    iget v8, p0, Lgxt;->e:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lgxt;->e:I

    .line 2534
    const/16 v8, 0x1a

    iput-char v8, p0, Lgxt;->d:C

    goto :goto_b

    .line 2536
    :cond_19
    const/4 v8, -0x1

    iput v8, p0, Lgxt;->o:I

    .line 2537
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 2541
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_1a
    const/4 v8, -0x1

    iput v8, p0, Lgxt;->o:I

    .line 2542
    const-wide/16 v6, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0

    .end local v3    # "offset":I
    .end local v6    # "value":J
    .restart local v4    # "offset":I
    :cond_1b
    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_5
.end method

.method public final d()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 199
    iget v3, p0, Lgxt;->j:I

    iget v4, p0, Lgxt;->g:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 200
    .local v1, "index":I
    iget-object v3, p0, Lgxt;->p:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 202
    .local v0, "chLocal":C
    iget v2, p0, Lgxt;->g:I

    .line 203
    .local v2, "sp":I
    const/16 v3, 0x4c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x53

    if-eq v0, v3, :cond_0

    const/16 v3, 0x42

    if-eq v0, v3, :cond_0

    const/16 v3, 0x46

    if-eq v0, v3, :cond_0

    const/16 v3, 0x44

    if-ne v0, v3, :cond_1

    .line 208
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 212
    :cond_1
    iget v3, p0, Lgxt;->j:I

    invoke-direct {p0, v3, v2}, Lgxt;->a(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final e(J)Ljava/lang/String;
    .locals 17
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2549
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->o:I

    .line 2551
    invoke-direct/range {p0 .. p2}, Lgxt;->o(J)I

    move-result v9

    .line 2552
    .local v9, "offset":I
    if-nez v9, :cond_0

    .line 2553
    const/4 v13, 0x0

    .line 2674
    :goto_0
    return-object v13

    .line 2558
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "offset":I
    .local v10, "offset":I
    add-int v8, v14, v9

    .line 2559
    .local v8, "index":I
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->q:I

    if-lt v8, v14, :cond_1

    .line 2560
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "unclosed str, "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lgxt;->g()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2562
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2566
    .local v1, "chLocal":C
    const/16 v14, 0x22

    if-eq v1, v14, :cond_2

    .line 2567
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->o:I

    .line 2569
    move-object/from16 v0, p0

    iget-object v13, v0, Lgxt;->r:Ljava/lang/String;

    move v9, v10

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto :goto_0

    .line 2573
    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    :cond_2
    const/4 v6, 0x0

    .line 2574
    .local v6, "hasSpecial":Z
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int v12, v14, v10

    .line 2575
    .local v12, "startIndex":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    const/16 v15, 0x22

    invoke-virtual {v14, v15, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 2576
    .local v5, "endIndex":I
    const/4 v14, -0x1

    if-ne v5, v14, :cond_3

    .line 2577
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "unclosed str, "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lgxt;->g()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2581
    :cond_3
    sget-boolean v14, Lgxt;->z:Z

    if-eqz v14, :cond_4

    .line 2582
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    invoke-virtual {v14, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 2589
    .local v13, "strVal":Ljava/lang/String;
    :goto_1
    const/16 v14, 0x5c

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_7

    .line 2591
    :goto_2
    const/4 v11, 0x0

    .line 2592
    .local v11, "slashCount":I
    add-int/lit8 v7, v5, -0x1

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_5

    .line 2593
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5c

    if-ne v14, v15, :cond_5

    .line 2594
    const/4 v6, 0x1

    .line 2595
    add-int/lit8 v11, v11, 0x1

    .line 2592
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 2584
    .end local v7    # "i":I
    .end local v11    # "slashCount":I
    .end local v13    # "strVal":Ljava/lang/String;
    :cond_4
    sub-int v4, v5, v12

    .line 2585
    .local v4, "chars_len":I
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/2addr v14, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lgxt;->b(II)[C

    move-result-object v3

    .line 2586
    .local v3, "chars":[C
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v3, v14, v4}, Ljava/lang/String;-><init>([CII)V

    .restart local v13    # "strVal":Ljava/lang/String;
    goto :goto_1

    .line 2600
    .end local v3    # "chars":[C
    .end local v4    # "chars_len":I
    .restart local v7    # "i":I
    .restart local v11    # "slashCount":I
    :cond_5
    rem-int/lit8 v14, v11, 0x2

    if-eqz v14, :cond_6

    .line 2603
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    const/16 v15, 0x22

    add-int/lit8 v16, v5, 0x1

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 2604
    goto :goto_2

    .line 2606
    :cond_6
    sub-int v4, v5, v12

    .line 2607
    .restart local v4    # "chars_len":I
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/2addr v14, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lgxt;->b(II)[C

    move-result-object v3

    .line 2608
    .restart local v3    # "chars":[C
    if-eqz v6, :cond_8

    .line 2609
    invoke-static {v3, v4}, Lgxt;->a([CI)Ljava/lang/String;

    move-result-object v13

    .line 2621
    .end local v3    # "chars":[C
    .end local v4    # "chars_len":I
    .end local v7    # "i":I
    .end local v11    # "slashCount":I
    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 2622
    move v8, v5

    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->q:I

    if-lt v5, v14, :cond_9

    const/16 v1, 0x1a

    .line 2627
    :goto_5
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_b

    .line 2628
    move-object/from16 v0, p0

    iput v5, v0, Lgxt;->e:I

    .line 2631
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v8, v14, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lgxt;->e:I

    .line 2632
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->q:I

    if-lt v8, v14, :cond_a

    const/16 v14, 0x1a

    .line 2634
    :goto_6
    move-object/from16 v0, p0

    iput-char v14, v0, Lgxt;->d:C

    .line 2636
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->o:I

    .line 2637
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->a:I

    move v9, v10

    .line 2638
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0

    .line 2611
    .end local v9    # "offset":I
    .restart local v3    # "chars":[C
    .restart local v4    # "chars_len":I
    .restart local v7    # "i":I
    .restart local v10    # "offset":I
    .restart local v11    # "slashCount":I
    :cond_8
    new-instance v13, Ljava/lang/String;

    .end local v13    # "strVal":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-direct {v13, v3, v14, v4}, Ljava/lang/String;-><init>([CII)V

    .line 2612
    .restart local v13    # "strVal":Ljava/lang/String;
    const/16 v14, 0x5c

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_7

    .line 2613
    invoke-static {v3, v4}, Lgxt;->a([CI)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 2622
    .end local v3    # "chars":[C
    .end local v4    # "chars_len":I
    .end local v7    # "i":I
    .end local v11    # "slashCount":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    .line 2624
    invoke-virtual {v14, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 2632
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    .line 2634
    invoke-virtual {v14, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    goto :goto_6

    .line 2641
    :cond_b
    const/16 v14, 0x7d

    if-ne v1, v14, :cond_11

    .line 2643
    add-int/lit8 v5, v5, 0x1

    .line 2644
    move v2, v5

    .local v2, "charIndex":I
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->q:I

    if-lt v5, v14, :cond_c

    const/16 v1, 0x1a

    .line 2648
    :goto_7
    const/16 v14, 0x2c

    if-ne v1, v14, :cond_d

    .line 2649
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->a:I

    .line 2650
    move-object/from16 v0, p0

    iput v5, v0, Lgxt;->e:I

    .line 2651
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 2668
    :goto_8
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->o:I

    move v9, v10

    .line 2674
    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0

    .line 2644
    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    .line 2646
    invoke-virtual {v14, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    .line 2652
    :cond_d
    const/16 v14, 0x5d

    if-ne v1, v14, :cond_e

    .line 2653
    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->a:I

    .line 2654
    move-object/from16 v0, p0

    iput v5, v0, Lgxt;->e:I

    .line 2655
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    goto :goto_8

    .line 2656
    :cond_e
    const/16 v14, 0x7d

    if-ne v1, v14, :cond_f

    .line 2657
    const/16 v14, 0xd

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->a:I

    .line 2658
    move-object/from16 v0, p0

    iput v5, v0, Lgxt;->e:I

    .line 2659
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    goto :goto_8

    .line 2660
    :cond_f
    const/16 v14, 0x1a

    if-ne v1, v14, :cond_10

    .line 2661
    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->a:I

    .line 2662
    move-object/from16 v0, p0

    iput v5, v0, Lgxt;->e:I

    .line 2663
    const/16 v14, 0x1a

    move-object/from16 v0, p0

    iput-char v14, v0, Lgxt;->d:C

    goto :goto_8

    .line 2665
    :cond_10
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->o:I

    .line 2666
    move-object/from16 v0, p0

    iget-object v13, v0, Lgxt;->r:Ljava/lang/String;

    .end local v13    # "strVal":Ljava/lang/String;
    move v9, v10

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0

    .line 2670
    .end local v2    # "charIndex":I
    .end local v9    # "offset":I
    .restart local v10    # "offset":I
    .restart local v13    # "strVal":Ljava/lang/String;
    :cond_11
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->o:I

    .line 2671
    move-object/from16 v0, p0

    iget-object v13, v0, Lgxt;->r:Ljava/lang/String;

    .end local v13    # "strVal":Ljava/lang/String;
    move v9, v10

    .end local v10    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_0
.end method

.method public final e()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v10, 0x2c

    const/16 v9, 0xd

    const/16 v8, 0xc

    const/16 v7, 0xa

    const/16 v3, 0x1a

    .line 222
    const/4 v4, 0x0

    iput v4, p0, Lgxt;->g:I

    .line 225
    :goto_0
    iget v4, p0, Lgxt;->e:I

    iput v4, p0, Lgxt;->b:I

    .line 227
    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_0

    .line 228
    invoke-direct {p0}, Lgxt;->t()V

    goto :goto_0

    .line 232
    :cond_0
    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x22

    if-ne v4, v5, :cond_1

    .line 233
    invoke-virtual {p0}, Lgxt;->h()V

    .line 405
    :goto_1
    return-void

    .line 237
    :cond_1
    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x39

    if-le v4, v5, :cond_3

    :cond_2
    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_4

    .line 238
    :cond_3
    invoke-virtual {p0}, Lgxt;->n()V

    goto :goto_1

    .line 242
    :cond_4
    iget-char v4, p0, Lgxt;->d:C

    if-ne v4, v10, :cond_5

    .line 243
    invoke-virtual {p0}, Lgxt;->c()C

    .line 244
    const/16 v3, 0x10

    iput v3, p0, Lgxt;->a:I

    goto :goto_1

    .line 248
    :cond_5
    iget-char v4, p0, Lgxt;->d:C

    sparse-switch v4, :sswitch_data_0

    .line 388
    iget v4, p0, Lgxt;->e:I

    iget v5, p0, Lgxt;->q:I

    if-eq v4, v5, :cond_6

    iget-char v4, p0, Lgxt;->d:C

    if-ne v4, v3, :cond_12

    iget v4, p0, Lgxt;->e:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lgxt;->q:I

    if-ne v4, v5, :cond_12

    :cond_6
    const/4 v0, 0x1

    .line 389
    .local v0, "eof":Z
    :goto_2
    if-eqz v0, :cond_14

    .line 390
    iget v3, p0, Lgxt;->a:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_13

    .line 391
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v4, "EOF error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    .end local v0    # "eof":Z
    :sswitch_0
    invoke-virtual {p0}, Lgxt;->h()V

    goto :goto_1

    .line 258
    :sswitch_1
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_0

    .line 262
    :sswitch_2
    iget-object v4, p0, Lgxt;->p:Ljava/lang/String;

    const-string/jumbo v5, "true"

    iget v6, p0, Lgxt;->e:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 263
    iget v4, p0, Lgxt;->e:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lgxt;->e:I

    .line 264
    iget v4, p0, Lgxt;->e:I

    invoke-direct {p0, v4}, Lgxt;->b(I)C

    move-result v4

    iput-char v4, p0, Lgxt;->d:C

    .line 266
    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x20

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lgxt;->d:C

    if-eq v4, v10, :cond_7

    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lgxt;->d:C

    if-eq v4, v7, :cond_7

    iget-char v4, p0, Lgxt;->d:C

    if-eq v4, v9, :cond_7

    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lgxt;->d:C

    if-eq v4, v3, :cond_7

    iget-char v3, p0, Lgxt;->d:C

    if-eq v3, v8, :cond_7

    iget-char v3, p0, Lgxt;->d:C

    const/16 v4, 0x8

    if-eq v3, v4, :cond_7

    iget-char v3, p0, Lgxt;->d:C

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_8

    .line 277
    :cond_7
    const/4 v3, 0x6

    iput v3, p0, Lgxt;->a:I

    goto/16 :goto_1

    .line 281
    :cond_8
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v4, "scan true error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 286
    :sswitch_3
    invoke-direct {p0}, Lgxt;->u()V

    goto/16 :goto_1

    .line 290
    :sswitch_4
    iget-object v4, p0, Lgxt;->p:Ljava/lang/String;

    const-string/jumbo v5, "false"

    iget v6, p0, Lgxt;->e:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 291
    iget v4, p0, Lgxt;->e:I

    add-int/lit8 v4, v4, 0x5

    iput v4, p0, Lgxt;->e:I

    .line 292
    iget v4, p0, Lgxt;->e:I

    invoke-direct {p0, v4}, Lgxt;->b(I)C

    move-result v4

    iput-char v4, p0, Lgxt;->d:C

    .line 294
    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x20

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lgxt;->d:C

    if-eq v4, v10, :cond_9

    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lgxt;->d:C

    if-eq v4, v7, :cond_9

    iget-char v4, p0, Lgxt;->d:C

    if-eq v4, v9, :cond_9

    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lgxt;->d:C

    if-eq v4, v3, :cond_9

    iget-char v3, p0, Lgxt;->d:C

    if-eq v3, v8, :cond_9

    iget-char v3, p0, Lgxt;->d:C

    const/16 v4, 0x8

    if-eq v3, v4, :cond_9

    iget-char v3, p0, Lgxt;->d:C

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_a

    .line 305
    :cond_9
    const/4 v3, 0x7

    iput v3, p0, Lgxt;->a:I

    goto/16 :goto_1

    .line 309
    :cond_a
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v4, "scan false error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    :sswitch_5
    const/4 v2, 0x0

    .line 314
    .local v2, "token":I
    iget-object v4, p0, Lgxt;->p:Ljava/lang/String;

    const-string/jumbo v5, "null"

    iget v6, p0, Lgxt;->e:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 315
    iget v4, p0, Lgxt;->e:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lgxt;->e:I

    .line 316
    const/16 v2, 0x8

    .line 322
    :cond_b
    :goto_3
    if-eqz v2, :cond_e

    .line 323
    iget v4, p0, Lgxt;->e:I

    invoke-direct {p0, v4}, Lgxt;->b(I)C

    move-result v4

    iput-char v4, p0, Lgxt;->d:C

    .line 324
    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x20

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lgxt;->d:C

    if-eq v4, v10, :cond_c

    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lgxt;->d:C

    if-eq v4, v7, :cond_c

    iget-char v4, p0, Lgxt;->d:C

    if-eq v4, v9, :cond_c

    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lgxt;->d:C

    if-eq v4, v3, :cond_c

    iget-char v3, p0, Lgxt;->d:C

    if-eq v3, v8, :cond_c

    iget-char v3, p0, Lgxt;->d:C

    const/16 v4, 0x8

    if-ne v3, v4, :cond_e

    .line 334
    :cond_c
    iput v2, p0, Lgxt;->a:I

    goto/16 :goto_1

    .line 317
    :cond_d
    iget-object v4, p0, Lgxt;->p:Ljava/lang/String;

    const-string/jumbo v5, "new"

    iget v6, p0, Lgxt;->e:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 318
    iget v4, p0, Lgxt;->e:I

    add-int/lit8 v4, v4, 0x3

    iput v4, p0, Lgxt;->e:I

    .line 319
    const/16 v2, 0x9

    goto :goto_3

    .line 339
    :cond_e
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v4, "scan null/new error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    .end local v2    # "token":I
    :sswitch_6
    invoke-virtual {p0}, Lgxt;->c()C

    .line 343
    iput v7, p0, Lgxt;->a:I

    goto/16 :goto_1

    .line 346
    :sswitch_7
    invoke-virtual {p0}, Lgxt;->c()C

    .line 347
    const/16 v3, 0xb

    iput v3, p0, Lgxt;->a:I

    goto/16 :goto_1

    .line 352
    :sswitch_8
    iget v4, p0, Lgxt;->e:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lgxt;->e:I

    .line 353
    .local v1, "index":I
    iget v4, p0, Lgxt;->q:I

    if-lt v1, v4, :cond_f

    .line 355
    :goto_4
    iput-char v3, p0, Lgxt;->d:C

    .line 357
    const/16 v3, 0xe

    iput v3, p0, Lgxt;->a:I

    goto/16 :goto_1

    .line 353
    :cond_f
    iget-object v3, p0, Lgxt;->p:Ljava/lang/String;

    .line 355
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_4

    .line 360
    .end local v1    # "index":I
    :sswitch_9
    invoke-virtual {p0}, Lgxt;->c()C

    .line 361
    const/16 v3, 0xf

    iput v3, p0, Lgxt;->a:I

    goto/16 :goto_1

    .line 366
    :sswitch_a
    iget v4, p0, Lgxt;->e:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lgxt;->e:I

    .line 367
    .restart local v1    # "index":I
    iget v4, p0, Lgxt;->q:I

    if-lt v1, v4, :cond_10

    .line 369
    :goto_5
    iput-char v3, p0, Lgxt;->d:C

    .line 371
    iput v8, p0, Lgxt;->a:I

    goto/16 :goto_1

    .line 367
    :cond_10
    iget-object v3, p0, Lgxt;->p:Ljava/lang/String;

    .line 369
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5

    .line 376
    .end local v1    # "index":I
    :sswitch_b
    iget v4, p0, Lgxt;->e:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lgxt;->e:I

    .line 377
    .restart local v1    # "index":I
    iget v4, p0, Lgxt;->q:I

    if-lt v1, v4, :cond_11

    .line 379
    :goto_6
    iput-char v3, p0, Lgxt;->d:C

    .line 381
    iput v9, p0, Lgxt;->a:I

    goto/16 :goto_1

    .line 377
    :cond_11
    iget-object v3, p0, Lgxt;->p:Ljava/lang/String;

    .line 379
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_6

    .line 384
    .end local v1    # "index":I
    :sswitch_c
    invoke-virtual {p0}, Lgxt;->c()C

    .line 385
    const/16 v3, 0x11

    iput v3, p0, Lgxt;->a:I

    goto/16 :goto_1

    .line 388
    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 394
    .restart local v0    # "eof":Z
    :cond_13
    const/16 v3, 0x14

    iput v3, p0, Lgxt;->a:I

    .line 395
    const/4 v3, 0x0

    iput v3, p0, Lgxt;->e:I

    iput v3, p0, Lgxt;->b:I

    goto/16 :goto_1

    .line 397
    :cond_14
    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x1f

    if-le v4, v5, :cond_15

    iget-char v4, p0, Lgxt;->d:C

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_16

    .line 398
    :cond_15
    invoke-virtual {p0}, Lgxt;->c()C

    goto/16 :goto_0

    .line 401
    :cond_16
    const/4 v3, 0x1

    iput v3, p0, Lgxt;->a:I

    .line 402
    invoke-virtual {p0}, Lgxt;->c()C

    goto/16 :goto_1

    .line 248
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x3a -> :sswitch_c
        0x53 -> :sswitch_3
        0x54 -> :sswitch_3
        0x5b -> :sswitch_8
        0x5d -> :sswitch_9
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_3
        0x7b -> :sswitch_a
        0x7d -> :sswitch_b
    .end sparse-switch
.end method

.method public final f()Ljava/lang/Number;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 604
    const-wide/16 v10, 0x0

    .line 605
    .local v10, "result":J
    const/4 v8, 0x0

    .line 606
    .local v8, "negative":Z
    iget v3, p0, Lgxt;->j:I

    .local v3, "i":I
    iget v12, p0, Lgxt;->j:I

    iget v13, p0, Lgxt;->g:I

    add-int v5, v12, v13

    .line 610
    .local v5, "max":I
    const/16 v9, 0x20

    .line 612
    .local v9, "type":C
    add-int/lit8 v1, v5, -0x1

    .line 613
    .local v1, "charIndex":I
    iget v12, p0, Lgxt;->q:I

    if-lt v1, v12, :cond_1

    const/16 v0, 0x1a

    .line 617
    .local v0, "chLocal":C
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 634
    :goto_1
    iget v12, p0, Lgxt;->j:I

    iget v13, p0, Lgxt;->q:I

    if-lt v12, v13, :cond_2

    const/16 v0, 0x1a

    .line 637
    :goto_2
    const/16 v12, 0x2d

    if-ne v0, v12, :cond_3

    .line 638
    const/4 v8, 0x1

    .line 639
    const-wide/high16 v6, -0x8000000000000000L

    .line 640
    .local v6, "limit":J
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .line 644
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_3
    if-ge v4, v5, :cond_0

    .line 645
    add-int/lit8 v3, v4, 0x1

    .line 646
    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v1, v4

    iget v12, p0, Lgxt;->q:I

    if-lt v4, v12, :cond_4

    const/16 v0, 0x1a

    .line 649
    :goto_4
    add-int/lit8 v2, v0, -0x30

    .line 650
    .local v2, "digit":I
    neg-int v12, v2

    int-to-long v10, v12

    move v4, v3

    .line 652
    .end local v2    # "digit":I
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_0
    :goto_5
    if-ge v4, v5, :cond_8

    .line 654
    add-int/lit8 v3, v4, 0x1

    .line 655
    .end local v4    # "i":I
    .restart local v3    # "i":I
    move v1, v4

    iget v12, p0, Lgxt;->q:I

    if-lt v4, v12, :cond_5

    const/16 v0, 0x1a

    .line 658
    :goto_6
    add-int/lit8 v2, v0, -0x30

    .line 659
    .restart local v2    # "digit":I
    const-wide v12, -0xcccccccccccccccL

    cmp-long v12, v10, v12

    if-gez v12, :cond_6

    .line 660
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lgxt;->d()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 697
    .end local v2    # "digit":I
    :goto_7
    return-object v12

    .line 613
    .end local v0    # "chLocal":C
    .end local v6    # "limit":J
    :cond_1
    iget-object v12, p0, Lgxt;->p:Ljava/lang/String;

    .line 615
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 619
    .restart local v0    # "chLocal":C
    :sswitch_0
    add-int/lit8 v5, v5, -0x1

    .line 620
    const/16 v9, 0x4c

    .line 621
    goto :goto_1

    .line 623
    :sswitch_1
    add-int/lit8 v5, v5, -0x1

    .line 624
    const/16 v9, 0x53

    .line 625
    goto :goto_1

    .line 627
    :sswitch_2
    add-int/lit8 v5, v5, -0x1

    .line 628
    const/16 v9, 0x42

    goto :goto_1

    .line 634
    :cond_2
    iget-object v12, p0, Lgxt;->p:Ljava/lang/String;

    iget v13, p0, Lgxt;->j:I

    .line 636
    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 642
    :cond_3
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v6    # "limit":J
    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .line 646
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :cond_4
    iget-object v12, p0, Lgxt;->p:Ljava/lang/String;

    .line 648
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 655
    :cond_5
    iget-object v12, p0, Lgxt;->p:Ljava/lang/String;

    .line 657
    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_6

    .line 662
    .restart local v2    # "digit":I
    :cond_6
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 663
    int-to-long v12, v2

    add-long/2addr v12, v6

    cmp-long v12, v10, v12

    if-gez v12, :cond_7

    .line 664
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lgxt;->d()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 666
    :cond_7
    int-to-long v12, v2

    sub-long/2addr v10, v12

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_5

    .line 669
    .end local v2    # "digit":I
    :cond_8
    if-eqz v8, :cond_d

    .line 670
    iget v12, p0, Lgxt;->j:I

    add-int/lit8 v12, v12, 0x1

    if-le v4, v12, :cond_c

    .line 671
    const-wide/32 v12, -0x80000000

    cmp-long v12, v10, v12

    if-ltz v12, :cond_b

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_b

    .line 672
    const/16 v12, 0x53

    if-ne v9, v12, :cond_9

    .line 673
    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_7

    .line 676
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_9
    const/16 v12, 0x42

    if-ne v9, v12, :cond_a

    .line 677
    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 680
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_a
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 682
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_b
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 684
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_c
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lgxt;->d()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 687
    :cond_d
    neg-long v10, v10

    .line 688
    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v10, v12

    if-gtz v12, :cond_10

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_10

    .line 689
    const/16 v12, 0x53

    if-ne v9, v12, :cond_e

    .line 690
    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 691
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_e
    const/16 v12, 0x42

    if-ne v9, v12, :cond_f

    .line 692
    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 694
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_f
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 697
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_10
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_7

    .line 617
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public final f(J)Ljava/util/Date;
    .locals 19
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2678
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->o:I

    .line 2680
    invoke-direct/range {p0 .. p2}, Lgxt;->o(J)I

    move-result v8

    .line 2681
    .local v8, "offset":I
    if-nez v8, :cond_0

    .line 2682
    const/4 v3, 0x0

    .line 2830
    :goto_0
    return-object v3

    .line 2685
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    .line 2686
    .local v13, "startPos":I
    move-object/from16 v0, p0

    iget-char v11, v0, Lgxt;->d:C

    .line 2691
    .local v11, "startChar":C
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .local v9, "offset":I
    add-int v5, v14, v8

    .line 2692
    .local v5, "index":I
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->q:I

    if-lt v5, v14, :cond_2

    const/16 v2, 0x1a

    .line 2700
    .local v2, "chLocal":C
    :goto_1
    const/16 v14, 0x22

    if-ne v2, v14, :cond_5

    .line 2703
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int v12, v14, v9

    .line 2705
    .local v12, "startIndex":I
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v5, v14, v9

    .line 2706
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->q:I

    if-ge v5, v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    .line 2708
    invoke-virtual {v14, v5}, Ljava/lang/String;->charAt(I)C

    .line 2712
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    const/16 v15, 0x22

    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v16, v0

    add-int v16, v16, v8

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 2713
    .local v4, "endIndex":I
    const/4 v14, -0x1

    if-ne v4, v14, :cond_3

    .line 2714
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v15, "unclosed str"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 2692
    .end local v2    # "chLocal":C
    .end local v4    # "endIndex":I
    .end local v8    # "offset":I
    .end local v12    # "startIndex":I
    .restart local v9    # "offset":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    .line 2694
    invoke-virtual {v14, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    .line 2716
    .end local v9    # "offset":I
    .restart local v2    # "chLocal":C
    .restart local v4    # "endIndex":I
    .restart local v8    # "offset":I
    .restart local v12    # "startIndex":I
    :cond_3
    sub-int v10, v4, v12

    .line 2717
    .local v10, "rest":I
    move-object/from16 v0, p0

    iput v12, v0, Lgxt;->e:I

    .line 2718
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v10}, Lgxt;->a(ZI)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 2719
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->n:Ljava/util/Calendar;

    invoke-virtual {v14}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 2726
    .local v3, "dateVal":Ljava/util/Date;
    add-int/2addr v8, v10

    .line 2727
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v14, v13, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lgxt;->b(I)C

    move-result v2

    .line 2728
    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->e:I

    .line 2766
    .end local v4    # "endIndex":I
    .end local v10    # "rest":I
    .end local v12    # "startIndex":I
    :goto_2
    const/16 v14, 0x2c

    if-ne v2, v14, :cond_d

    .line 2767
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v15, v9, -0x1

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->e:I

    .line 2770
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v5, v14, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lgxt;->e:I

    .line 2771
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->q:I

    if-lt v5, v14, :cond_c

    const/16 v14, 0x1a

    .line 2773
    :goto_3
    move-object/from16 v0, p0

    iput-char v14, v0, Lgxt;->d:C

    .line 2775
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->o:I

    .line 2776
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->a:I

    move v8, v9

    .line 2777
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_0

    .line 2721
    .end local v3    # "dateVal":Ljava/util/Date;
    .restart local v4    # "endIndex":I
    .restart local v10    # "rest":I
    .restart local v12    # "startIndex":I
    :cond_4
    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->e:I

    .line 2722
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->o:I

    .line 2723
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2729
    .end local v4    # "endIndex":I
    .end local v8    # "offset":I
    .end local v10    # "rest":I
    .end local v12    # "startIndex":I
    .restart local v9    # "offset":I
    :cond_5
    const/16 v14, 0x30

    if-lt v2, v14, :cond_b

    const/16 v14, 0x39

    if-gt v2, v14, :cond_b

    .line 2731
    add-int/lit8 v14, v2, -0x30

    int-to-long v6, v14

    .local v6, "millis":J
    move v8, v9

    .line 2735
    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    :goto_4
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    add-int v5, v14, v8

    .line 2736
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->q:I

    if-lt v5, v14, :cond_6

    const/16 v2, 0x1a

    .line 2740
    :goto_5
    const/16 v14, 0x30

    if-lt v2, v14, :cond_7

    const/16 v14, 0x39

    if-gt v2, v14, :cond_7

    .line 2741
    const-wide/16 v14, 0xa

    mul-long/2addr v14, v6

    add-int/lit8 v16, v2, -0x30

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_4

    .line 2736
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    .line 2738
    invoke-virtual {v14, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_5

    .line 2742
    :cond_7
    const/16 v14, 0x2e

    if-ne v2, v14, :cond_8

    .line 2743
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->o:I

    .line 2744
    const/4 v3, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_0

    .line 2745
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_8
    const/16 v14, 0x22

    if-ne v2, v14, :cond_16

    .line 2746
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int v5, v14, v9

    .line 2747
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->q:I

    if-lt v5, v14, :cond_9

    const/16 v2, 0x1a

    .line 2755
    :goto_6
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-gez v14, :cond_a

    .line 2756
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->o:I

    .line 2757
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2747
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    .line 2749
    invoke-virtual {v14, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_6

    .line 2760
    :cond_a
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .restart local v3    # "dateVal":Ljava/util/Date;
    move v9, v8

    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    goto/16 :goto_2

    .line 2762
    .end local v3    # "dateVal":Ljava/util/Date;
    .end local v6    # "millis":J
    :cond_b
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->o:I

    .line 2763
    const/4 v3, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_0

    .line 2771
    .end local v8    # "offset":I
    .restart local v3    # "dateVal":Ljava/util/Date;
    .restart local v9    # "offset":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    .line 2773
    invoke-virtual {v14, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    goto/16 :goto_3

    .line 2780
    :cond_d
    const/16 v14, 0x7d

    if-ne v2, v14, :cond_15

    .line 2781
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v14, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lgxt;->b(I)C

    move-result v2

    .line 2782
    const/16 v14, 0x2c

    if-ne v2, v14, :cond_f

    .line 2783
    const/16 v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->a:I

    .line 2784
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v15, v8, -0x1

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->e:I

    .line 2787
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v5, v14, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lgxt;->e:I

    .line 2788
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->q:I

    if-lt v5, v14, :cond_e

    const/16 v14, 0x1a

    .line 2790
    :goto_7
    move-object/from16 v0, p0

    iput-char v14, v0, Lgxt;->d:C

    .line 2822
    :goto_8
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->o:I

    goto/16 :goto_0

    .line 2788
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    .line 2790
    invoke-virtual {v14, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    goto :goto_7

    .line 2792
    :cond_f
    const/16 v14, 0x5d

    if-ne v2, v14, :cond_11

    .line 2793
    const/16 v14, 0xf

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->a:I

    .line 2794
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v15, v8, -0x1

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->e:I

    .line 2797
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v5, v14, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lgxt;->e:I

    .line 2798
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->q:I

    if-lt v5, v14, :cond_10

    const/16 v14, 0x1a

    .line 2800
    :goto_9
    move-object/from16 v0, p0

    iput-char v14, v0, Lgxt;->d:C

    goto :goto_8

    .line 2798
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    .line 2800
    invoke-virtual {v14, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    goto :goto_9

    .line 2802
    :cond_11
    const/16 v14, 0x7d

    if-ne v2, v14, :cond_13

    .line 2803
    const/16 v14, 0xd

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->a:I

    .line 2804
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v15, v8, -0x1

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->e:I

    .line 2807
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v5, v14, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lgxt;->e:I

    .line 2808
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->q:I

    if-lt v5, v14, :cond_12

    const/16 v14, 0x1a

    .line 2810
    :goto_a
    move-object/from16 v0, p0

    iput-char v14, v0, Lgxt;->d:C

    goto :goto_8

    .line 2808
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lgxt;->p:Ljava/lang/String;

    .line 2810
    invoke-virtual {v14, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    goto :goto_a

    .line 2812
    :cond_13
    const/16 v14, 0x1a

    if-ne v2, v14, :cond_14

    .line 2813
    const/16 v14, 0x14

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->a:I

    .line 2814
    move-object/from16 v0, p0

    iget v14, v0, Lgxt;->e:I

    add-int/lit8 v15, v8, -0x1

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->e:I

    .line 2815
    const/16 v14, 0x1a

    move-object/from16 v0, p0

    iput-char v14, v0, Lgxt;->d:C

    goto/16 :goto_8

    .line 2817
    :cond_14
    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->e:I

    .line 2818
    move-object/from16 v0, p0

    iput-char v11, v0, Lgxt;->d:C

    .line 2819
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->o:I

    .line 2820
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2824
    .end local v8    # "offset":I
    .restart local v9    # "offset":I
    :cond_15
    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->e:I

    .line 2825
    move-object/from16 v0, p0

    iput-char v11, v0, Lgxt;->d:C

    .line 2826
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lgxt;->o:I

    .line 2827
    const/4 v3, 0x0

    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_0

    .end local v3    # "dateVal":Ljava/util/Date;
    .end local v8    # "offset":I
    .restart local v6    # "millis":J
    .restart local v9    # "offset":I
    :cond_16
    move v8, v9

    .end local v9    # "offset":I
    .restart local v8    # "offset":I
    goto/16 :goto_6
.end method

.method public final g()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/high16 v3, 0x10000

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pos "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lgxt;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lgxt;->q:I

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lgxt;->p:Ljava/lang/String;

    .line 914
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 910
    return-object v0

    :cond_0
    iget-object v0, p0, Lgxt;->p:Ljava/lang/String;

    const/4 v2, 0x0

    .line 914
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final g(J)Z
    .locals 9
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2834
    const/4 v6, 0x0

    iput v6, p0, Lgxt;->o:I

    .line 2836
    invoke-direct {p0, p1, p2}, Lgxt;->o(J)I

    move-result v3

    .line 2837
    .local v3, "offset":I
    if-nez v3, :cond_0

    .line 2838
    const/4 v5, 0x0

    .line 2953
    :goto_0
    return v5

    .line 2842
    :cond_0
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    const-string/jumbo v7, "false"

    iget v8, p0, Lgxt;->e:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2843
    add-int/lit8 v3, v3, 0x5

    .line 2844
    const/4 v5, 0x0

    .line 2872
    .local v5, "value":Z
    :goto_1
    iget v6, p0, Lgxt;->e:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int v1, v6, v3

    .line 2873
    .local v1, "charIndex":I
    iget v6, p0, Lgxt;->q:I

    if-lt v1, v6, :cond_9

    const/16 v0, 0x1a

    .line 2878
    .local v0, "chLocal":C
    :goto_2
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_b

    .line 2879
    iget v6, p0, Lgxt;->e:I

    add-int/lit8 v7, v4, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lgxt;->e:I

    .line 2882
    iget v6, p0, Lgxt;->e:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lgxt;->e:I

    .line 2883
    .local v2, "index":I
    iget v6, p0, Lgxt;->q:I

    if-lt v2, v6, :cond_a

    const/16 v6, 0x1a

    .line 2885
    :goto_3
    iput-char v6, p0, Lgxt;->d:C

    .line 2887
    const/4 v6, 0x3

    iput v6, p0, Lgxt;->o:I

    .line 2888
    const/16 v6, 0x10

    iput v6, p0, Lgxt;->a:I

    move v3, v4

    .line 2890
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .line 2845
    .end local v0    # "chLocal":C
    .end local v1    # "charIndex":I
    .end local v2    # "index":I
    .end local v5    # "value":Z
    :cond_1
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    const-string/jumbo v7, "true"

    iget v8, p0, Lgxt;->e:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2846
    add-int/lit8 v3, v3, 0x4

    .line 2847
    const/4 v5, 0x1

    .restart local v5    # "value":Z
    goto :goto_1

    .line 2848
    .end local v5    # "value":Z
    :cond_2
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    const-string/jumbo v7, "\"false\""

    iget v8, p0, Lgxt;->e:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2849
    add-int/lit8 v3, v3, 0x7

    .line 2850
    const/4 v5, 0x0

    .restart local v5    # "value":Z
    goto :goto_1

    .line 2851
    .end local v5    # "value":Z
    :cond_3
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    const-string/jumbo v7, "\"true\""

    iget v8, p0, Lgxt;->e:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2852
    add-int/lit8 v3, v3, 0x6

    .line 2853
    const/4 v5, 0x1

    .restart local v5    # "value":Z
    goto :goto_1

    .line 2854
    .end local v5    # "value":Z
    :cond_4
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    iget v7, p0, Lgxt;->e:I

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_5

    .line 2855
    add-int/lit8 v3, v3, 0x1

    .line 2856
    const/4 v5, 0x1

    .restart local v5    # "value":Z
    goto :goto_1

    .line 2857
    .end local v5    # "value":Z
    :cond_5
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    iget v7, p0, Lgxt;->e:I

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_6

    .line 2858
    add-int/lit8 v3, v3, 0x1

    .line 2859
    const/4 v5, 0x0

    .restart local v5    # "value":Z
    goto/16 :goto_1

    .line 2860
    .end local v5    # "value":Z
    :cond_6
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    const-string/jumbo v7, "\"1\""

    iget v8, p0, Lgxt;->e:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2861
    add-int/lit8 v3, v3, 0x3

    .line 2862
    const/4 v5, 0x1

    .restart local v5    # "value":Z
    goto/16 :goto_1

    .line 2863
    .end local v5    # "value":Z
    :cond_7
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    const-string/jumbo v7, "\"0\""

    iget v8, p0, Lgxt;->e:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2864
    add-int/lit8 v3, v3, 0x3

    .line 2865
    const/4 v5, 0x0

    .restart local v5    # "value":Z
    goto/16 :goto_1

    .line 2867
    .end local v5    # "value":Z
    :cond_8
    const/4 v6, -0x1

    iput v6, p0, Lgxt;->o:I

    .line 2868
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2873
    .end local v3    # "offset":I
    .restart local v1    # "charIndex":I
    .restart local v4    # "offset":I
    .restart local v5    # "value":Z
    :cond_9
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    .line 2875
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_2

    .line 2883
    .restart local v0    # "chLocal":C
    .restart local v2    # "index":I
    :cond_a
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    .line 2885
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto/16 :goto_3

    .line 2891
    .end local v2    # "index":I
    :cond_b
    const/16 v6, 0x7d

    if-eq v0, v6, :cond_e

    const/16 v6, 0x20

    if-eq v0, v6, :cond_c

    const/16 v6, 0xa

    if-eq v0, v6, :cond_c

    const/16 v6, 0xd

    if-eq v0, v6, :cond_c

    const/16 v6, 0x9

    if-eq v0, v6, :cond_c

    const/16 v6, 0xc

    if-eq v0, v6, :cond_c

    const/16 v6, 0x8

    if-ne v0, v6, :cond_e

    .line 2898
    :cond_c
    iget v6, p0, Lgxt;->e:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int v1, v6, v4

    .line 2899
    iget v6, p0, Lgxt;->q:I

    if-lt v1, v6, :cond_d

    const/16 v0, 0x1a

    :goto_4
    move v4, v3

    .line 2902
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_2

    .line 2899
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_d
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    .line 2901
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 2907
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_e
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_16

    .line 2908
    iget v6, p0, Lgxt;->e:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v6, v4

    invoke-direct {p0, v6}, Lgxt;->b(I)C

    move-result v0

    .line 2909
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_10

    .line 2910
    const/16 v6, 0x10

    iput v6, p0, Lgxt;->a:I

    .line 2911
    iget v6, p0, Lgxt;->e:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lgxt;->e:I

    .line 2914
    iget v6, p0, Lgxt;->e:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lgxt;->e:I

    .line 2915
    .restart local v2    # "index":I
    iget v6, p0, Lgxt;->q:I

    if-lt v2, v6, :cond_f

    const/16 v6, 0x1a

    .line 2917
    :goto_5
    iput-char v6, p0, Lgxt;->d:C

    .line 2947
    .end local v2    # "index":I
    :goto_6
    const/4 v6, 0x4

    iput v6, p0, Lgxt;->o:I

    goto/16 :goto_0

    .line 2915
    .restart local v2    # "index":I
    :cond_f
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    .line 2917
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_5

    .line 2919
    .end local v2    # "index":I
    :cond_10
    const/16 v6, 0x5d

    if-ne v0, v6, :cond_12

    .line 2920
    const/16 v6, 0xf

    iput v6, p0, Lgxt;->a:I

    .line 2921
    iget v6, p0, Lgxt;->e:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lgxt;->e:I

    .line 2924
    iget v6, p0, Lgxt;->e:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lgxt;->e:I

    .line 2925
    .restart local v2    # "index":I
    iget v6, p0, Lgxt;->q:I

    if-lt v2, v6, :cond_11

    const/16 v6, 0x1a

    .line 2927
    :goto_7
    iput-char v6, p0, Lgxt;->d:C

    goto :goto_6

    .line 2925
    :cond_11
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    .line 2927
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_7

    .line 2929
    .end local v2    # "index":I
    :cond_12
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_14

    .line 2930
    const/16 v6, 0xd

    iput v6, p0, Lgxt;->a:I

    .line 2931
    iget v6, p0, Lgxt;->e:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lgxt;->e:I

    .line 2934
    iget v6, p0, Lgxt;->e:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lgxt;->e:I

    .line 2935
    .restart local v2    # "index":I
    iget v6, p0, Lgxt;->q:I

    if-lt v2, v6, :cond_13

    const/16 v6, 0x1a

    .line 2937
    :goto_8
    iput-char v6, p0, Lgxt;->d:C

    goto :goto_6

    .line 2935
    :cond_13
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    .line 2937
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_8

    .line 2939
    .end local v2    # "index":I
    :cond_14
    const/16 v6, 0x1a

    if-ne v0, v6, :cond_15

    .line 2940
    const/16 v6, 0x14

    iput v6, p0, Lgxt;->a:I

    .line 2941
    iget v6, p0, Lgxt;->e:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lgxt;->e:I

    .line 2942
    const/16 v6, 0x1a

    iput-char v6, p0, Lgxt;->d:C

    goto :goto_6

    .line 2944
    :cond_15
    const/4 v6, -0x1

    iput v6, p0, Lgxt;->o:I

    .line 2945
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2949
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_16
    const/4 v6, -0x1

    iput v6, p0, Lgxt;->o:I

    .line 2950
    const/4 v5, 0x0

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_0
.end method

.method public final h(J)F
    .locals 15
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 2957
    const/4 v12, 0x0

    iput v12, p0, Lgxt;->o:I

    .line 2959
    invoke-direct/range {p0 .. p2}, Lgxt;->o(J)I

    move-result v5

    .line 2960
    .local v5, "offset":I
    if-nez v5, :cond_0

    .line 2961
    const/4 v11, 0x0

    .line 3072
    :goto_0
    return v11

    .line 2964
    :cond_0
    iget v12, p0, Lgxt;->e:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int/2addr v12, v5

    invoke-direct {p0, v12}, Lgxt;->b(I)C

    move-result v0

    .line 2966
    .local v0, "chLocal":C
    iget v12, p0, Lgxt;->e:I

    add-int/2addr v12, v6

    add-int/lit8 v9, v12, -0x1

    .line 2967
    .local v9, "start":I
    const/16 v12, 0x2d

    if-ne v0, v12, :cond_1

    const/4 v4, 0x1

    .line 2968
    .local v4, "negative":Z
    :goto_1
    if-eqz v4, :cond_15

    .line 2969
    iget v12, p0, Lgxt;->e:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-direct {p0, v12}, Lgxt;->b(I)C

    move-result v0

    .line 2973
    :goto_2
    const/16 v12, 0x30

    if-lt v0, v12, :cond_d

    const/16 v12, 0x39

    if-gt v0, v12, :cond_d

    .line 2974
    add-int/lit8 v3, v0, -0x30

    .line 2976
    .local v3, "intVal":I
    :goto_3
    iget v12, p0, Lgxt;->e:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-direct {p0, v12}, Lgxt;->b(I)C

    move-result v0

    .line 2977
    const/16 v12, 0x30

    if-lt v0, v12, :cond_2

    const/16 v12, 0x39

    if-gt v0, v12, :cond_2

    .line 2978
    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v13, v0, -0x30

    add-int v3, v12, v13

    move v5, v6

    .line 2979
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_3

    .line 2967
    .end local v3    # "intVal":I
    .end local v4    # "negative":Z
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 2985
    .restart local v3    # "intVal":I
    .restart local v4    # "negative":Z
    :cond_2
    const/4 v7, 0x1

    .line 2986
    .local v7, "power":I
    const/16 v12, 0x2e

    if-ne v0, v12, :cond_3

    const/4 v8, 0x1

    .line 2987
    .local v8, "small":Z
    :goto_4
    if-eqz v8, :cond_5

    .line 2988
    iget v12, p0, Lgxt;->e:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-direct {p0, v12}, Lgxt;->b(I)C

    move-result v0

    const/16 v12, 0x30

    if-lt v0, v12, :cond_4

    const/16 v12, 0x39

    if-gt v0, v12, :cond_4

    .line 2989
    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v13, v0, -0x30

    add-int v3, v12, v13

    .line 2990
    const/16 v7, 0xa

    .line 2991
    :goto_5
    iget v12, p0, Lgxt;->e:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-direct {p0, v12}, Lgxt;->b(I)C

    move-result v0

    .line 2992
    const/16 v12, 0x30

    if-lt v0, v12, :cond_5

    const/16 v12, 0x39

    if-gt v0, v12, :cond_5

    .line 2993
    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v13, v0, -0x30

    add-int v3, v12, v13

    .line 2994
    mul-int/lit8 v7, v7, 0xa

    move v5, v6

    .line 2995
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_5

    .line 2986
    .end local v5    # "offset":I
    .end local v8    # "small":Z
    .restart local v6    # "offset":I
    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    .line 3001
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    .restart local v8    # "small":Z
    :cond_4
    const/4 v12, -0x1

    iput v12, p0, Lgxt;->o:I

    .line 3002
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 3006
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_5
    const/16 v12, 0x65

    if-eq v0, v12, :cond_6

    const/16 v12, 0x45

    if-ne v0, v12, :cond_b

    :cond_6
    const/4 v2, 0x1

    .line 3007
    .local v2, "exp":Z
    :goto_6
    if-eqz v2, :cond_14

    .line 3008
    iget v12, p0, Lgxt;->e:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v12, v6

    invoke-direct {p0, v12}, Lgxt;->b(I)C

    move-result v0

    .line 3009
    const/16 v12, 0x2b

    if-eq v0, v12, :cond_7

    const/16 v12, 0x2d

    if-ne v0, v12, :cond_8

    .line 3010
    :cond_7
    iget v12, p0, Lgxt;->e:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-direct {p0, v12}, Lgxt;->b(I)C

    move-result v0

    move v5, v6

    .line 3013
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_8
    const/16 v12, 0x30

    if-lt v0, v12, :cond_9

    const/16 v12, 0x39

    if-le v0, v12, :cond_7

    .line 3021
    :cond_9
    :goto_7
    iget v12, p0, Lgxt;->e:I

    add-int/2addr v12, v5

    sub-int/2addr v12, v9

    add-int/lit8 v1, v12, -0x1

    .line 3022
    .local v1, "count":I
    if-nez v2, :cond_c

    const/16 v12, 0xa

    if-ge v1, v12, :cond_c

    .line 3023
    int-to-float v12, v3

    int-to-float v13, v7

    div-float v11, v12, v13

    .line 3024
    .local v11, "value":F
    if-eqz v4, :cond_a

    .line 3025
    neg-float v11, v11

    .line 3036
    :cond_a
    :goto_8
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_e

    .line 3037
    iget v12, p0, Lgxt;->e:I

    add-int/lit8 v13, v5, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lgxt;->e:I

    .line 3038
    invoke-virtual {p0}, Lgxt;->c()C

    .line 3039
    const/4 v12, 0x3

    iput v12, p0, Lgxt;->o:I

    .line 3040
    const/16 v12, 0x10

    iput v12, p0, Lgxt;->a:I

    goto/16 :goto_0

    .line 3006
    .end local v1    # "count":I
    .end local v2    # "exp":Z
    .end local v5    # "offset":I
    .end local v11    # "value":F
    .restart local v6    # "offset":I
    :cond_b
    const/4 v2, 0x0

    goto :goto_6

    .line 3028
    .end local v6    # "offset":I
    .restart local v1    # "count":I
    .restart local v2    # "exp":Z
    .restart local v5    # "offset":I
    :cond_c
    invoke-direct {p0, v9, v1}, Lgxt;->a(II)Ljava/lang/String;

    move-result-object v10

    .line 3029
    .local v10, "text":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .restart local v11    # "value":F
    goto :goto_8

    .line 3032
    .end local v1    # "count":I
    .end local v2    # "exp":Z
    .end local v3    # "intVal":I
    .end local v7    # "power":I
    .end local v8    # "small":Z
    .end local v10    # "text":Ljava/lang/String;
    .end local v11    # "value":F
    :cond_d
    const/4 v12, -0x1

    iput v12, p0, Lgxt;->o:I

    .line 3033
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 3044
    .restart local v1    # "count":I
    .restart local v2    # "exp":Z
    .restart local v3    # "intVal":I
    .restart local v7    # "power":I
    .restart local v8    # "small":Z
    .restart local v11    # "value":F
    :cond_e
    const/16 v12, 0x7d

    if-ne v0, v12, :cond_13

    .line 3045
    iget v12, p0, Lgxt;->e:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int/2addr v12, v5

    invoke-direct {p0, v12}, Lgxt;->b(I)C

    move-result v0

    .line 3046
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_f

    .line 3047
    const/16 v12, 0x10

    iput v12, p0, Lgxt;->a:I

    .line 3048
    iget v12, p0, Lgxt;->e:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lgxt;->e:I

    .line 3049
    invoke-virtual {p0}, Lgxt;->c()C

    .line 3066
    :goto_9
    const/4 v12, 0x4

    iput v12, p0, Lgxt;->o:I

    move v5, v6

    .line 3072
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 3050
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_f
    const/16 v12, 0x5d

    if-ne v0, v12, :cond_10

    .line 3051
    const/16 v12, 0xf

    iput v12, p0, Lgxt;->a:I

    .line 3052
    iget v12, p0, Lgxt;->e:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lgxt;->e:I

    .line 3053
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_9

    .line 3054
    :cond_10
    const/16 v12, 0x7d

    if-ne v0, v12, :cond_11

    .line 3055
    const/16 v12, 0xd

    iput v12, p0, Lgxt;->a:I

    .line 3056
    iget v12, p0, Lgxt;->e:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lgxt;->e:I

    .line 3057
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_9

    .line 3058
    :cond_11
    const/16 v12, 0x1a

    if-ne v0, v12, :cond_12

    .line 3059
    iget v12, p0, Lgxt;->e:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lgxt;->e:I

    .line 3060
    const/16 v12, 0x14

    iput v12, p0, Lgxt;->a:I

    .line 3061
    const/16 v12, 0x1a

    iput-char v12, p0, Lgxt;->d:C

    goto :goto_9

    .line 3063
    :cond_12
    const/4 v12, -0x1

    iput v12, p0, Lgxt;->o:I

    .line 3064
    const/4 v11, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 3068
    :cond_13
    const/4 v12, -0x1

    iput v12, p0, Lgxt;->o:I

    .line 3069
    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v1    # "count":I
    .end local v5    # "offset":I
    .end local v11    # "value":F
    .restart local v6    # "offset":I
    :cond_14
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_7

    .end local v2    # "exp":Z
    .end local v3    # "intVal":I
    .end local v5    # "offset":I
    .end local v7    # "power":I
    .end local v8    # "small":Z
    .restart local v6    # "offset":I
    :cond_15
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_2
.end method

.method public final h()V
    .locals 20

    .prologue
    .line 987
    move-object/from16 v0, p0

    iget-char v14, v0, Lgxt;->d:C

    .line 988
    .local v14, "quoteChar":C
    const/4 v6, 0x0

    .line 989
    .local v6, "hasSpecial":Z
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v17, v0

    add-int/lit8 v16, v17, 0x1

    .line 990
    .local v16, "startIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 991
    .local v5, "endIndex":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_0

    .line 992
    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "unclosed str, "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lgxt;->g()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 998
    :cond_0
    sub-int v4, v5, v16

    .line 999
    .local v4, "chars_len":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lgxt;->b(II)[C

    move-result-object v3

    .line 1000
    .local v3, "chars":[C
    :goto_0
    if-lez v4, :cond_4

    add-int/lit8 v17, v4, -0x1

    aget-char v17, v3, v17

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1003
    const/4 v15, 0x1

    .line 1004
    .local v15, "slashCount":I
    add-int/lit8 v7, v4, -0x2

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_1

    .line 1005
    aget-char v17, v3, v7

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1006
    add-int/lit8 v15, v15, 0x1

    .line 1004
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1011
    :cond_1
    rem-int/lit8 v17, v15, 0x2

    if-eqz v17, :cond_4

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v5, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 1016
    .local v11, "nextIndex":I
    sub-int v12, v11, v5

    .line 1017
    .local v12, "nextLen":I
    add-int v13, v4, v12

    .line 1019
    .local v13, "next_chars_len":I
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v13, v0, :cond_3

    .line 1020
    array-length v0, v3

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x3

    div-int/lit8 v10, v17, 0x2

    .line 1021
    .local v10, "newLen":I
    if-ge v10, v13, :cond_2

    .line 1022
    move v10, v13

    .line 1024
    :cond_2
    new-array v9, v10, [C

    .line 1025
    .local v9, "newChars":[C
    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v3, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1026
    move-object v3, v9

    .line 1028
    .end local v9    # "newChars":[C
    .end local v10    # "newLen":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1030
    move v4, v13

    .line 1031
    move v5, v11

    .line 1032
    const/4 v6, 0x1

    .line 1033
    goto :goto_0

    .line 1035
    .end local v7    # "i":I
    .end local v11    # "nextIndex":I
    .end local v12    # "nextLen":I
    .end local v13    # "next_chars_len":I
    .end local v15    # "slashCount":I
    :cond_4
    if-nez v6, :cond_6

    .line 1036
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    if-ge v7, v4, :cond_6

    .line 1037
    aget-char v17, v3, v7

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 1038
    const/4 v6, 0x1

    .line 1036
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1043
    .end local v7    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iput-object v3, v0, Lgxt;->f:[C

    .line 1044
    move-object/from16 v0, p0

    iput v4, v0, Lgxt;->g:I

    .line 1045
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->j:I

    .line 1046
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lgxt;->k:Z

    .line 1048
    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 1051
    move-object/from16 v0, p0

    iget v8, v0, Lgxt;->e:I

    .line 1052
    .local v8, "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v8, v0, :cond_7

    const/16 v17, 0x1a

    .line 1054
    :goto_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    .line 1057
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 1058
    return-void

    .line 1052
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1054
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v17

    goto :goto_3
.end method

.method public final i()I
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v10, 0x1a

    .line 1117
    const/4 v9, 0x0

    .line 1118
    .local v9, "result":I
    const/4 v8, 0x0

    .line 1119
    .local v8, "negative":Z
    iget v4, p0, Lgxt;->j:I

    .local v4, "i":I
    iget v11, p0, Lgxt;->j:I

    iget v12, p0, Lgxt;->g:I

    add-int v7, v11, v12

    .line 1123
    .local v7, "max":I
    iget v11, p0, Lgxt;->j:I

    iget v12, p0, Lgxt;->q:I

    if-lt v11, v12, :cond_1

    move v1, v10

    .line 1126
    .local v1, "chLocal":C
    :goto_0
    const/16 v11, 0x2d

    if-ne v1, v11, :cond_2

    .line 1127
    const/4 v8, 0x1

    .line 1128
    const/high16 v6, -0x80000000

    .line 1129
    .local v6, "limit":I
    add-int/lit8 v4, v4, 0x1

    move v5, v4

    .line 1134
    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_0

    .line 1135
    add-int/lit8 v4, v5, 0x1

    .line 1136
    .end local v5    # "i":I
    .restart local v4    # "i":I
    move v2, v5

    .local v2, "charIndex":I
    iget v11, p0, Lgxt;->q:I

    if-lt v5, v11, :cond_3

    move v1, v10

    .line 1140
    :goto_2
    add-int/lit8 v3, v1, -0x30

    .line 1141
    .local v3, "digit":I
    neg-int v9, v3

    move v5, v4

    .line 1143
    .end local v2    # "charIndex":I
    .end local v3    # "digit":I
    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_0
    :goto_3
    if-ge v5, v7, :cond_7

    .line 1146
    add-int/lit8 v4, v5, 0x1

    .line 1147
    .end local v5    # "i":I
    .restart local v4    # "i":I
    move v2, v5

    .restart local v2    # "charIndex":I
    iget v11, p0, Lgxt;->q:I

    if-lt v5, v11, :cond_4

    move v0, v10

    .line 1151
    .local v0, "ch":C
    :goto_4
    const/16 v11, 0x4c

    if-eq v0, v11, :cond_8

    const/16 v11, 0x53

    if-eq v0, v11, :cond_8

    const/16 v11, 0x42

    if-eq v0, v11, :cond_8

    .line 1155
    add-int/lit8 v3, v0, -0x30

    .line 1157
    .restart local v3    # "digit":I
    const v11, -0xccccccc

    if-ge v9, v11, :cond_5

    .line 1158
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lgxt;->d()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1123
    .end local v0    # "ch":C
    .end local v1    # "chLocal":C
    .end local v2    # "charIndex":I
    .end local v3    # "digit":I
    .end local v6    # "limit":I
    :cond_1
    iget-object v11, p0, Lgxt;->p:Ljava/lang/String;

    iget v12, p0, Lgxt;->j:I

    .line 1125
    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 1131
    .restart local v1    # "chLocal":C
    :cond_2
    const v6, -0x7fffffff

    .restart local v6    # "limit":I
    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 1136
    .end local v5    # "i":I
    .restart local v2    # "charIndex":I
    .restart local v4    # "i":I
    :cond_3
    iget-object v11, p0, Lgxt;->p:Ljava/lang/String;

    .line 1138
    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    .line 1147
    :cond_4
    iget-object v11, p0, Lgxt;->p:Ljava/lang/String;

    .line 1149
    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 1160
    .restart local v0    # "ch":C
    .restart local v3    # "digit":I
    :cond_5
    mul-int/lit8 v9, v9, 0xa

    .line 1161
    add-int v11, v6, v3

    if-ge v9, v11, :cond_6

    .line 1162
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lgxt;->d()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1164
    :cond_6
    sub-int/2addr v9, v3

    move v5, v4

    .line 1165
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_3

    .end local v0    # "ch":C
    .end local v2    # "charIndex":I
    .end local v3    # "digit":I
    :cond_7
    move v4, v5

    .line 1167
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_8
    if-eqz v8, :cond_a

    .line 1168
    iget v10, p0, Lgxt;->j:I

    add-int/lit8 v10, v10, 0x1

    if-le v4, v10, :cond_9

    .line 1174
    .end local v9    # "result":I
    :goto_5
    return v9

    .line 1171
    .restart local v9    # "result":I
    :cond_9
    new-instance v10, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lgxt;->d()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1174
    :cond_a
    neg-int v9, v9

    goto :goto_5
.end method

.method public final i(J)[F
    .locals 23
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3076
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3078
    invoke-direct/range {p0 .. p2}, Lgxt;->o(J)I

    move-result v12

    .line 3079
    .local v12, "offset":I
    if-nez v12, :cond_0

    .line 3080
    const/4 v3, 0x0

    .line 3273
    :goto_0
    return-object v3

    .line 3082
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .local v13, "offset":I
    add-int v7, v20, v12

    .line 3083
    .local v7, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_1

    const/16 v6, 0x1a

    .line 3086
    .local v6, "chLocal":C
    :goto_1
    const/16 v20, 0x5b

    move/from16 v0, v20

    if-eq v6, v0, :cond_2

    .line 3087
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3088
    const/4 v3, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_0

    .line 3083
    .end local v6    # "chLocal":C
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3085
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_1

    .line 3091
    .restart local v6    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 3092
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_4

    const/16 v6, 0x1a

    .line 3096
    :goto_2
    const/16 v20, 0x10

    move/from16 v0, v20

    new-array v3, v0, [F

    .line 3097
    .local v3, "array":[F
    const/4 v4, 0x0

    .line 3100
    .local v4, "arrayIndex":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int v20, v20, v12

    add-int/lit8 v16, v20, -0x1

    .line 3102
    .local v16, "start":I
    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v6, v0, :cond_5

    const/4 v11, 0x1

    .line 3103
    .local v11, "negative":Z
    :goto_4
    if-eqz v11, :cond_3

    .line 3105
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 3106
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_6

    const/16 v6, 0x1a

    :goto_5
    move v12, v13

    .line 3111
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_3
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_1d

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_1d

    .line 3112
    add-int/lit8 v10, v6, -0x30

    .line 3115
    .local v10, "intVal":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 3116
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_7

    const/16 v6, 0x1a

    .line 3119
    :goto_7
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_8

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_8

    .line 3120
    mul-int/lit8 v20, v10, 0xa

    add-int/lit8 v21, v6, -0x30

    add-int v10, v20, v21

    move v12, v13

    .line 3121
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_6

    .line 3092
    .end local v3    # "array":[F
    .end local v4    # "arrayIndex":I
    .end local v10    # "intVal":I
    .end local v11    # "negative":Z
    .end local v16    # "start":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3094
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_2

    .line 3102
    .restart local v3    # "array":[F
    .restart local v4    # "arrayIndex":I
    .restart local v16    # "start":I
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 3106
    .end local v12    # "offset":I
    .restart local v11    # "negative":Z
    .restart local v13    # "offset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3108
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_5

    .line 3116
    .restart local v10    # "intVal":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3118
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_7

    .line 3127
    :cond_8
    const/4 v14, 0x1

    .line 3128
    .local v14, "power":I
    const/16 v20, 0x2e

    move/from16 v0, v20

    if-ne v6, v0, :cond_9

    const/4 v15, 0x1

    .line 3129
    .local v15, "small":Z
    :goto_8
    if-eqz v15, :cond_d

    .line 3131
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 3132
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_a

    const/16 v6, 0x1a

    .line 3135
    :goto_9
    const/16 v14, 0xa

    .line 3136
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_c

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_c

    .line 3137
    mul-int/lit8 v20, v10, 0xa

    add-int/lit8 v21, v6, -0x30

    add-int v10, v20, v21

    .line 3140
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 3141
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_b

    const/16 v6, 0x1a

    .line 3145
    :goto_b
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_d

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_d

    .line 3146
    mul-int/lit8 v20, v10, 0xa

    add-int/lit8 v21, v6, -0x30

    add-int v10, v20, v21

    .line 3147
    mul-int/lit8 v14, v14, 0xa

    move v12, v13

    .line 3148
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto :goto_a

    .line 3128
    .end local v12    # "offset":I
    .end local v15    # "small":Z
    .restart local v13    # "offset":I
    :cond_9
    const/4 v15, 0x0

    goto :goto_8

    .line 3132
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    .restart local v15    # "small":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3134
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_9

    .line 3141
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3143
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_b

    .line 3154
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_c
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3155
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3159
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_d
    const/16 v20, 0x65

    move/from16 v0, v20

    if-eq v6, v0, :cond_e

    const/16 v20, 0x45

    move/from16 v0, v20

    if-ne v6, v0, :cond_10

    :cond_e
    const/4 v9, 0x1

    .line 3160
    .local v9, "exp":Z
    :goto_c
    if-eqz v9, :cond_14

    .line 3162
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 3163
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_11

    const/16 v6, 0x1a

    .line 3166
    :goto_d
    const/16 v20, 0x2b

    move/from16 v0, v20

    if-eq v6, v0, :cond_f

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v6, v0, :cond_25

    .line 3168
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 3169
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_12

    const/16 v6, 0x1a

    .line 3174
    :goto_e
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_14

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_14

    .line 3176
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 3177
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_13

    const/16 v6, 0x1a

    :goto_f
    move v13, v12

    .line 3179
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_e

    .line 3159
    .end local v9    # "exp":Z
    :cond_10
    const/4 v9, 0x0

    goto :goto_c

    .line 3163
    .end local v13    # "offset":I
    .restart local v9    # "exp":Z
    .restart local v12    # "offset":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3165
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_d

    .line 3169
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3171
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_e

    .line 3177
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3179
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_f

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_14
    move v12, v13

    .line 3186
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int v20, v20, v12

    sub-int v20, v20, v16

    add-int/lit8 v8, v20, -0x1

    .line 3189
    .local v8, "count":I
    if-nez v9, :cond_17

    const/16 v20, 0xa

    move/from16 v0, v20

    if-ge v8, v0, :cond_17

    .line 3190
    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v19, v20, v21

    .line 3191
    .local v19, "value":F
    if-eqz v11, :cond_15

    .line 3192
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    .line 3199
    :cond_15
    :goto_10
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v4, v0, :cond_16

    .line 3200
    array-length v0, v3

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x3

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 3201
    .local v18, "tmp":[F
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3202
    move-object/from16 v3, v18

    .line 3204
    .end local v18    # "tmp":[F
    :cond_16
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "arrayIndex":I
    .local v5, "arrayIndex":I
    aput v19, v3, v4

    .line 3206
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v6, v0, :cond_19

    .line 3208
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 3209
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_18

    const/16 v6, 0x1a

    :goto_11
    move v4, v5

    .end local v5    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    move v12, v13

    .line 3224
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_3

    .line 3195
    .end local v19    # "value":F
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v8}, Lgxt;->a(II)Ljava/lang/String;

    move-result-object v17

    .line 3196
    .local v17, "text":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .restart local v19    # "value":F
    goto :goto_10

    .line 3209
    .end local v4    # "arrayIndex":I
    .end local v12    # "offset":I
    .end local v17    # "text":Ljava/lang/String;
    .restart local v5    # "arrayIndex":I
    .restart local v13    # "offset":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3211
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_11

    .line 3212
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_19
    const/16 v20, 0x5d

    move/from16 v0, v20

    if-ne v6, v0, :cond_1c

    .line 3214
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    add-int v7, v20, v12

    .line 3215
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_1b

    const/16 v6, 0x1a

    .line 3227
    :goto_12
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v5, v0, :cond_1a

    .line 3228
    new-array v0, v5, [F

    move-object/from16 v18, v0

    .line 3229
    .restart local v18    # "tmp":[F
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3230
    move-object/from16 v3, v18

    .line 3233
    .end local v18    # "tmp":[F
    :cond_1a
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v6, v0, :cond_1e

    .line 3234
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v21, v13, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 3235
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 3236
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3237
    const/16 v20, 0x10

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    move v12, v13

    .line 3238
    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_0

    .line 3215
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3217
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_12

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    :cond_1c
    move v4, v5

    .line 3220
    .end local v5    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    goto/16 :goto_3

    .line 3221
    .end local v8    # "count":I
    .end local v9    # "exp":Z
    .end local v10    # "intVal":I
    .end local v14    # "power":I
    .end local v15    # "small":Z
    .end local v19    # "value":F
    :cond_1d
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3222
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3241
    .end local v4    # "arrayIndex":I
    .end local v12    # "offset":I
    .restart local v5    # "arrayIndex":I
    .restart local v8    # "count":I
    .restart local v9    # "exp":Z
    .restart local v10    # "intVal":I
    .restart local v13    # "offset":I
    .restart local v14    # "power":I
    .restart local v15    # "small":Z
    .restart local v19    # "value":F
    :cond_1e
    const/16 v20, 0x7d

    move/from16 v0, v20

    if-ne v6, v0, :cond_24

    .line 3243
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    add-int v7, v20, v13

    .line 3244
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_1f

    const/16 v6, 0x1a

    .line 3247
    :goto_13
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v6, v0, :cond_20

    .line 3248
    const/16 v20, 0x10

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 3249
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 3250
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 3267
    :goto_14
    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    goto/16 :goto_0

    .line 3244
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 3246
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_13

    .line 3251
    :cond_20
    const/16 v20, 0x5d

    move/from16 v0, v20

    if-ne v6, v0, :cond_21

    .line 3252
    const/16 v20, 0xf

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 3253
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 3254
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    goto :goto_14

    .line 3255
    :cond_21
    const/16 v20, 0x7d

    move/from16 v0, v20

    if-ne v6, v0, :cond_22

    .line 3256
    const/16 v20, 0xd

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 3257
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 3258
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    goto :goto_14

    .line 3259
    :cond_22
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v6, v0, :cond_23

    .line 3260
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 3261
    const/16 v20, 0x14

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 3262
    const/16 v20, 0x1a

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    goto/16 :goto_14

    .line 3264
    :cond_23
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3265
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 3269
    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    :cond_24
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3270
    const/4 v3, 0x0

    move v12, v13

    .end local v13    # "offset":I
    .restart local v12    # "offset":I
    goto/16 :goto_0

    .end local v5    # "arrayIndex":I
    .end local v8    # "count":I
    .end local v19    # "value":F
    .restart local v4    # "arrayIndex":I
    :cond_25
    move v13, v12

    .end local v12    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_e
.end method

.method public final j()[B
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1179
    iget-object v0, p0, Lgxt;->p:Ljava/lang/String;

    iget v1, p0, Lgxt;->j:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lgxt;->g:I

    invoke-static {v0, v1, v2}, Lgxt;->a(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public final j(J)[[F
    .locals 25
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3277
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3279
    invoke-direct/range {p0 .. p2}, Lgxt;->o(J)I

    move-result v15

    .line 3280
    .local v15, "offset":I
    if-nez v15, :cond_0

    .line 3281
    const/4 v6, 0x0

    .line 3512
    :goto_0
    return-object v6

    .line 3283
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .local v16, "offset":I
    add-int v10, v22, v15

    .line 3284
    .local v10, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_1

    const/16 v9, 0x1a

    .line 3288
    .local v9, "chLocal":C
    :goto_1
    const/16 v22, 0x5b

    move/from16 v0, v22

    if-eq v9, v0, :cond_2

    .line 3289
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3290
    const/4 v6, 0x0

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_0

    .line 3284
    .end local v9    # "chLocal":C
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3286
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_1

    .line 3293
    .restart local v9    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3294
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3296
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 3298
    :cond_3
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v6, v0, [[F

    .line 3299
    .local v6, "arrayarray":[[F
    const/4 v7, 0x0

    .line 3304
    .local v7, "arrayarrayIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3305
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_5

    const/16 v9, 0x1a

    .line 3309
    :goto_3
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v3, v0, [F

    .line 3310
    .local v3, "array":[F
    const/4 v4, 0x0

    .local v4, "arrayIndex":I
    move/from16 v15, v16

    .line 3313
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int v22, v22, v15

    add-int/lit8 v18, v22, -0x1

    .line 3314
    .local v18, "start":I
    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v9, v0, :cond_6

    const/4 v14, 0x1

    .line 3315
    .local v14, "negative":Z
    :goto_5
    if-eqz v14, :cond_4

    .line 3317
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3318
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_7

    const/16 v9, 0x1a

    :goto_6
    move/from16 v15, v16

    .line 3323
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_4
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_1f

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_1f

    .line 3324
    add-int/lit8 v13, v9, -0x30

    .line 3327
    .local v13, "intVal":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3328
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_8

    const/16 v9, 0x1a

    .line 3332
    :goto_8
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_9

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_9

    .line 3333
    mul-int/lit8 v22, v13, 0xa

    add-int/lit8 v23, v9, -0x30

    add-int v13, v22, v23

    move/from16 v15, v16

    .line 3334
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_7

    .line 3305
    .end local v3    # "array":[F
    .end local v4    # "arrayIndex":I
    .end local v13    # "intVal":I
    .end local v14    # "negative":Z
    .end local v15    # "offset":I
    .end local v18    # "start":I
    .restart local v16    # "offset":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3307
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_3

    .line 3314
    .end local v16    # "offset":I
    .restart local v3    # "array":[F
    .restart local v4    # "arrayIndex":I
    .restart local v15    # "offset":I
    .restart local v18    # "start":I
    :cond_6
    const/4 v14, 0x0

    goto :goto_5

    .line 3318
    .end local v15    # "offset":I
    .restart local v14    # "negative":Z
    .restart local v16    # "offset":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3320
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_6

    .line 3328
    .restart local v13    # "intVal":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3330
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_8

    .line 3340
    :cond_9
    const/16 v17, 0x1

    .line 3341
    .local v17, "power":I
    const/16 v22, 0x2e

    move/from16 v0, v22

    if-ne v9, v0, :cond_d

    .line 3343
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3344
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_a

    const/16 v9, 0x1a

    .line 3348
    :goto_9
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_c

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_c

    .line 3349
    mul-int/lit8 v22, v13, 0xa

    add-int/lit8 v23, v9, -0x30

    add-int v13, v22, v23

    .line 3350
    const/16 v17, 0xa

    .line 3353
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3354
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_b

    const/16 v9, 0x1a

    .line 3358
    :goto_b
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_d

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_d

    .line 3359
    mul-int/lit8 v22, v13, 0xa

    add-int/lit8 v23, v9, -0x30

    add-int v13, v22, v23

    .line 3360
    mul-int/lit8 v17, v17, 0xa

    move/from16 v15, v16

    .line 3361
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto :goto_a

    .line 3344
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3346
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_9

    .line 3354
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3356
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_b

    .line 3367
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_c
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3368
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3372
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_d
    const/16 v22, 0x65

    move/from16 v0, v22

    if-eq v9, v0, :cond_e

    const/16 v22, 0x45

    move/from16 v0, v22

    if-ne v9, v0, :cond_10

    :cond_e
    const/4 v12, 0x1

    .line 3373
    .local v12, "exp":Z
    :goto_c
    if-eqz v12, :cond_14

    .line 3375
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3376
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_11

    const/16 v9, 0x1a

    .line 3379
    :goto_d
    const/16 v22, 0x2b

    move/from16 v0, v22

    if-eq v9, v0, :cond_f

    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v9, v0, :cond_2a

    .line 3381
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3382
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_12

    const/16 v9, 0x1a

    .line 3387
    :goto_e
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_14

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_14

    .line 3389
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3390
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_13

    const/16 v9, 0x1a

    :goto_f
    move/from16 v16, v15

    .line 3392
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_e

    .line 3372
    .end local v12    # "exp":Z
    :cond_10
    const/4 v12, 0x0

    goto :goto_c

    .line 3376
    .end local v16    # "offset":I
    .restart local v12    # "exp":Z
    .restart local v15    # "offset":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3378
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_d

    .line 3382
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3384
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_e

    .line 3390
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3392
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_f

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_14
    move/from16 v15, v16

    .line 3399
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int v22, v22, v15

    sub-int v22, v22, v18

    add-int/lit8 v11, v22, -0x1

    .line 3401
    .local v11, "count":I
    if-nez v12, :cond_17

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ge v11, v0, :cond_17

    .line 3402
    int-to-float v0, v13

    move/from16 v22, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v21, v22, v23

    .line 3403
    .local v21, "value":F
    if-eqz v14, :cond_15

    .line 3404
    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    .line 3411
    :cond_15
    :goto_10
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v4, v0, :cond_16

    .line 3412
    array-length v0, v3

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 3413
    .local v20, "tmp":[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3414
    move-object/from16 v3, v20

    .line 3416
    .end local v20    # "tmp":[F
    :cond_16
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "arrayIndex":I
    .local v5, "arrayIndex":I
    aput v21, v3, v4

    .line 3418
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_19

    .line 3420
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3421
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_18

    const/16 v9, 0x1a

    :goto_11
    move v4, v5

    .end local v5    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    move/from16 v15, v16

    .line 3436
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_4

    .line 3407
    .end local v21    # "value":F
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lgxt;->a(II)Ljava/lang/String;

    move-result-object v19

    .line 3408
    .local v19, "text":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    .restart local v21    # "value":F
    goto :goto_10

    .line 3421
    .end local v4    # "arrayIndex":I
    .end local v15    # "offset":I
    .end local v19    # "text":Ljava/lang/String;
    .restart local v5    # "arrayIndex":I
    .restart local v16    # "offset":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3423
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_11

    .line 3424
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_19
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v9, v0, :cond_1e

    .line 3426
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v10, v22, v15

    .line 3427
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_1d

    const/16 v9, 0x1a

    .line 3439
    :goto_12
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v5, v0, :cond_1a

    .line 3440
    new-array v0, v5, [F

    move-object/from16 v20, v0

    .line 3441
    .restart local v20    # "tmp":[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3442
    move-object/from16 v3, v20

    .line 3445
    .end local v20    # "tmp":[F
    :cond_1a
    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v7, v0, :cond_1b

    .line 3446
    array-length v0, v6

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [[F

    move-object/from16 v20, v0

    .line 3447
    .local v20, "tmp":[[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3448
    move-object/from16 v6, v20

    .line 3450
    .end local v20    # "tmp":[[F
    :cond_1b
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "arrayarrayIndex":I
    .local v8, "arrayarrayIndex":I
    aput-object v3, v6, v7

    .line 3452
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_20

    .line 3454
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3455
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3457
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    :cond_1c
    move v7, v8

    .end local v8    # "arrayarrayIndex":I
    .restart local v7    # "arrayarrayIndex":I
    goto/16 :goto_2

    .line 3427
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3429
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_12

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    :cond_1e
    move v4, v5

    .line 3432
    .end local v5    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    goto/16 :goto_4

    .line 3433
    .end local v11    # "count":I
    .end local v12    # "exp":Z
    .end local v13    # "intVal":I
    .end local v17    # "power":I
    .end local v21    # "value":F
    :cond_1f
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3434
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3458
    .end local v4    # "arrayIndex":I
    .end local v7    # "arrayarrayIndex":I
    .end local v15    # "offset":I
    .restart local v5    # "arrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    .restart local v11    # "count":I
    .restart local v12    # "exp":Z
    .restart local v13    # "intVal":I
    .restart local v16    # "offset":I
    .restart local v17    # "power":I
    .restart local v21    # "value":F
    :cond_20
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v9, v0, :cond_23

    .line 3460
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    add-int v10, v22, v16

    .line 3461
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_22

    const/16 v9, 0x1a

    .line 3470
    :goto_13
    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v8, v0, :cond_21

    .line 3471
    new-array v0, v8, [[F

    move-object/from16 v20, v0

    .line 3472
    .restart local v20    # "tmp":[[F
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v6, v0, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3473
    move-object/from16 v6, v20

    .line 3476
    .end local v20    # "tmp":[[F
    :cond_21
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_24

    .line 3477
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v23, v15, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 3478
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 3479
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3480
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    goto/16 :goto_0

    .line 3461
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3463
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_13

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_23
    move v7, v8

    .end local v8    # "arrayarrayIndex":I
    .restart local v7    # "arrayarrayIndex":I
    move/from16 v15, v16

    .line 3466
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_2

    .line 3484
    .end local v7    # "arrayarrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    :cond_24
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v9, v0, :cond_29

    .line 3485
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    add-int v22, v22, v15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v9

    .line 3486
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_25

    .line 3487
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 3488
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 3489
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 3506
    :goto_14
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    move/from16 v15, v16

    .line 3512
    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_0

    .line 3490
    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    :cond_25
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v9, v0, :cond_26

    .line 3491
    const/16 v22, 0xf

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 3492
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 3493
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    goto :goto_14

    .line 3494
    :cond_26
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v9, v0, :cond_27

    .line 3495
    const/16 v22, 0xd

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 3496
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 3497
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    goto :goto_14

    .line 3498
    :cond_27
    const/16 v22, 0x1a

    move/from16 v0, v22

    if-ne v9, v0, :cond_28

    .line 3499
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 3500
    const/16 v22, 0x14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 3501
    const/16 v22, 0x1a

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    goto :goto_14

    .line 3503
    :cond_28
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3504
    const/4 v6, 0x0

    move/from16 v15, v16

    .end local v16    # "offset":I
    .restart local v15    # "offset":I
    goto/16 :goto_0

    .line 3508
    :cond_29
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3509
    const/4 v6, 0x0

    goto/16 :goto_0

    .end local v5    # "arrayIndex":I
    .end local v8    # "arrayarrayIndex":I
    .end local v11    # "count":I
    .end local v21    # "value":F
    .restart local v4    # "arrayIndex":I
    .restart local v7    # "arrayarrayIndex":I
    :cond_2a
    move/from16 v16, v15

    .end local v15    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_e
.end method

.method public final k(J)D
    .locals 21
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3516
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->o:I

    .line 3518
    invoke-direct/range {p0 .. p2}, Lgxt;->o(J)I

    move-result v7

    .line 3519
    .local v7, "offset":I
    if-nez v7, :cond_0

    .line 3520
    const-wide/16 v14, 0x0

    .line 3633
    :goto_0
    return-wide v14

    .line 3523
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lgxt;->b(I)C

    move-result v2

    .line 3525
    .local v2, "chLocal":C
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    add-int/2addr v13, v8

    add-int/lit8 v11, v13, -0x1

    .line 3526
    .local v11, "start":I
    const/16 v13, 0x2d

    if-ne v2, v13, :cond_1

    const/4 v6, 0x1

    .line 3527
    .local v6, "negative":Z
    :goto_1
    if-eqz v6, :cond_15

    .line 3528
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lgxt;->b(I)C

    move-result v2

    .line 3532
    :goto_2
    const/16 v13, 0x30

    if-lt v2, v13, :cond_d

    const/16 v13, 0x39

    if-gt v2, v13, :cond_d

    .line 3533
    add-int/lit8 v5, v2, -0x30

    .line 3535
    .local v5, "intVal":I
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lgxt;->b(I)C

    move-result v2

    .line 3536
    const/16 v13, 0x30

    if-lt v2, v13, :cond_2

    const/16 v13, 0x39

    if-gt v2, v13, :cond_2

    .line 3537
    mul-int/lit8 v13, v5, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v5, v13, v16

    move v7, v8

    .line 3538
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_3

    .line 3526
    .end local v5    # "intVal":I
    .end local v6    # "negative":Z
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 3544
    .restart local v5    # "intVal":I
    .restart local v6    # "negative":Z
    :cond_2
    const/4 v9, 0x1

    .line 3545
    .local v9, "power":I
    const/16 v13, 0x2e

    if-ne v2, v13, :cond_3

    const/4 v10, 0x1

    .line 3546
    .local v10, "small":Z
    :goto_4
    if-eqz v10, :cond_5

    .line 3547
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lgxt;->b(I)C

    move-result v2

    .line 3548
    const/16 v13, 0x30

    if-lt v2, v13, :cond_4

    const/16 v13, 0x39

    if-gt v2, v13, :cond_4

    .line 3549
    mul-int/lit8 v13, v5, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v5, v13, v16

    .line 3550
    const/16 v9, 0xa

    .line 3552
    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lgxt;->b(I)C

    move-result v2

    .line 3553
    const/16 v13, 0x30

    if-lt v2, v13, :cond_5

    const/16 v13, 0x39

    if-gt v2, v13, :cond_5

    .line 3554
    mul-int/lit8 v13, v5, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v5, v13, v16

    .line 3555
    mul-int/lit8 v9, v9, 0xa

    move v7, v8

    .line 3556
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto :goto_5

    .line 3545
    .end local v7    # "offset":I
    .end local v10    # "small":Z
    .restart local v8    # "offset":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    .line 3562
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    .restart local v10    # "small":Z
    :cond_4
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->o:I

    .line 3563
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .line 3567
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_5
    const/16 v13, 0x65

    if-eq v2, v13, :cond_6

    const/16 v13, 0x45

    if-ne v2, v13, :cond_b

    :cond_6
    const/4 v4, 0x1

    .line 3568
    .local v4, "exp":Z
    :goto_6
    if-eqz v4, :cond_14

    .line 3569
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lgxt;->b(I)C

    move-result v2

    .line 3570
    const/16 v13, 0x2b

    if-eq v2, v13, :cond_7

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_8

    .line 3571
    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lgxt;->b(I)C

    move-result v2

    move v7, v8

    .line 3574
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    :cond_8
    const/16 v13, 0x30

    if-lt v2, v13, :cond_9

    const/16 v13, 0x39

    if-le v2, v13, :cond_7

    .line 3582
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    add-int/2addr v13, v7

    sub-int/2addr v13, v11

    add-int/lit8 v3, v13, -0x1

    .line 3583
    .local v3, "count":I
    if-nez v4, :cond_c

    const/16 v13, 0xa

    if-ge v3, v13, :cond_c

    .line 3584
    int-to-double v0, v5

    move-wide/from16 v16, v0

    int-to-double v0, v9

    move-wide/from16 v18, v0

    div-double v14, v16, v18

    .line 3585
    .local v14, "value":D
    if-eqz v6, :cond_a

    .line 3586
    neg-double v14, v14

    .line 3597
    :cond_a
    :goto_8
    const/16 v13, 0x2c

    if-ne v2, v13, :cond_e

    .line 3598
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    add-int/lit8 v16, v7, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->e:I

    .line 3599
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 3600
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->o:I

    .line 3601
    const/16 v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->a:I

    goto/16 :goto_0

    .line 3567
    .end local v3    # "count":I
    .end local v4    # "exp":Z
    .end local v7    # "offset":I
    .end local v14    # "value":D
    .restart local v8    # "offset":I
    :cond_b
    const/4 v4, 0x0

    goto :goto_6

    .line 3589
    .end local v8    # "offset":I
    .restart local v3    # "count":I
    .restart local v4    # "exp":Z
    .restart local v7    # "offset":I
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lgxt;->a(II)Ljava/lang/String;

    move-result-object v12

    .line 3590
    .local v12, "text":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .restart local v14    # "value":D
    goto :goto_8

    .line 3593
    .end local v3    # "count":I
    .end local v4    # "exp":Z
    .end local v5    # "intVal":I
    .end local v9    # "power":I
    .end local v10    # "small":Z
    .end local v12    # "text":Ljava/lang/String;
    .end local v14    # "value":D
    :cond_d
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->o:I

    .line 3594
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .line 3605
    .restart local v3    # "count":I
    .restart local v4    # "exp":Z
    .restart local v5    # "intVal":I
    .restart local v9    # "power":I
    .restart local v10    # "small":Z
    .restart local v14    # "value":D
    :cond_e
    const/16 v13, 0x7d

    if-ne v2, v13, :cond_13

    .line 3606
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lgxt;->b(I)C

    move-result v2

    .line 3607
    const/16 v13, 0x2c

    if-ne v2, v13, :cond_f

    .line 3608
    const/16 v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->a:I

    .line 3609
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->e:I

    .line 3610
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 3627
    :goto_9
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->o:I

    move v7, v8

    .line 3633
    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_0

    .line 3611
    .end local v7    # "offset":I
    .restart local v8    # "offset":I
    :cond_f
    const/16 v13, 0x5d

    if-ne v2, v13, :cond_10

    .line 3612
    const/16 v13, 0xf

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->a:I

    .line 3613
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->e:I

    .line 3614
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    goto :goto_9

    .line 3615
    :cond_10
    const/16 v13, 0x7d

    if-ne v2, v13, :cond_11

    .line 3616
    const/16 v13, 0xd

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->a:I

    .line 3617
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->e:I

    .line 3618
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    goto :goto_9

    .line 3619
    :cond_11
    const/16 v13, 0x1a

    if-ne v2, v13, :cond_12

    .line 3620
    move-object/from16 v0, p0

    iget v13, v0, Lgxt;->e:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->e:I

    .line 3621
    const/16 v13, 0x14

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->a:I

    .line 3622
    const/16 v13, 0x1a

    move-object/from16 v0, p0

    iput-char v13, v0, Lgxt;->d:C

    goto :goto_9

    .line 3624
    :cond_12
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->o:I

    .line 3625
    const-wide/16 v14, 0x0

    move v7, v8

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_0

    .line 3629
    :cond_13
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lgxt;->o:I

    .line 3630
    const-wide/16 v14, 0x0

    goto/16 :goto_0

    .end local v3    # "count":I
    .end local v7    # "offset":I
    .end local v14    # "value":D
    .restart local v8    # "offset":I
    :cond_14
    move v7, v8

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_7

    .end local v4    # "exp":Z
    .end local v5    # "intVal":I
    .end local v7    # "offset":I
    .end local v9    # "power":I
    .end local v10    # "small":Z
    .restart local v8    # "offset":I
    :cond_15
    move v7, v8

    .end local v8    # "offset":I
    .restart local v7    # "offset":I
    goto/16 :goto_2
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1219
    iget-boolean v0, p0, Lgxt;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgxt;->f:[C

    iget v1, p0, Lgxt;->g:I

    .line 1220
    invoke-static {v0, v1}, Lgxt;->a([CI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lgxt;->j:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lgxt;->g:I

    .line 1221
    invoke-direct {p0, v0, v1}, Lgxt;->a(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final l()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v6, 0x20

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1247
    const/4 v1, 0x0

    .line 1248
    .local v1, "i":I
    :goto_0
    invoke-direct {p0, v1}, Lgxt;->b(I)C

    move-result v0

    .line 1249
    .local v0, "ch":C
    const/16 v5, 0x1a

    if-eq v0, v5, :cond_3

    .line 1253
    if-gt v0, v6, :cond_1

    if-eq v0, v6, :cond_0

    const/16 v5, 0xa

    if-eq v0, v5, :cond_0

    const/16 v5, 0xd

    if-eq v0, v5, :cond_0

    const/16 v5, 0x9

    if-eq v0, v5, :cond_0

    const/16 v5, 0xc

    if-eq v0, v5, :cond_0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_1

    :cond_0
    move v2, v4

    .line 1260
    .local v2, "whitespace":Z
    :goto_1
    if-nez v2, :cond_2

    .line 1265
    .end local v2    # "whitespace":Z
    :goto_2
    return v3

    :cond_1
    move v2, v3

    .line 1253
    goto :goto_1

    .line 1247
    .restart local v2    # "whitespace":Z
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "whitespace":Z
    :cond_3
    move v3, v4

    .line 1265
    goto :goto_2
.end method

.method public final l(J)[D
    .locals 27
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3637
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3639
    invoke-direct/range {p0 .. p2}, Lgxt;->o(J)I

    move-result v13

    .line 3640
    .local v13, "offset":I
    if-nez v13, :cond_0

    .line 3641
    const/4 v4, 0x0

    .line 3834
    :goto_0
    return-object v4

    .line 3643
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .local v14, "offset":I
    add-int v8, v22, v13

    .line 3644
    .local v8, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1

    const/16 v7, 0x1a

    .line 3647
    .local v7, "chLocal":C
    :goto_1
    const/16 v22, 0x5b

    move/from16 v0, v22

    if-eq v7, v0, :cond_2

    .line 3648
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3649
    const/4 v4, 0x0

    move v13, v14

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_0

    .line 3644
    .end local v7    # "chLocal":C
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3646
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_1

    .line 3652
    .restart local v7    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3653
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_4

    const/16 v7, 0x1a

    .line 3657
    :goto_2
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v4, v0, [D

    .line 3658
    .local v4, "array":[D
    const/4 v5, 0x0

    .line 3661
    .local v5, "arrayIndex":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int v22, v22, v13

    add-int/lit8 v17, v22, -0x1

    .line 3663
    .local v17, "start":I
    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v7, v0, :cond_5

    const/4 v12, 0x1

    .line 3664
    .local v12, "negative":Z
    :goto_4
    if-eqz v12, :cond_3

    .line 3666
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3667
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_6

    const/16 v7, 0x1a

    :goto_5
    move v13, v14

    .line 3672
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_3
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_1d

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_1d

    .line 3673
    add-int/lit8 v11, v7, -0x30

    .line 3676
    .local v11, "intVal":I
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3677
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_7

    const/16 v7, 0x1a

    .line 3680
    :goto_7
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_8

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_8

    .line 3681
    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v7, -0x30

    add-int v11, v22, v23

    move v13, v14

    .line 3682
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_6

    .line 3653
    .end local v4    # "array":[D
    .end local v5    # "arrayIndex":I
    .end local v11    # "intVal":I
    .end local v12    # "negative":Z
    .end local v17    # "start":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3655
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_2

    .line 3663
    .restart local v4    # "array":[D
    .restart local v5    # "arrayIndex":I
    .restart local v17    # "start":I
    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    .line 3667
    .end local v13    # "offset":I
    .restart local v12    # "negative":Z
    .restart local v14    # "offset":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3669
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_5

    .line 3677
    .restart local v11    # "intVal":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3679
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_7

    .line 3688
    :cond_8
    const/4 v15, 0x1

    .line 3689
    .local v15, "power":I
    const/16 v22, 0x2e

    move/from16 v0, v22

    if-ne v7, v0, :cond_9

    const/16 v16, 0x1

    .line 3690
    .local v16, "small":Z
    :goto_8
    if-eqz v16, :cond_d

    .line 3692
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3693
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_a

    const/16 v7, 0x1a

    .line 3696
    :goto_9
    const/16 v15, 0xa

    .line 3697
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_c

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_c

    .line 3698
    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v7, -0x30

    add-int v11, v22, v23

    .line 3701
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3702
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_b

    const/16 v7, 0x1a

    .line 3706
    :goto_b
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_d

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_d

    .line 3707
    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v7, -0x30

    add-int v11, v22, v23

    .line 3708
    mul-int/lit8 v15, v15, 0xa

    move v13, v14

    .line 3709
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto :goto_a

    .line 3689
    .end local v13    # "offset":I
    .end local v16    # "small":Z
    .restart local v14    # "offset":I
    :cond_9
    const/16 v16, 0x0

    goto :goto_8

    .line 3693
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    .restart local v16    # "small":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3695
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_9

    .line 3702
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3704
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_b

    .line 3715
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_c
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3716
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3720
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_d
    const/16 v22, 0x65

    move/from16 v0, v22

    if-eq v7, v0, :cond_e

    const/16 v22, 0x45

    move/from16 v0, v22

    if-ne v7, v0, :cond_10

    :cond_e
    const/4 v10, 0x1

    .line 3721
    .local v10, "exp":Z
    :goto_c
    if-eqz v10, :cond_14

    .line 3723
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3724
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_11

    const/16 v7, 0x1a

    .line 3727
    :goto_d
    const/16 v22, 0x2b

    move/from16 v0, v22

    if-eq v7, v0, :cond_f

    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v7, v0, :cond_25

    .line 3729
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3730
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_12

    const/16 v7, 0x1a

    .line 3735
    :goto_e
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_14

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_14

    .line 3737
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3738
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_13

    const/16 v7, 0x1a

    :goto_f
    move v14, v13

    .line 3740
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    goto :goto_e

    .line 3720
    .end local v10    # "exp":Z
    :cond_10
    const/4 v10, 0x0

    goto :goto_c

    .line 3724
    .end local v14    # "offset":I
    .restart local v10    # "exp":Z
    .restart local v13    # "offset":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3726
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_d

    .line 3730
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3732
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_e

    .line 3738
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3740
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_f

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_14
    move v13, v14

    .line 3747
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int v22, v22, v13

    sub-int v22, v22, v17

    add-int/lit8 v9, v22, -0x1

    .line 3750
    .local v9, "count":I
    if-nez v10, :cond_17

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ge v9, v0, :cond_17

    .line 3751
    int-to-double v0, v11

    move-wide/from16 v22, v0

    int-to-double v0, v15

    move-wide/from16 v24, v0

    div-double v20, v22, v24

    .line 3752
    .local v20, "value":D
    if-eqz v12, :cond_15

    .line 3753
    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    .line 3760
    :cond_15
    :goto_10
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v5, v0, :cond_16

    .line 3761
    array-length v0, v4

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .line 3762
    .local v19, "tmp":[D
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3763
    move-object/from16 v4, v19

    .line 3765
    .end local v19    # "tmp":[D
    :cond_16
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "arrayIndex":I
    .local v6, "arrayIndex":I
    aput-wide v20, v4, v5

    .line 3767
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v7, v0, :cond_19

    .line 3769
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3770
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_18

    const/16 v7, 0x1a

    :goto_11
    move v5, v6

    .end local v6    # "arrayIndex":I
    .restart local v5    # "arrayIndex":I
    move v13, v14

    .line 3785
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_3

    .line 3756
    .end local v20    # "value":D
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lgxt;->a(II)Ljava/lang/String;

    move-result-object v18

    .line 3757
    .local v18, "text":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    .restart local v20    # "value":D
    goto :goto_10

    .line 3770
    .end local v5    # "arrayIndex":I
    .end local v13    # "offset":I
    .end local v18    # "text":Ljava/lang/String;
    .restart local v6    # "arrayIndex":I
    .restart local v14    # "offset":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3772
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_11

    .line 3773
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_19
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v7, v0, :cond_1c

    .line 3775
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    add-int v8, v22, v13

    .line 3776
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1b

    const/16 v7, 0x1a

    .line 3788
    :goto_12
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v6, v0, :cond_1a

    .line 3789
    new-array v0, v6, [D

    move-object/from16 v19, v0

    .line 3790
    .restart local v19    # "tmp":[D
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3791
    move-object/from16 v4, v19

    .line 3794
    .end local v19    # "tmp":[D
    :cond_1a
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v7, v0, :cond_1e

    .line 3795
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v23, v14, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 3796
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 3797
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3798
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    move v13, v14

    .line 3799
    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_0

    .line 3776
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3778
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_12

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    :cond_1c
    move v5, v6

    .line 3781
    .end local v6    # "arrayIndex":I
    .restart local v5    # "arrayIndex":I
    goto/16 :goto_3

    .line 3782
    .end local v9    # "count":I
    .end local v10    # "exp":Z
    .end local v11    # "intVal":I
    .end local v15    # "power":I
    .end local v16    # "small":Z
    .end local v20    # "value":D
    :cond_1d
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3783
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3802
    .end local v5    # "arrayIndex":I
    .end local v13    # "offset":I
    .restart local v6    # "arrayIndex":I
    .restart local v9    # "count":I
    .restart local v10    # "exp":Z
    .restart local v11    # "intVal":I
    .restart local v14    # "offset":I
    .restart local v15    # "power":I
    .restart local v16    # "small":Z
    .restart local v20    # "value":D
    :cond_1e
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v7, v0, :cond_24

    .line 3804
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    add-int v8, v22, v14

    .line 3805
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1f

    const/16 v7, 0x1a

    .line 3808
    :goto_13
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v7, v0, :cond_20

    .line 3809
    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 3810
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 3811
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 3828
    :goto_14
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    goto/16 :goto_0

    .line 3805
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 3807
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_13

    .line 3812
    :cond_20
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v7, v0, :cond_21

    .line 3813
    const/16 v22, 0xf

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 3814
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 3815
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    goto :goto_14

    .line 3816
    :cond_21
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v7, v0, :cond_22

    .line 3817
    const/16 v22, 0xd

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 3818
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 3819
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    goto :goto_14

    .line 3820
    :cond_22
    const/16 v22, 0x1a

    move/from16 v0, v22

    if-ne v7, v0, :cond_23

    .line 3821
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 3822
    const/16 v22, 0x14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 3823
    const/16 v22, 0x1a

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    goto/16 :goto_14

    .line 3825
    :cond_23
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3826
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3830
    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    :cond_24
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3831
    const/4 v4, 0x0

    move v13, v14

    .end local v14    # "offset":I
    .restart local v13    # "offset":I
    goto/16 :goto_0

    .end local v6    # "arrayIndex":I
    .end local v9    # "count":I
    .end local v20    # "value":D
    .restart local v5    # "arrayIndex":I
    :cond_25
    move v14, v13

    .end local v13    # "offset":I
    .restart local v14    # "offset":I
    goto/16 :goto_e
.end method

.method final m()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v2, 0x2f

    .line 1270
    :goto_0
    iget-char v0, p0, Lgxt;->d:C

    if-gt v0, v2, :cond_2

    .line 1271
    iget-char v0, p0, Lgxt;->d:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lgxt;->d:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lgxt;->d:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lgxt;->d:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lgxt;->d:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lgxt;->d:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1277
    :cond_0
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_0

    .line 1279
    :cond_1
    iget-char v0, p0, Lgxt;->d:C

    if-ne v0, v2, :cond_2

    .line 1280
    invoke-direct {p0}, Lgxt;->t()V

    goto :goto_0

    .line 1289
    :cond_2
    return-void
.end method

.method public final m(J)[[D
    .locals 29
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 3838
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3840
    invoke-direct/range {p0 .. p2}, Lgxt;->o(J)I

    move-result v16

    .line 3841
    .local v16, "offset":I
    if-nez v16, :cond_0

    .line 3842
    const/4 v7, 0x0

    .line 4073
    :goto_0
    return-object v7

    .line 3844
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .local v17, "offset":I
    add-int v11, v24, v16

    .line 3845
    .local v11, "charIndex":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_1

    const/16 v10, 0x1a

    .line 3849
    .local v10, "chLocal":C
    :goto_1
    const/16 v24, 0x5b

    move/from16 v0, v24

    if-eq v10, v0, :cond_2

    .line 3850
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3851
    const/4 v7, 0x0

    move/from16 v16, v17

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_0

    .line 3845
    .end local v10    # "chLocal":C
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3847
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_1

    .line 3854
    .restart local v10    # "chLocal":C
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3855
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3857
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 3859
    :cond_3
    const/16 v24, 0x10

    move/from16 v0, v24

    new-array v7, v0, [[D

    .line 3860
    .local v7, "arrayarray":[[D
    const/4 v8, 0x0

    .line 3865
    .local v8, "arrayarrayIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3866
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_5

    const/16 v10, 0x1a

    .line 3870
    :goto_3
    const/16 v24, 0x10

    move/from16 v0, v24

    new-array v4, v0, [D

    .line 3871
    .local v4, "array":[D
    const/4 v5, 0x0

    .local v5, "arrayIndex":I
    move/from16 v16, v17

    .line 3874
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int v24, v24, v16

    add-int/lit8 v19, v24, -0x1

    .line 3875
    .local v19, "start":I
    const/16 v24, 0x2d

    move/from16 v0, v24

    if-ne v10, v0, :cond_6

    const/4 v15, 0x1

    .line 3876
    .local v15, "negative":Z
    :goto_5
    if-eqz v15, :cond_4

    .line 3878
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3879
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_7

    const/16 v10, 0x1a

    :goto_6
    move/from16 v16, v17

    .line 3884
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_4
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_1f

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_1f

    .line 3885
    add-int/lit8 v14, v10, -0x30

    .line 3888
    .local v14, "intVal":I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3889
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_8

    const/16 v10, 0x1a

    .line 3893
    :goto_8
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_9

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_9

    .line 3894
    mul-int/lit8 v24, v14, 0xa

    add-int/lit8 v25, v10, -0x30

    add-int v14, v24, v25

    move/from16 v16, v17

    .line 3895
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_7

    .line 3866
    .end local v4    # "array":[D
    .end local v5    # "arrayIndex":I
    .end local v14    # "intVal":I
    .end local v15    # "negative":Z
    .end local v16    # "offset":I
    .end local v19    # "start":I
    .restart local v17    # "offset":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3868
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_3

    .line 3875
    .end local v17    # "offset":I
    .restart local v4    # "array":[D
    .restart local v5    # "arrayIndex":I
    .restart local v16    # "offset":I
    .restart local v19    # "start":I
    :cond_6
    const/4 v15, 0x0

    goto :goto_5

    .line 3879
    .end local v16    # "offset":I
    .restart local v15    # "negative":Z
    .restart local v17    # "offset":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3881
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_6

    .line 3889
    .restart local v14    # "intVal":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3891
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_8

    .line 3901
    :cond_9
    const/16 v18, 0x1

    .line 3902
    .local v18, "power":I
    const/16 v24, 0x2e

    move/from16 v0, v24

    if-ne v10, v0, :cond_d

    .line 3904
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3905
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_a

    const/16 v10, 0x1a

    .line 3909
    :goto_9
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_c

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_c

    .line 3910
    mul-int/lit8 v24, v14, 0xa

    add-int/lit8 v25, v10, -0x30

    add-int v14, v24, v25

    .line 3911
    const/16 v18, 0xa

    .line 3914
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3915
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_b

    const/16 v10, 0x1a

    .line 3919
    :goto_b
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_d

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_d

    .line 3920
    mul-int/lit8 v24, v14, 0xa

    add-int/lit8 v25, v10, -0x30

    add-int v14, v24, v25

    .line 3921
    mul-int/lit8 v18, v18, 0xa

    move/from16 v16, v17

    .line 3922
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto :goto_a

    .line 3905
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3907
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_9

    .line 3915
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3917
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_b

    .line 3928
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_c
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3929
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 3933
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_d
    const/16 v24, 0x65

    move/from16 v0, v24

    if-eq v10, v0, :cond_e

    const/16 v24, 0x45

    move/from16 v0, v24

    if-ne v10, v0, :cond_10

    :cond_e
    const/4 v13, 0x1

    .line 3934
    .local v13, "exp":Z
    :goto_c
    if-eqz v13, :cond_14

    .line 3936
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3937
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_11

    const/16 v10, 0x1a

    .line 3940
    :goto_d
    const/16 v24, 0x2b

    move/from16 v0, v24

    if-eq v10, v0, :cond_f

    const/16 v24, 0x2d

    move/from16 v0, v24

    if-ne v10, v0, :cond_2a

    .line 3942
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3943
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_12

    const/16 v10, 0x1a

    .line 3948
    :goto_e
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_14

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_14

    .line 3950
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 3951
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_13

    const/16 v10, 0x1a

    :goto_f
    move/from16 v17, v16

    .line 3953
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    goto :goto_e

    .line 3933
    .end local v13    # "exp":Z
    :cond_10
    const/4 v13, 0x0

    goto :goto_c

    .line 3937
    .end local v17    # "offset":I
    .restart local v13    # "exp":Z
    .restart local v16    # "offset":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3939
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_d

    .line 3943
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3945
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_e

    .line 3951
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3953
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_f

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_14
    move/from16 v16, v17

    .line 3960
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int v24, v24, v16

    sub-int v24, v24, v19

    add-int/lit8 v12, v24, -0x1

    .line 3962
    .local v12, "count":I
    if-nez v13, :cond_17

    const/16 v24, 0xa

    move/from16 v0, v24

    if-ge v12, v0, :cond_17

    .line 3963
    int-to-double v0, v14

    move-wide/from16 v24, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v22, v24, v26

    .line 3964
    .local v22, "value":D
    if-eqz v15, :cond_15

    .line 3965
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    .line 3972
    :cond_15
    :goto_10
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v5, v0, :cond_16

    .line 3973
    array-length v0, v4

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x3

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v21, v0

    .line 3974
    .local v21, "tmp":[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3975
    move-object/from16 v4, v21

    .line 3977
    .end local v21    # "tmp":[D
    :cond_16
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "arrayIndex":I
    .local v6, "arrayIndex":I
    aput-wide v22, v4, v5

    .line 3979
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_19

    .line 3981
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3982
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_18

    const/16 v10, 0x1a

    :goto_11
    move v5, v6

    .end local v6    # "arrayIndex":I
    .restart local v5    # "arrayIndex":I
    move/from16 v16, v17

    .line 3997
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_4

    .line 3968
    .end local v22    # "value":D
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lgxt;->a(II)Ljava/lang/String;

    move-result-object v20

    .line 3969
    .local v20, "text":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    .restart local v22    # "value":D
    goto :goto_10

    .line 3982
    .end local v5    # "arrayIndex":I
    .end local v16    # "offset":I
    .end local v20    # "text":Ljava/lang/String;
    .restart local v6    # "arrayIndex":I
    .restart local v17    # "offset":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3984
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_11

    .line 3985
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_19
    const/16 v24, 0x5d

    move/from16 v0, v24

    if-ne v10, v0, :cond_1e

    .line 3987
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v11, v24, v16

    .line 3988
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_1d

    const/16 v10, 0x1a

    .line 4000
    :goto_12
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v6, v0, :cond_1a

    .line 4001
    new-array v0, v6, [D

    move-object/from16 v21, v0

    .line 4002
    .restart local v21    # "tmp":[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4003
    move-object/from16 v4, v21

    .line 4006
    .end local v21    # "tmp":[D
    :cond_1a
    array-length v0, v7

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v8, v0, :cond_1b

    .line 4007
    array-length v0, v7

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x3

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [[D

    move-object/from16 v21, v0

    .line 4008
    .local v21, "tmp":[[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4009
    move-object/from16 v7, v21

    .line 4011
    .end local v21    # "tmp":[[D
    :cond_1b
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "arrayarrayIndex":I
    .local v9, "arrayarrayIndex":I
    aput-object v4, v7, v8

    .line 4013
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_20

    .line 4015
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 4016
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 4018
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    :cond_1c
    move v8, v9

    .end local v9    # "arrayarrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    goto/16 :goto_2

    .line 3988
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 3990
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_12

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    :cond_1e
    move v5, v6

    .line 3993
    .end local v6    # "arrayIndex":I
    .restart local v5    # "arrayIndex":I
    goto/16 :goto_4

    .line 3994
    .end local v12    # "count":I
    .end local v13    # "exp":Z
    .end local v14    # "intVal":I
    .end local v18    # "power":I
    .end local v22    # "value":D
    :cond_1f
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 3995
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 4019
    .end local v5    # "arrayIndex":I
    .end local v8    # "arrayarrayIndex":I
    .end local v16    # "offset":I
    .restart local v6    # "arrayIndex":I
    .restart local v9    # "arrayarrayIndex":I
    .restart local v12    # "count":I
    .restart local v13    # "exp":Z
    .restart local v14    # "intVal":I
    .restart local v17    # "offset":I
    .restart local v18    # "power":I
    .restart local v22    # "value":D
    :cond_20
    const/16 v24, 0x5d

    move/from16 v0, v24

    if-ne v10, v0, :cond_23

    .line 4021
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    add-int v11, v24, v17

    .line 4022
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_22

    const/16 v10, 0x1a

    .line 4031
    :goto_13
    array-length v0, v7

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v9, v0, :cond_21

    .line 4032
    new-array v0, v9, [[D

    move-object/from16 v21, v0

    .line 4033
    .restart local v21    # "tmp":[[D
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v7, v0, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4034
    move-object/from16 v7, v21

    .line 4037
    .end local v21    # "tmp":[[D
    :cond_21
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_24

    .line 4038
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v25, v16, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 4039
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 4040
    const/16 v24, 0x3

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 4041
    const/16 v24, 0x10

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    goto/16 :goto_0

    .line 4022
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 4024
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_13

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_23
    move v8, v9

    .end local v9    # "arrayarrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    move/from16 v16, v17

    .line 4027
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_2

    .line 4045
    .end local v8    # "arrayarrayIndex":I
    .restart local v9    # "arrayarrayIndex":I
    :cond_24
    const/16 v24, 0x7d

    move/from16 v0, v24

    if-ne v10, v0, :cond_29

    .line 4046
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    add-int v24, v24, v16

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lgxt;->b(I)C

    move-result v10

    .line 4047
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_25

    .line 4048
    const/16 v24, 0x10

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 4049
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 4050
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 4067
    :goto_14
    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    move/from16 v16, v17

    .line 4073
    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_0

    .line 4051
    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    :cond_25
    const/16 v24, 0x5d

    move/from16 v0, v24

    if-ne v10, v0, :cond_26

    .line 4052
    const/16 v24, 0xf

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 4053
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 4054
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    goto :goto_14

    .line 4055
    :cond_26
    const/16 v24, 0x7d

    move/from16 v0, v24

    if-ne v10, v0, :cond_27

    .line 4056
    const/16 v24, 0xd

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 4057
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 4058
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    goto :goto_14

    .line 4059
    :cond_27
    const/16 v24, 0x1a

    move/from16 v0, v24

    if-ne v10, v0, :cond_28

    .line 4060
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->e:I

    .line 4061
    const/16 v24, 0x14

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->a:I

    .line 4062
    const/16 v24, 0x1a

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    goto :goto_14

    .line 4064
    :cond_28
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 4065
    const/4 v7, 0x0

    move/from16 v16, v17

    .end local v17    # "offset":I
    .restart local v16    # "offset":I
    goto/16 :goto_0

    .line 4069
    :cond_29
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->o:I

    .line 4070
    const/4 v7, 0x0

    goto/16 :goto_0

    .end local v6    # "arrayIndex":I
    .end local v9    # "arrayarrayIndex":I
    .end local v12    # "count":I
    .end local v22    # "value":D
    .restart local v5    # "arrayIndex":I
    .restart local v8    # "arrayarrayIndex":I
    :cond_2a
    move/from16 v17, v16

    .end local v16    # "offset":I
    .restart local v17    # "offset":I
    goto/16 :goto_e
.end method

.method public final n(J)J
    .locals 11
    .param p1, "fieldHashCode"    # J

    .prologue
    .line 4077
    const/4 v7, 0x0

    iput v7, p0, Lgxt;->o:I

    .line 4079
    invoke-direct {p0, p1, p2}, Lgxt;->o(J)I

    move-result v5

    .line 4080
    .local v5, "offset":I
    if-nez v5, :cond_0

    .line 4081
    const-wide/16 v2, 0x0

    .line 4163
    :goto_0
    return-wide v2

    .line 4084
    :cond_0
    iget v7, p0, Lgxt;->e:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .local v6, "offset":I
    add-int v1, v7, v5

    .line 4085
    .local v1, "charIndex":I
    iget v7, p0, Lgxt;->q:I

    if-lt v1, v7, :cond_1

    const/16 v0, 0x1a

    .line 4089
    .local v0, "chLocal":C
    :goto_1
    const/16 v7, 0x22

    if-eq v0, v7, :cond_2

    .line 4090
    const/4 v7, -0x1

    iput v7, p0, Lgxt;->o:I

    .line 4091
    const-wide/16 v2, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_0

    .line 4085
    .end local v0    # "chLocal":C
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_1
    iget-object v7, p0, Lgxt;->p:Ljava/lang/String;

    .line 4087
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 4094
    .restart local v0    # "chLocal":C
    :cond_2
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .local v2, "hash":J
    move v5, v6

    .line 4097
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :goto_2
    iget v7, p0, Lgxt;->e:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int v1, v7, v5

    .line 4098
    iget v7, p0, Lgxt;->q:I

    if-lt v1, v7, :cond_3

    const/16 v0, 0x1a

    .line 4102
    :goto_3
    const/16 v7, 0x22

    if-ne v0, v7, :cond_5

    .line 4103
    iget v7, p0, Lgxt;->e:I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    add-int v1, v7, v6

    .line 4104
    iget v7, p0, Lgxt;->q:I

    if-lt v1, v7, :cond_4

    const/16 v0, 0x1a

    .line 4119
    :goto_4
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_7

    .line 4120
    iget v7, p0, Lgxt;->e:I

    add-int/lit8 v8, v5, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lgxt;->e:I

    .line 4123
    iget v7, p0, Lgxt;->e:I

    add-int/lit8 v4, v7, 0x1

    iput v4, p0, Lgxt;->e:I

    .line 4124
    .local v4, "index":I
    iget v7, p0, Lgxt;->q:I

    if-lt v4, v7, :cond_6

    const/16 v7, 0x1a

    .line 4126
    :goto_5
    iput-char v7, p0, Lgxt;->d:C

    .line 4128
    const/4 v7, 0x3

    iput v7, p0, Lgxt;->o:I

    goto :goto_0

    .line 4098
    .end local v4    # "index":I
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_3
    iget-object v7, p0, Lgxt;->p:Ljava/lang/String;

    .line 4100
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    .line 4104
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    :cond_4
    iget-object v7, p0, Lgxt;->p:Ljava/lang/String;

    .line 4106
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    .line 4110
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_5
    int-to-long v8, v0

    xor-long/2addr v2, v8

    .line 4111
    const-wide v8, 0x100000001b3L

    mul-long/2addr v2, v8

    .line 4113
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_e

    .line 4114
    const/4 v7, -0x1

    iput v7, p0, Lgxt;->o:I

    .line 4115
    const-wide/16 v2, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 4124
    .restart local v4    # "index":I
    :cond_6
    iget-object v7, p0, Lgxt;->p:Ljava/lang/String;

    .line 4126
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_5

    .line 4132
    .end local v4    # "index":I
    :cond_7
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_d

    .line 4133
    iget v7, p0, Lgxt;->e:I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    add-int v1, v7, v5

    .line 4134
    iget v7, p0, Lgxt;->q:I

    if-lt v1, v7, :cond_8

    const/16 v0, 0x1a

    .line 4137
    :goto_6
    const/16 v7, 0x2c

    if-ne v0, v7, :cond_9

    .line 4138
    const/16 v7, 0x10

    iput v7, p0, Lgxt;->a:I

    .line 4139
    iget v7, p0, Lgxt;->e:I

    add-int/lit8 v8, v6, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lgxt;->e:I

    .line 4140
    invoke-virtual {p0}, Lgxt;->c()C

    .line 4157
    :goto_7
    const/4 v7, 0x4

    iput v7, p0, Lgxt;->o:I

    move v5, v6

    .line 4163
    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 4134
    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_8
    iget-object v7, p0, Lgxt;->p:Ljava/lang/String;

    .line 4136
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_6

    .line 4141
    :cond_9
    const/16 v7, 0x5d

    if-ne v0, v7, :cond_a

    .line 4142
    const/16 v7, 0xf

    iput v7, p0, Lgxt;->a:I

    .line 4143
    iget v7, p0, Lgxt;->e:I

    add-int/lit8 v8, v6, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lgxt;->e:I

    .line 4144
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_7

    .line 4145
    :cond_a
    const/16 v7, 0x7d

    if-ne v0, v7, :cond_b

    .line 4146
    const/16 v7, 0xd

    iput v7, p0, Lgxt;->a:I

    .line 4147
    iget v7, p0, Lgxt;->e:I

    add-int/lit8 v8, v6, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lgxt;->e:I

    .line 4148
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_7

    .line 4149
    :cond_b
    const/16 v7, 0x1a

    if-ne v0, v7, :cond_c

    .line 4150
    const/16 v7, 0x14

    iput v7, p0, Lgxt;->a:I

    .line 4151
    iget v7, p0, Lgxt;->e:I

    add-int/lit8 v8, v6, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lgxt;->e:I

    .line 4152
    const/16 v7, 0x1a

    iput-char v7, p0, Lgxt;->d:C

    goto :goto_7

    .line 4154
    :cond_c
    const/4 v7, -0x1

    iput v7, p0, Lgxt;->o:I

    .line 4155
    const-wide/16 v2, 0x0

    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_0

    .line 4159
    :cond_d
    const/4 v7, -0x1

    iput v7, p0, Lgxt;->o:I

    .line 4160
    const-wide/16 v2, 0x0

    goto/16 :goto_0

    .end local v5    # "offset":I
    .restart local v6    # "offset":I
    :cond_e
    move v5, v6

    .end local v6    # "offset":I
    .restart local v5    # "offset":I
    goto/16 :goto_2
.end method

.method public final n()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v4, 0x1

    const/16 v2, 0x1a

    .line 1292
    iget v1, p0, Lgxt;->e:I

    iput v1, p0, Lgxt;->j:I

    .line 1293
    iput-boolean v7, p0, Lgxt;->h:Z

    .line 1295
    iget-char v1, p0, Lgxt;->d:C

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_0

    .line 1296
    iget v1, p0, Lgxt;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgxt;->g:I

    .line 1299
    iget v1, p0, Lgxt;->e:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 1300
    .local v0, "index":I
    iget v1, p0, Lgxt;->q:I

    if-lt v0, v1, :cond_1

    move v1, v2

    .line 1302
    :goto_0
    iput-char v1, p0, Lgxt;->d:C

    .line 1307
    .end local v0    # "index":I
    :cond_0
    :goto_1
    iget-char v1, p0, Lgxt;->d:C

    if-lt v1, v5, :cond_3

    iget-char v1, p0, Lgxt;->d:C

    if-gt v1, v6, :cond_3

    .line 1309
    iget v1, p0, Lgxt;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgxt;->g:I

    .line 1315
    iget v1, p0, Lgxt;->e:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 1316
    .restart local v0    # "index":I
    iget v1, p0, Lgxt;->q:I

    if-lt v0, v1, :cond_2

    move v1, v2

    .line 1318
    :goto_2
    iput-char v1, p0, Lgxt;->d:C

    goto :goto_1

    .line 1300
    :cond_1
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 1302
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    .line 1316
    :cond_2
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 1318
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    .line 1322
    .end local v0    # "index":I
    :cond_3
    iput-boolean v7, p0, Lgxt;->i:Z

    .line 1324
    iget-char v1, p0, Lgxt;->d:C

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_6

    .line 1325
    iget v1, p0, Lgxt;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgxt;->g:I

    .line 1328
    iget v1, p0, Lgxt;->e:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 1329
    .restart local v0    # "index":I
    iget v1, p0, Lgxt;->q:I

    if-lt v0, v1, :cond_4

    move v1, v2

    .line 1331
    :goto_3
    iput-char v1, p0, Lgxt;->d:C

    .line 1333
    iput-boolean v4, p0, Lgxt;->i:Z

    .line 1336
    :goto_4
    iget-char v1, p0, Lgxt;->d:C

    if-lt v1, v5, :cond_6

    iget-char v1, p0, Lgxt;->d:C

    if-gt v1, v6, :cond_6

    .line 1338
    iget v1, p0, Lgxt;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgxt;->g:I

    .line 1344
    iget v1, p0, Lgxt;->e:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 1345
    iget v1, p0, Lgxt;->q:I

    if-lt v0, v1, :cond_5

    move v1, v2

    .line 1347
    :goto_5
    iput-char v1, p0, Lgxt;->d:C

    goto :goto_4

    .line 1329
    :cond_4
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 1331
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    .line 1345
    :cond_5
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 1347
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    .line 1352
    .end local v0    # "index":I
    :cond_6
    iget-char v1, p0, Lgxt;->d:C

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_8

    .line 1353
    iget v1, p0, Lgxt;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgxt;->g:I

    .line 1354
    invoke-virtual {p0}, Lgxt;->c()C

    .line 1418
    :cond_7
    :goto_6
    iget-boolean v1, p0, Lgxt;->i:Z

    if-eqz v1, :cond_16

    .line 1419
    const/4 v1, 0x3

    iput v1, p0, Lgxt;->a:I

    .line 1423
    :goto_7
    return-void

    .line 1355
    :cond_8
    iget-char v1, p0, Lgxt;->d:C

    const/16 v3, 0x53

    if-ne v1, v3, :cond_9

    .line 1356
    iget v1, p0, Lgxt;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgxt;->g:I

    .line 1357
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_6

    .line 1358
    :cond_9
    iget-char v1, p0, Lgxt;->d:C

    const/16 v3, 0x42

    if-ne v1, v3, :cond_a

    .line 1359
    iget v1, p0, Lgxt;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgxt;->g:I

    .line 1360
    invoke-virtual {p0}, Lgxt;->c()C

    goto :goto_6

    .line 1361
    :cond_a
    iget-char v1, p0, Lgxt;->d:C

    const/16 v3, 0x46

    if-ne v1, v3, :cond_b

    .line 1362
    iget v1, p0, Lgxt;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgxt;->g:I

    .line 1363
    invoke-virtual {p0}, Lgxt;->c()C

    .line 1364
    iput-boolean v4, p0, Lgxt;->i:Z

    goto :goto_6

    .line 1365
    :cond_b
    iget-char v1, p0, Lgxt;->d:C

    const/16 v3, 0x44

    if-ne v1, v3, :cond_c

    .line 1366
    iget v1, p0, Lgxt;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgxt;->g:I

    .line 1367
    invoke-virtual {p0}, Lgxt;->c()C

    .line 1368
    iput-boolean v4, p0, Lgxt;->i:Z

    goto :goto_6

    .line 1369
    :cond_c
    iget-char v1, p0, Lgxt;->d:C

    const/16 v3, 0x65

    if-eq v1, v3, :cond_d

    iget-char v1, p0, Lgxt;->d:C

    const/16 v3, 0x45

    if-ne v1, v3, :cond_7

    .line 1371
    :cond_d
    iget v1, p0, Lgxt;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgxt;->g:I

    .line 1374
    iget v1, p0, Lgxt;->e:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 1375
    .restart local v0    # "index":I
    iget v1, p0, Lgxt;->q:I

    if-lt v0, v1, :cond_10

    move v1, v2

    .line 1377
    :goto_8
    iput-char v1, p0, Lgxt;->d:C

    .line 1380
    iget-char v1, p0, Lgxt;->d:C

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_e

    iget-char v1, p0, Lgxt;->d:C

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_f

    .line 1382
    :cond_e
    iget v1, p0, Lgxt;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgxt;->g:I

    .line 1385
    iget v1, p0, Lgxt;->e:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 1386
    iget v1, p0, Lgxt;->q:I

    if-lt v0, v1, :cond_11

    move v1, v2

    .line 1388
    :goto_9
    iput-char v1, p0, Lgxt;->d:C

    .line 1393
    :cond_f
    :goto_a
    iget-char v1, p0, Lgxt;->d:C

    if-lt v1, v5, :cond_13

    iget-char v1, p0, Lgxt;->d:C

    if-gt v1, v6, :cond_13

    .line 1395
    iget v1, p0, Lgxt;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgxt;->g:I

    .line 1401
    iget v1, p0, Lgxt;->e:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lgxt;->e:I

    .line 1402
    iget v1, p0, Lgxt;->q:I

    if-lt v0, v1, :cond_12

    move v1, v2

    .line 1404
    :goto_b
    iput-char v1, p0, Lgxt;->d:C

    goto :goto_a

    .line 1375
    :cond_10
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 1377
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_8

    .line 1386
    :cond_11
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 1388
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_9

    .line 1402
    :cond_12
    iget-object v1, p0, Lgxt;->p:Ljava/lang/String;

    .line 1404
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_b

    .line 1408
    :cond_13
    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x44

    if-eq v1, v2, :cond_14

    iget-char v1, p0, Lgxt;->d:C

    const/16 v2, 0x46

    if-ne v1, v2, :cond_15

    .line 1410
    :cond_14
    iget v1, p0, Lgxt;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgxt;->g:I

    .line 1411
    invoke-virtual {p0}, Lgxt;->c()C

    .line 1414
    :cond_15
    iput-boolean v4, p0, Lgxt;->h:Z

    .line 1415
    iput-boolean v4, p0, Lgxt;->i:Z

    goto/16 :goto_6

    .line 1421
    .end local v0    # "index":I
    :cond_16
    const/4 v1, 0x2

    iput v1, p0, Lgxt;->a:I

    goto/16 :goto_7
.end method

.method public final o()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1428
    iget-object v2, p0, Lgxt;->p:Ljava/lang/String;

    const-string/jumbo v3, "false"

    iget v4, p0, Lgxt;->e:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1429
    const/4 v0, 0x5

    .line 1430
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 1445
    .local v1, "value":Z
    :goto_0
    iget v2, p0, Lgxt;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lgxt;->e:I

    .line 1446
    iget v2, p0, Lgxt;->e:I

    invoke-direct {p0, v2}, Lgxt;->b(I)C

    move-result v2

    iput-char v2, p0, Lgxt;->d:C

    .line 1448
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :goto_1
    return v1

    .line 1431
    :cond_0
    iget-object v2, p0, Lgxt;->p:Ljava/lang/String;

    const-string/jumbo v3, "true"

    iget v4, p0, Lgxt;->e:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1432
    const/4 v0, 0x4

    .line 1433
    .restart local v0    # "offset":I
    const/4 v1, 0x1

    .restart local v1    # "value":Z
    goto :goto_0

    .line 1434
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_1
    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2

    .line 1435
    const/4 v0, 0x1

    .line 1436
    .restart local v0    # "offset":I
    const/4 v1, 0x1

    .restart local v1    # "value":Z
    goto :goto_0

    .line 1437
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_2
    iget-char v2, p0, Lgxt;->d:C

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    .line 1438
    const/4 v0, 0x1

    .line 1439
    .restart local v0    # "offset":I
    const/4 v1, 0x0

    .restart local v1    # "value":Z
    goto :goto_0

    .line 1441
    .end local v0    # "offset":I
    .end local v1    # "value":Z
    :cond_3
    const/4 v2, -0x1

    iput v2, p0, Lgxt;->o:I

    .line 1442
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final p()Ljava/lang/Number;
    .locals 34

    .prologue
    .line 1452
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v27, v0

    .line 1454
    .local v27, "start":I
    const/16 v25, 0x0

    .line 1455
    .local v25, "overflow":Z
    const/16 v24, 0x0

    .line 1456
    .local v24, "number":Ljava/lang/Number;
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->j:I

    .line 1460
    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x2d

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3

    .line 1461
    const/16 v19, 0x1

    .line 1462
    .local v19, "negative":Z
    const-wide/high16 v20, -0x8000000000000000L

    .line 1464
    .local v20, "limit":J
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->j:I

    .line 1467
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v30, v0

    add-int/lit8 v15, v30, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lgxt;->e:I

    .line 1468
    .local v15, "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v15, v0, :cond_2

    const/16 v30, 0x1a

    .line 1470
    :goto_0
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    .line 1477
    .end local v15    # "index":I
    :goto_1
    const-wide/16 v22, 0x0

    .line 1479
    .local v22, "longValue":J
    :goto_2
    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x30

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x39

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_5

    .line 1481
    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    add-int/lit8 v8, v30, -0x30

    .line 1482
    .local v8, "digit":I
    const-wide v30, -0xcccccccccccccccL

    cmp-long v30, v22, v30

    if-gez v30, :cond_0

    .line 1483
    const/16 v25, 0x1

    .line 1486
    :cond_0
    const-wide/16 v30, 0xa

    mul-long v22, v22, v30

    .line 1487
    int-to-long v0, v8

    move-wide/from16 v30, v0

    add-long v30, v30, v20

    cmp-long v30, v22, v30

    if-gez v30, :cond_1

    .line 1488
    const/16 v25, 0x1

    .line 1490
    :cond_1
    int-to-long v0, v8

    move-wide/from16 v30, v0

    sub-long v22, v22, v30

    .line 1495
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->j:I

    .line 1498
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v30, v0

    add-int/lit8 v15, v30, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lgxt;->e:I

    .line 1499
    .restart local v15    # "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v15, v0, :cond_4

    const/16 v30, 0x1a

    .line 1501
    :goto_3
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    goto :goto_2

    .line 1468
    .end local v8    # "digit":I
    .end local v22    # "longValue":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1470
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v30

    goto/16 :goto_0

    .line 1473
    .end local v15    # "index":I
    .end local v19    # "negative":Z
    .end local v20    # "limit":J
    :cond_3
    const/16 v19, 0x0

    .line 1474
    .restart local v19    # "negative":Z
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v20    # "limit":J
    goto/16 :goto_1

    .line 1499
    .restart local v8    # "digit":I
    .restart local v15    # "index":I
    .restart local v22    # "longValue":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1501
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v30

    goto :goto_3

    .line 1505
    .end local v8    # "digit":I
    .end local v15    # "index":I
    :cond_5
    if-nez v19, :cond_6

    .line 1506
    move-wide/from16 v0, v22

    neg-long v0, v0

    move-wide/from16 v22, v0

    .line 1509
    :cond_6
    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x4c

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    .line 1510
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->j:I

    .line 1511
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 1512
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 1531
    :cond_7
    :goto_4
    const/16 v17, 0x0

    .local v17, "isDouble":Z
    const/4 v12, 0x0

    .line 1532
    .local v12, "exp":Z
    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x2e

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_e

    .line 1533
    const/16 v17, 0x1

    .line 1535
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->j:I

    .line 1538
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v30, v0

    add-int/lit8 v15, v30, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lgxt;->e:I

    .line 1539
    .restart local v15    # "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v15, v0, :cond_c

    const/16 v30, 0x1a

    .line 1541
    :goto_5
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    .line 1545
    :goto_6
    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x30

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x39

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_e

    .line 1547
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->j:I

    .line 1553
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v30, v0

    add-int/lit8 v15, v30, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lgxt;->e:I

    .line 1554
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v15, v0, :cond_d

    const/16 v30, 0x1a

    .line 1556
    :goto_7
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    goto :goto_6

    .line 1513
    .end local v12    # "exp":Z
    .end local v15    # "index":I
    .end local v17    # "isDouble":Z
    :cond_8
    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x53

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 1514
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->j:I

    .line 1515
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 1516
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v24

    goto/16 :goto_4

    .line 1517
    :cond_9
    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x42

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 1518
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->j:I

    .line 1519
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 1520
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v24

    goto/16 :goto_4

    .line 1521
    :cond_a
    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x46

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_b

    .line 1522
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->j:I

    .line 1523
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 1524
    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    goto/16 :goto_4

    .line 1525
    :cond_b
    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x44

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    .line 1526
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->j:I

    .line 1527
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 1528
    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    goto/16 :goto_4

    .line 1539
    .restart local v12    # "exp":Z
    .restart local v15    # "index":I
    .restart local v17    # "isDouble":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1541
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v30

    goto/16 :goto_5

    .line 1554
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1556
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v30

    goto/16 :goto_7

    .line 1561
    .end local v15    # "index":I
    :cond_e
    const/16 v29, 0x0

    .line 1562
    .local v29, "type":C
    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x65

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x45

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_18

    .line 1564
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->j:I

    .line 1567
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v30, v0

    add-int/lit8 v15, v30, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lgxt;->e:I

    .line 1568
    .restart local v15    # "index":I
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v15, v0, :cond_12

    const/16 v30, 0x1a

    .line 1570
    :goto_8
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    .line 1573
    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x2b

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x2d

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_11

    .line 1575
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->j:I

    .line 1578
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v30, v0

    add-int/lit8 v15, v30, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lgxt;->e:I

    .line 1579
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v15, v0, :cond_13

    const/16 v30, 0x1a

    .line 1581
    :goto_9
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    .line 1586
    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x30

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x39

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_15

    .line 1588
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->j:I

    .line 1594
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v30, v0

    add-int/lit8 v15, v30, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lgxt;->e:I

    .line 1595
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->q:I

    move/from16 v30, v0

    move/from16 v0, v30

    if-lt v15, v0, :cond_14

    const/16 v30, 0x1a

    .line 1597
    :goto_b
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-char v0, v1, Lgxt;->d:C

    goto :goto_a

    .line 1568
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1570
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v30

    goto/16 :goto_8

    .line 1579
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1581
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v30

    goto :goto_9

    .line 1595
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1597
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v30

    goto :goto_b

    .line 1601
    :cond_15
    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x44

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v30, v0

    const/16 v31, 0x46

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_17

    .line 1603
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->j:I

    move/from16 v30, v0

    add-int/lit8 v30, v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lgxt;->j:I

    .line 1604
    move-object/from16 v0, p0

    iget-char v0, v0, Lgxt;->d:C

    move/from16 v29, v0

    .line 1605
    invoke-virtual/range {p0 .. p0}, Lgxt;->c()C

    .line 1608
    :cond_17
    const/4 v12, 0x1

    .line 1611
    .end local v15    # "index":I
    :cond_18
    if-nez v17, :cond_1c

    if-nez v12, :cond_1c

    .line 1613
    if-eqz v25, :cond_19

    .line 1614
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v30, v0

    sub-int v18, v30, v27

    .line 1615
    .local v18, "len":I
    move/from16 v0, v18

    new-array v7, v0, [C

    .line 1616
    .local v7, "chars":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1617
    new-instance v28, Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    .line 1618
    .local v28, "strVal":Ljava/lang/String;
    new-instance v24, Ljava/math/BigInteger;

    .end local v24    # "number":Ljava/lang/Number;
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1620
    .end local v7    # "chars":[C
    .end local v18    # "len":I
    .end local v28    # "strVal":Ljava/lang/String;
    .restart local v24    # "number":Ljava/lang/Number;
    :cond_19
    if-nez v24, :cond_1a

    .line 1621
    const-wide/32 v30, -0x80000000

    cmp-long v30, v22, v30

    if-lez v30, :cond_1b

    const-wide/32 v30, 0x7fffffff

    cmp-long v30, v22, v30

    if-gez v30, :cond_1b

    .line 1622
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    :cond_1a
    :goto_c
    move-object/from16 v30, v24

    .line 1704
    :goto_d
    return-object v30

    .line 1624
    :cond_1b
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    goto :goto_c

    .line 1630
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->e:I

    move/from16 v30, v0

    sub-int v18, v30, v27

    .line 1631
    .restart local v18    # "len":I
    if-eqz v29, :cond_1d

    .line 1632
    add-int/lit8 v18, v18, -0x1

    .line 1636
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->f:[C

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_1e

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v30, v0

    add-int v31, v27, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->f:[C

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v31

    move-object/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v7, v0, Lgxt;->f:[C

    .line 1646
    .restart local v7    # "chars":[C
    :goto_e
    if-nez v12, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lgxt;->c:I

    move/from16 v30, v0

    sget-object v31, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v31

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v31, v0

    and-int v30, v30, v31

    if-eqz v30, :cond_1f

    .line 1648
    new-instance v24, Ljava/math/BigDecimal;

    .end local v24    # "number":Ljava/lang/Number;
    const/16 v30, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v30

    move/from16 v2, v18

    invoke-direct {v0, v7, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .restart local v24    # "number":Ljava/lang/Number;
    :goto_f
    move-object/from16 v30, v24

    .line 1704
    goto :goto_d

    .line 1640
    .end local v7    # "chars":[C
    :cond_1e
    move/from16 v0, v18

    new-array v7, v0, [C

    .line 1641
    .restart local v7    # "chars":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lgxt;->p:Ljava/lang/String;

    move-object/from16 v30, v0

    add-int v31, v27, v18

    const/16 v32, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v27

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_e

    .line 1652
    :cond_1f
    const/16 v30, 0x9

    move/from16 v0, v18

    move/from16 v1, v30

    if-gt v0, v1, :cond_28

    if-nez v12, :cond_28

    .line 1653
    const/4 v14, 0x0

    .line 1654
    .local v14, "i":I
    const/16 v30, 0x0

    add-int/lit8 v14, v14, 0x1

    :try_start_0
    aget-char v6, v7, v30

    .line 1655
    .local v6, "c":C
    const/16 v30, 0x2d

    move/from16 v0, v30

    if-eq v6, v0, :cond_20

    const/16 v30, 0x2b

    move/from16 v0, v30

    if-ne v6, v0, :cond_21

    .line 1656
    :cond_20
    const/16 v30, 0x1

    add-int/lit8 v14, v14, 0x1

    aget-char v6, v7, v30

    .line 1659
    :cond_21
    add-int/lit8 v16, v6, -0x30

    .line 1660
    .local v16, "intVal":I
    const/16 v26, 0x0

    .line 1661
    .local v26, "power":I
    :goto_10
    move/from16 v0, v18

    if-ge v14, v0, :cond_24

    .line 1662
    aget-char v6, v7, v14

    .line 1664
    const/16 v30, 0x2e

    move/from16 v0, v30

    if-ne v6, v0, :cond_23

    .line 1665
    const/16 v26, 0x1

    .line 1661
    :cond_22
    :goto_11
    add-int/lit8 v14, v14, 0x1

    goto :goto_10

    .line 1668
    :cond_23
    add-int/lit8 v8, v6, -0x30

    .line 1669
    .restart local v8    # "digit":I
    mul-int/lit8 v30, v16, 0xa

    add-int v16, v30, v8

    .line 1671
    if-eqz v26, :cond_22

    .line 1672
    mul-int/lit8 v26, v26, 0xa

    goto :goto_11

    .line 1676
    .end local v8    # "digit":I
    :cond_24
    const/16 v30, 0x46

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_26

    .line 1677
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v31, v0

    div-float v13, v30, v31

    .line 1678
    .local v13, "floatVal":F
    if-eqz v19, :cond_25

    .line 1679
    neg-float v13, v13

    .line 1682
    :cond_25
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v30

    goto/16 :goto_d

    .line 1685
    .end local v13    # "floatVal":F
    :cond_26
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v30, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v10, v30, v32

    .line 1686
    .local v10, "doubleVal":D
    if-eqz v19, :cond_27

    .line 1687
    neg-double v10, v10

    .line 1690
    :cond_27
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v30

    goto/16 :goto_d

    .line 1693
    .end local v6    # "c":C
    .end local v10    # "doubleVal":D
    .end local v14    # "i":I
    .end local v16    # "intVal":I
    .end local v26    # "power":I
    :cond_28
    new-instance v28, Ljava/lang/String;

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v30

    move/from16 v2, v18

    invoke-direct {v0, v7, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 1694
    .restart local v28    # "strVal":Ljava/lang/String;
    const/16 v30, 0x46

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_29

    .line 1695
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v24

    goto/16 :goto_f

    .line 1697
    :cond_29
    invoke-static/range {v28 .. v28}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    goto/16 :goto_f

    .line 1699
    .end local v28    # "strVal":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1700
    .local v9, "ex":Ljava/lang/NumberFormatException;
    new-instance v30, Lcom/alibaba/fastjson/JSONException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ", "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Lgxt;->g()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v30
.end method

.method public final q()J
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1708
    const/4 v7, 0x0

    iput v7, p0, Lgxt;->j:I

    .line 1712
    iget-char v7, p0, Lgxt;->d:C

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1

    .line 1713
    const/4 v6, 0x1

    .line 1714
    .local v6, "negative":Z
    const-wide/high16 v2, -0x8000000000000000L

    .line 1716
    .local v2, "limit":J
    iget v7, p0, Lgxt;->j:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lgxt;->j:I

    .line 1719
    iget v7, p0, Lgxt;->e:I

    add-int/lit8 v1, v7, 0x1

    iput v1, p0, Lgxt;->e:I

    .line 1720
    .local v1, "index":I
    iget v7, p0, Lgxt;->q:I

    if-lt v1, v7, :cond_0

    .line 1721
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "syntax error, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lgxt;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1723
    :cond_0
    iget-object v7, p0, Lgxt;->p:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lgxt;->d:C

    .line 1730
    .end local v1    # "index":I
    :goto_0
    const-wide/16 v4, 0x0

    .line 1732
    .local v4, "longValue":J
    :goto_1
    iget-char v7, p0, Lgxt;->d:C

    const/16 v8, 0x30

    if-lt v7, v8, :cond_5

    iget-char v7, p0, Lgxt;->d:C

    const/16 v8, 0x39

    if-gt v7, v8, :cond_5

    .line 1734
    iget-char v7, p0, Lgxt;->d:C

    add-int/lit8 v0, v7, -0x30

    .line 1735
    .local v0, "digit":I
    const-wide v8, -0xcccccccccccccccL

    cmp-long v7, v4, v8

    if-gez v7, :cond_2

    .line 1736
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "error long value, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lgxt;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1726
    .end local v0    # "digit":I
    .end local v2    # "limit":J
    .end local v4    # "longValue":J
    .end local v6    # "negative":Z
    :cond_1
    const/4 v6, 0x0

    .line 1727
    .restart local v6    # "negative":Z
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v2    # "limit":J
    goto :goto_0

    .line 1739
    .restart local v0    # "digit":I
    .restart local v4    # "longValue":J
    :cond_2
    const-wide/16 v8, 0xa

    mul-long/2addr v4, v8

    .line 1740
    int-to-long v8, v0

    add-long/2addr v8, v2

    cmp-long v7, v4, v8

    if-gez v7, :cond_3

    .line 1741
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "error long value, "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lgxt;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1743
    :cond_3
    int-to-long v8, v0

    sub-long/2addr v4, v8

    .line 1748
    iget v7, p0, Lgxt;->j:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lgxt;->j:I

    .line 1751
    iget v7, p0, Lgxt;->e:I

    add-int/lit8 v1, v7, 0x1

    iput v1, p0, Lgxt;->e:I

    .line 1752
    .restart local v1    # "index":I
    iget v7, p0, Lgxt;->q:I

    if-lt v1, v7, :cond_4

    const/16 v7, 0x1a

    .line 1754
    :goto_2
    iput-char v7, p0, Lgxt;->d:C

    goto/16 :goto_1

    .line 1752
    :cond_4
    iget-object v7, p0, Lgxt;->p:Ljava/lang/String;

    .line 1754
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_2

    .line 1758
    .end local v0    # "digit":I
    .end local v1    # "index":I
    :cond_5
    if-nez v6, :cond_6

    .line 1759
    neg-long v4, v4

    .line 1762
    :cond_6
    return-wide v4
.end method

.method public final r()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 1766
    const-wide/16 v10, 0x0

    .line 1767
    .local v10, "result":J
    const/4 v8, 0x0

    .line 1768
    .local v8, "negative":Z
    iget v2, p0, Lgxt;->j:I

    .local v2, "i":I
    iget v9, p0, Lgxt;->j:I

    iget v12, p0, Lgxt;->g:I

    add-int v5, v9, v12

    .line 1773
    .local v5, "max":I
    iget v9, p0, Lgxt;->j:I

    invoke-direct {p0, v9}, Lgxt;->b(I)C

    move-result v9

    const/16 v12, 0x2d

    if-ne v9, v12, :cond_1

    .line 1774
    const/4 v8, 0x1

    .line 1775
    const-wide/high16 v6, -0x8000000000000000L

    .line 1776
    .local v6, "limit":J
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 1780
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 1781
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {p0, v3}, Lgxt;->b(I)C

    move-result v9

    add-int/lit8 v1, v9, -0x30

    .line 1782
    .local v1, "digit":I
    neg-int v9, v1

    int-to-long v10, v9

    move v3, v2

    .line 1784
    .end local v1    # "digit":I
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_0
    :goto_1
    if-ge v3, v5, :cond_5

    .line 1789
    add-int/lit8 v2, v3, 0x1

    .line 1790
    .end local v3    # "i":I
    .restart local v2    # "i":I
    move v4, v3

    .local v4, "index":I
    iget v9, p0, Lgxt;->q:I

    if-lt v3, v9, :cond_2

    const/16 v0, 0x1a

    .line 1795
    .local v0, "chLocal":C
    :goto_2
    const/16 v9, 0x4c

    if-eq v0, v9, :cond_6

    const/16 v9, 0x53

    if-eq v0, v9, :cond_6

    const/16 v9, 0x42

    if-eq v0, v9, :cond_6

    .line 1801
    add-int/lit8 v1, v0, -0x30

    .line 1802
    .restart local v1    # "digit":I
    const-wide v12, -0xcccccccccccccccL

    cmp-long v9, v10, v12

    if-gez v9, :cond_3

    .line 1803
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lgxt;->d()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1778
    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    .end local v4    # "index":I
    .end local v6    # "limit":J
    :cond_1
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v6    # "limit":J
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 1790
    .end local v3    # "i":I
    .restart local v2    # "i":I
    .restart local v4    # "index":I
    :cond_2
    iget-object v9, p0, Lgxt;->p:Ljava/lang/String;

    .line 1792
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    .line 1805
    .restart local v0    # "chLocal":C
    .restart local v1    # "digit":I
    :cond_3
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 1806
    int-to-long v12, v1

    add-long/2addr v12, v6

    cmp-long v9, v10, v12

    if-gez v9, :cond_4

    .line 1807
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lgxt;->d()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1809
    :cond_4
    int-to-long v12, v1

    sub-long/2addr v10, v12

    move v3, v2

    .line 1810
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    .end local v4    # "index":I
    :cond_5
    move v2, v3

    .line 1812
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_6
    if-eqz v8, :cond_8

    .line 1813
    iget v9, p0, Lgxt;->j:I

    add-int/lit8 v9, v9, 0x1

    if-le v2, v9, :cond_7

    .line 1819
    .end local v10    # "result":J
    :goto_3
    return-wide v10

    .line 1816
    .restart local v10    # "result":J
    :cond_7
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lgxt;->d()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1819
    :cond_8
    neg-long v10, v10

    goto :goto_3
.end method

.method public final s()Ljava/math/BigDecimal;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 1917
    iget v6, p0, Lgxt;->j:I

    iget v7, p0, Lgxt;->g:I

    add-int/2addr v6, v7

    add-int/lit8 v3, v6, -0x1

    .line 1918
    .local v3, "index":I
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1920
    .local v0, "chLocal":C
    iget v5, p0, Lgxt;->g:I

    .line 1921
    .local v5, "sp":I
    const/16 v6, 0x4c

    if-eq v0, v6, :cond_0

    const/16 v6, 0x53

    if-eq v0, v6, :cond_0

    const/16 v6, 0x42

    if-eq v0, v6, :cond_0

    const/16 v6, 0x46

    if-eq v0, v6, :cond_0

    const/16 v6, 0x44

    if-ne v0, v6, :cond_1

    .line 1926
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 1931
    :cond_1
    iget v4, p0, Lgxt;->j:I

    .line 1932
    .local v4, "offset":I
    move v2, v5

    .local v2, "count":I
    iget-object v6, p0, Lgxt;->f:[C

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 1933
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    add-int v7, v4, v2

    iget-object v8, p0, Lgxt;->f:[C

    invoke-virtual {v6, v4, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1934
    new-instance v6, Ljava/math/BigDecimal;

    iget-object v7, p0, Lgxt;->f:[C

    invoke-direct {v6, v7, v9, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 1938
    :goto_0
    return-object v6

    .line 1936
    :cond_2
    new-array v1, v2, [C

    .line 1937
    .local v1, "chars":[C
    iget-object v6, p0, Lgxt;->p:Ljava/lang/String;

    add-int v7, v4, v2

    invoke-virtual {v6, v4, v7, v1, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 1938
    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_0
.end method

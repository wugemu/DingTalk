.class final Lclx;
.super Ljava/lang/Object;
.source "MailHtml.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclx$e;,
        Lclx$f;,
        Lclx$d;,
        Lclx$j;,
        Lclx$k;,
        Lclx$b;,
        Lclx$h;,
        Lclx$i;,
        Lclx$a;,
        Lclx$l;,
        Lclx$g;,
        Lclx$c;
    }
.end annotation


# static fields
.field public static a:I

.field private static final b:[F

.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/lang/String;

.field private d:Lorg/xml/sax/XMLReader;

.field private e:Landroid/text/SpannableStringBuilder;

.field private f:Lcly$b;

.field private g:Lcly$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 421
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lclx;->b:[F

    .line 4899
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4900
    const-string/jumbo v1, "aqua"

    const v2, 0xffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4901
    const-string/jumbo v1, "black"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4902
    const-string/jumbo v1, "blue"

    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4903
    const-string/jumbo v1, "fuchsia"

    const v2, 0xff00ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4904
    const-string/jumbo v1, "green"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4905
    const-string/jumbo v1, "grey"

    const v2, 0x808080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4906
    const-string/jumbo v1, "lime"

    const v2, 0xff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4907
    const-string/jumbo v1, "maroon"

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4908
    const-string/jumbo v1, "navy"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4909
    const-string/jumbo v1, "olive"

    const v2, 0x808000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4910
    const-string/jumbo v1, "purple"

    const v2, 0x800080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4911
    const-string/jumbo v1, "red"

    const/high16 v2, 0xff0000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4912
    const-string/jumbo v1, "silver"

    const v2, 0xc0c0c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4913
    const-string/jumbo v1, "teal"

    const v2, 0x8080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4914
    const-string/jumbo v1, "white"

    const v2, 0xffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4915
    const-string/jumbo v1, "yellow"

    const v2, 0xffff00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sput-object v0, Lclx;->h:Ljava/util/HashMap;

    return-void

    .line 421
    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3fb33333    # 1.4f
        0x3fa66666    # 1.3f
        0x3f99999a    # 1.2f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcly$b;Lcly$c;Lorg/ccil/cowan/tagsoup/Parser;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "imageGetter"    # Lcly$b;
    .param p3, "tagHandler"    # Lcly$c;
    .param p4, "parser"    # Lorg/ccil/cowan/tagsoup/Parser;
    .param p5, "maxImageWidth"    # I

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p1, p0, Lclx;->c:Ljava/lang/String;

    .line 437
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    .line 438
    iput-object p2, p0, Lclx;->f:Lcly$b;

    .line 439
    iput-object p3, p0, Lclx;->g:Lcly$c;

    .line 440
    iput-object p4, p0, Lclx;->d:Lorg/xml/sax/XMLReader;

    .line 442
    sput p5, Lclx;->a:I

    .line 443
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 12
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x10

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 928
    sget-object v4, Lclx;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 929
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 930
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3963
    :cond_0
    :goto_0
    return v1

    .line 3942
    :cond_1
    if-eqz p0, :cond_0

    .line 3945
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3952
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 3953
    const/16 v4, 0xa

    .line 3955
    const/16 v6, 0x2d

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v6, v9, :cond_7

    move v6, v1

    .line 3960
    :goto_1
    const/16 v9, 0x30

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_5

    .line 3962
    add-int/lit8 v4, v8, -0x1

    if-ne v5, v4, :cond_2

    move v1, v2

    .line 3963
    goto :goto_0

    .line 3965
    :cond_2
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3967
    const/16 v4, 0x78

    if-eq v4, v2, :cond_3

    const/16 v4, 0x58

    if-ne v4, v2, :cond_4

    .line 3968
    :cond_3
    add-int/lit8 v2, v5, 0x2

    move v11, v3

    move v3, v2

    move v2, v11

    .line 3979
    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/2addr v1, v6

    goto :goto_0

    .line 3971
    :cond_4
    add-int/lit8 v3, v5, 0x1

    .line 3972
    const/16 v2, 0x8

    .line 3974
    goto :goto_2

    :cond_5
    const/16 v2, 0x23

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-ne v2, v8, :cond_6

    .line 3975
    add-int/lit8 v2, v5, 0x1

    move v11, v3

    move v3, v2

    move v2, v11

    .line 3976
    goto :goto_2

    .line 935
    :catch_0
    move-exception v2

    goto :goto_0

    :cond_6
    move v2, v4

    move v3, v5

    goto :goto_2

    :cond_7
    move v6, v5

    move v5, v2

    goto :goto_1
.end method

.method private static a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "kind"    # Ljava/lang/Class;

    .prologue
    .line 608
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v2

    invoke-interface {p0, v1, v2, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 610
    .local v0, "objs":[Ljava/lang/Object;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 611
    const/4 v1, 0x0

    .line 613
    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/16 v2, 0xa

    .line 583
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 585
    .local v0, "len":I
    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    .line 586
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 594
    :cond_2
    if-eqz v0, :cond_0

    .line 595
    const-string/jumbo v1, "\n\n"

    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "kind"    # Ljava/lang/Class;
    .param p2, "repl"    # Ljava/lang/Object;

    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 625
    .local v0, "len":I
    invoke-static {p0, p1}, Lclx;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 626
    .local v1, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 628
    .local v2, "where":I
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 630
    if-eq v2, v0, :cond_0

    .line 631
    const/16 v3, 0x21

    invoke-virtual {p0, p2, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 633
    :cond_0
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;
    .param p1, "mark"    # Ljava/lang/Object;

    .prologue
    .line 618
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 619
    .local v0, "len":I
    const/16 v1, 0x11

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 620
    return-void
.end method

.method private static b(Landroid/text/SpannableStringBuilder;)V
    .locals 8
    .param p0, "text"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/16 v7, 0x21

    .line 766
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 767
    .local v1, "len":I
    const-class v4, Lclx$e;

    invoke-static {p0, v4}, Lclx;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 769
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 771
    .local v3, "where":I
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 774
    :goto_0
    if-le v1, v3, :cond_0

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 775
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 778
    :cond_0
    if-eq v3, v1, :cond_1

    move-object v0, v2

    .line 779
    check-cast v0, Lclx$e;

    .line 781
    .local v0, "h":Lclx$e;
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    sget-object v5, Lclx;->b:[F

    invoke-static {v0}, Lclx$e;->a(Lclx$e;)I

    move-result v6

    aget v5, v5, v6

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v4, v3, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 783
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v4, v3, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 786
    .end local v0    # "h":Lclx$e;
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Landroid/text/Spanned;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v9, 0xa

    .line 447
    iget-object v5, p0, Lclx;->d:Lorg/xml/sax/XMLReader;

    invoke-interface {v5, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 449
    :try_start_0
    iget-object v5, p0, Lclx;->d:Lorg/xml/sax/XMLReader;

    new-instance v6, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/StringReader;

    iget-object v8, p0, Lclx;->c:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 459
    iget-object v5, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    const/4 v6, 0x0

    iget-object v7, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-virtual {v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 460
    .local v3, "obj":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 461
    iget-object v5, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 462
    .local v4, "start":I
    iget-object v5, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 465
    .local v1, "end":I
    add-int/lit8 v5, v1, -0x2

    if-ltz v5, :cond_0

    .line 466
    iget-object v5, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_0

    iget-object v5, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v1, -0x2

    .line 467
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_0

    .line 468
    add-int/lit8 v1, v1, -0x1

    .line 472
    :cond_0
    if-ne v1, v4, :cond_1

    .line 473
    iget-object v5, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 460
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "obj":[Ljava/lang/Object;
    .end local v4    # "start":I
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 453
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 455
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 475
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .restart local v1    # "end":I
    .restart local v2    # "i":I
    .restart local v3    # "obj":[Ljava/lang/Object;
    .restart local v4    # "start":I
    :cond_1
    iget-object v5, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    aget-object v6, v3, v2

    const/16 v7, 0x33

    invoke-virtual {v5, v6, v4, v1, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 479
    .end local v1    # "end":I
    .end local v4    # "start":I
    :cond_2
    iget-object v5, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    return-object v5
.end method

.method public final characters([CII)V
    .locals 9
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v8, 0xa

    const/16 v7, 0x20

    .line 814
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    .line 821
    .local v4, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_5

    .line 822
    add-int v5, v1, p2

    aget-char v0, p1, v5

    .line 824
    .local v0, "c":C
    if-eq v0, v7, :cond_0

    if-ne v0, v8, :cond_4

    .line 826
    :cond_0
    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v2

    .line 828
    .local v2, "len":I
    if-nez v2, :cond_3

    .line 829
    iget-object v5, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 831
    if-nez v2, :cond_2

    .line 832
    const/16 v3, 0xa

    .line 840
    .local v3, "pred":C
    :goto_1
    if-eq v3, v7, :cond_1

    if-eq v3, v8, :cond_1

    .line 841
    invoke-virtual {v4, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 821
    .end local v2    # "len":I
    .end local v3    # "pred":C
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 834
    .restart local v2    # "len":I
    :cond_2
    iget-object v5, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    .restart local v3    # "pred":C
    goto :goto_1

    .line 837
    .end local v3    # "pred":C
    :cond_3
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->charAt(I)C

    move-result v3

    .restart local v3    # "pred":C
    goto :goto_1

    .line 844
    .end local v2    # "len":I
    .end local v3    # "pred":C
    :cond_4
    invoke-virtual {v4, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_2

    .line 848
    .end local v0    # "c":C
    :cond_5
    iget-object v5, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 849
    return-void
.end method

.method public final endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 795
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v10, 0x21

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 809
    .line 3534
    const-string/jumbo v0, "br"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3535
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    .line 3600
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3571
    :cond_0
    :goto_0
    return-void

    .line 3536
    :cond_1
    const-string/jumbo v0, "p"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3537
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lclx;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 3538
    :cond_2
    const-string/jumbo v0, "div"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3539
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lclx;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 3540
    :cond_3
    const-string/jumbo v0, "strong"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3541
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    const-class v1, Lclx$c;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 3542
    :cond_4
    const-string/jumbo v0, "b"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3543
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    const-class v1, Lclx$c;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 3544
    :cond_5
    const-string/jumbo v0, "em"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3545
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    const-class v1, Lclx$g;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 3546
    :cond_6
    const-string/jumbo v0, "cite"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3547
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    const-class v1, Lclx$g;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 3548
    :cond_7
    const-string/jumbo v0, "dfn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3549
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    const-class v1, Lclx$g;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3550
    :cond_8
    const-string/jumbo v0, "i"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3551
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    const-class v1, Lclx$g;

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v2}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3552
    :cond_9
    const-string/jumbo v0, "big"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3553
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    const-class v1, Lclx$a;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3554
    :cond_a
    const-string/jumbo v0, "small"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3555
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    const-class v1, Lclx$i;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3556
    :cond_b
    const-string/jumbo v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3557
    iget-object v7, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    .line 3704
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 3705
    const-class v0, Lclx$d;

    invoke-static {v7, v0}, Lclx;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 3706
    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 3708
    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 3710
    if-eq v9, v8, :cond_0

    move-object v6, v0

    .line 3711
    check-cast v6, Lclx$d;

    .line 3713
    iget-object v0, v6, Lclx$d;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 3714
    iget-object v0, v6, Lclx$d;->a:Ljava/lang/String;

    const-string/jumbo v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3715
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 3716
    iget-object v3, v6, Lclx$d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3717
    const-string/jumbo v4, "color"

    const-string/jumbo v5, "android"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3718
    if-eqz v3, :cond_c

    .line 3719
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 3720
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    invoke-virtual {v7, v0, v9, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3734
    :cond_c
    :goto_1
    iget-object v0, v6, Lclx$d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3735
    new-instance v0, Landroid/text/style/TypefaceSpan;

    iget-object v1, v6, Lclx$d;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v9, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 3725
    :cond_d
    iget-object v0, v6, Lclx$d;->a:Ljava/lang/String;

    invoke-static {v0}, Lclx;->a(Ljava/lang/String;)I

    move-result v0

    .line 3726
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 3727
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7, v1, v9, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 3558
    :cond_e
    const-string/jumbo v0, "blockquote"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3559
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lclx;->a(Landroid/text/SpannableStringBuilder;)V

    .line 3560
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    const-class v1, Lclx$b;

    new-instance v2, Landroid/text/style/QuoteSpan;

    invoke-direct {v2}, Landroid/text/style/QuoteSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3561
    :cond_f
    const-string/jumbo v0, "tt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3562
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    const-class v1, Lclx$h;

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v3, "monospace"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3564
    :cond_10
    const-string/jumbo v0, "a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3565
    iget-object v1, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    .line 3749
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 3750
    const-class v0, Lclx$f;

    invoke-static {v1, v0}, Lclx;->a(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 3751
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 3753
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 3755
    if-eq v3, v2, :cond_0

    .line 3756
    check-cast v0, Lclx$f;

    .line 3758
    iget-object v4, v0, Lclx$f;->a:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 3759
    new-instance v4, Landroid/text/style/URLSpan;

    iget-object v0, v0, Lclx$f;->a:Ljava/lang/String;

    invoke-direct {v4, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 3566
    :cond_11
    const-string/jumbo v0, "u"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3567
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    const-class v1, Lclx$l;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3568
    :cond_12
    const-string/jumbo v0, "sup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3569
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    const-class v1, Lclx$k;

    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3570
    :cond_13
    const-string/jumbo v0, "sub"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3571
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    const-class v1, Lclx$j;

    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3572
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 3573
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    .line 3574
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_0

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_0

    .line 3575
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lclx;->a(Landroid/text/SpannableStringBuilder;)V

    .line 3576
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lclx;->b(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_0
.end method

.method public final endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 801
    return-void
.end method

.method public final ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 852
    return-void
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 855
    return-void
.end method

.method public final setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 789
    return-void
.end method

.method public final skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 858
    return-void
.end method

.method public final startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 792
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v7, 0x21

    const/16 v6, 0x11

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 805
    .line 1483
    const-string/jumbo v0, "br"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1486
    const-string/jumbo v0, "p"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1487
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lclx;->a(Landroid/text/SpannableStringBuilder;)V

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1488
    :cond_1
    const-string/jumbo v0, "div"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1489
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lclx;->a(Landroid/text/SpannableStringBuilder;)V

    goto :goto_0

    .line 1490
    :cond_2
    const-string/jumbo v0, "strong"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1491
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lclx$c;

    invoke-direct {v1, v5}, Lclx$c;-><init>(B)V

    invoke-static {v0, v1}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1492
    :cond_3
    const-string/jumbo v0, "b"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1493
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lclx$c;

    invoke-direct {v1, v5}, Lclx$c;-><init>(B)V

    invoke-static {v0, v1}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1494
    :cond_4
    const-string/jumbo v0, "em"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1495
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lclx$g;

    invoke-direct {v1, v5}, Lclx$g;-><init>(B)V

    invoke-static {v0, v1}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1496
    :cond_5
    const-string/jumbo v0, "cite"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1497
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lclx$g;

    invoke-direct {v1, v5}, Lclx$g;-><init>(B)V

    invoke-static {v0, v1}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1498
    :cond_6
    const-string/jumbo v0, "dfn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1499
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lclx$g;

    invoke-direct {v1, v5}, Lclx$g;-><init>(B)V

    invoke-static {v0, v1}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1500
    :cond_7
    const-string/jumbo v0, "i"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1501
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lclx$g;

    invoke-direct {v1, v5}, Lclx$g;-><init>(B)V

    invoke-static {v0, v1}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1502
    :cond_8
    const-string/jumbo v0, "big"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1503
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lclx$a;

    invoke-direct {v1, v5}, Lclx$a;-><init>(B)V

    invoke-static {v0, v1}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1504
    :cond_9
    const-string/jumbo v0, "small"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1505
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lclx$i;

    invoke-direct {v1, v5}, Lclx$i;-><init>(B)V

    invoke-static {v0, v1}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1506
    :cond_a
    const-string/jumbo v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1507
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    .line 1696
    const-string/jumbo v1, ""

    const-string/jumbo v2, "color"

    invoke-interface {p4, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1697
    const-string/jumbo v2, ""

    const-string/jumbo v3, "face"

    invoke-interface {p4, v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1699
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1700
    new-instance v4, Lclx$d;

    invoke-direct {v4, v1, v2}, Lclx$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v3, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 1508
    :cond_b
    const-string/jumbo v0, "blockquote"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1509
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lclx;->a(Landroid/text/SpannableStringBuilder;)V

    .line 1510
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lclx$b;

    invoke-direct {v1, v5}, Lclx$b;-><init>(B)V

    invoke-static {v0, v1}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1511
    :cond_c
    const-string/jumbo v0, "tt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1512
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lclx$h;

    invoke-direct {v1, v5}, Lclx$h;-><init>(B)V

    invoke-static {v0, v1}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1513
    :cond_d
    const-string/jumbo v0, "a"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1514
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    .line 1742
    const-string/jumbo v1, ""

    const-string/jumbo v2, "href"

    invoke-interface {p4, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1744
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1745
    new-instance v3, Lclx$f;

    invoke-direct {v3, v1}, Lclx$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 1515
    :cond_e
    const-string/jumbo v0, "u"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1516
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lclx$l;

    invoke-direct {v1, v5}, Lclx$l;-><init>(B)V

    invoke-static {v0, v1}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1517
    :cond_f
    const-string/jumbo v0, "sup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1518
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lclx$k;

    invoke-direct {v1, v5}, Lclx$k;-><init>(B)V

    invoke-static {v0, v1}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1519
    :cond_10
    const-string/jumbo v0, "sub"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1520
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lclx$j;

    invoke-direct {v1, v5}, Lclx$j;-><init>(B)V

    invoke-static {v0, v1}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1521
    :cond_11
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 1522
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_12

    .line 1523
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_12

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_12

    .line 1524
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Lclx;->a(Landroid/text/SpannableStringBuilder;)V

    .line 1525
    iget-object v0, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lclx$e;

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x31

    invoke-direct {v1, v2}, Lclx$e;-><init>(I)V

    invoke-static {v0, v1}, Lclx;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1526
    :cond_12
    const-string/jumbo v0, "img"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1527
    iget-object v1, p0, Lclx;->e:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lclx;->f:Lcly$b;

    .line 2637
    const-string/jumbo v0, ""

    const-string/jumbo v3, "src"

    invoke-interface {p4, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2638
    const/4 v0, 0x0

    .line 2640
    if-eqz v2, :cond_13

    .line 2641
    invoke-interface {v2, v3}, Lcly$b;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2644
    :cond_13
    if-nez v0, :cond_14

    .line 2645
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcig$e;->mail_login_fail_back:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2646
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v5, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2649
    :cond_14
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 2650
    const-string/jumbo v4, "\ufffc"

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2652
    new-instance v4, Lclz;

    invoke-direct {v4, v0, v3}, Lclz;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 2653
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v1, v4, v2, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2655
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v1, v4, v2, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0
.end method

.method public final startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 798
    return-void
.end method

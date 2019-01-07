.class public final Luy$a;
.super Ljava/lang/Object;
.source "HtmlConverter.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/alibaba/alimei/emailcommon/helper/HtmlConverter$HtmlToTextTagHandler$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/emailcommon/helper/HtmlConverter$HtmlToTextTagHandler$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Luy$a;->a:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Luy$a;-><init>()V

    return-void
.end method

.method private static a(Landroid/text/Editable;)Ljava/lang/Object;
    .locals 6
    .param p0, "output"    # Landroid/text/Editable;

    .prologue
    .line 128
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    const-class v5, Landroid/text/Annotation;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 129
    .local v1, "objs":[Ljava/lang/Object;
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 131
    aget-object v2, v1, v0

    check-cast v2, Landroid/text/Annotation;

    .line 132
    .local v2, "span":Landroid/text/Annotation;
    aget-object v3, v1, v0

    invoke-interface {p0, v3}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_0

    .line 133
    invoke-virtual {v2}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ALIMEI_ANNOTATION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    invoke-virtual {v2}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "hiddenSpan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    aget-object v3, v1, v0

    .line 139
    .end local v2    # "span":Landroid/text/Annotation;
    :goto_1
    return-object v3

    .line 129
    .restart local v2    # "span":Landroid/text/Annotation;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 139
    .end local v2    # "span":Landroid/text/Annotation;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 4
    .param p1, "opening"    # Z
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "output"    # Landroid/text/Editable;
    .param p4, "xmlReader"    # Lorg/xml/sax/XMLReader;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 75
    const-string/jumbo v0, "hr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 79
    const-string/jumbo v0, "_____________________________________________\n"

    invoke-interface {p3, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    sget-object v0, Luy$a;->a:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1101
    if-eqz p1, :cond_2

    .line 1103
    new-instance v1, Landroid/text/Annotation;

    const-string/jumbo v2, "ALIMEI_ANNOTATION"

    const-string/jumbo v3, "hiddenSpan"

    invoke-direct {v1, v2, v3}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x11

    invoke-interface {p3, v1, v0, v0, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 1108
    :cond_2
    invoke-static {p3}, Luy$a;->a(Landroid/text/Editable;)Ljava/lang/Object;

    move-result-object v1

    .line 1109
    if-eqz v1, :cond_0

    .line 1111
    invoke-interface {p3, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1113
    invoke-interface {p3, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1116
    invoke-interface {p3, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

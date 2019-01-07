.class public Lorg/apache/commons/io/comparator/LastModifiedFileComparator;
.super Ljava/lang/Object;
.source "LastModifiedFileComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# static fields
.field public static final LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;

.field public static final LASTMODIFIED_REVERSE:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;

    .line 54
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 68
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    .local v0, "file1":Ljava/io/File;
    move-object v1, p2

    .line 69
    check-cast v1, Ljava/io/File;

    .line 70
    .local v1, "file2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 71
    .local v2, "result":J
    cmp-long v4, v2, v8

    if-gez v4, :cond_0

    .line 72
    const/4 v4, -0x1

    .line 76
    :goto_0
    return v4

    .line 73
    :cond_0
    cmp-long v4, v2, v8

    if-lez v4, :cond_1

    .line 74
    const/4 v4, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

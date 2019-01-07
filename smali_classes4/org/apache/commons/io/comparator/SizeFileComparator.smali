.class public Lorg/apache/commons/io/comparator/SizeFileComparator;
.super Ljava/lang/Object;
.source "SizeFileComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# static fields
.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;

.field public static final SIZE_REVERSE:Ljava/util/Comparator;

.field public static final SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

.field public static final SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;


# instance fields
.field private final sumDirectoryContents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lorg/apache/commons/io/comparator/SizeFileComparator;

    invoke-direct {v0}, Lorg/apache/commons/io/comparator/SizeFileComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 58
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_REVERSE:Ljava/util/Comparator;

    .line 64
    new-instance v0, Lorg/apache/commons/io/comparator/SizeFileComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/SizeFileComparator;-><init>(Z)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

    .line 70
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    sget-object v1, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/commons/io/comparator/SizeFileComparator;->SIZE_SUMDIR_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    .line 80
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "sumDirectoryContents"    # Z

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-boolean p1, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    .line 95
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 11
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 109
    move-object v0, p1

    check-cast v0, Ljava/io/File;

    .local v0, "file1":Ljava/io/File;
    move-object v1, p2

    .line 110
    check-cast v1, Ljava/io/File;

    .line 112
    .local v1, "file2":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 113
    iget-boolean v10, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v10, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v0}, Lkpt;->c(Ljava/io/File;)J

    move-result-wide v4

    .line 118
    .local v4, "size1":J
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 119
    iget-boolean v10, p0, Lorg/apache/commons/io/comparator/SizeFileComparator;->sumDirectoryContents:Z

    if-eqz v10, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v1}, Lkpt;->c(Ljava/io/File;)J

    move-result-wide v6

    .line 123
    .local v6, "size2":J
    :goto_1
    sub-long v2, v4, v6

    .line 124
    .local v2, "result":J
    cmp-long v10, v2, v8

    if-gez v10, :cond_4

    .line 125
    const/4 v8, -0x1

    .line 129
    :goto_2
    return v8

    .end local v2    # "result":J
    .end local v4    # "size1":J
    .end local v6    # "size2":J
    :cond_0
    move-wide v4, v8

    .line 113
    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .restart local v4    # "size1":J
    goto :goto_0

    :cond_2
    move-wide v6, v8

    .line 119
    goto :goto_1

    .line 121
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    .restart local v6    # "size2":J
    goto :goto_1

    .line 126
    .restart local v2    # "result":J
    :cond_4
    cmp-long v8, v2, v8

    if-lez v8, :cond_5

    .line 127
    const/4 v8, 0x1

    goto :goto_2

    .line 129
    :cond_5
    const/4 v8, 0x0

    goto :goto_2
.end method

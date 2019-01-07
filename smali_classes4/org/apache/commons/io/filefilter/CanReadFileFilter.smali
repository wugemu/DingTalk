.class public Lorg/apache/commons/io/filefilter/CanReadFileFilter;
.super Lkpw;
.source "CanReadFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_READ:Lkpx;

.field public static final CAN_READ:Lkpx;

.field public static final READ_ONLY:Lkpx;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lorg/apache/commons/io/filefilter/CanReadFileFilter;

    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/CanReadFileFilter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->CAN_READ:Lkpx;

    .line 69
    new-instance v0, Lorg/apache/commons/io/filefilter/NotFileFilter;

    sget-object v1, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->CAN_READ:Lkpx;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/filefilter/NotFileFilter;-><init>(Lkpx;)V

    sput-object v0, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->CANNOT_READ:Lkpx;

    .line 72
    new-instance v0, Lorg/apache/commons/io/filefilter/AndFileFilter;

    sget-object v1, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->CAN_READ:Lkpx;

    sget-object v2, Lorg/apache/commons/io/filefilter/CanWriteFileFilter;->CANNOT_WRITE:Lkpx;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/filefilter/AndFileFilter;-><init>(Lkpx;Lkpx;)V

    sput-object v0, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->READ_ONLY:Lkpx;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lkpw;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

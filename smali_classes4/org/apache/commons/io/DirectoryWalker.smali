.class public abstract Lorg/apache/commons/io/DirectoryWalker;
.super Ljava/lang/Object;
.source "DirectoryWalker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/DirectoryWalker$CancelException;
    }
.end annotation


# instance fields
.field private final a:Ljava/io/FileFilter;

.field private final b:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 266
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/DirectoryWalker;-><init>(Ljava/io/FileFilter;I)V

    .line 267
    return-void
.end method

.method private constructor <init>(Ljava/io/FileFilter;I)V
    .locals 1
    .param p1, "filter"    # Ljava/io/FileFilter;
    .param p2, "depthLimit"    # I

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/io/DirectoryWalker;->a:Ljava/io/FileFilter;

    .line 283
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/io/DirectoryWalker;->b:I

    .line 284
    return-void
.end method

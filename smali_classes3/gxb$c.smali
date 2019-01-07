.class public final Lgxb$c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:[Ljava/io/InputStream;

.field final synthetic b:Lgxb;

.field private final c:Ljava/lang/String;

.field private final d:J


# direct methods
.method private constructor <init>(Lgxb;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 1
    .param p1, "this$0"    # Lgxb;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;

    .prologue
    .line 735
    iput-object p1, p0, Lgxb$c;->b:Lgxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p2, p0, Lgxb$c;->c:Ljava/lang/String;

    .line 737
    iput-wide p3, p0, Lgxb$c;->d:J

    .line 738
    iput-object p5, p0, Lgxb$c;->a:[Ljava/io/InputStream;

    .line 739
    return-void
.end method

.method synthetic constructor <init>(Lgxb;Ljava/lang/String;J[Ljava/io/InputStream;B)V
    .locals 1
    .param p1, "x0"    # Lgxb;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/io/InputStream;

    .prologue
    .line 730
    invoke-direct/range {p0 .. p5}, Lgxb$c;-><init>(Lgxb;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 765
    iget-object v2, p0, Lgxb$c;->a:[Ljava/io/InputStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 766
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0}, Lgxb;->a(Ljava/io/Closeable;)V

    .line 765
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_0
    return-void
.end method

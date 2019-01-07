.class abstract Lljg;
.super Llji;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Llji",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/SuppressAnimalSniffer;
.end annotation


# static fields
.field protected static final d:J


# instance fields
.field volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-class v0, Lljg;

    const-string/jumbo v1, "consumerIndex"

    invoke-static {v0, v1}, Llkb;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lljg;->d:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 65
    .local p0, "this":Lljg;, "Lljg<TE;>;"
    invoke-direct {p0, p1}, Llji;-><init>(I)V

    .line 66
    return-void
.end method


# virtual methods
.method protected final a(JJ)Z
    .locals 9
    .param p1, "expect"    # J
    .param p3, "newValue"    # J

    .prologue
    .line 73
    .local p0, "this":Lljg;, "Lljg<TE;>;"
    sget-object v0, Llkb;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lljg;->d:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method

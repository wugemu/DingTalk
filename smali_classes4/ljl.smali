.class abstract Lljl;
.super Lljh;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lljh",
        "<TE;>;"
    }
.end annotation

.annotation build Lrx/internal/util/SuppressAnimalSniffer;
.end annotation


# static fields
.field protected static final e:J


# instance fields
.field volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lljl;

    const-string/jumbo v1, "producerIndex"

    invoke-static {v0, v1}, Llkb;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lljl;->e:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .prologue
    .line 46
    .local p0, "this":Lljl;, "Lljl<TE;>;"
    invoke-direct {p0, p1}, Lljh;-><init>(I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected final c(J)V
    .locals 7
    .param p1, "v"    # J

    .prologue
    .line 42
    .local p0, "this":Lljl;, "Lljl<TE;>;"
    sget-object v0, Llkb;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lljl;->e:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 43
    return-void
.end method

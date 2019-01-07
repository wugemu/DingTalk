.class public final Lkiu;
.super Lkis;
.source "Ranges.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkiu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkis;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x1
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00152\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0015B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0003H\u0096\u0002J\u0013\u0010\r\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u000bH\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0014\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlin/ranges/LongRange;",
        "Lkotlin/ranges/LongProgression;",
        "Lkotlin/ranges/ClosedRange;",
        "",
        "start",
        "endInclusive",
        "(JJ)V",
        "getEndInclusive",
        "()Ljava/lang/Long;",
        "getStart",
        "contains",
        "",
        "value",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "isEmpty",
        "toString",
        "",
        "Companion",
        "kotlin-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x5
    }
.end annotation


# static fields
.field public static final d:Lkiu$a;

.field private static final e:Lkiu;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    new-instance v0, Lkiu$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkiu$a;-><init>(B)V

    sput-object v0, Lkiu;->d:Lkiu$a;

    .line 95
    new-instance v0, Lkiu;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Lkiu;-><init>(JJ)V

    sput-object v0, Lkiu;->e:Lkiu;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 8
    .param p1, "start"    # J
    .param p3, "endInclusive"    # J

    .prologue
    const-wide/16 v2, 0x1

    .line 76
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lkis;-><init>(JJJ)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 82
    .line 1148
    iget-wide v0, p0, Lkis;->a:J

    .line 1153
    iget-wide v2, p0, Lkis;->b:J

    .line 82
    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 85
    instance-of v0, p1, Lkiu;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lkiu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkiu;

    invoke-virtual {v0}, Lkiu;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2148
    :cond_0
    iget-wide v2, p0, Lkis;->a:J

    move-object v0, p1

    .line 85
    check-cast v0, Lkiu;

    .line 3148
    iget-wide v0, v0, Lkis;->a:J

    .line 85
    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    .line 3153
    iget-wide v0, p0, Lkis;->b:J

    .line 85
    check-cast p1, Lkiu;

    .line 4153
    .end local p1    # "other":Ljava/lang/Object;
    iget-wide v2, p1, Lkis;->b:J

    .line 85
    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    .line 85
    :cond_2
    const/4 v0, 0x0

    .line 86
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v6, 0x20

    .line 89
    invoke-virtual {p0}, Lkiu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, 0x1f

    .line 5148
    iget-wide v2, p0, Lkis;->a:J

    .line 6148
    iget-wide v4, p0, Lkis;->a:J

    .line 89
    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    mul-long/2addr v0, v2

    .line 6153
    iget-wide v2, p0, Lkis;->b:J

    .line 7153
    iget-wide v4, p0, Lkis;->b:J

    .line 89
    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8148
    iget-wide v2, p0, Lkis;->a:J

    .line 91
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8153
    iget-wide v2, p0, Lkis;->b:J

    .line 91
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

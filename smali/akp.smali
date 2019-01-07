.class public Lakp;
.super Ljava/lang/Object;
.source "Entity.java"


# static fields
.field private static a:Z
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field


# instance fields
.field public e:J
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "_id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lakp;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lakp;->e:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 37
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v0

    .line 1621
    iget-object v0, v0, Lajw;->m:Lako;

    .line 2104
    if-eqz p0, :cond_0

    .line 2105
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2106
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2107
    invoke-virtual {v0, v1}, Lako;->a(Ljava/util/List;)V

    .line 38
    :cond_0
    return-void
.end method

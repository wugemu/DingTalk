.class public Lasw;
.super Ljava/lang/Object;
.source "BaseCalendar.java"


# instance fields
.field protected p:J

.field protected q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lasx;",
            ">;"
        }
    .end annotation
.end field

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1
    .param p1, "calendarId"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lasw;->p:J

    .line 30
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lasx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "baseEvents":Ljava/util/List;, "Ljava/util/List<Lasx;>;"
    iput-object p1, p0, Lasw;->q:Ljava/util/List;

    .line 34
    return-void
.end method

.method public final b()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 17
    iget-wide v0, p0, Lasw;->p:J

    return-wide v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lasx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lasw;->q:Ljava/util/List;

    return-object v0
.end method

.class public final Larw;
.super Ljava/lang/Object;
.source "CalendarDiurnalViewEvent.java"


# instance fields
.field public a:Laxn;

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>(Laxn;FF)V
    .locals 0
    .param p1, "event"    # Laxn;
    .param p2, "horizontalStartPercentage"    # F
    .param p3, "horizontalEndPercentage"    # F

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Larw;->a:Laxn;

    .line 20
    iput p2, p0, Larw;->b:F

    .line 21
    iput p3, p0, Larw;->c:F

    .line 22
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 33
    iget-object v0, p0, Larw;->a:Laxn;

    invoke-interface {v0}, Laxn;->getShowEndTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Larw;->a:Laxn;

    invoke-interface {v2}, Laxn;->getShowStartTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

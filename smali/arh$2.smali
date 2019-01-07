.class final Larh$2;
.super Ljava/lang/Object;
.source "CalendarReportDataManager.java"

# interfaces
.implements Lapv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larh;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lapv",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lasl;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Larh;


# direct methods
.method constructor <init>(Larh;JJ)V
    .locals 0
    .param p1, "this$0"    # Larh;

    .prologue
    .line 167
    iput-object p1, p0, Larh$2;->c:Larh;

    iput-wide p2, p0, Larh$2;->a:J

    iput-wide p4, p0, Larh$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 167
    check-cast p1, Ljava/util/Map;

    .line 1171
    iget-object v0, p0, Larh$2;->c:Larh;

    iget-wide v2, p0, Larh$2;->a:J

    invoke-static {v0, p1, v2, v3}, Larh;->a(Larh;Ljava/util/Map;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarReportDataManager] tryUploadCalendarReport local folder data not complete."

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 1173
    :goto_0
    return-void

    .line 1177
    :cond_0
    iget-object v0, p0, Larh$2;->c:Larh;

    iget-wide v2, p0, Larh$2;->a:J

    iget-wide v4, p0, Larh$2;->b:J

    invoke-static {v0, v2, v3, v4, v5}, Larh;->a(Larh;JJ)V

    goto :goto_0
.end method

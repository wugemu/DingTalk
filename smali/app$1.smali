.class final Lapp$1;
.super Ljava/lang/Object;
.source "EditSchedulePresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lasc;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lapp;


# direct methods
.method constructor <init>(Lapp;)V
    .locals 0
    .param p1, "this$0"    # Lapp;

    .prologue
    .line 83
    iput-object p1, p0, Lapp$1;->a:Lapp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 104
    iget-object v0, p0, Lapp$1;->a:Lapp;

    iget-object v0, v0, Lapp;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->H_()V

    .line 105
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EditSchedulePresenter] queryCalendarEventObject onException code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", calendarId="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lapp$1;->a:Lapp;

    .line 1036
    iget-wide v2, v2, Lapp;->k:J

    .line 105
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lapp$1;->a:Lapp;

    iget-object v0, v0, Lapp;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->e()V

    .line 107
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 83
    check-cast p1, Lasc;

    .line 1087
    iget-object v0, p0, Lapp$1;->a:Lapp;

    iget-object v0, v0, Lapp;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->H_()V

    .line 1088
    if-nez p1, :cond_0

    .line 1089
    iget-object v0, p0, Lapp$1;->a:Lapp;

    iget-object v0, v0, Lapp;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->e()V

    .line 1095
    :goto_0
    return-void

    .line 1093
    :cond_0
    invoke-virtual {p1}, Lasc;->a()Lary;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1094
    iget-object v0, p0, Lapp$1;->a:Lapp;

    iget-object v0, v0, Lapp;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->e()V

    goto :goto_0

    .line 1098
    :cond_1
    iget-object v0, p0, Lapp$1;->a:Lapp;

    invoke-virtual {p1}, Lasc;->a()Lary;

    move-result-object v1

    .line 2036
    iput-object v1, v0, Lapp;->l:Lary;

    .line 1099
    iget-object v0, p0, Lapp$1;->a:Lapp;

    invoke-static {v0}, Lapp;->a(Lapp;)V

    goto :goto_0
.end method

.class final Lapo$1;
.super Ljava/lang/Object;
.source "CreateSchedulePresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapo;->k()V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lapo;


# direct methods
.method constructor <init>(Lapo;)V
    .locals 0
    .param p1, "this$0"    # Lapo;

    .prologue
    .line 147
    iput-object p1, p0, Lapo$1;->a:Lapo;

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
    const/4 v3, 0x1

    .line 160
    iget-object v0, p0, Lapo$1;->a:Lapo;

    iget-object v0, v0, Lapo;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->g()V

    .line 161
    iget-object v0, p0, Lapo$1;->a:Lapo;

    iget-object v0, v0, Lapo;->j:Lapq$c;

    invoke-interface {v0, v3}, Lapq$c;->a(Z)V

    .line 163
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CreateSchedulePresenter] code="

    aput-object v2, v0, v1

    aput-object p1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 147
    .line 1151
    iget-object v0, p0, Lapo$1;->a:Lapo;

    iget-object v0, v0, Lapo;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->g()V

    .line 1152
    iget-object v0, p0, Lapo$1;->a:Lapo;

    iget-object v0, v0, Lapo;->j:Lapq$c;

    invoke-interface {v0, v1}, Lapq$c;->a(Z)V

    .line 1153
    sget v0, Laow$f;->dt_ding_new_system_event_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1154
    iget-object v0, p0, Lapo$1;->a:Lapo;

    iget-object v0, v0, Lapo;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->e()V

    .line 1155
    iget-object v0, p0, Lapo$1;->a:Lapo;

    iget-object v0, v0, Lapo;->j:Lapq$c;

    invoke-interface {v0}, Lapq$c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lavh;->a(Landroid/app/Activity;Z)V

    .line 147
    return-void
.end method

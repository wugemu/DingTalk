.class final Laps$3;
.super Ljava/lang/Object;
.source "ScheduleDetailPresenterImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laps;->j()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Laps;


# direct methods
.method constructor <init>(Laps;)V
    .locals 0
    .param p1, "this$0"    # Laps;

    .prologue
    .line 242
    iput-object p1, p0, Laps$3;->a:Laps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 269
    iget-object v0, p0, Laps$3;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    invoke-interface {v0}, Lapr$b;->H_()V

    .line 270
    iget-object v0, p0, Laps$3;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lapr$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Laps;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, " deleteSchedule failed, code"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ",reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 242
    .line 1245
    new-instance v0, Lauj;

    iget-object v1, p0, Laps$3;->a:Laps;

    invoke-static {v1}, Laps;->b(Laps;)J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lauj;-><init>(JLjava/lang/String;)V

    .line 1246
    invoke-static {}, Latf;->a()Latf;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lauj;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v0, Laps$3$1;

    invoke-direct {v0, p0}, Laps$3$1;-><init>(Laps$3;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Laps$3;->a:Laps;

    .line 1264
    invoke-static {v4}, Laps;->d(Laps;)Landroid/app/Activity;

    move-result-object v4

    .line 1246
    invoke-static {v0, v3, v4}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 2194
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2195
    :cond_0
    :goto_0
    return-void

    .line 2198
    :cond_1
    iget-object v3, v1, Latf;->a:Latf$b;

    new-instance v4, Latf$35;

    invoke-direct {v4, v1, v2, v0}, Latf$35;-><init>(Latf;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v3, v4}, Latf$b;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

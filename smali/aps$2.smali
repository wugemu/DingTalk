.class final Laps$2;
.super Ljava/lang/Object;
.source "ScheduleDetailPresenterImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laps;->f()V
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
    .line 215
    iput-object p1, p0, Laps$2;->a:Laps;

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
    .line 224
    iget-object v0, p0, Laps$2;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    invoke-interface {v0}, Lapr$b;->H_()V

    .line 225
    iget-object v0, p0, Laps$2;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lapr$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Laps;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, " deleteCurrentDateSchedule failed, code"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ",reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 215
    .line 1218
    iget-object v0, p0, Laps$2;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    invoke-interface {v0}, Lapr$b;->H_()V

    .line 1219
    iget-object v0, p0, Laps$2;->a:Laps;

    invoke-static {v0}, Laps;->a(Laps;)Lapr$b;

    move-result-object v0

    invoke-interface {v0}, Lapr$b;->a()V

    .line 215
    return-void
.end method

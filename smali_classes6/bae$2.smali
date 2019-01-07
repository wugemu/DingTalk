.class final Lbae$2;
.super Ljava/lang/Object;
.source "EditEventActivityPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbae;
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
        "Lbfv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lbae;


# direct methods
.method constructor <init>(Lbae;J)V
    .locals 0
    .param p1, "this$0"    # Lbae;

    .prologue
    .line 211
    iput-object p1, p0, Lbae$2;->b:Lbae;

    iput-wide p2, p0, Lbae$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 226
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[EditEventActivity] ding is null dingId="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lbae$2;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", code="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ",reason="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 211
    check-cast p1, Lbfv;

    .line 1215
    if-nez p1, :cond_0

    .line 1216
    const-string/jumbo v0, "[CreateEvent]load meeting summary failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "minutesDetailObject is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v0, p0, Lbae$2;->b:Lbae;

    iget-object v0, v0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    .line 1218
    :goto_0
    return-void

    .line 1220
    :cond_0
    iget-object v0, p0, Lbae$2;->b:Lbae;

    .line 2058
    iput-object p1, v0, Lbae;->u:Lbfv;

    .line 1221
    iget-object v0, p0, Lbae$2;->b:Lbae;

    invoke-static {v0}, Lbae;->a(Lbae;)V

    goto :goto_0
.end method

.class final Lapu$1;
.super Ljava/lang/Object;
.source "SystemEventDetailActivityPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapu;
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
        "Lcom/alibaba/android/calendar/data/object/SystemEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lapu;


# direct methods
.method constructor <init>(Lapu;)V
    .locals 0
    .param p1, "this$0"    # Lapu;

    .prologue
    .line 97
    iput-object p1, p0, Lapu$1;->a:Lapu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 111
    const-string/jumbo v0, "system event page exception"

    const-string/jumbo v1, "-1"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "querySystemEvent exception, systemEventId:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lapu$1;->a:Lapu;

    .line 113
    invoke-static {v4}, Lapu;->a(Lapu;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", code:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ", reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lapu$1;->a:Lapu;

    invoke-static {v0}, Lapu;->b(Lapu;)Lapt$b;

    move-result-object v0

    invoke-interface {v0}, Lapt$b;->b()V

    .line 117
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 97
    check-cast p1, Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 1100
    if-nez p1, :cond_0

    .line 1101
    const-string/jumbo v0, "system event page exception"

    const-string/jumbo v1, "-1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "systemEvent is null, systemEventId:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lapu$1;->a:Lapu;

    invoke-static {v4}, Lapu;->a(Lapu;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lapu$1;->a:Lapu;

    invoke-static {v0}, Lapu;->b(Lapu;)Lapt$b;

    move-result-object v0

    invoke-interface {v0}, Lapt$b;->b()V

    .line 1103
    :goto_0
    return-void

    .line 1105
    :cond_0
    iget-object v0, p0, Lapu$1;->a:Lapu;

    invoke-static {v0, p1}, Lapu;->a(Lapu;Lcom/alibaba/android/calendar/data/object/SystemEvent;)Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 1106
    iget-object v0, p0, Lapu$1;->a:Lapu;

    invoke-static {v0}, Lapu;->c(Lapu;)V

    goto :goto_0
.end method

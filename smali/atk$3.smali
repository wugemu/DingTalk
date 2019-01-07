.class final Latk$3;
.super Ljava/lang/Object;
.source "SystemCalendarEventProvider.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latk;->b(JJ)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/calendar/data/object/SystemEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Latk;


# direct methods
.method constructor <init>(Latk;)V
    .locals 0
    .param p1, "this$0"    # Latk;

    .prologue
    .line 118
    iput-object p1, p0, Latk$3;->a:Latk;

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
    .line 128
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[SystemCalendarEventProvider]query all system events failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Latk$3;->a:Latk;

    iget-object v0, v0, Latk;->a:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 131
    iget-object v0, p0, Latk$3;->a:Latk;

    invoke-virtual {v0}, Latk;->b()V

    .line 132
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 118
    check-cast p1, Ljava/util/List;

    .line 1121
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "[SystemCalendarEventProvider]querySystemEvents success, size:"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v0, "0"

    .line 1122
    :goto_0
    aput-object v0, v1, v2

    .line 1121
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Latk$3;->a:Latk;

    invoke-static {v0, p1}, Latk;->a(Latk;Ljava/util/List;)V

    .line 118
    return-void

    .line 1122
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

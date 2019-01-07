.class final Larj$2;
.super Ljava/lang/Object;
.source "DingCalendarEventManager.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larj;->b()V
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
        "Lasn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Larj;


# direct methods
.method constructor <init>(Larj;)V
    .locals 0
    .param p1, "this$0"    # Larj;

    .prologue
    .line 113
    iput-object p1, p0, Larj$2;->a:Larj;

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
    .line 130
    iget-object v0, p0, Larj$2;->a:Larj;

    invoke-static {v0}, Larj;->a(Larj;)V

    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingCalendarEventManager]loadHolidayArrangements failed, code;"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 113
    check-cast p1, Lasn;

    .line 1116
    if-eqz p1, :cond_0

    .line 2040
    iget-object v0, p1, Lasn;->a:Ljava/util/List;

    .line 1116
    if-nez v0, :cond_1

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 3040
    :cond_1
    iget-object v0, p1, Lasn;->a:Ljava/util/List;

    .line 1119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckr;

    .line 1120
    if-eqz v0, :cond_2

    .line 1121
    iget-object v2, p0, Larj$2;->a:Larj;

    .line 4040
    iget-object v2, v2, Larj;->f:Ljava/util/Map;

    .line 5038
    iget-object v3, v0, Lckr;->a:Ljava/lang/String;

    .line 1121
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1125
    :cond_3
    iget-object v0, p0, Larj$2;->a:Larj;

    invoke-static {v0}, Larj;->a(Larj;)V

    goto :goto_0
.end method

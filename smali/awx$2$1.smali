.class final Lawx$2$1;
.super Ljava/lang/Object;
.source "ShowEvent.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawx$2;
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
.field final synthetic a:Lawx$2;


# direct methods
.method constructor <init>(Lawx$2;)V
    .locals 0
    .param p1, "this$1"    # Lawx$2;

    .prologue
    .line 399
    iput-object p1, p0, Lawx$2$1;->a:Lawx$2;

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
    .line 409
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[CalendarDragModify] modify schedule update failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lawx$2$1;->a:Lawx$2;

    iget-object v0, v0, Lawx$2;->f:Lawx;

    .line 1041
    iget-object v0, v0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 410
    iget-object v1, p0, Lawx$2$1;->a:Lawx$2;

    iget-wide v2, v1, Lawx$2;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->setInstanceStartTimeMillis(J)V

    .line 411
    iget-object v0, p0, Lawx$2$1;->a:Lawx$2;

    iget-object v0, v0, Lawx$2;->f:Lawx;

    .line 2041
    iget-object v0, v0, Lawx;->b:Lcom/alibaba/android/calendar/data/object/InstanceShowObject;

    .line 411
    iget-object v1, p0, Lawx$2$1;->a:Lawx$2;

    iget-wide v2, v1, Lawx$2;->e:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/calendar/data/object/InstanceShowObject;->setInstanceEndTimeMillis(J)V

    .line 412
    iget-object v0, p0, Lawx$2$1;->a:Lawx$2;

    iget-object v0, v0, Lawx$2;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lawx$2$1;->a:Lawx$2;

    iget-object v0, v0, Lawx$2;->c:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 399
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 399
    .line 2402
    iget-object v0, p0, Lawx$2$1;->a:Lawx$2;

    iget-object v0, v0, Lawx$2;->c:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 2403
    iget-object v0, p0, Lawx$2$1;->a:Lawx$2;

    iget-object v0, v0, Lawx$2;->c:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 399
    :cond_0
    return-void
.end method

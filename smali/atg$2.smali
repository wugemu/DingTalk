.class final Latg$2;
.super Ljava/lang/Object;
.source "DingCalendarEventProvider.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Latg;->a(JJ)V
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
        "Lcom/alibaba/android/calendar/data/object/InstanceShowObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Latg;


# direct methods
.method constructor <init>(Latg;)V
    .locals 0
    .param p1, "this$0"    # Latg;

    .prologue
    .line 64
    iput-object p1, p0, Latg$2;->a:Latg;

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
    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingCalendarEventProvider]queryLocalInstances failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lavy;->a([Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Latg$2;->a:Latg;

    iget-object v0, v0, Latg;->a:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 75
    iget-object v0, p0, Latg$2;->a:Latg;

    invoke-virtual {v0}, Latg;->b()V

    .line 76
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 64
    check-cast p1, Ljava/util/List;

    .line 1067
    iget-object v0, p0, Latg$2;->a:Latg;

    invoke-static {v0, p1}, Latg;->a(Latg;Ljava/util/List;)V

    .line 64
    return-void
.end method

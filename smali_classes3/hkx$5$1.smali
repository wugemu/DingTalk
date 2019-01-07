.class final Lhkx$5$1;
.super Ljava/lang/Object;
.source "AutoAttendanceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhkx$5;->onEnterForeground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhkx$5;


# direct methods
.method constructor <init>(Lhkx$5;)V
    .locals 0
    .param p1, "this$1"    # Lhkx$5;

    .prologue
    .line 286
    iput-object p1, p0, Lhkx$5$1;->a:Lhkx$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 289
    const-string/jumbo v1, "fetchOACheckInTask"

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 290
    .local v0, "thread":Lcom/alibaba/doraemon/threadpool/Thread;
    new-instance v1, Lhkx$5$1$1;

    invoke-direct {v1, p0}, Lhkx$5$1$1;-><init>(Lhkx$5$1;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method

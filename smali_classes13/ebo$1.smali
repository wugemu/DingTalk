.class final Lebo$1;
.super Ljava/lang/Object;
.source "VideoEncode.java"

# interfaces
.implements Lcjn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lebo;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lebo;


# direct methods
.method constructor <init>(Lebo;)V
    .locals 0
    .param p1, "this$0"    # Lebo;

    .prologue
    .line 70
    iput-object p1, p0, Lebo$1;->a:Lebo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 162
    const-string/jumbo v0, "VideoEncodeManager"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcms;->b(Ljava/lang/String;I)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lebo$1$2;

    invoke-direct {v1, p0, p1, p2}, Lebo$1$2;-><init>(Lebo$1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 70
    .line 1077
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v0

    const-string/jumbo v1, "MediaEncode"

    new-instance v2, Lebo$1$1;

    invoke-direct {v2, p0}, Lebo$1$1;-><init>(Lebo$1;)V

    invoke-virtual {v0, v1, v2}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    .line 70
    return-void
.end method

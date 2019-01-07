.class final Ldhv$1;
.super Ljava/lang/Object;
.source "MediaIdTransferToBytes.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/ImageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldhv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldhv;


# direct methods
.method constructor <init>(Ldhv;)V
    .locals 0
    .param p1, "this$0"    # Ldhv;

    .prologue
    .line 128
    iput-object p1, p0, Ldhv$1;->a:Ldhv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadProgressListener(Landroid/view/View;ILjava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # I
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 148
    return-void
.end method

.method public final onError(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "errCode"    # I
    .param p2, "errDes"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    if-eqz p3, :cond_0

    iget-object v0, p0, Ldhv$1;->a:Ldhv;

    .line 1030
    iget-object v0, v0, Ldhv;->b:Ljava/lang/String;

    .line 131
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Ldhv$1;->a:Ldhv;

    const/4 v1, 0x0

    .line 2030
    invoke-virtual {v0, v1}, Ldhv;->c(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Ldhv$1;->a:Ldhv;

    invoke-static {v0}, Ldhv;->a(Ldhv;)V

    .line 135
    :cond_0
    return-void
.end method

.method public final onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "size"    # J

    .prologue
    .line 139
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Ldhv$1;->a:Ldhv;

    .line 3030
    iget-object v0, v0, Ldhv;->b:Ljava/lang/String;

    .line 139
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lgzp;->b()Lgzn;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Ldhv$1;->a:Ldhv;

    .line 4030
    invoke-virtual {v2, p3}, Ldhv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    iget-object v3, p0, Ldhv$1;->a:Ldhv;

    .line 5030
    invoke-virtual {v3}, Ldhv;->a()Lcom/alibaba/wukong/Callback;

    move-result-object v3

    .line 140
    invoke-interface {v0, p3, v1, v2, v3}, Lgzn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 141
    iget-object v0, p0, Ldhv$1;->a:Ldhv;

    invoke-static {v0}, Ldhv;->a(Ldhv;)V

    .line 143
    :cond_0
    return-void
.end method

.method public final onMemoryOverflow(JJ[Ljava/lang/String;)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l2"    # J
    .param p5, "strings"    # [Ljava/lang/String;

    .prologue
    .line 152
    return-void
.end method

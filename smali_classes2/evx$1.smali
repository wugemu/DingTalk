.class final Levx$1;
.super Ljava/lang/Object;
.source "BigShowMediaManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/ImageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Levx;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Levx;


# direct methods
.method constructor <init>(Levx;)V
    .locals 0
    .param p1, "this$0"    # Levx;

    .prologue
    .line 48
    iput-object p1, p0, Levx$1;->a:Levx;

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
    .line 65
    return-void
.end method

.method public final onError(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p1, "errCode"    # I
    .param p2, "errDes"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "view"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Levx$1;->a:Levx;

    invoke-static {v0}, Levx;->a(Levx;)Levx$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Levx$1;->a:Levx;

    invoke-static {v0}, Levx;->b(Levx;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Levx$1;->a:Levx;

    invoke-static {v0}, Levx;->a(Levx;)Levx$a;

    move-result-object v0

    invoke-interface {v0}, Levx$a;->b()V

    .line 54
    :cond_0
    return-void
.end method

.method public final onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "size"    # J

    .prologue
    .line 58
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Levx$1;->a:Levx;

    invoke-static {v0}, Levx;->b(Levx;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Levx$1;->a:Levx;

    invoke-static {v0}, Levx;->a(Levx;)Levx$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Levx$1;->a:Levx;

    invoke-static {v0}, Levx;->a(Levx;)Levx$a;

    move-result-object v0

    invoke-interface {v0}, Levx$a;->a()V

    .line 61
    :cond_0
    return-void
.end method

.method public final onMemoryOverflow(JJ[Ljava/lang/String;)V
    .locals 0
    .param p1, "maxSize"    # J
    .param p3, "currentSize"    # J
    .param p5, "activityStr"    # [Ljava/lang/String;

    .prologue
    .line 70
    return-void
.end method

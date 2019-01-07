.class final Lcxo$2;
.super Ljava/lang/Object;
.source "SpaceFileUploadDelegate.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lebl$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcxo;


# direct methods
.method constructor <init>(Lcxo;)V
    .locals 0
    .param p1, "this$0"    # Lcxo;

    .prologue
    .line 90
    iput-object p1, p0, Lcxo$2;->a:Lcxo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 90
    check-cast p1, Lebl$a;

    .line 2093
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcxo$2;->a:Lcxo;

    .line 3026
    iget-object v0, v0, Lcxo;->b:Lcom/alibaba/wukong/im/Message;

    .line 2093
    if-eqz v0, :cond_0

    iget-wide v0, p1, Lebl$a;->a:J

    iget-object v2, p0, Lcxo$2;->a:Lcxo;

    .line 4026
    iget-object v2, v2, Lcxo;->b:Lcom/alibaba/wukong/im/Message;

    .line 2093
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2094
    :cond_0
    :goto_0
    return-void

    .line 2097
    :cond_1
    iget-object v0, p0, Lcxo$2;->a:Lcxo;

    .line 5026
    iget-object v0, v0, Lcxo;->d:Landroid/widget/ImageView;

    .line 2097
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcxo$2;->a:Lcxo;

    .line 6026
    iget-object v0, v0, Lcxo;->d:Landroid/widget/ImageView;

    .line 2097
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2098
    iget-object v0, p0, Lcxo$2;->a:Lcxo;

    .line 7026
    iget-object v0, v0, Lcxo;->d:Landroid/widget/ImageView;

    .line 2098
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2101
    :cond_2
    iget-object v0, p0, Lcxo$2;->a:Lcxo;

    .line 8026
    iget-object v0, v0, Lcxo;->c:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    .line 2101
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcxo$2;->a:Lcxo;

    .line 9026
    iget-object v0, v0, Lcxo;->c:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    .line 2101
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2102
    iget-object v0, p0, Lcxo$2;->a:Lcxo;

    .line 10026
    iget-object v0, v0, Lcxo;->c:Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;

    .line 2102
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/SectorRoundProgressBar;->setVisibility(I)V

    .line 2105
    :cond_3
    iget-object v0, p0, Lcxo$2;->a:Lcxo;

    iget v1, p1, Lebl$a;->b:I

    .line 11026
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcxo;->a(ZI)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lcxo$2;->a:Lcxo;

    iget-object v1, p0, Lcxo$2;->a:Lcxo;

    .line 1026
    iget-object v1, v1, Lcxo;->b:Lcom/alibaba/wukong/im/Message;

    .line 113
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->sendProgress()I

    move-result v1

    .line 2026
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcxo;->a(ZI)V

    .line 114
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 109
    return-void
.end method

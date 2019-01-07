.class public final Ldjz$a;
.super Ljava/lang/Object;
.source "MessageCountDownManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/alibaba/wukong/im/Message;

.field c:J

.field public d:J

.field public e:J

.field f:Z

.field public g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ldjz$b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Ldjz;

.field private i:J


# direct methods
.method public constructor <init>(Ldjz;Lcom/alibaba/wukong/im/Message;JJ)V
    .locals 3
    .param p1, "this$0"    # Ldjz;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p3, "millisInFuture"    # J
    .param p5, "countDownInterval"    # J

    .prologue
    .line 673
    iput-object p1, p0, Ldjz$a;->h:Ldjz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjz$a;->f:Z

    .line 674
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Ldjz$a;->a:I

    .line 675
    iput-wide p5, p0, Ldjz$a;->c:J

    .line 676
    iput-wide p3, p0, Ldjz$a;->i:J

    .line 677
    iput-object p2, p0, Ldjz$a;->b:Lcom/alibaba/wukong/im/Message;

    .line 678
    iput-wide p3, p0, Ldjz$a;->e:J

    .line 679
    return-void
.end method


# virtual methods
.method public final a(I)Ldjz$b;
    .locals 1
    .param p1, "activityKey"    # I

    .prologue
    .line 756
    iget-object v0, p0, Ldjz$a;->g:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 757
    const/4 v0, 0x0

    .line 759
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldjz$a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjz$b;

    goto :goto_0
.end method

.method public final a(ILdjz$b;)V
    .locals 1
    .param p1, "activityKey"    # I
    .param p2, "listener"    # Ldjz$b;

    .prologue
    .line 726
    iget-object v0, p0, Ldjz$a;->g:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 727
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ldjz$a;->g:Landroid/util/SparseArray;

    .line 730
    :cond_0
    if-eqz p2, :cond_1

    .line 731
    iget-object v0, p0, Ldjz$a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 735
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-object v0, p0, Ldjz$a;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method

.method public final a(J)V
    .locals 9
    .param p1, "time"    # J

    .prologue
    .line 742
    iget-object v3, p0, Ldjz$a;->g:Landroid/util/SparseArray;

    if-eqz v3, :cond_1

    iget-object v3, p0, Ldjz$a;->g:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 743
    iget-object v3, p0, Ldjz$a;->g:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 744
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 745
    iget-object v3, p0, Ldjz$a;->g:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 746
    iget-object v3, p0, Ldjz$a;->g:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldjz$b;

    .line 747
    .local v1, "listener":Ldjz$b;
    if-eqz v1, :cond_0

    .line 748
    iget-object v3, p0, Ldjz$a;->b:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    invoke-interface {v1, v4, v5, v6, v7}, Ldjz$b;->a(JJ)V

    .line 744
    .end local v1    # "listener":Ldjz$b;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 753
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_1
    return-void
.end method

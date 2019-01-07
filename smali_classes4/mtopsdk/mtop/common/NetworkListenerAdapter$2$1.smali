.class Lmtopsdk/mtop/common/NetworkListenerAdapter$2$1;
.super Ljava/lang/Object;
.source "NetworkListenerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmtopsdk/mtop/common/NetworkListenerAdapter$2;

.field final synthetic val$size:I

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lmtopsdk/mtop/common/NetworkListenerAdapter$2;II)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2$1;->this$1:Lmtopsdk/mtop/common/NetworkListenerAdapter$2;

    iput p2, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2$1;->val$size:I

    iput p3, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2$1;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2$1;->this$1:Lmtopsdk/mtop/common/NetworkListenerAdapter$2;

    iget-object v0, v0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->this$0:Lmtopsdk/mtop/common/NetworkListenerAdapter;

    iget-object v0, v0, Lmtopsdk/mtop/common/NetworkListenerAdapter;->progressListener:Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;

    new-instance v1, Lmtopsdk/mtop/common/MtopProgressEvent;

    const-string/jumbo v2, ""

    iget v3, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2$1;->val$size:I

    iget v4, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2$1;->val$total:I

    invoke-direct {v1, v2, v3, v4}, Lmtopsdk/mtop/common/MtopProgressEvent;-><init>(Ljava/lang/String;II)V

    iget-object v2, p0, Lmtopsdk/mtop/common/NetworkListenerAdapter$2$1;->this$1:Lmtopsdk/mtop/common/NetworkListenerAdapter$2;

    iget-object v2, v2, Lmtopsdk/mtop/common/NetworkListenerAdapter$2;->val$context:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmtopsdk/mtop/common/MtopCallback$MtopProgressListener;->onDataReceived(Lmtopsdk/mtop/common/MtopProgressEvent;Ljava/lang/Object;)V

    .line 133
    return-void
.end method

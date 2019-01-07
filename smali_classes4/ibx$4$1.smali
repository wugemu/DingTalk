.class final Libx$4$1;
.super Ljava/lang/Object;
.source "MessageMediaSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Libx$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lifx;

.field final synthetic b:Libx$4;


# direct methods
.method constructor <init>(Libx$4;Lifx;)V
    .locals 0
    .param p1, "this$0"    # Libx$4;

    .prologue
    .line 370
    iput-object p1, p0, Libx$4$1;->b:Libx$4;

    iput-object p2, p0, Libx$4$1;->a:Lifx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 373
    iget-object v0, p0, Libx$4$1;->b:Libx$4;

    iget-object v0, v0, Libx$4;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Libx$4$1;->b:Libx$4;

    iget-object v0, v0, Libx$4;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    iget-object v1, p0, Libx$4$1;->a:Lifx;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onSuccess(Ljava/lang/Object;)V

    .line 376
    :cond_0
    return-void
.end method

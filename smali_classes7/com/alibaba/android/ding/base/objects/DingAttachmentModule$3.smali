.class final Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;
.super Ljava/lang/Object;
.source "DingAttachmentModule.java"

# interfaces
.implements Lifv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lifv",
        "<",
        "Lifx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iput-boolean p2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorDesc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 440
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$2;-><init>(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 451
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;

    .line 452
    return-void
.end method

.method public final onProgress(JJI)V
    .locals 9
    .param p1, "totalSize"    # J
    .param p3, "uploadSize"    # J
    .param p5, "progress"    # I

    .prologue
    .line 456
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v7

    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$3;-><init>(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;JJI)V

    invoke-virtual {v7, v0}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 466
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 415
    check-cast p1, Lifx;

    .line 1418
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$1;-><init>(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;Lifx;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1435
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;

    .line 415
    return-void
.end method

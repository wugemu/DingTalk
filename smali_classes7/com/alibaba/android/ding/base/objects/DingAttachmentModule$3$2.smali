.class final Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$2;
.super Ljava/lang/Object;
.source "DingAttachmentModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->onException(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$2;->c:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iput p2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$2;->a:I

    iput-object p3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 443
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$2;->c:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$2;->c:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;->b()V

    .line 445
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$2;->c:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    .line 447
    :cond_0
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$2;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$2;->c:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;->UPLOAD_FAILED:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$UploadStatus;

    .line 449
    return-void
.end method

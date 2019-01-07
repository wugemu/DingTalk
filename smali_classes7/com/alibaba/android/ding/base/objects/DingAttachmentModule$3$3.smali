.class final Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$3;
.super Ljava/lang/Object;
.source "DingAttachmentModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->onProgress(JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;JJI)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$3;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iput-wide p2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$3;->a:J

    iput-wide p4, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$3;->b:J

    iput p6, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$3;->c:I

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
    .line 460
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$3;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$3;->d:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$3;->c:I

    invoke-interface {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;->a(I)V

    .line 463
    :cond_0
    return-void
.end method

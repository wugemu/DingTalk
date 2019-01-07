.class final Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$1;
.super Ljava/lang/Object;
.source "DingAttachmentModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lifx;

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;Lifx;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$1;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iput-object p2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$1;->a:Lifx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 421
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$1;->a:Lifx;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$1;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$1;->a:Lifx;

    .line 1026
    iget-object v1, v1, Lifx;->a:Ljava/lang/String;

    .line 422
    iget-object v2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$1;->a:Lifx;

    .line 1034
    iget-object v2, v2, Lifx;->b:Ljava/lang/String;

    .line 422
    iget-object v3, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$1;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iget-boolean v3, v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->a:Z

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 424
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$1;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$1;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;->c()V

    .line 432
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$1;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    .line 433
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$1;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3$1;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$3;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-static {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;->b(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;)Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$b;->b()V

    goto :goto_0
.end method

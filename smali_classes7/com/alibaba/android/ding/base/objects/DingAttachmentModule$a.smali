.class final Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;
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
    name = "a"
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
.field a:Z

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

.field private c:Lifv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lifv",
            "<",
            "Lifx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;Lifv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lifv",
            "<",
            "Lifx;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p2, "listener":Lifv;, "Lifv<Lifx;>;"
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p2, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;->c:Lifv;

    .line 559
    return-void
.end method


# virtual methods
.method public final onException(ILjava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;->c:Lifv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;->a:Z

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;->c:Lifv;

    invoke-interface {v0, p1, p2}, Lifv;->onException(ILjava/lang/String;)V

    .line 584
    :cond_0
    return-void
.end method

.method public final onProgress(JJI)V
    .locals 7
    .param p1, "i"    # J
    .param p3, "i1"    # J
    .param p5, "i2"    # I

    .prologue
    .line 567
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;->c:Lifv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;->a:Z

    if-nez v0, :cond_0

    .line 568
    iget-object v1, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;->c:Lifv;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lifv;->onProgress(JJI)V

    .line 570
    :cond_0
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 552
    check-cast p1, Lifx;

    .line 1574
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;->c:Lifv;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;->a:Z

    if-nez v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/DingAttachmentModule$a;->c:Lifv;

    invoke-interface {v0, p1}, Lifv;->onSuccess(Ljava/lang/Object;)V

    .line 552
    :cond_0
    return-void
.end method

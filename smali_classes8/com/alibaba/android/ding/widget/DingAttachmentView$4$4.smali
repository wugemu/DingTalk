.class final Lcom/alibaba/android/ding/widget/DingAttachmentView$4$4;
.super Ljava/lang/Object;
.source "DingAttachmentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/DingAttachmentView$4;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/DingAttachmentView$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingAttachmentView$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/widget/DingAttachmentView$4;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$4$4;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$4$4;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView$4;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/DingAttachmentView$4;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->i(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V

    .line 334
    return-void
.end method

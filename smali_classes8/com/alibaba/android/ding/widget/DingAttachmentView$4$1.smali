.class final Lcom/alibaba/android/ding/widget/DingAttachmentView$4$1;
.super Ljava/lang/Object;
.source "DingAttachmentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/DingAttachmentView$4;->a()V
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
    .line 300
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$4$1;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$4$1;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView$4;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/DingAttachmentView$4;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->h(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V

    .line 304
    return-void
.end method

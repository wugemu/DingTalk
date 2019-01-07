.class final Lcom/alibaba/android/ding/widget/DingAttachmentView$4$2;
.super Ljava/lang/Object;
.source "DingAttachmentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/DingAttachmentView$4;->a(Ljava/io/File;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

.field final synthetic c:Lcom/alibaba/android/ding/widget/DingAttachmentView$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingAttachmentView$4;Ljava/io/File;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/widget/DingAttachmentView$4;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$4$2;->c:Lcom/alibaba/android/ding/widget/DingAttachmentView$4;

    iput-object p2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$4$2;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$4$2;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$4$2;->c:Lcom/alibaba/android/ding/widget/DingAttachmentView$4;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/DingAttachmentView$4;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$4$2;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$4$2;->b:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Lcom/alibaba/android/ding/widget/DingAttachmentView;Ljava/io/File;Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;)V

    .line 314
    return-void
.end method

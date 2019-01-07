.class final Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView$1;
.super Ljava/lang/Object;
.source "AttachmentForwardCombineView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;

    iput-object p2, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;

    iget-object v0, v0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->getExtensionMessages()Ljava/util/List;

    move-result-object v3

    .line 127
    .local v3, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;

    iget-object v2, v0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->f:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView$1;->b:Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;

    iget-object v0, v0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView;->j:Ljava/lang/String;

    .line 1109
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 132
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView$1;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v6, ""

    .line 130
    :goto_1
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/util/List;JLjava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentForwardCombineView$1;->a:Ljava/lang/String;

    goto :goto_1
.end method

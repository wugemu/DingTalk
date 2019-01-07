.class final Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$3;
.super Ljava/lang/Object;
.source "ChatMsgListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$3;->c:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    iput p2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$3;->a:I

    iput p3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 327
    const/4 v0, 0x1

    .line 328
    .local v0, "isActivityActive":Z
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$3;->c:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$3;->c:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 331
    :cond_0
    if-eqz v0, :cond_1

    .line 332
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$3;->c:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->c(Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;)Landroid/widget/ListView;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$3;->a:I

    iget v3, p0, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView$3;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 334
    :cond_1
    return-void
.end method

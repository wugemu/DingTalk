.class final Lcom/alibaba/dingtalk/share/share/view/ShareActionList$2;
.super Ljava/lang/Object;
.source "ShareActionList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/view/ShareActionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/share/share/view/ShareActionList;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/view/ShareActionList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionList;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList$2;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 183
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList$2;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionList;

    invoke-static {v2}, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->c(Lcom/alibaba/dingtalk/share/share/view/ShareActionList;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 184
    .local v0, "height":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 185
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 186
    if-ge v1, v0, :cond_0

    .line 187
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionList$2;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionList;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/share/share/view/ShareActionList;->dismiss()V

    .line 190
    :cond_0
    return v3
.end method

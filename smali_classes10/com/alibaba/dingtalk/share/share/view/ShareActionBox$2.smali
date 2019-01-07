.class final Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$2;
.super Ljava/lang/Object;
.source "ShareActionBox.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$2;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

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

    .line 458
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$2;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-static {v2}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->i(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 459
    .local v0, "height":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 460
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 461
    if-ge v1, v0, :cond_0

    .line 462
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$2;->a:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->dismiss()V

    .line 465
    :cond_0
    return v3
.end method

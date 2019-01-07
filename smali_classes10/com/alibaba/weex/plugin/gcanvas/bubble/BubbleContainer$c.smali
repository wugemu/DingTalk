.class final Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;
.super Landroid/content/BroadcastReceiver;
.source "BubbleContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;


# direct methods
.method private constructor <init>(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;->a:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    .prologue
    .line 858
    invoke-direct {p0, p1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;-><init>(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v3, 0x1300

    .line 861
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 863
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;->a:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    invoke-static {v1, v3}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;I)I

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 865
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;->a:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    const/16 v2, 0x1200

    invoke-static {v1, v2}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;I)I

    goto :goto_0

    .line 866
    :cond_2
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    iget-object v1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$c;->a:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    invoke-static {v1, v3}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;I)I

    goto :goto_0
.end method

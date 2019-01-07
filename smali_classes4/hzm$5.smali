.class final Lhzm$5;
.super Ljava/lang/Object;
.source "BubbleAnimateWrapper.java"

# interfaces
.implements Lhzp$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhzm;-><init>(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhzm;


# direct methods
.method constructor <init>(Lhzm;)V
    .locals 0
    .param p1, "this$0"    # Lhzm;

    .prologue
    .line 118
    iput-object p1, p0, Lhzm$5;->a:Lhzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 122
    invoke-static {}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->a()Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;

    move-result-object v0

    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->ReplaceScale:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    iget-object v2, p0, Lhzm$5;->a:Lhzm;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->a(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;Lhzm;)V

    .line 123
    return-void
.end method

.method public final a(Lhzp;)V
    .locals 3
    .param p1, "springSet"    # Lhzp;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 127
    invoke-virtual {p1, p0}, Lhzp;->b(Lhzp$b;)Z

    .line 128
    invoke-static {}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->a()Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;

    move-result-object v0

    sget-object v1, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;->ReplaceScale:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;

    iget-object v2, p0, Lhzm$5;->a:Lhzm;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter;->b(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleEventCenter$AnimationType;Lhzm;)V

    .line 129
    return-void
.end method

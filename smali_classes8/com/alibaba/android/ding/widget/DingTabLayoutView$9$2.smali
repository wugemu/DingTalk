.class final Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$2;
.super Ljava/lang/Object;
.source "DingTabLayoutView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;->onException(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$2;->c:Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;

    iput p2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$2;->a:I

    iput-object p3, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$2;->b:Ljava/lang/String;

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
    .line 522
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$2;->c:Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;

    iget-object v0, v0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9;->b:Lcom/alibaba/wukong/Callback;

    iget v1, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$2;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingTabLayoutView$9$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

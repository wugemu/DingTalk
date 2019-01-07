.class final Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$1;
.super Ljava/lang/Object;
.source "DocPreviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$1;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    iput p2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$1;->b:Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;->a(Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocPreviewFragment$1;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 95
    return-void
.end method

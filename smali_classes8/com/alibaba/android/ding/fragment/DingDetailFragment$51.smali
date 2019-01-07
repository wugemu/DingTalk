.class final Lcom/alibaba/android/ding/fragment/DingDetailFragment$51;
.super Ljava/lang/Object;
.source "DingDetailFragment.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/fragment/DingDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$51;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "isTransacted"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 654
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingDetailFragment$51;->a:Lcom/alibaba/android/ding/fragment/DingDetailFragment;

    invoke-static {v0}, Lcom/alibaba/android/ding/fragment/DingDetailFragment;->f(Lcom/alibaba/android/ding/fragment/DingDetailFragment;)Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/ding/fragment/DingDetailFragment$51$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/ding/fragment/DingDetailFragment$51$1;-><init>(Lcom/alibaba/android/ding/fragment/DingDetailFragment$51;Z)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/EllipsizedAutoTranslateTextView;->post(Ljava/lang/Runnable;)Z

    .line 660
    return-void
.end method

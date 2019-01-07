.class final Lcom/alibaba/android/user/widget/DingSimCardView$1;
.super Ljava/lang/Object;
.source "DingSimCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/widget/DingSimCardView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/widget/DingSimCardView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/widget/DingSimCardView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/widget/DingSimCardView;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alibaba/android/user/widget/DingSimCardView$1;->a:Lcom/alibaba/android/user/widget/DingSimCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/android/user/widget/DingSimCardView$1;->a:Lcom/alibaba/android/user/widget/DingSimCardView;

    invoke-static {v0}, Lcom/alibaba/android/user/widget/DingSimCardView;->a(Lcom/alibaba/android/user/widget/DingSimCardView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/widget/DingSimCardView$1;->a:Lcom/alibaba/android/user/widget/DingSimCardView;

    invoke-virtual {v1}, Lcom/alibaba/android/user/widget/DingSimCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/widget/DingSimCardView$1;->a:Lcom/alibaba/android/user/widget/DingSimCardView;

    .line 47
    invoke-static {v2}, Lcom/alibaba/android/user/widget/DingSimCardView;->a(Lcom/alibaba/android/user/widget/DingSimCardView;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method

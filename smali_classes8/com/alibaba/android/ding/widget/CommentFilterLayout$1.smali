.class final Lcom/alibaba/android/ding/widget/CommentFilterLayout$1;
.super Ljava/lang/Object;
.source "CommentFilterLayout.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/indicator/SlidingTabStrip$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/widget/CommentFilterLayout;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/CommentFilterLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/CommentFilterLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout$1;->a:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout$1;->a:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a(Lcom/alibaba/android/ding/widget/CommentFilterLayout;)Lcom/alibaba/android/ding/widget/CommentFilterLayout$a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout$1;->a:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->b(Lcom/alibaba/android/ding/widget/CommentFilterLayout;)V

    .line 116
    if-nez p1, :cond_2

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout$1;->a:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a(Lcom/alibaba/android/ding/widget/CommentFilterLayout;)Lcom/alibaba/android/ding/widget/CommentFilterLayout$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout$a;->a()V

    goto :goto_0

    .line 118
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/CommentFilterLayout$1;->a:Lcom/alibaba/android/ding/widget/CommentFilterLayout;

    invoke-static {v0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout;->a(Lcom/alibaba/android/ding/widget/CommentFilterLayout;)Lcom/alibaba/android/ding/widget/CommentFilterLayout$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/android/ding/widget/CommentFilterLayout$a;->b()V

    goto :goto_0
.end method

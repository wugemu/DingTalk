.class final Lboy$4$1;
.super Ljava/lang/Object;
.source "CommentPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lboy$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

.field final synthetic b:Lboy$4;


# direct methods
.method constructor <init>(Lboy$4;Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;)V
    .locals 0
    .param p1, "this$0"    # Lboy$4;

    .prologue
    .line 279
    iput-object p1, p0, Lboy$4$1;->b:Lboy$4;

    iput-object p2, p0, Lboy$4$1;->a:Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 282
    iget-object v0, p0, Lboy$4$1;->b:Lboy$4;

    iget-object v0, v0, Lboy$4;->c:Lcov;

    iget-object v1, p0, Lboy$4$1;->a:Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    invoke-interface {v0, v1}, Lcov;->a(Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lboy$4$1;->b:Lboy$4;

    iget-object v0, v0, Lboy$4;->b:Lbpc;

    iget-object v1, p0, Lboy$4$1;->b:Lboy$4;

    iget-object v1, v1, Lboy$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lboy$4$1;->a:Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;

    invoke-virtual {v0, v1, v2}, Lbpc;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/circle/draft/CommentDraft;)V

    .line 284
    return-void
.end method

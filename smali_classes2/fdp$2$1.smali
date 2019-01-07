.class final Lfdp$2$1;
.super Ljava/lang/Object;
.source "CommentPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfdp$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/draft/CommentDraft;

.field final synthetic b:Lfdp$2;


# direct methods
.method constructor <init>(Lfdp$2;Lcom/alibaba/android/user/connection/draft/CommentDraft;)V
    .locals 0
    .param p1, "this$0"    # Lfdp$2;

    .prologue
    .line 238
    iput-object p1, p0, Lfdp$2$1;->b:Lfdp$2;

    iput-object p2, p0, Lfdp$2$1;->a:Lcom/alibaba/android/user/connection/draft/CommentDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 241
    iget-object v0, p0, Lfdp$2$1;->b:Lfdp$2;

    iget-object v0, v0, Lfdp$2;->c:Lcov;

    iget-object v1, p0, Lfdp$2$1;->a:Lcom/alibaba/android/user/connection/draft/CommentDraft;

    invoke-interface {v0, v1}, Lcov;->a(Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lfdp$2$1;->b:Lfdp$2;

    iget-object v0, v0, Lfdp$2;->b:Lfdu;

    iget-object v1, p0, Lfdp$2$1;->b:Lfdp$2;

    iget-object v1, v1, Lfdp$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lfdp$2$1;->a:Lcom/alibaba/android/user/connection/draft/CommentDraft;

    invoke-virtual {v0, v1, v2}, Lfdu;->a(Ljava/lang/String;Lcom/alibaba/android/user/connection/draft/CommentDraft;)V

    .line 243
    return-void
.end method

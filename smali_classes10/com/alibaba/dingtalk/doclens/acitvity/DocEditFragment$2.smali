.class final Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$2;
.super Ljava/lang/Object;
.source "DocEditFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$2;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$2;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->g(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)V

    .line 202
    const-string/jumbo v0, "DocEditFragment"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "correction by edit exception : "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " msg : "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v1}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$2;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$2;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    sget v2, Liff$f;->dt_photo_edit_fail:I

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcac;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    check-cast p1, Lcom/alibaba/dingtalk/doclens/DocCorrectInfo;

    .line 1192
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$2;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->g(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)V

    .line 1193
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$2;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->i(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$2;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->h(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1194
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$2;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->j(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$2;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v0}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->j(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$2;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v1}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->i(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$2;->a:Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;

    invoke-static {v2}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;->h(Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/dingtalk/doclens/acitvity/DocEditFragment$a;->a(Ljava/util/List;I)V

    .line 188
    :cond_0
    return-void
.end method

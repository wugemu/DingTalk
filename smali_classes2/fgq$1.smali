.class final Lfgq$1;
.super Ljava/lang/Object;
.source "OrgContactAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgq;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lfgq;


# direct methods
.method constructor <init>(Lfgq;I)V
    .locals 0
    .param p1, "this$0"    # Lfgq;

    .prologue
    .line 152
    iput-object p1, p0, Lfgq$1;->b:Lfgq;

    iput p2, p0, Lfgq$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 155
    iget-object v1, p0, Lfgq$1;->b:Lfgq;

    invoke-static {v1}, Lfgq;->a(Lfgq;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lfgq$1;->a:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 156
    .local v0, "currentNode":Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;
    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 159
    :cond_0
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v2, p0, Lfgq$1;->b:Lfgq;

    invoke-static {v2}, Lfgq;->b(Lfgq;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/org/edit_dept.html"

    new-instance v3, Lfgq$1$1;

    invoke-direct {v3, p0, v0}, Lfgq$1$1;-><init>(Lfgq$1;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

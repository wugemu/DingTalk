.class final Lfgh$1;
.super Ljava/lang/Object;
.source "ConcernListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgh;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

.field final synthetic b:I

.field final synthetic c:Lfgh;


# direct methods
.method constructor <init>(Lfgh;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;I)V
    .locals 0
    .param p1, "this$0"    # Lfgh;

    .prologue
    .line 91
    iput-object p1, p0, Lfgh$1;->c:Lfgh;

    iput-object p2, p0, Lfgh$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iput p3, p0, Lfgh$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 94
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfgh$1;->c:Lfgh;

    invoke-static {v1}, Lfgh;->a(Lfgh;)Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    .line 95
    invoke-static {}, Lflz;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfgh$1$1;

    invoke-direct {v2, p0}, Lfgh$1$1;-><init>(Lfgh$1;)V

    .line 94
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 105
    return-void
.end method

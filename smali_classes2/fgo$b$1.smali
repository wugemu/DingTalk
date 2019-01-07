.class final Lfgo$b$1;
.super Ljava/lang/Object;
.source "NewRequestAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgo$b;-><init>(Lfgo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgo;

.field final synthetic b:Lfgo$b;


# direct methods
.method constructor <init>(Lfgo$b;Lfgo;)V
    .locals 0
    .param p1, "this$1"    # Lfgo$b;

    .prologue
    .line 667
    iput-object p1, p0, Lfgo$b$1;->b:Lfgo$b;

    iput-object p2, p0, Lfgo$b$1;->a:Lfgo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 670
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfgo$b$1;->b:Lfgo$b;

    iget-object v1, v1, Lfgo$b;->a:Lfgo;

    .line 671
    invoke-static {v1}, Lfgo;->b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/orgapplylist"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 672
    return-void
.end method

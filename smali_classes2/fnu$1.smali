.class final Lfnu$1;
.super Ljava/lang/Object;
.source "LabelSettingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfnu;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

.field final synthetic b:Lfnu;


# direct methods
.method constructor <init>(Lfnu;Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;)V
    .locals 0
    .param p1, "this$0"    # Lfnu;

    .prologue
    .line 83
    iput-object p1, p0, Lfnu$1;->b:Lfnu;

    iput-object p2, p0, Lfnu$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

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
    .line 86
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfnu$1;->b:Lfnu;

    invoke-virtual {v1}, Lfnu;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/external/label_group_edit.html"

    new-instance v2, Lfnu$1$1;

    invoke-direct {v2, p0}, Lfnu$1$1;-><init>(Lfnu$1;)V

    .line 87
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 96
    return-void
.end method

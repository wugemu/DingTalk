.class final Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$9;
.super Ljava/lang/Object;
.source "CommonWebViewActivity.java"

# interfaces
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    .prologue
    .line 971
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$9;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackStackChanged()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 974
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$9;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-static {v1}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->b(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;)Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;

    move-result-object v0

    .line 975
    .local v0, "fragment":Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;
    if-eqz v0, :cond_0

    .line 976
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->k()V

    .line 977
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity$9;->a:Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/fragment/BaseRuntimeFragment;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;->a(Lcom/alibaba/lightapp/runtime/activity/CommonWebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 979
    :cond_0
    return-void
.end method

.class final Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4$1;
.super Ljava/lang/Object;
.source "DingCreateActivityV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4;

    .prologue
    .line 945
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 948
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4;->b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4;->b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4;

    iget-object v1, v1, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4;->b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    iget-object v1, v1, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v1

    invoke-interface {v1}, Lazy$a;->n()I

    move-result v1

    invoke-static {v0, v1}, Lbjm;->a(Landroid/app/Activity;I)V

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4$1;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4;

    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13$4;->b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;

    .line 1545
    iget-object v0, v0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$13;->a:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->finish()V

    .line 952
    return-void
.end method

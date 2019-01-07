.class final Lcom/alibaba/android/ding/activity/DingCreateActivityV2$14;
.super Ljava/lang/Object;
.source "DingCreateActivityV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$14;->b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    iput-boolean p2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$14;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 1325
    iget-boolean v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$14;->a:Z

    if-eqz v1, :cond_1

    .line 1326
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$14;->b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->h(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1327
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$14;->b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v0

    invoke-interface {v0}, Lazy$a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$14;->b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$14;->b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->h(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->a(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;Landroid/view/View;)V

    .line 1335
    :goto_0
    return-void

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$14;->b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$14;->b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->h(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->b(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;Landroid/view/View;)V

    goto :goto_0

    .line 1333
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$14;->b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v1}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->h(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/ding/activity/DingCreateActivityV2$14;->b:Lcom/alibaba/android/ding/activity/DingCreateActivityV2;

    invoke-static {v2}, Lcom/alibaba/android/ding/activity/DingCreateActivityV2;->j(Lcom/alibaba/android/ding/activity/DingCreateActivityV2;)Lazy$a;

    move-result-object v2

    invoke-interface {v2}, Lazy$a;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

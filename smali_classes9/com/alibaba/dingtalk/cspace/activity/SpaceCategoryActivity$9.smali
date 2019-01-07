.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$9;
.super Ljava/lang/Object;
.source "SpaceCategoryActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$9;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 593
    .line 1596
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$9;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$9;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->t(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    .line 593
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$9;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    :goto_0
    return-void

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$9;->a:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->t(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 605
    return-void
.end method

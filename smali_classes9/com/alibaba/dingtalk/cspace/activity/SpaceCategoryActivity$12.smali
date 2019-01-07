.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field final synthetic c:Z

.field final synthetic d:J

.field final synthetic e:Z

.field final synthetic f:I

.field final synthetic g:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;ZLcom/alibaba/alimei/cspace/model/DentryModel;ZJZI)V
    .locals 1
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->g:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iput-boolean p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->a:Z

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-boolean p4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->c:Z

    iput-wide p5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->d:J

    iput-boolean p7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->e:Z

    iput p8, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 712
    check-cast p1, Ljava/lang/Boolean;

    .line 1715
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->g:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1718
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->a:Z

    if-eqz v0, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->g:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->dismissLoadingDialog()V

    .line 1721
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    .line 1722
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->g:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->c:Z

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->d:J

    iget-boolean v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->e:Z

    iget v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->f:I

    invoke-static/range {v0 .. v7}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZJZI)V

    .line 712
    :cond_1
    return-void

    .line 1721
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 733
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->g:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->a:Z

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->g:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->dismissLoadingDialog()V

    .line 739
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->g:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->c:Z

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->d:J

    iget-boolean v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->e:Z

    iget v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$12;->f:I

    invoke-static/range {v0 .. v7}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZZJZI)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 729
    return-void
.end method

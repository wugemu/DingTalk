.class final Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;
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

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;ZLcom/alibaba/alimei/cspace/model/DentryModel;ZIZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    .prologue
    .line 889
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->f:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iput-boolean p2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->a:Z

    iput-object p3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-boolean p4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->c:Z

    iput p5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->d:I

    iput-boolean p6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 889
    check-cast p1, Ljava/lang/Boolean;

    .line 1892
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->a:Z

    if-eqz v0, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->f:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->dismissLoadingDialog()V

    .line 1895
    :cond_0
    if-eqz p1, :cond_1

    .line 1896
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1897
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->f:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->c:Z

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->d:I

    iget-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->e:Z

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZIZZ)V

    .line 889
    return-void

    .line 1896
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 908
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->a:Z

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->f:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->dismissLoadingDialog()V

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->f:Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iget-boolean v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->c:Z

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->d:I

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity$4;->e:Z

    invoke-static/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;->a(Lcom/alibaba/dingtalk/cspace/activity/SpaceCategoryActivity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZIZZ)V

    .line 913
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 904
    return-void
.end method

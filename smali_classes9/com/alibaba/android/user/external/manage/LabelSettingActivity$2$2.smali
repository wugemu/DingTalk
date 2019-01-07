.class final Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$2;
.super Ljava/lang/Object;
.source "LabelSettingActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->run()V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 217
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;

    .line 1221
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;->labelGroups:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1225
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    iget-boolean v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;->canManage:Z

    invoke-static {v0, v3}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->a(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;Z)Z

    .line 1226
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->d(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->c(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setVisibility(I)V

    .line 1227
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    sget v3, Lezg$h;->ll_empty_holder:I

    invoke-virtual {v0, v3}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    iget-object v3, v3, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->c(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->supportInvalidateOptionsMenu()V

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->dismissLoadingDialog()V

    .line 1232
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;->labelGroups:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->b(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;Ljava/util/List;)V

    .line 1233
    invoke-static {}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "showLabels from remote"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1235
    iget-object v0, p0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;

    iget-object v0, v0, Lcom/alibaba/android/user/external/manage/LabelSettingActivity$2;->a:Lcom/alibaba/android/user/external/manage/LabelSettingActivity;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObjectList;->labelGroups:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->a(Lcom/alibaba/android/user/external/manage/LabelSettingActivity;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1226
    goto :goto_1

    :cond_3
    move v2, v1

    .line 1227
    goto :goto_2
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 245
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/alibaba/android/user/external/manage/LabelSettingActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "getLabelGroupModels err %s,%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 241
    return-void
.end method

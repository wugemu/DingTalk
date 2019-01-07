.class final Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;
.super Ljava/lang/Object;
.source "SpaceInterfaceImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->a(Ljava/lang/Void;)V
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
        "Lcom/alibaba/alimei/cspace/model/DentryModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 206
    check-cast p1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1210
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->b:Landroid/content/Context;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 1214
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 1215
    if-eqz p1, :cond_2

    .line 1216
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->privateTag:I

    invoke-virtual {p1, v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setPrivateTag(I)V

    .line 1219
    invoke-static {p1}, Lgpv;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 1220
    invoke-static {v0}, Lgpv;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setSize(J)V

    .line 1223
    :cond_0
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 1229
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "space_transfer_src"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1231
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "space_statistic_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1233
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1235
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "message"

    .line 1236
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 1239
    :goto_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v1, v1, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "im_navigator_from"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v0

    .line 1242
    :goto_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v0}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v2

    .line 1243
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v1, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v10, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->c:Landroid/os/Bundle;

    invoke-static/range {v1 .. v10}, Lfzu;->a(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1244
    :cond_1
    :goto_2
    return-void

    .line 1245
    :cond_2
    const-string/jumbo v0, "2012"

    const-string/jumbo v1, "data error"

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v0, v5

    goto :goto_0

    :cond_4
    move-object v9, v5

    move-object v8, v5

    move-object v7, v5

    move-object v6, v5

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->b:Landroid/content/Context;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 259
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 260
    const-string/jumbo v0, "13023000"

    .line 261
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1$1;->a:Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/impl/SpaceInterfaceImpl$1;->b:Landroid/content/Context;

    sget v1, Lfzs$h;->cspace_file_not_exist:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 254
    return-void
.end method

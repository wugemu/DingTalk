.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;
.super Ljava/lang/Object;
.source "CMailSettingsFolderPushActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 5
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 176
    const-string/jumbo v0, "CMailSettingsFolderPushActivity"

    const-string/jumbo v1, "queryAllMailPushableFolders"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "account:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v3, 0x8

    .line 142
    check-cast p1, Ljava/util/List;

    .line 1145
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    if-nez p1, :cond_1

    .line 1149
    const-string/jumbo v0, "CMailSettingsFolderPushActivity"

    const-string/jumbo v1, "queryAllMailPushableFolders"

    const-string/jumbo v2, " result null"

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1152
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;Ljava/util/List;)Ljava/util/List;

    .line 1153
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1154
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->f(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1155
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isInboxFolder()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1156
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v2, v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;Lcom/alibaba/alimei/sdk/model/FolderModel;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1157
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->h(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v2

    iget-boolean v2, v2, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1153
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1158
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isCustomMailFolder()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1159
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1162
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->g(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Lcom/alibaba/alimei/sdk/model/FolderModel;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1163
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    sget v1, Laxo$f;->inbox_layout:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1166
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 1167
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    sget v1, Laxo$f;->self_folder_label:I

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    :cond_6
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->i(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;->b(Ljava/util/List;)V

    .line 1170
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->i(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;->notifyDataSetChanged()V

    .line 1171
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    goto/16 :goto_0
.end method

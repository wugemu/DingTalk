.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$1;
.super Ljava/lang/Object;
.source "CMailSettingsFolderPushActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 99
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    .line 103
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    sget v3, Laxo$i;->dt_mail_open_all:I

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->c(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 104
    .local v1, "isOpenAll":Z
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 105
    .local v0, "fm":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    goto :goto_1

    .line 107
    .end local v0    # "fm":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    .line 108
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b()V

    .line 109
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    goto :goto_0
.end method

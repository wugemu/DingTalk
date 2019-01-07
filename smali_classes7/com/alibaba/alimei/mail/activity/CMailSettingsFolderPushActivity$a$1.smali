.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a$1;
.super Ljava/lang/Object;
.source "CMailSettingsFolderPushActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/sdk/model/FolderModel;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;Lcom/alibaba/alimei/sdk/model/FolderModel;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a$1;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a$1;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 281
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a$1;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    .line 282
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a$1;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iput-boolean p2, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    .line 283
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a$1;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a$1;->a:Lcom/alibaba/alimei/sdk/model/FolderModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/FolderModel;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->b(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a$1;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;->e(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;)V

    .line 285
    return-void
.end method

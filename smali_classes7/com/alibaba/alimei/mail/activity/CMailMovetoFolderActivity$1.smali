.class final Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$1;
.super Ljava/lang/Object;
.source "CMailMovetoFolderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;)Lrz;

    move-result-object v0

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;)Lrz;

    move-result-object v0

    .line 1041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lrz;->a:J

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 128
    .local v6, "folderModel":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;

    .line 1611
    const-string/jumbo v0, "mail_move_to_click"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 1267
    iget-object v0, v5, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v0

    iget-boolean v1, v5, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;->b:Z

    .line 1270
    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/FolderModel;->getId()J

    move-result-wide v2

    iget-object v4, v5, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;->d:Lxv;

    iget-object v5, v5, Lcom/alibaba/alimei/mail/activity/CMailMovetoFolderActivity;->c:[Ljava/lang/String;

    .line 1268
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->moveMailToNewFolder(ZJLxv;[Ljava/lang/String;)V

    goto :goto_0
.end method

.class final Lace$4$1$1;
.super Ljava/lang/Object;
.source "MailBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lace$4$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

.field final synthetic b:Lace$4$1;


# direct methods
.method constructor <init>(Lace$4$1;Lcom/alibaba/alimei/framework/model/UserAccountModel;)V
    .locals 0
    .param p1, "this$1"    # Lace$4$1;

    .prologue
    .line 251
    iput-object p1, p0, Lace$4$1$1;->b:Lace$4$1;

    iput-object p2, p0, Lace$4$1$1;->a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 254
    iget-object v0, p0, Lace$4$1$1;->a:Lcom/alibaba/alimei/framework/model/UserAccountModel;

    iget-object v1, p0, Lace$4$1$1;->b:Lace$4$1;

    iget-object v1, v1, Lace$4$1;->a:Lace$4;

    iget-object v8, v1, Lace$4;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v1, p0, Lace$4$1$1;->b:Lace$4$1;

    iget-object v1, v1, Lace$4$1;->a:Lace$4;

    iget v2, v1, Lace$4;->d:I

    iget-object v1, p0, Lace$4$1$1;->b:Lace$4$1;

    iget-object v1, v1, Lace$4$1;->a:Lace$4;

    iget v3, v1, Lace$4;->e:I

    iget-object v1, p0, Lace$4$1$1;->b:Lace$4$1;

    iget-object v1, v1, Lace$4$1;->a:Lace$4;

    iget-boolean v1, v1, Lace$4;->b:Z

    iget-object v1, p0, Lace$4$1$1;->b:Lace$4$1;

    iget-object v1, v1, Lace$4$1;->a:Lace$4;

    iget-object v10, v1, Lace$4;->c:Laci;

    .line 1142
    if-nez v0, :cond_1

    .line 1143
    const-string/jumbo v0, "MailBridge"

    const-string/jumbo v1, "not found login account"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v6, v0, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    .line 1149
    const-string/jumbo v0, "alimeiSdkData"

    invoke-interface {v8, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1152
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v0

    invoke-interface {v0, v6}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    .line 1157
    if-nez v0, :cond_0

    .line 1161
    const/4 v0, 0x0

    .line 1162
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1163
    invoke-static {v4}, Lace;->a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    move-result-object v1

    .line 1164
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v5

    invoke-static {v4}, Lace;->a(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;

    move-result-object v7

    .line 1566
    invoke-virtual {v5}, Lacr;->i()Ljava/util/List;

    move-result-object v0

    .line 1567
    if-eqz v0, :cond_3

    .line 1570
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1571
    if-eqz v0, :cond_2

    .line 1574
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1584
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v11, "mail_folder_new_mail"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1585
    const-string/jumbo v11, "account_name"

    invoke-virtual {v0, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1586
    const-string/jumbo v11, "mail_folder_list"

    invoke-virtual {v0, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1587
    iget-object v5, v5, Lacr;->d:Landroid/content/Context;

    invoke-static {v5}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    invoke-virtual {v5, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 1165
    :cond_3
    invoke-static {v6, v4}, Lafw;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1169
    :cond_4
    const-string/jumbo v1, "folderType"

    invoke-interface {v8, v1}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2052
    const-string/jumbo v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "6"

    .line 2053
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "3"

    .line 2054
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "5"

    .line 2055
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2056
    :cond_5
    const/4 v1, 0x0

    .line 1170
    :goto_1
    if-eqz v1, :cond_0

    .line 1174
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    .line 1175
    if-eqz v1, :cond_0

    .line 1178
    const-string/jumbo v4, "tp"

    invoke-interface {v8, v4}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    .line 1181
    invoke-static {v1, v6, v0}, Lace;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/alimei/sdk/push/data/ChangedFolders;)Z

    move-result v0

    .line 1182
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "MailBrige new mail should notification: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lafg;->a(Ljava/lang/String;)V

    .line 1183
    if-eqz v0, :cond_0

    .line 1187
    const-string/jumbo v0, "mailId"

    invoke-interface {v8, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1188
    const-string/jumbo v0, "fromMail"

    invoke-interface {v8, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1189
    const-string/jumbo v0, "fromName"

    invoke-interface {v8, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1190
    const-string/jumbo v0, "subject"

    invoke-interface {v8, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1192
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v0

    .line 1193
    invoke-virtual/range {v0 .. v8}, Lacs;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 1196
    if-eqz v1, :cond_0

    .line 1197
    invoke-interface {v10, v1}, Laci;->a(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 1198
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1200
    invoke-virtual {v0, v7, v9}, Lacs;->a(Ljava/lang/String;Z)I

    move-result v0

    .line 1201
    invoke-interface {v10, v0, v1}, Laci;->a(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_6
    move v1, v9

    .line 2058
    goto :goto_1
.end method

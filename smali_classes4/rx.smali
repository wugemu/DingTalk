.class public final Lrx;
.super Ljava/lang/Object;
.source "CMailSupport.java"


# static fields
.field static final a:J

.field private static b:Landroid/util/SparseIntArray;

.field private static c:Landroid/util/SparseIntArray;

.field private static d:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 66
    sget v0, Laxo$i;->alm_cmail_mailbox_name_display_inbox:I

    int-to-long v0, v0

    sput-wide v0, Lrx;->a:J

    .line 127
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lrx;->b:Landroid/util/SparseIntArray;

    .line 128
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lrx;->c:Landroid/util/SparseIntArray;

    .line 129
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    sput-object v0, Lrx;->d:Lfk;

    .line 130
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    sput-object v0, Lrx;->e:Lfk;

    .line 131
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lrx;->f:Landroid/util/SparseIntArray;

    .line 135
    sget-object v0, Lrx;->b:Landroid/util/SparseIntArray;

    sget v1, Laxo$i;->alm_cmail_mailbox_name_display_inbox:I

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    sget-object v0, Lrx;->b:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    sget v2, Laxo$i;->alm_cmail_mailbox_name_display_junk:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    sget-object v0, Lrx;->b:Landroid/util/SparseIntArray;

    sget v1, Laxo$i;->alm_cmail_mailbox_name_display_drafts:I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 138
    sget-object v0, Lrx;->b:Landroid/util/SparseIntArray;

    sget v1, Laxo$i;->alm_cmail_mailbox_name_display_sent:I

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    sget-object v0, Lrx;->b:Landroid/util/SparseIntArray;

    sget v1, Laxo$i;->alm_cmail_mailbox_name_display_trash:I

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    sget-object v0, Lrx;->b:Landroid/util/SparseIntArray;

    sget v1, Laxo$i;->alm_cmail_mailbox_name_display_outbox:I

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 141
    sget-object v0, Lrx;->b:Landroid/util/SparseIntArray;

    const/16 v1, 0x9

    sget v2, Laxo$i;->alm_cmail_mailbox_star:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    sget-object v0, Lrx;->b:Landroid/util/SparseIntArray;

    const/4 v1, -0x3

    sget v2, Laxo$i;->alm_cmail_mailbox_star:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 143
    sget-object v0, Lrx;->b:Landroid/util/SparseIntArray;

    const/4 v1, -0x2

    sget v2, Laxo$i;->alm_cmail_maibox_recently_read:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 145
    sget-object v0, Lrx;->c:Landroid/util/SparseIntArray;

    sget v1, Laxo$i;->icon_inbox:I

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    sget-object v0, Lrx;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    sget v2, Laxo$i;->icon_trashcan:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 147
    sget-object v0, Lrx;->c:Landroid/util/SparseIntArray;

    sget v1, Laxo$i;->icon_doc:I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 148
    sget-object v0, Lrx;->c:Landroid/util/SparseIntArray;

    sget v1, Laxo$i;->icon_send_plane:I

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 149
    sget-object v0, Lrx;->c:Landroid/util/SparseIntArray;

    sget v1, Laxo$i;->icon_clock:I

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    sget-object v0, Lrx;->c:Landroid/util/SparseIntArray;

    sget v1, Laxo$i;->icon_delete:I

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 152
    sget-object v0, Lrx;->d:Lfk;

    const-string/jumbo v1, "dingtalk.com"

    sget v2, Laxo$e;->cmail_dingtalk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lrx;->d:Lfk;

    const-string/jumbo v1, "126.com"

    sget v2, Laxo$e;->cmail_126:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lrx;->d:Lfk;

    const-string/jumbo v1, "gmail.com"

    sget v2, Laxo$e;->cmail_gmail:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lrx;->d:Lfk;

    const-string/jumbo v1, "163.com"

    sget v2, Laxo$e;->cmail_163:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lrx;->d:Lfk;

    const-string/jumbo v1, "qq.com"

    sget v2, Laxo$e;->cmail_qq:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lrx;->d:Lfk;

    const-string/jumbo v1, "outlook.com"

    sget v2, Laxo$e;->cmail_outlook:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lrx;->d:Lfk;

    const-string/jumbo v1, "sina.com"

    sget v2, Laxo$e;->cmail_sina:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lrx;->d:Lfk;

    const-string/jumbo v1, "yahoo.com.cn"

    sget v2, Laxo$e;->cmail_yahoo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lrx;->d:Lfk;

    const-string/jumbo v1, "yahoo.com"

    sget v2, Laxo$e;->cmail_yahoo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lrx;->e:Lfk;

    const-string/jumbo v1, "1"

    sget v2, Laxo$i;->dt_cmail_follows_tag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lrx;->e:Lfk;

    const-string/jumbo v1, "2"

    sget v2, Laxo$i;->dt_cmail_complete_tag:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lrx;->e:Lfk;

    const-string/jumbo v1, "unread"

    sget v2, Laxo$i;->dt_cmail_unread_mails:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lrx;->f:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    sget v2, Laxo$i;->dt_revoke_fail_for_read:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 167
    sget-object v0, Lrx;->f:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    sget v2, Laxo$i;->dt_revoke_fail_for_other_mail:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    sget-object v0, Lrx;->f:Landroid/util/SparseIntArray;

    sget v1, Laxo$i;->dt_revoke_fail_for_not_support_mail_list:I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    sget-object v0, Lrx;->f:Landroid/util/SparseIntArray;

    sget v1, Laxo$i;->dt_revoke_fail_for_not_found_revoke_mail:I

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    sget-object v0, Lrx;->f:Landroid/util/SparseIntArray;

    sget v1, Laxo$i;->dt_revoke_fail_for_mail_returned:I

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 3
    .param p0, "folderType"    # I

    .prologue
    .line 177
    sget-object v0, Lrx;->c:Landroid/util/SparseIntArray;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    sget v2, Laxo$e;->cmail_default_mail:I

    .line 198
    :goto_0
    return v2

    .line 190
    :cond_0
    const-string/jumbo v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 191
    .local v0, "index":I
    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 192
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "suffix":Ljava/lang/String;
    sget-object v2, Lrx;->d:Lfk;

    invoke-virtual {v2, v1}, Lfk;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    sget-object v2, Lrx;->d:Lfk;

    invoke-virtual {v2, v1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 198
    .end local v1    # "suffix":Ljava/lang/String;
    :cond_1
    sget v2, Laxo$e;->cmail_default_mail:I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errCode"    # I

    .prologue
    .line 247
    sget-object v1, Lrx;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1033
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 248
    .local v0, "resId":I
    if-gtz v0, :cond_0

    .line 249
    sget v1, Laxo$i;->dt_cmail_revoke_unkown_error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderType"    # I
    .param p2, "originalDisplayName"    # Ljava/lang/String;

    .prologue
    .line 221
    if-eqz p2, :cond_1

    const-string/jumbo v1, "Archive"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    sget v1, Laxo$i;->alm_cmail_mailbox_name_display_archive:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 228
    .end local p2    # "originalDisplayName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 224
    .restart local p2    # "originalDisplayName":Ljava/lang/String;
    :cond_1
    sget-object v1, Lrx;->b:Landroid/util/SparseIntArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 225
    .local v0, "integer":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/framework/model/AbsBaseModel;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseModel"    # Lcom/alibaba/alimei/framework/model/AbsBaseModel;

    .prologue
    const/4 v1, 0x0

    .line 261
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-object v1

    .line 265
    :cond_1
    instance-of v3, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-nez v3, :cond_2

    instance-of v3, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v3, :cond_0

    .line 270
    :cond_2
    const/4 v1, 0x0

    .line 271
    .local v1, "name":Ljava/lang/String;
    instance-of v3, p1, Lcom/alibaba/alimei/sdk/model/FolderModel;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 272
    check-cast v0, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 273
    .local v0, "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    iget v3, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->type:I

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/FolderModel;->name:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lrx;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    goto :goto_0

    .end local v0    # "folder":Lcom/alibaba/alimei/sdk/model/FolderModel;
    :cond_3
    instance-of v3, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 275
    check-cast v2, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    .line 276
    .local v2, "tagModel":Lcom/alibaba/alimei/sdk/model/MailTagModel;
    iget-object v3, v2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mTagId:Ljava/lang/String;

    iget-object v4, v2, Lcom/alibaba/alimei/sdk/model/MailTagModel;->mDisplayName:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lrx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "text":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->totalToCount:I

    if-lez v1, :cond_0

    .line 560
    iget-boolean v1, p1, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->hasUnknowStatus:Z

    if-eqz v1, :cond_2

    .line 562
    sget v1, Laxo$i;->alm_cmail_mail_participants_status:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 579
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 580
    sget v1, Laxo$i;->alm_cmail_mail_participants_status:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    :cond_1
    return-object v0

    .line 564
    :cond_2
    iget v1, p1, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->unreadCount:I

    if-lez v1, :cond_4

    .line 566
    iget v1, p1, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->totalToCount:I

    iget v2, p1, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->unreadCount:I

    if-ne v1, v2, :cond_3

    .line 567
    sget v1, Laxo$i;->alm_cmail_mail_unread_str_temp2:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 570
    :cond_3
    sget v1, Laxo$i;->alm_cmail_mail_unread_str_temp:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->unreadCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 572
    :cond_4
    iget v1, p1, Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;->unreadCount:I

    if-nez v1, :cond_0

    .line 573
    sget v1, Laxo$i;->alm_cmail_mail_unread_str_temp1:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "revokeResult"    # Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;

    .prologue
    .line 592
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 593
    :cond_0
    const-string/jumbo v2, ""

    .line 611
    :goto_0
    return-object v2

    .line 596
    :cond_1
    iget v1, p1, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mStatus:I

    .line 597
    .local v1, "status":I
    packed-switch v1, :pswitch_data_0

    .line 611
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 599
    :pswitch_1
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mFailedItemList:Ljava/util/List;

    .line 600
    .local v0, "failedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 601
    sget v2, Laxo$i;->dt_cmail_revoke_fail_des:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 603
    :cond_2
    sget v2, Laxo$i;->dt_cmail_revoke_success:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 607
    .end local v0    # "failedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;>;"
    :pswitch_2
    sget v2, Laxo$i;->dt_cmail_revoking:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 609
    :pswitch_3
    sget v2, Laxo$i;->dt_cmail_revoke_failed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tagId"    # Ljava/lang/String;
    .param p2, "originalDisplayName"    # Ljava/lang/String;

    .prologue
    .line 209
    sget-object v1, Lrx;->e:Lfk;

    invoke-virtual {v1, p1}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 210
    .local v0, "resId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 214
    .end local p2    # "originalDisplayName":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public static a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 646
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lrx;->a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/lang/String;

    .prologue
    .line 60
    .line 4741
    if-nez p0, :cond_0

    .line 4764
    :goto_0
    return-void

    .line 4745
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2

    .line 4746
    if-nez p1, :cond_1

    .line 4747
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 4748
    sget v1, Laxo$i;->dt_mail_reader_profile_reject_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 4749
    sget v1, Laxo$i;->dt_mail_reader_profile_reject_message:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5239
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 4750
    sget v1, Laxo$i;->sure:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5259
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 4751
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 4752
    new-instance v1, Lrx$3;

    invoke-direct {v1, v0}, Lrx$3;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 5271
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 4759
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4760
    const-string/jumbo v1, "user_profile_alias"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4761
    const-string/jumbo v1, "user_profile_addr"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4762
    const-string/jumbo v1, "/mail/userprofile.html"

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 4767
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lrx$4;

    invoke-direct {v1, p0}, Lrx$4;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;)V

    invoke-virtual {v0, p3, p4, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 659
    if-eqz p0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-static {}, Lpn;->a()Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;

    move-result-object v1

    .line 664
    .local v1, "mailUidApi":Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;
    if-eqz v1, :cond_2

    .line 665
    new-instance v0, Lrx$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    .local v0, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;>;"
    invoke-interface {v1, p2, v0}, Lcom/alibaba/alimei/mail/avatar/api/MailUidApi;->queryUidByEmail(Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 690
    .end local v0    # "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/mail/avatar/model/MailUidModel;>;"
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lrx;->c(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/FolderModel;)Z
    .locals 2
    .param p0, "folderModel"    # Lcom/alibaba/alimei/sdk/model/FolderModel;

    .prologue
    const/4 v0, 0x1

    .line 510
    if-eqz p0, :cond_2

    .line 512
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isInboxFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v0

    .line 516
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/FolderModel;->isCustomMailFolder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 6
    .param p0, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    const/4 v3, 0x0

    .line 330
    if-nez p0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v3

    .line 334
    :cond_1
    iget-boolean v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    if-eqz v4, :cond_3

    .line 1246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v4

    .line 335
    invoke-interface {v4}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v1

    .line 337
    .local v1, "loader":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    if-nez v1, :cond_2

    const/4 v2, 0x0

    .line 338
    .local v2, "mailConversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    :goto_1
    if-eqz v2, :cond_3

    .line 339
    const-string/jumbo v3, "6"

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasTag(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 337
    .end local v2    # "mailConversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversation(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    move-result-object v2

    goto :goto_1

    .line 343
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "loader":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    const-string/jumbo v5, "6"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;)Z
    .locals 5
    .param p0, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p1, "tagId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 353
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    :cond_0
    :goto_0
    return v3

    .line 357
    :cond_1
    iget-boolean v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    if-eqz v4, :cond_3

    .line 2246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v4

    .line 358
    invoke-interface {v4}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v1

    .line 360
    .local v1, "loader":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    if-nez v1, :cond_2

    const/4 v2, 0x0

    .line 361
    .local v2, "mailConversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    :goto_1
    if-eqz v2, :cond_3

    .line 362
    invoke-virtual {v2, p1}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasTag(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 360
    .end local v2    # "mailConversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversation(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    move-result-object v2

    goto :goto_1

    .line 366
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "loader":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "revokeResult"    # Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;

    .prologue
    .line 621
    if-nez p0, :cond_0

    .line 622
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->ui_common_alert_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 637
    :goto_0
    return v2

    .line 624
    :cond_0
    if-nez p1, :cond_1

    .line 625
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->ui_common_alert_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0

    .line 628
    :cond_1
    iget v1, p1, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mStatus:I

    .line 629
    .local v1, "status":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 630
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/RevokeStatusModel;->mFailedItemList:Ljava/util/List;

    .line 631
    .local v0, "failedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 632
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->ui_common_alert_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0

    .line 634
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->ui_common_safe_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0

    .line 637
    .end local v0    # "failedList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/RevokeStatusModel$Item;>;"
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$c;->ui_common_alert_bg_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0
.end method

.method public static final b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    .locals 6
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v3

    .line 284
    .local v3, "mailApi":Lcom/alibaba/alimei/sdk/api/MailApi;
    invoke-static {p0}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v2

    .line 285
    .local v2, "mailAdditionalApi":Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-wide v4, Lrx;->a:J

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 286
    .local v0, "id":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {p0, v4, v5, v3, v2}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->buildMailLoaderInstance(Ljava/lang/String;JLcom/alibaba/alimei/sdk/api/MailApi;Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v1

    .line 287
    .local v1, "loader":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    return-object v1

    .line 285
    .end local v0    # "id":Ljava/lang/Long;
    .end local v1    # "loader":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    int-to-long v4, v4

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderType"    # I
    .param p2, "originalDisplayName"    # Ljava/lang/String;

    .prologue
    .line 233
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 234
    :cond_0
    invoke-static {p0, p1, p2}, Lrx;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 236
    .end local p2    # "originalDisplayName":Ljava/lang/String;
    :cond_1
    return-object p2
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0, p1, p2, p3}, Lrx;->c(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 6
    .param p0, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    const/4 v3, 0x0

    .line 375
    if-nez p0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v3

    .line 379
    :cond_1
    iget-boolean v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    if-eqz v4, :cond_3

    .line 3246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v4

    .line 380
    invoke-interface {v4}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v1

    .line 382
    .local v1, "loader":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    if-nez v1, :cond_2

    const/4 v2, 0x0

    .line 383
    .local v2, "mailConversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    :goto_1
    if-eqz v2, :cond_3

    .line 384
    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasTag(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 382
    .end local v2    # "mailConversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversation(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    move-result-object v2

    goto :goto_1

    .line 388
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "loader":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    const-string/jumbo v5, "1"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static c(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 695
    if-nez p0, :cond_0

    .line 738
    :goto_0
    return-void

    .line 698
    :cond_0
    invoke-static {p1}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    sget v0, Laxo$i;->dt_mail_feature_openfor_alimei:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 702
    :cond_1
    invoke-static {}, Lro;->a()Lro;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lrx$2;

    invoke-direct {v2, p0, p2, p1, p3}, Lrx$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lro;->b(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method public static c(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 6
    .param p0, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    const/4 v3, 0x0

    .line 397
    if-nez p0, :cond_1

    .line 410
    :cond_0
    :goto_0
    return v3

    .line 401
    :cond_1
    iget-boolean v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isConversation:Z

    if-eqz v4, :cond_3

    .line 4246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v4

    .line 402
    invoke-interface {v4}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Lrx;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;

    move-result-object v1

    .line 404
    .local v1, "loader":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    if-nez v1, :cond_2

    const/4 v2, 0x0

    .line 405
    .local v2, "mailConversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    :goto_1
    if-eqz v2, :cond_3

    .line 406
    const-string/jumbo v3, "2"

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;->hasTag(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 404
    .end local v2    # "mailConversationObject":Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->conversationId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;->getConversation(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/MailConversationObject;

    move-result-object v2

    goto :goto_1

    .line 410
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "loader":Lcom/alibaba/alimei/sdk/displayer/DefaultMailLoader;
    :cond_3
    iget-object v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    const-string/jumbo v5, "2"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 3
    .param p0, "groupMail"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 816
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 825
    :cond_0
    :goto_0
    return v1

    .line 820
    :cond_1
    const-string/jumbo v2, "@.*.groups.dingtalk.com"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 821
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 822
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static d(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/util/List;
    .locals 5
    .param p0, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/sdk/model/MailSnippetModel;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 419
    if-nez p0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-object v1

    .line 423
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    .line 424
    .local v3, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 428
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "accountName":Ljava/lang/String;
    invoke-static {v0}, Lafw;->g(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;

    move-result-object v2

    .line 430
    .local v2, "tagDisplayer":Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;
    if-eqz v2, :cond_0

    .line 433
    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/sdk/displayer/AbsTagDisplayer;->getTagColors(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 435
    .local v1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_0
.end method

.method public static e(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 2
    .param p0, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    const/4 v0, 0x0

    .line 444
    if-nez p0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static f(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 2
    .param p0, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    const/4 v0, 0x0

    .line 457
    if-nez p0, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static g(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z
    .locals 2
    .param p0, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .prologue
    .line 480
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    if-nez v0, :cond_1

    .line 481
    :cond_0
    const/4 v0, 0x0

    .line 483
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->tags:Ljava/util/List;

    const-string/jumbo v1, "20"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

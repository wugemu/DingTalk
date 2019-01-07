.class public final Lagb;
.super Ljava/lang/Object;
.source "AttachmentUploadUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;)Z
    .locals 2
    .param p0, "attachment"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .prologue
    const/4 v0, 0x0

    .line 28
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->originSpaceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mAttachmentId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mTempLoaction:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;)Ljava/io/File;
    .locals 3
    .param p0, "attachment"    # Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .prologue
    .line 43
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 44
    .local v0, "fileUri":Landroid/net/Uri;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "tmpFile":Ljava/io/File;
    return-object v1
.end method

.class final Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;
.super Ljava/io/BufferedInputStream;
.source "MailComposeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;II)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

.field final synthetic c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/io/InputStream;Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p2, "x0"    # Ljava/io/InputStream;

    .prologue
    .line 5152
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;->c:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iput-object p3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-direct {p0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized mark(I)V
    .locals 2
    .param p1, "readlimit"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 5156
    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 5158
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;->buf:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 5159
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;->buf:[B

    array-length p1, v0

    .line 5160
    :cond_0
    invoke-super {p0, p1}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5165
    :goto_0
    monitor-exit p0

    return-void

    .line 5163
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;->buf:[B

    array-length v0, v0

    invoke-super {p0, v0}, Ljava/io/BufferedInputStream;->mark(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 5169
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;->markpos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5170
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;->pos:I

    .line 5171
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;->count:I

    .line 5172
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;->marklimit:I

    .line 5173
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;->markpos:I

    .line 5174
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 5175
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;->b:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 5176
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5175
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;->in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5180
    :goto_0
    monitor-exit p0

    return-void

    .line 5178
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

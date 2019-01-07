.class final Lahd$2$1;
.super Ljava/lang/Object;
.source "AbsDownloadMailDetailTask.java"

# interfaces
.implements Lyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahd$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahd$2;


# direct methods
.method constructor <init>(Lahd$2;)V
    .locals 0
    .param p1, "this$1"    # Lahd$2;

    .prologue
    .line 294
    iput-object p1, p0, Lahd$2$1;->a:Lahd$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEvent(Lyc;)V
    .locals 5
    .param p1, "eventMessage"    # Lyc;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 297
    const-string/jumbo v0, "basic_AttachmentDownload"

    iget-object v1, p1, Lyc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget v0, p1, Lyc;->c:I

    if-eq v0, v3, :cond_2

    iget v0, p1, Lyc;->c:I

    if-ne v0, v2, :cond_0

    .line 302
    :cond_2
    iget-object v0, p0, Lahd$2$1;->a:Lahd$2;

    invoke-static {v0}, Lahd$2;->a(Lahd$2;)I

    .line 303
    iget-object v0, p1, Lyc;->g:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    if-eqz v0, :cond_3

    .line 304
    iget v0, p1, Lyc;->c:I

    if-ne v0, v3, :cond_4

    .line 305
    const-string/jumbo v1, "AbsDownloadMailDetailTask"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v0, "download resource attachment success attachmentId: "

    aput-object v0, v2, v4

    iget-object v0, p1, Lyc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_3
    :goto_1
    iget-object v0, p0, Lahd$2$1;->a:Lahd$2;

    invoke-static {v0}, Lahd$2;->b(Lahd$2;)Z

    goto :goto_0

    .line 307
    :cond_4
    const-string/jumbo v1, "AbsDownloadMailDetailTask"

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v0, "download resource attachment fail, attachmentId: "

    aput-object v0, v2, v4

    iget-object v0, p1, Lyc;->g:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v2}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lyx;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

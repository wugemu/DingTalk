.class public Luf;
.super Ljava/lang/Object;
.source "CSpaceUtils.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Luf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Luf;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 4
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v1, 0x0

    .line 89
    if-nez p0, :cond_0

    .line 96
    :goto_0
    return-object v1

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Luh;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "originExtension":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Luf;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-static {v1, v2, v3, v0}, Lcom/alibaba/alimei/restfulapi/service/ServiceUrlHelper;->generateDentrySrcImageUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p0, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v0, "header":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "Cookie"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "token="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-object v0
.end method

.method public static final a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z
    .locals 4
    .param p0, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    const/4 v2, 0x0

    .line 47
    if-nez p0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v2

    .line 51
    :cond_1
    invoke-static {p0}, Lage;->b(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    move-result v0

    .line 53
    .local v0, "isDownload":Z
    const/4 v1, 0x0

    .line 54
    .local v1, "isLocal":Z
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 55
    invoke-static {p0}, Luf;->b(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    move-result v1

    .line 58
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 1
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 135
    if-nez p0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final b(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z
    .locals 6
    .param p0, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    const/4 v4, 0x0

    .line 67
    if-nez p0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v4

    .line 70
    :cond_1
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 74
    iget-object v5, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 75
    .local v3, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 76
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "scheme":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "file"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 81
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

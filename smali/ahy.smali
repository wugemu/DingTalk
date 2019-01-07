.class public final Lahy;
.super Lyq;
.source "MailReleaseSpaceTask.java"


# static fields
.field private static e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lahy$1;

    invoke-direct {v0}, Lahy$1;-><init>()V

    sput-object v0, Lahy;->e:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Lyq;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lahy;->b:J

    .line 44
    iput v2, p0, Lahy;->c:I

    .line 45
    iput v2, p0, Lahy;->d:I

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountId"    # J
    .param p4, "attachmentRemainCount"    # I

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Lyq;-><init>()V

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lahy;->b:J

    .line 44
    iput v2, p0, Lahy;->c:I

    .line 45
    iput v2, p0, Lahy;->d:I

    .line 55
    iput-object p1, p0, Lahy;->a:Ljava/lang/String;

    .line 56
    iput-wide p2, p0, Lahy;->b:J

    .line 57
    iput p4, p0, Lahy;->c:I

    .line 58
    return-void
.end method

.method public static a()Lahy;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lahy;

    invoke-direct {v0}, Lahy;-><init>()V

    .line 62
    .local v0, "task":Lahy;
    const/4 v1, 0x1

    iput v1, v0, Lahy;->d:I

    .line 63
    return-object v0
.end method

.method private static a(JI)V
    .locals 18
    .param p0, "accountId"    # J
    .param p2, "remainCount"    # I

    .prologue
    .line 92
    invoke-static/range {p0 .. p1}, Lage;->a(J)Ljava/io/File;

    move-result-object v4

    .line 93
    .local v4, "dir":Ljava/io/File;
    if-eqz v4, :cond_3

    .line 95
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 96
    .local v9, "files":[Ljava/io/File;
    if-eqz v9, :cond_3

    array-length v15, v9

    if-lez v15, :cond_3

    .line 97
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v10, "listFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    array-length v0, v9

    move/from16 v16, v0

    const/4 v15, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    aget-object v6, v9, v15

    .line 99
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 100
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 104
    .end local v6    # "f":Ljava/io/File;
    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 106
    .local v12, "size":I
    if-lez p2, :cond_4

    sub-int v13, v12, p2

    .line 107
    .local v13, "targetLenth":I
    :goto_1
    if-lez v12, :cond_3

    .line 108
    if-lez v13, :cond_3

    .line 109
    sget-object v15, Lahy;->e:Ljava/util/Comparator;

    invoke-static {v10, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    const/4 v11, 0x0

    .line 112
    .local v11, "position":I
    :try_start_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 113
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "fileName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :try_start_1
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 117
    .local v2, "attachmentId":J
    move-wide/from16 v0, p0

    invoke-static {v0, v1, v2, v3}, Laga;->a(JJ)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    .end local v2    # "attachmentId":J
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 123
    if-lt v11, v13, :cond_2

    .line 135
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "files":[Ljava/io/File;
    .end local v10    # "listFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v11    # "position":I
    .end local v12    # "size":I
    .end local v13    # "targetLenth":I
    :cond_3
    :goto_3
    return-void

    .restart local v9    # "files":[Ljava/io/File;
    .restart local v10    # "listFiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .restart local v12    # "size":I
    :cond_4
    move v13, v12

    .line 106
    goto :goto_1

    .line 118
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fileName":Ljava/lang/String;
    .restart local v11    # "position":I
    .restart local v13    # "targetLenth":I
    :catch_0
    move-exception v5

    .line 119
    .local v5, "ex":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 127
    .end local v5    # "ex":Ljava/lang/NumberFormatException;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 129
    .local v14, "tr":Ljava/lang/Throwable;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string/jumbo v0, "MailReleaseSpaceTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v10, 0x1

    .line 68
    new-instance v1, Lyc;

    const-string/jumbo v3, "ReleaseMailSpace"

    iget-object v4, p0, Lahy;->a:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    .local v1, "eventMessage":Lyc;
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    .line 70
    .local v0, "eventCenter":Lya;
    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 72
    :try_start_0
    iget v3, p0, Lahy;->d:I

    if-ne v3, v10, :cond_3

    .line 1138
    invoke-static {}, Lcom/alibaba/alimei/sdk/datasource/DatasourceCenter;->getAttachmentDatasource()Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;

    move-result-object v3

    .line 1139
    if-eqz v3, :cond_2

    .line 1142
    invoke-interface {v3}, Lcom/alibaba/alimei/sdk/datasource/AttachmentDatasource;->queryAllAccountDownloadAttachment()Ljava/util/List;

    move-result-object v3

    .line 1143
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1144
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;

    .line 1145
    iget-wide v6, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mAccountKey:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mId:J

    invoke-static {v5, v6, v7}, Lage;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    .line 1146
    if-eqz v5, :cond_0

    .line 1149
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 1150
    if-eqz v5, :cond_1

    .line 1151
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1153
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1157
    :cond_1
    :try_start_1
    iget-wide v6, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mAccountKey:J

    iget-wide v8, v3, Lcom/alibaba/alimei/sdk/db/mail/entry/Attachment;->mId:J

    invoke-static {v6, v7, v8, v9}, Laga;->a(JJ)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1158
    :catch_0
    move-exception v3

    .line 1159
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 77
    :catch_1
    move-exception v2

    .line 78
    .local v2, "tr":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .end local v2    # "tr":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    iput v10, v1, Lyc;->c:I

    .line 81
    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 82
    return v10

    .line 75
    :cond_3
    :try_start_3
    iget-wide v4, p0, Lahy;->b:J

    iget v3, p0, Lahy;->c:I

    invoke-static {v4, v5, v3}, Lahy;->a(JI)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

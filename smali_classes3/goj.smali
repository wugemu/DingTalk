.class public final Lgoj;
.super Ljava/lang/Object;
.source "CSpaceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgoj$a;
    }
.end annotation


# static fields
.field static b:Ljava/lang/String;

.field private static d:Lgoj;

.field private static e:Z

.field private static f:Z


# instance fields
.field public a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

.field public c:Lxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxv",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    new-instance v0, Lgoj$6;

    invoke-direct {v0, p0}, Lgoj$6;-><init>(Lgoj;)V

    iput-object v0, p0, Lgoj;->c:Lxv;

    .line 75
    invoke-static {p1}, Lth;->a(Ljava/lang/String;)Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    move-result-object v0

    iput-object v0, p0, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    .line 76
    sput-object p1, Lgoj;->b:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static a(Ljava/lang/String;)Lgoj;
    .locals 1
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Lgoj;

    invoke-direct {v0, p0}, Lgoj;-><init>(Ljava/lang/String;)V

    .line 70
    sput-object v0, Lgoj;->d:Lgoj;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 361
    sget-boolean v3, Lgoj;->e:Z

    if-eqz v3, :cond_0

    .line 362
    sget-boolean v1, Lgoj;->f:Z

    .line 372
    :goto_0
    return v1

    .line 364
    :cond_0
    const-string/jumbo v3, "first_guide"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 365
    .local v0, "spGuide":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "is_first_guide"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 366
    sput-boolean v3, Lgoj;->f:Z

    if-eqz v3, :cond_1

    .line 367
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "is_first_guide"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 368
    sput-boolean v2, Lgoj;->f:Z

    .line 369
    sput-boolean v1, Lgoj;->e:Z

    goto :goto_0

    :cond_1
    move v1, v2

    .line 372
    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    .end local p0    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 197
    .restart local p0    # "path":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 198
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v3, "file"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "uriPath":Ljava/lang/String;
    const-string/jumbo v3, "CSpace"

    const-string/jumbo v4, "CSpaceProxy"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "removeSchemeIfPossible, ignore scheme: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ", input: "

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object p0, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, ", uriPath: "

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object v2, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object p0, v2

    .line 204
    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;

    .prologue
    .line 351
    new-instance v0, Lyc;

    const-string/jumbo v1, "cspace_dentry_chooser_cancel"

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    .local v0, "eventMessage":Lyc;
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v1

    invoke-interface {v1, v0}, Lya;->a(Lyc;)V

    .line 353
    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string/jumbo v0, "\\p{Cntrl}"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 167
    const-string/jumbo v0, "_"

    invoke-static {p0, v0}, Lgpv;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;
    .locals 16
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 125
    .local p1, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p3, "originalUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 126
    .local v6, "pathKv":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    const-string/jumbo v10, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 127
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 129
    :cond_1
    if-eqz p1, :cond_a

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "i":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 132
    .local v8, "uriItem":Landroid/net/Uri;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 135
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "localUrl":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "scheme":Ljava/lang/String;
    const-string/jumbo v10, "file"

    invoke-static {v10, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 138
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "uriPath":Ljava/lang/String;
    const-string/jumbo v10, "CSpace"

    const-string/jumbo v12, "CSpaceProxy"

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "getPathKv, ignore scheme: "

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v7, v13, v14

    const/4 v14, 0x2

    const-string/jumbo v15, ", uriItem: "

    aput-object v15, v13, v14

    const/4 v14, 0x3

    .line 140
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string/jumbo v15, ", uriPath: "

    aput-object v15, v13, v14

    const/4 v14, 0x5

    aput-object v9, v13, v14

    .line 139
    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v12, v13}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 142
    move-object v3, v9

    .line 145
    .end local v9    # "uriPath":Ljava/lang/String;
    :cond_3
    const-string/jumbo v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 146
    .local v2, "index":I
    const/4 v4, 0x0

    .line 147
    .local v4, "name":Ljava/lang/String;
    if-eqz p3, :cond_4

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v1, :cond_4

    .line 148
    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1171
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1172
    const/4 v4, 0x0

    .line 150
    :cond_4
    :goto_1
    const/4 v10, -0x1

    if-eq v2, v10, :cond_8

    .line 151
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Lgoj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "pathKey":Ljava/lang/String;
    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 160
    goto/16 :goto_0

    .line 1174
    .end local v5    # "pathKey":Ljava/lang/String;
    :cond_6
    const-string/jumbo v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 1175
    const/4 v13, -0x1

    if-eq v12, v13, :cond_7

    .line 1176
    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    move-object v4, v10

    .line 1178
    goto :goto_1

    .line 155
    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v4, v3

    .line 156
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Lgoj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 157
    .restart local v5    # "pathKey":Ljava/lang/String;
    invoke-virtual {v6, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 162
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "localUrl":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "pathKey":Ljava/lang/String;
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v8    # "uriItem":Landroid/net/Uri;
    :cond_a
    return-object v6
.end method

.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V
    .locals 2
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "Lcma",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 428
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p1, :cond_0

    .line 429
    iget-object v0, p0, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    new-instance v1, Lgoj$11;

    invoke-direct {v1, p0, p2, p1}, Lgoj$11;-><init>(Lgoj;Lcma;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->infoRpcSuccess(Lcom/alibaba/alimei/cspace/model/DentryModel;Lxv;)V

    .line 445
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgoi;)V
    .locals 9
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    .param p3, "listener"    # Lgoi;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 237
    :cond_0
    invoke-virtual {p3, v6}, Lgoi;->a(Ljava/util/List;)V

    .line 272
    :goto_0
    return-void

    .line 240
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v8, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v1, p2, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v0, Ltj;

    iget-object v1, p2, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->appId:Ljava/lang/String;

    iget-wide v2, p2, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->orgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->priority:Ljava/lang/String;

    iget-object v4, p2, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->srcPath:Ljava/lang/String;

    .line 243
    invoke-static {v4}, Lgoj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->dstPath:Ljava/lang/String;

    invoke-static {v5}, Lgoj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ltj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v0, "cryptModel":Ltj;
    iget-object v1, p0, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    const-string/jumbo v2, "/"

    invoke-virtual {p0, v8, v2, v6}, Lgoj;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v7, Lgoj$7;

    invoke-direct {v7, p0, p3}, Lgoj$7;-><init>(Lgoj;Lgoi;)V

    move-object v2, p1

    move-object v3, v6

    move-object v6, v0

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->saveOrUpdateEncryptFile2DB(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLtj;Lxv;)V

    goto :goto_0
.end method

.method public final varargs a(Ljava/lang/String;Ljava/lang/String;IZLgoi;[Ljava/lang/String;)V
    .locals 7
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "sortType"    # I
    .param p4, "includeDirty"    # Z
    .param p5, "listener"    # Lgoi;
    .param p6, "excludePaths"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 305
    iget-object v0, p0, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    new-instance v5, Lgoj$9;

    invoke-direct {v5, p0, p5}, Lgoj$9;-><init>(Lgoj;Lgoi;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->queryLocalDentrys(Ljava/lang/String;Ljava/lang/String;IZLxv;[Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcma;)V
    .locals 9
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "oldLoadmoreId"    # Ljava/lang/String;
    .param p4, "loadMoreId"    # Ljava/lang/String;
    .param p5, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Lcma",
            "<",
            "Ltl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 564
    .local p6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p7, "listener":Lcma;, "Lcma<Ltl;>;"
    iget-object v7, p0, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    new-instance v0, Lgoj$2;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lgoj$2;-><init>(Lgoj;Lcma;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    move v7, p5

    move-object v8, v0

    invoke-interface/range {v1 .. v8}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->listDentryRpcSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILxv;)V

    .line 580
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgoi;)V
    .locals 7
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "localUrl"    # Ljava/lang/String;
    .param p4, "extendInfo"    # Ljava/lang/String;
    .param p5, "listener"    # Lgoi;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v1, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lgoj;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgoi;Z)V

    .line 227
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;IIJILcma;)V
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "pageSize"    # I
    .param p5, "orgId"    # J
    .param p7, "searchType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIJI",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 510
    .line 2040
    .local p2, "spaceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    packed-switch p7, :pswitch_data_0

    .line 2057
    const/4 v10, 0x3

    .line 1517
    :goto_0
    new-instance v1, Lgoj$14;

    const/4 v12, 0x0

    move-object v2, p0

    move-object/from16 v3, p8

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move/from16 v11, p7

    invoke-direct/range {v1 .. v12}, Lgoj$14;-><init>(Lgoj;Lcma;Ljava/lang/String;Ljava/util/List;IIJIILjava/lang/String;)V

    .line 1550
    iget-object v3, p0, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    const/4 v11, 0x0

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-object v12, v1

    invoke-interface/range {v3 .. v12}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->searchDentryFromLocal(Ljava/lang/String;Ljava/util/List;IIJILjava/lang/String;Lxv;)V

    .line 511
    return-void

    .line 2042
    :pswitch_0
    const/4 v10, 0x1

    .line 2043
    goto :goto_0

    .line 2045
    :pswitch_1
    const/4 v10, 0x2

    .line 2046
    goto :goto_0

    .line 2048
    :pswitch_2
    const/4 v10, 0x3

    .line 2049
    goto :goto_0

    .line 2051
    :pswitch_3
    const/4 v10, 0x4

    .line 2052
    goto :goto_0

    .line 2054
    :pswitch_4
    const/4 v10, 0x5

    .line 2055
    goto :goto_0

    .line 2040
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgoi;Z)V
    .locals 8
    .param p2, "spaceId"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "extendInfo"    # Ljava/lang/String;
    .param p5, "listener"    # Lgoi;
    .param p6, "wifiOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgoi;",
            "Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 86
    .local p1, "localUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lgoj;->a(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgoi;Z)V

    .line 87
    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lgoi;Z)V
    .locals 9
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "extendInfo"    # Ljava/lang/String;
    .param p6, "listener"    # Lgoi;
    .param p7, "wifiOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lgoi;",
            "Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 93
    .local p1, "localUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p2, "realUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    invoke-virtual {p0, p1, p4, p2}, Lgoj;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v5, 0x1

    move-object v1, p3

    move/from16 v3, p7

    move-object v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->generateDentryList(Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;Z)Ljava/util/List;

    move-result-object v7

    .line 95
    .local v7, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 96
    .local v6, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-nez v6, :cond_1

    .line 122
    .end local v6    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :goto_1
    return-void

    .line 100
    .restart local v6    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_1
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgpx;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lgoc;->a(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    goto :goto_0

    .line 105
    .end local v6    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_2
    new-instance v8, Lgoj$1;

    invoke-direct {v8, p0, p6}, Lgoj$1;-><init>(Lgoj;Lgoi;)V

    .line 121
    .local v8, "saveListener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;>;"
    iget-object v0, p0, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    const/4 v1, 0x1

    invoke-interface {v0, v7, v1, v8}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->saveOrUpdateFile2DB(Ljava/util/List;ZLxv;)V

    goto :goto_1
.end method

.method public final a(Ljava/util/List;Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 482
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 483
    iget-object v0, p0, Lgoj;->a:Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;

    new-instance v1, Lgoj$13;

    invoke-direct {v1, p0, p2}, Lgoj$13;-><init>(Lgoj;Lcma;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/alimei/cspace/openapi/IDentryAPI;->deleteRpcSuccess(Ljava/util/List;Lxv;)V

    .line 499
    :cond_0
    return-void
.end method

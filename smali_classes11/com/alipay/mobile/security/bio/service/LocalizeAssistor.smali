.class public Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;
.super Ljava/lang/Object;
.source "LocalizeAssistor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;,
        Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/bio/service/BioServiceDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    sput-object v0, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "zoloz_biometric.json"

    const-string/jumbo v2, "android-phone-securitycommon-biometric"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->b:Ljava/util/HashMap;

    const-string/jumbo v1, "zoloz_eyemetric.json"

    const-string/jumbo v2, "android-phone-securitycommon-eyemetric"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 77
    const/4 v5, 0x0

    .line 78
    .local v5, "zolozDescription":Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;
    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 81
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 84
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 88
    :goto_0
    if-eqz v3, :cond_0

    .line 89
    :try_start_1
    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/InputStreamUtils;->input2String(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "json":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "json is empty: fileName="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", resources="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .end local v4    # "json":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 110
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 117
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :goto_2
    return-object v5

    .line 86
    .restart local v1    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v6

    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : failed to open \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' -> FileNotFoundException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 105
    :catch_1
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    if-eqz v3, :cond_1

    .line 110
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 111
    :catch_2
    move-exception v2

    .line 112
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 93
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v4    # "json":Ljava/lang/String;
    :cond_2
    :try_start_6
    const-class v6, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;

    invoke-static {v4, v6}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;

    move-object v5, v0

    .line 94
    if-nez v5, :cond_4

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Failed to parse ZolozDescription, fileName="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 108
    .end local v4    # "json":Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v3, :cond_3

    .line 110
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 113
    :cond_3
    :goto_3
    throw v6

    .line 96
    .restart local v4    # "json":Ljava/lang/String;
    :cond_4
    :try_start_8
    iget-object v6, v5, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;->serviceDescriptions:Ljava/util/List;

    if-nez v6, :cond_5

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "No ServiceDescription was parsed, fileName="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 98
    :cond_5
    iget-object v6, v5, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;->serviceDescriptions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "No ServiceDescription was parsed, fileName="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 101
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Success to parse "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", fileName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 111
    .end local v4    # "json":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 112
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 111
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v2

    .line 112
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static getFrameworkVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 53
    sget-object v0, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p0, v1, v1}, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->parse(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 56
    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static parse(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/security/bio/service/local/LocalService;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/security/bio/service/BioServiceDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alipay/mobile/security/bio/service/local/LocalService;>;"
    .local p2, "lazyServices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alipay/mobile/security/bio/service/BioServiceDescription;>;"
    sget-object v13, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->a:Ljava/util/List;

    if-nez v13, :cond_9

    .line 128
    const-class v14, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;

    monitor-enter v14

    .line 129
    :try_start_0
    sget-object v13, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->a:Ljava/util/List;

    if-nez v13, :cond_8

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v2, "bioServiceDescriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/security/bio/service/BioServiceDescription;>;"
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/security/bio/runtime/Runtime;->isRunningOnQuinox(Landroid/content/Context;)Z

    move-result v8

    .line 134
    .local v8, "isOnQuinox":Z
    sget-object v13, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->b:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 135
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 136
    .local v7, "fileName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1060
    .local v3, "bundleName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1063
    if-eqz v8, :cond_1

    .line 1064
    invoke-static {v3}, Lcom/alipay/mobile/security/bio/runtime/Runtime;->getResourcesByBundleName(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v15

    .line 1065
    invoke-static {v7, v15}, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;

    move-result-object v12

    .line 1069
    :cond_1
    if-nez v12, :cond_2

    .line 1070
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-static {v7, v15}, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;

    move-result-object v12

    .line 139
    .local v12, "zolozDescription":Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;
    :cond_2
    if-eqz v12, :cond_0

    .line 140
    iget-object v11, v12, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;->serviceDescriptions:Ljava/util/List;

    .line 141
    .local v11, "serviceDescriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;>;"
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_6

    .line 142
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;

    .line 143
    .local v10, "serviceDescription":Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;
    iget-boolean v0, v10, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;->isEssential:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 144
    iget-object v0, v10, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;->className:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    :cond_3
    iget-object v0, v10, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;->className:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    iget-object v0, v10, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;->interfaceName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 150
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 151
    :cond_4
    new-instance v13, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Invalid ServiceDescription: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 174
    .end local v2    # "bioServiceDescriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/security/bio/service/BioServiceDescription;>;"
    .end local v3    # "bundleName":Ljava/lang/String;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "isOnQuinox":Z
    .end local v10    # "serviceDescription":Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;
    .end local v11    # "serviceDescriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;>;"
    .end local v12    # "zolozDescription":Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 156
    .restart local v2    # "bioServiceDescriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/security/bio/service/BioServiceDescription;>;"
    .restart local v3    # "bundleName":Ljava/lang/String;
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v8    # "isOnQuinox":Z
    .restart local v10    # "serviceDescription":Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;
    .restart local v11    # "serviceDescriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;>;"
    .restart local v12    # "zolozDescription":Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v8, v3}, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;->toBioServiceDescription(Landroid/content/Context;ZLjava/lang/String;)Lcom/alipay/mobile/security/bio/service/BioServiceDescription;

    move-result-object v4

    .line 157
    .local v4, "desc":Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 158
    .end local v4    # "desc":Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
    :catch_0
    move-exception v5

    .line 159
    .local v5, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 164
    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v10    # "serviceDescription":Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;
    :cond_6
    sget-object v15, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->c:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    iget-object v15, v12, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;->frameworkVersion:Ljava/lang/String;

    .line 165
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 166
    iget-object v15, v12, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;->frameworkVersion:Ljava/lang/String;

    sput-object v15, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->c:Ljava/lang/String;

    .line 167
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "FRAMEWORK_VERSION = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->c:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    .end local v3    # "bundleName":Ljava/lang/String;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v11    # "serviceDescriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ServiceDescription;>;"
    .end local v12    # "zolozDescription":Lcom/alipay/mobile/security/bio/service/LocalizeAssistor$ZolozDescription;
    :cond_7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v13, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->a:Ljava/util/List;

    .line 174
    .end local v2    # "bioServiceDescriptions":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/mobile/security/bio/service/BioServiceDescription;>;"
    .end local v8    # "isOnQuinox":Z
    :cond_8
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :cond_9
    sget-object v13, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->a:Ljava/util/List;

    if-eqz v13, :cond_c

    .line 178
    sget-object v13, Lcom/alipay/mobile/security/bio/service/LocalizeAssistor;->a:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_a
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;

    .line 179
    .local v1, "bioServiceDescription":Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
    iget-boolean v14, v1, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->c:Z

    if-eqz v14, :cond_b

    .line 180
    if-eqz p2, :cond_a

    .line 181
    iget-object v14, v1, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->b:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 184
    :cond_b
    if-eqz p1, :cond_a

    .line 186
    :try_start_3
    invoke-virtual {v1}, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->getClazz()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/security/bio/service/local/LocalService;

    .line 187
    .local v9, "localService":Lcom/alipay/mobile/security/bio/service/local/LocalService;
    iget-object v14, v1, Lcom/alipay/mobile/security/bio/service/BioServiceDescription;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 188
    .end local v9    # "localService":Lcom/alipay/mobile/security/bio/service/local/LocalService;
    :catch_1
    move-exception v5

    .line 189
    .restart local v5    # "e":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 195
    .end local v1    # "bioServiceDescription":Lcom/alipay/mobile/security/bio/service/BioServiceDescription;
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_c
    return-void
.end method

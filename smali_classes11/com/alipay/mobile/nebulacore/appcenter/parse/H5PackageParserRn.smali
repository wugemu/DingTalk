.class public Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParserRn;
.super Ljava/lang/Object;
.source "H5PackageParserRn.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PackageParserRn"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized parseRNPackage(Ljava/lang/String;)I
    .locals 34
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v29, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParserRn;

    monitor-enter v29

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 31
    .local v24, "time":J
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v28

    const-class v30, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 32
    .local v12, "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-nez v12, :cond_0

    .line 33
    const-string/jumbo v28, "H5PackageParserRn"

    const-string/jumbo v30, "nebulaAppProvider==null"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const/16 v28, 0x1

    .line 139
    :goto_0
    monitor-exit v29

    return v28

    .line 36
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    invoke-interface {v12, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 38
    .local v27, "version":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-interface {v12, v0, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 39
    .local v10, "installPath":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 40
    const/16 v28, 0x1

    goto :goto_0

    .line 42
    :cond_1
    new-instance v28, Ljava/lang/StringBuilder;

    const-string/jumbo v30, "file://"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 43
    .local v14, "offlineHost":Ljava/lang/String;
    const-string/jumbo v28, "/"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 44
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v30, "/"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 47
    :cond_2
    const-string/jumbo v28, "H5PackageParserRn"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v31, "offlineHost "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {v14}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 50
    .local v16, "offlineUri":Landroid/net/Uri;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 51
    :cond_3
    const/16 v28, 0x1

    goto/16 :goto_0

    .line 54
    :cond_4
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 55
    .local v15, "offlinePath":Ljava/lang/String;
    invoke-static {v15}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 56
    const-string/jumbo v28, "H5PackageParserRn"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v31, "offlinePath "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " not exists!"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/16 v28, 0x2

    goto/16 :goto_0

    .line 61
    :cond_5
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v30, "/CERT.json"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "certPath":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v30, "/SIGN.json"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 64
    .local v19, "signPath":Ljava/lang/String;
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_6

    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_6

    .line 65
    const-string/jumbo v28, "H5PackageParserRn"

    const-string/jumbo v30, "cert not exists!"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v14, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->notifyFail(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 67
    const/16 v28, 0x4

    goto/16 :goto_0

    .line 70
    :cond_6
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v13, "offlineFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 72
    .local v6, "childrenFiles":[Ljava/io/File;
    if-eqz v6, :cond_7

    array-length v0, v6

    move/from16 v28, v0

    if-nez v28, :cond_8

    .line 73
    :cond_7
    const-string/jumbo v28, "H5PackageParserRn"

    const-string/jumbo v30, "childrenFiles length == 0"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/16 v28, 0x2

    goto/16 :goto_0

    .line 77
    :cond_8
    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v26

    .line 79
    .local v26, "useNewSignKey":Z
    move/from16 v20, v26

    .local v20, "signPathExist":Z
    if-eqz v26, :cond_9

    sget-object v28, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_a

    .line 80
    :cond_9
    const-string/jumbo v28, "H5PackageParserRn"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v31, "signPath is exist : "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ", H5PackageParser.TAR_PUBLIC_KEY : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/16 v26, 0x0

    .line 84
    :cond_a
    const-string/jumbo v28, "H5PackageParserRn"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v31, "useNewSignKey : "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-eqz v26, :cond_c

    .line 89
    invoke-static/range {v19 .. v19}, Lcom/alipay/mobile/nebula/util/H5Utils;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 90
    .local v21, "signText":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v11

    .line 95
    .end local v21    # "signText":Ljava/lang/String;
    .local v11, "joCert":Lcom/alibaba/fastjson/JSONObject;
    :goto_1
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 96
    :cond_b
    const-string/jumbo v28, "H5PackageParserRn"

    const-string/jumbo v30, "joCert is empty"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/16 v28, 0x5

    goto/16 :goto_0

    .line 92
    .end local v11    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    :cond_c
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 93
    .local v23, "text":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .restart local v11    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_1

    .line 101
    .end local v23    # "text":Ljava/lang/String;
    :cond_d
    :try_start_2
    array-length v0, v6

    move/from16 v30, v0

    const/16 v28, 0x0

    :goto_2
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_11

    aget-object v5, v6, v28

    .line 102
    .local v5, "child":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    .line 103
    .local v18, "signKey":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_10

    const-string/jumbo v31, "CERT.json"

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_10

    const-string/jumbo v31, "SIGN.json"

    .line 104
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_10

    const-string/jumbo v31, "ios"

    .line 105
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_10

    .line 106
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 108
    .local v22, "signValue":Ljava/lang/String;
    if-eqz v26, :cond_e

    .line 110
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    .line 111
    invoke-static/range {v32 .. v32}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getPublicKey(Z)Ljava/lang/String;

    move-result-object v32

    .line 110
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 123
    .local v17, "result":Z
    :goto_3
    const-string/jumbo v31, "H5PackageParserRn"

    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "signKey "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " signValue "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " result:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-nez v17, :cond_10

    .line 127
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-static {v0, v14, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->notifyFail(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 128
    const/16 v28, 0x6

    goto/16 :goto_0

    .line 113
    .end local v17    # "result":Z
    :cond_e
    sget-object v31, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_f

    .line 115
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    sget-object v32, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->TAR_PUBLIC_KEY:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .restart local v17    # "result":Z
    goto :goto_3

    .line 119
    .end local v17    # "result":Z
    :cond_f
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    .line 120
    invoke-static/range {v32 .. v32}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->getPublicKey(Z)Ljava/lang/String;

    move-result-object v32

    .line 119
    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5RsaUtil;->verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    .restart local v17    # "result":Z
    goto/16 :goto_3

    .line 101
    .end local v17    # "result":Z
    .end local v22    # "signValue":Ljava/lang/String;
    :cond_10
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2

    .line 132
    .end local v5    # "child":Ljava/io/File;
    .end local v18    # "signKey":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 133
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v28, "H5PackageParserRn"

    move-object/from16 v0, v28

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sub-long v8, v30, v24

    .line 137
    .local v8, "elapse":J
    const-string/jumbo v28, "H5PackageParserRn"

    new-instance v30, Ljava/lang/StringBuilder;

    const-string/jumbo v31, "parse package elapse "

    invoke-direct/range {v30 .. v31}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " appId:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 28
    .end local v4    # "certPath":Ljava/lang/String;
    .end local v6    # "childrenFiles":[Ljava/io/File;
    .end local v8    # "elapse":J
    .end local v10    # "installPath":Ljava/lang/String;
    .end local v11    # "joCert":Lcom/alibaba/fastjson/JSONObject;
    .end local v12    # "nebulaAppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v13    # "offlineFile":Ljava/io/File;
    .end local v14    # "offlineHost":Ljava/lang/String;
    .end local v15    # "offlinePath":Ljava/lang/String;
    .end local v16    # "offlineUri":Landroid/net/Uri;
    .end local v19    # "signPath":Ljava/lang/String;
    .end local v20    # "signPathExist":Z
    .end local v24    # "time":J
    .end local v26    # "useNewSignKey":Z
    .end local v27    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v28

    monitor-exit v29

    throw v28
.end method

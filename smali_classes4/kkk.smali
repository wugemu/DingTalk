.class public final Lkkk;
.super Ljava/lang/Object;
.source "SecuritySignImpl.java"

# interfaces
.implements Lkkj;


# static fields
.field private static volatile d:Z

.field private static e:Ljava/lang/Object;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

.field private b:Lmtopsdk/mtop/domain/EnvModeEnum;

.field private c:Lmtopsdk/mtop/global/SDKConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lkkk;->d:Z

    .line 45
    sput-object v1, Lkkk;->e:Ljava/lang/Object;

    .line 46
    sput-object v1, Lkkk;->f:Ljava/lang/reflect/Method;

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lkkk;->g:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lkkk;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    .line 39
    iput-object v0, p0, Lkkk;->b:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 40
    iput-object v0, p0, Lkkk;->c:Lmtopsdk/mtop/global/SDKConfig;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "flag"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 256
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    :cond_0
    const/4 v2, 0x0

    .line 272
    :cond_1
    :goto_0
    return-object v2

    .line 259
    :cond_2
    const/4 v2, 0x0

    .line 266
    .local v2, "wua":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lkkk;->f:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    sget-object v3, Lkkk;->e:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 267
    sget-object v3, Lkkk;->f:Ljava/lang/reflect/Method;

    sget-object v4, Lkkk;->e:Ljava/lang/Object;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "mtopsdk.SecuritySignImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[getSecBodyDataEx] ISecurityBodyComponent getSecurityBodyDataEx(String,String,int) error,flag="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p2, "appKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 164
    :cond_0
    const-string/jumbo v7, "mtopsdk.SecuritySignImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[getMtopApiWBSign] appkey or params is null.appkey="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v5, 0x0

    .line 188
    :goto_0
    return-object v5

    .line 168
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lkkk;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    if-nez v7, :cond_2

    .line 169
    const-string/jumbo v7, "mtopsdk.SecuritySignImpl"

    const-string/jumbo v8, "[getMtopApiWBSign]SecurityGuardManager is null,please call ISign init()"

    invoke-static {v7, v8}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const/4 v5, 0x0

    goto :goto_0

    .line 172
    :cond_2
    const/4 v5, 0x0

    .line 174
    .local v5, "sign":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;

    invoke-direct {v4}, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;-><init>()V

    .line 175
    .local v4, "sgContext":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->appKey:Ljava/lang/String;

    .line 176
    const/4 v7, 0x5

    iput v7, v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->requestType:I

    .line 2038
    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v7

    if-gtz v7, :cond_6

    .line 2039
    :cond_3
    const/4 v3, 0x0

    .line 179
    .local v3, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    if-eqz v3, :cond_5

    sget-object v7, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    move-object/from16 v0, p0

    iget-object v8, v0, Lkkk;->b:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-eq v7, v8, :cond_4

    sget-object v7, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;

    move-object/from16 v0, p0

    iget-object v8, v0, Lkkk;->b:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-ne v7, v8, :cond_5

    .line 180
    :cond_4
    const-string/jumbo v7, "ATLAS"

    const-string/jumbo v8, "daily"

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_5
    iput-object v3, v4, Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;->paramMap:Ljava/util/Map;

    .line 183
    move-object/from16 v0, p0

    iget-object v7, v0, Lkkk;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v7}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getSecureSignatureComp()Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;

    move-result-object v6

    .line 184
    .local v6, "ssComponent":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    move-object/from16 v0, p0

    iget-object v7, v0, Lkkk;->c:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v7}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAuthCode()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;->signRequest(Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2044
    .end local v3    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "ssComponent":Lcom/alibaba/wireless/security/open/securesignature/ISecureSignatureComponent;
    :cond_6
    const-string/jumbo v7, "utdid"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2045
    const-string/jumbo v8, "uid"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2046
    const-string/jumbo v9, "reqbiz-ext"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2047
    const-string/jumbo v10, "data"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2048
    const-string/jumbo v11, "t"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2049
    const-string/jumbo v12, "api"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2050
    const-string/jumbo v13, "v"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2051
    const-string/jumbo v14, "sid"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2052
    const-string/jumbo v15, "ttid"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2053
    const-string/jumbo v16, "deviceId"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2054
    const-string/jumbo v17, "lat"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2055
    const-string/jumbo v18, "lng"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 2056
    const-string/jumbo v19, "extdata"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 2059
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 2060
    invoke-static {v7}, Lkkl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v21, "&"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2061
    invoke-static {v8}, Lkkl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    invoke-static {v9}, Lkkl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2063
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2064
    invoke-static {v10}, Lkkl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2065
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2067
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2068
    invoke-static {v14}, Lkkl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    invoke-static {v15}, Lkkl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2070
    invoke-static/range {v16 .. v16}, Lkkl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2071
    invoke-static/range {v17 .. v17}, Lkkl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2072
    invoke-static/range {v18 .. v18}, Lkkl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    invoke-static/range {v19 .. v19}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2074
    const-string/jumbo v7, "&"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2078
    :cond_7
    new-instance v3, Ljava/util/HashMap;

    const/4 v7, 0x2

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 2079
    const-string/jumbo v7, "INPUT"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 185
    .end local v4    # "sgContext":Lcom/alibaba/wireless/security/open/SecurityGuardParamContext;
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "mtopsdk.SecuritySignImpl"

    const-string/jumbo v8, "[getMtopApiWBSign] ISecureSignatureComponent signRequest error"

    invoke-static {v7, v8, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public final a(Lkkj$a;)Ljava/lang/String;
    .locals 5
    .param p1, "ctx"    # Lkkj$a;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 120
    iget-object v3, p1, Lkkj$a;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 121
    iget-object v0, p1, Lkkj$a;->b:Ljava/lang/String;

    .line 131
    :goto_0
    return-object v0

    .line 124
    :cond_0
    iget-object v3, p0, Lkkk;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v3}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v2

    .line 125
    .local v2, "sdsComp":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    const/4 v0, 0x0

    .line 127
    .local v0, "appkey":Ljava/lang/String;
    :try_start_0
    iget v3, p1, Lkkj$a;->a:I

    iget-object v4, p0, Lkkk;->c:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v4}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAuthCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "mtopsdk.SecuritySignImpl"

    const-string/jumbo v4, "[getAppkey]getAppKeyByIndex error."

    invoke-static {v3, v4, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 55
    if-nez p1, :cond_1

    .line 56
    const-string/jumbo v5, "mtopsdk.SecuritySignImpl"

    const-string/jumbo v6, "[init]SecuritySignImpl init.context is null"

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 61
    .local v2, "initStart":J
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v5

    iput-object v5, p0, Lkkk;->c:Lmtopsdk/mtop/global/SDKConfig;

    .line 62
    iget-object v5, p0, Lkkk;->c:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v5}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v5

    iput-object v5, p0, Lkkk;->b:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 64
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v5

    iput-object v5, p0, Lkkk;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    .line 66
    iget-object v5, p0, Lkkk;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getStaticDataStoreComp()Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;

    move-result-object v4

    .line 67
    .local v4, "sdsComp":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    const-string/jumbo v5, ""

    invoke-interface {v4, p2, v5}, Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;->getAppKeyByIndex(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "appkey":Ljava/lang/String;
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    const-string/jumbo v5, "mtopsdk.SecuritySignImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[init]SecuritySignImpl ISign init.set GlobalAppKey="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    :cond_2
    :try_start_1
    iget-object v5, p0, Lkkk;->a:Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    invoke-virtual {v5}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getUMIDComp()Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;

    move-result-object v5

    .line 1096
    if-eqz v5, :cond_3

    .line 1097
    const/4 v6, 0x0

    const-string/jumbo v7, ""

    new-instance v8, Lkkk$1;

    invoke-direct {v8, p0}, Lkkk$1;-><init>(Lkkk;)V

    invoke-interface {v5, v0, v6, v7, v8}, Lcom/alibaba/wireless/security/open/umid/IUMIDComponent;->initUMID(Ljava/lang/String;ILjava/lang/String;Lcom/alibaba/wireless/security/open/umid/IUMIDInitListenerEx;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1277
    :cond_3
    :goto_1
    :try_start_2
    sget-boolean v5, Lkkk;->d:Z

    if-nez v5, :cond_4

    .line 1280
    sget-object v5, Lkkk;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1282
    :try_start_3
    sget-boolean v5, Lkkk;->d:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_5

    .line 1317
    const/4 v5, 0x1

    :try_start_4
    sput-boolean v5, Lkkk;->d:Z

    .line 1318
    sget-object v5, Lkkk;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 79
    :cond_4
    :goto_2
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    const-string/jumbo v5, "mtopsdk.SecuritySignImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[init]SecuritySignImpl ISign init succeed.init time="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 82
    .end local v0    # "appkey":Ljava/lang/String;
    .end local v2    # "initStart":J
    .end local v4    # "sdsComp":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "mtopsdk.SecuritySignImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[init]SecuritySignImpl init securityguard error.---"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1109
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "appkey":Ljava/lang/String;
    .restart local v2    # "initStart":J
    .restart local v4    # "sdsComp":Lcom/alibaba/wireless/security/open/staticdatastore/IStaticDataStoreComponent;
    :catch_1
    move-exception v5

    .line 1110
    :try_start_5
    const-string/jumbo v6, "mtopsdk.SecuritySignImpl"

    const-string/jumbo v7, "[initUmidToken]IUMIDComponent initUMID error"

    invoke-static {v6, v7, v5}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 1286
    :cond_5
    :try_start_6
    const-string/jumbo v5, "com.taobao.wireless.security.sdk.SecurityGuardManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 1288
    if-nez v5, :cond_6

    .line 1289
    const-string/jumbo v5, "mtopsdk.SecuritySignImpl"

    const-string/jumbo v6, "[initSecurityBodyDataExMethod]can\'t load class [com.taobao.wireless.security.sdk.SecurityGuardManager]"

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1317
    const/4 v5, 0x1

    :try_start_7
    sput-boolean v5, Lkkk;->d:Z

    .line 1318
    sget-object v5, Lkkk;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 1292
    :cond_6
    :try_start_8
    const-string/jumbo v6, "getInstance"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1294
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1295
    if-nez v6, :cond_7

    .line 1296
    const-string/jumbo v5, "mtopsdk.SecuritySignImpl"

    const-string/jumbo v6, "[initSecurityBodyDataExMethod]invoke method [getInstance(Context)] error"

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1317
    const/4 v5, 0x1

    :try_start_9
    sput-boolean v5, Lkkk;->d:Z

    .line 1318
    sget-object v5, Lkkk;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_2

    .line 1300
    :cond_7
    :try_start_a
    const-string/jumbo v7, "getSecurityBodyComp"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1303
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1305
    sput-object v5, Lkkk;->e:Ljava/lang/Object;

    if-nez v5, :cond_8

    .line 1306
    const-string/jumbo v5, "mtopsdk.SecuritySignImpl"

    const-string/jumbo v6, "[initSecurityBodyDataExMethod]invoke method [getSecurityBodyComp()] error"

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1317
    const/4 v5, 0x1

    :try_start_b
    sput-boolean v5, Lkkk;->d:Z

    .line 1318
    sget-object v5, Lkkk;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_2

    .line 1309
    :cond_8
    :try_start_c
    sget-object v5, Lkkk;->e:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "getSecurityBodyDataEx"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lkkk;->f:Ljava/lang/reflect/Method;

    .line 1311
    sget-object v5, Lkkk;->f:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_9

    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1312
    const-string/jumbo v5, "mtopsdk.SecuritySignImpl"

    const-string/jumbo v6, "[initSecurityBodyDataExMethod] getSecurityBodyDataEx succeed. "

    invoke-static {v5, v6}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1317
    :cond_9
    const/4 v5, 0x1

    :try_start_d
    sput-boolean v5, Lkkk;->d:Z

    .line 1318
    sget-object v5, Lkkk;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_2

    .line 1314
    :catch_2
    move-exception v5

    .line 1315
    :try_start_e
    const-string/jumbo v6, "mtopsdk.SecuritySignImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[initSecurityBodyDataExMethod]Can\'t find method SecurityGuardManager.getInstance().getSecurityBodyComp().getSecurityBodyDataEx(String,String,int)--"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1317
    const/4 v5, 0x1

    :try_start_f
    sput-boolean v5, Lkkk;->d:Z

    .line 1318
    sget-object v5, Lkkk;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_2

    .line 1317
    :catchall_0
    move-exception v5

    const/4 v6, 0x1

    sput-boolean v6, Lkkk;->d:Z

    .line 1318
    sget-object v6, Lkkk;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
.end method

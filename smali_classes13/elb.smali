.class public final Lelb;
.super Ljava/lang/Object;
.source "MtopVersionCheckWorker.java"

# interfaces
.implements Lelf;


# instance fields
.field private a:Lelf$a;

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lelb;->b:Landroid/content/Context;

    .line 58
    iput p2, p0, Lelb;->c:I

    .line 59
    return-void
.end method


# virtual methods
.method public final a(Lelf$a;)V
    .locals 8
    .param p1, "callback"    # Lelf$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 64
    iput-object p1, p0, Lelb;->a:Lelf$a;

    .line 1069
    new-instance v1, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;

    invoke-direct {v1}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;-><init>()V

    .line 1070
    iget-object v0, p0, Lelb;->b:Landroid/content/Context;

    invoke-static {v0}, Lele;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->appVersion:Ljava/lang/String;

    .line 1071
    invoke-static {}, Lele;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->identifier:Ljava/lang/String;

    .line 1072
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->apiLevel:J

    .line 1073
    iget-object v0, p0, Lelb;->b:Landroid/content/Context;

    invoke-static {v0}, Lele;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljav;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->md5Sum:Ljava/lang/String;

    .line 1074
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->locale:Ljava/lang/String;

    .line 1075
    iget-object v0, p0, Lelb;->b:Landroid/content/Context;

    invoke-static {v0}, Lele;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->netStatus:J

    .line 1076
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljav;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateRequest;->adhocUserId:Ljava/lang/String;

    .line 1078
    invoke-static {}, Lcpy;->c()Ljava/lang/String;

    move-result-object v0

    .line 1080
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_update_check_ttid_with_taobao"

    .line 2083
    invoke-virtual {v2, v3, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 1080
    if-eqz v2, :cond_0

    .line 1081
    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v7

    const-string/jumbo v0, "@taobao_android_1.0.0"

    aput-object v0, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1084
    :cond_0
    iget-object v2, p0, Lelb;->b:Landroid/content/Context;

    invoke-static {v2, v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v2

    .line 1085
    invoke-virtual {v2, v1, v0}, Lmtopsdk/mtop/intf/Mtop;->build(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    .line 1086
    sget-object v1, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 1087
    sget-object v1, Lmtopsdk/mtop/domain/JsonTypeEnum;->JSON:Lmtopsdk/mtop/domain/JsonTypeEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 1089
    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 1090
    if-nez v0, :cond_1

    .line 1091
    const-string/jumbo v0, "update"

    const-string/jumbo v1, "response is null"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lelb;->a:Lelf$a;

    invoke-interface {v0, v5}, Lelf$a;->b(I)V

    .line 1107
    :goto_0
    return-void

    .line 1096
    :cond_1
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1098
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v0

    const-class v1, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponse;

    invoke-static {v0, v1}, Lmtopsdk/mtop/util/MtopConvert;->jsonToOutputDO([BLjava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponse;

    .line 2115
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponse;->getData()Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2116
    :cond_2
    const-string/jumbo v0, "update"

    const-string/jumbo v1, "response data null"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    iget-object v0, p0, Lelb;->a:Lelf$a;

    invoke-interface {v0, v5}, Lelf$a;->b(I)V

    goto :goto_0

    .line 2121
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponse;->getData()Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;

    move-result-object v0

    .line 2122
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;->isHasUpdate()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2123
    iget-object v0, p0, Lelb;->a:Lelf$a;

    invoke-interface {v0, v6}, Lelf$a;->b(I)V

    goto :goto_0

    .line 2127
    :cond_4
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData;->getMain()Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;

    move-result-object v0

    .line 2128
    if-nez v0, :cond_5

    .line 2129
    const-string/jumbo v0, "update"

    const-string/jumbo v1, "mainUpdateData null"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    iget-object v0, p0, Lelb;->a:Lelf$a;

    invoke-interface {v0, v6}, Lelf$a;->b(I)V

    goto :goto_0

    .line 2134
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->getMd5()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2135
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->getPackageUrl()Ljava/lang/String;

    move-result-object v1

    .line 2134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2136
    :cond_6
    const-string/jumbo v0, "update"

    const-string/jumbo v1, "update data verify fail"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    iget-object v0, p0, Lelb;->a:Lelf$a;

    invoke-interface {v0, v5}, Lelf$a;->b(I)V

    goto :goto_0

    .line 2188
    :cond_7
    new-instance v1, Ljay;

    invoke-direct {v1}, Ljay;-><init>()V

    .line 2189
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->getPackageUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljay;->b:Ljava/lang/String;

    .line 2190
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->getSize()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Ljay;->d:J

    .line 2191
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->getVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljay;->f:Ljava/lang/String;

    .line 2192
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->getInfo()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljay;->h:Ljava/lang/String;

    .line 2193
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->getMd5()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljay;->i:Ljava/lang/String;

    .line 2194
    sget-object v2, Lcom/laiwang/update/base/UpdateEnum;->ORDINARY:Lcom/laiwang/update/base/UpdateEnum;

    invoke-virtual {v2}, Lcom/laiwang/update/base/UpdateEnum;->value()I

    move-result v2

    iput v2, v1, Ljay;->g:I

    .line 2142
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->getRemindStrategy()I

    move-result v2

    .line 2143
    sget-object v3, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->NO:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->value()I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 2145
    iget v2, p0, Lelb;->c:I

    if-ne v2, v4, :cond_9

    .line 2146
    iget-object v0, p0, Lelb;->a:Lelf$a;

    invoke-interface {v0, v6}, Lelf$a;->b(I)V

    goto/16 :goto_0

    .line 2149
    :cond_8
    sget-object v3, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->FORCE:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->value()I

    move-result v3

    if-ne v3, v2, :cond_b

    .line 2150
    sget-object v2, Lcom/laiwang/update/base/UpdateEnum;->FORCE:Lcom/laiwang/update/base/UpdateEnum;

    invoke-virtual {v2}, Lcom/laiwang/update/base/UpdateEnum;->value()I

    move-result v2

    iput v2, v1, Ljay;->g:I

    .line 2163
    :cond_9
    :goto_1
    iget v2, p0, Lelb;->c:I

    if-ne v2, v4, :cond_d

    iget-object v2, v1, Ljay;->f:Ljava/lang/String;

    .line 2164
    invoke-static {v2}, Lele;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v1, Ljay;->f:Ljava/lang/String;

    .line 2165
    invoke-static {v2}, Lele;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lelb;->b:Landroid/content/Context;

    .line 2166
    invoke-static {v2}, Lcms;->k(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2167
    :cond_a
    iget-object v0, p0, Lelb;->a:Lelf$a;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lelf$a;->b(I)V

    goto/16 :goto_0

    .line 2151
    :cond_b
    sget-object v3, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->WIFI_FORCE_ELSE_REMIND:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->value()I

    move-result v3

    if-ne v3, v2, :cond_c

    .line 2152
    iget-object v2, p0, Lelb;->b:Landroid/content/Context;

    invoke-static {v2}, Lcms;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2153
    sget-object v2, Lcom/laiwang/update/base/UpdateEnum;->FORCE:Lcom/laiwang/update/base/UpdateEnum;

    invoke-virtual {v2}, Lcom/laiwang/update/base/UpdateEnum;->value()I

    move-result v2

    iput v2, v1, Ljay;->g:I

    goto :goto_1

    .line 2155
    :cond_c
    sget-object v3, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->WIFI_REMIND_ELSE_NO:Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;

    invoke-virtual {v3}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$RemindStrategy;->value()I

    move-result v3

    if-ne v3, v2, :cond_9

    .line 2156
    iget-object v2, p0, Lelb;->b:Landroid/content/Context;

    invoke-static {v2}, Lcms;->k(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 2157
    iget-object v0, p0, Lelb;->a:Lelf$a;

    invoke-interface {v0, v6}, Lelf$a;->b(I)V

    goto/16 :goto_0

    .line 2170
    :cond_d
    iget v2, p0, Lelb;->c:I

    if-ne v2, v4, :cond_e

    iget v2, v1, Ljay;->g:I

    sget-object v3, Lcom/laiwang/update/base/UpdateEnum;->FORCE:Lcom/laiwang/update/base/UpdateEnum;

    invoke-virtual {v3}, Lcom/laiwang/update/base/UpdateEnum;->value()I

    move-result v3

    if-eq v2, v3, :cond_e

    .line 2171
    iget-object v2, p0, Lelb;->b:Landroid/content/Context;

    const-string/jumbo v3, "pref_key_update_remind_count"

    invoke-static {v2, v3}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 2172
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->getRemindCount()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 2173
    iget-object v0, p0, Lelb;->b:Landroid/content/Context;

    const-string/jumbo v3, "pref_key_update_remind_count"

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v3, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2181
    :cond_e
    iget-object v0, p0, Lelb;->a:Lelf$a;

    invoke-interface {v0, v1}, Lelf$a;->a(Ljay;)V

    goto/16 :goto_0

    .line 2175
    :cond_f
    const-string/jumbo v1, "update"

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v3, "Hold update remind for remind count:"

    aput-object v3, v2, v7

    .line 2176
    invoke-virtual {v0}, Lcom/alibaba/android/rimet/biz/update/MtopClientMudpUpdateResponseData$MainUpdateData;->getRemindCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2175
    invoke-static {v1, v0}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    iget-object v0, p0, Lelb;->a:Lelf$a;

    invoke-interface {v0, v6}, Lelf$a;->b(I)V

    goto/16 :goto_0

    .line 1100
    :cond_10
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1101
    const-string/jumbo v0, "update"

    const-string/jumbo v1, "session invalid"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lelb;->a:Lelf$a;

    invoke-interface {v0, v5}, Lelf$a;->b(I)V

    goto/16 :goto_0

    .line 1103
    :cond_11
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isSystemError()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1104
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->is41XResult()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiLockedResult()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1105
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isMtopSdkError()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1106
    :cond_12
    const-string/jumbo v0, "update"

    const-string/jumbo v1, "response network fail"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lelb;->a:Lelf$a;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lelf$a;->b(I)V

    goto/16 :goto_0

    .line 1109
    :cond_13
    const-string/jumbo v0, "update"

    const-string/jumbo v1, "response unknown"

    invoke-static {v0, v1}, Lcpv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lelb;->a:Lelf$a;

    const/16 v1, -0xa

    invoke-interface {v0, v1}, Lelf$a;->b(I)V

    goto/16 :goto_0
.end method

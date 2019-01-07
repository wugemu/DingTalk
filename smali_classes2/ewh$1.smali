.class final Lewh$1;
.super Ljava/lang/Object;
.source "TeleConfConfigCenter.java"

# interfaces
.implements Leyo$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewh;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leyo$d",
        "<",
        "Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigRspModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lewh;


# direct methods
.method constructor <init>(Lewh;)V
    .locals 0
    .param p1, "this$0"    # Lewh;

    .prologue
    .line 164
    iput-object p1, p0, Lewh$1;->a:Lewh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 164
    check-cast p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigRspModel;

    .line 1167
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigRspModel;->configMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1171
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigRspModel;->configMap:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1173
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1174
    if-lez v1, :cond_3

    .line 1175
    iget-object v1, p0, Lewh$1;->a:Lewh;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lewh;->a(Lewh;Z)Z

    .line 1183
    :goto_1
    iget-object v1, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigRspModel;->configMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1184
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1185
    iget-object v2, p0, Lewh$1;->a:Lewh;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lewh;->a(Lewh;I)I

    .line 1189
    :goto_2
    iget-object v2, p0, Lewh$1;->a:Lewh;

    iget-object v3, p0, Lewh$1;->a:Lewh;

    invoke-static {v3}, Lewh;->a(Lewh;)I

    move-result v3

    invoke-static {v2, v3}, Lewh;->b(Lewh;I)V

    .line 1191
    iget-object v2, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigRspModel;->configMap:Ljava/util/Map;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1192
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1193
    iget-object v3, p0, Lewh$1;->a:Lewh;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lewh;->c(Lewh;I)I

    .line 1197
    :goto_3
    iget-object v3, p0, Lewh$1;->a:Lewh;

    iget-object v4, p0, Lewh$1;->a:Lewh;

    invoke-static {v4}, Lewh;->b(Lewh;)I

    move-result v4

    invoke-static {v3, v4}, Lewh;->d(Lewh;I)V

    .line 1199
    iget-object v3, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigRspModel;->configMap:Ljava/util/Map;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1200
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1201
    iget-object v4, p0, Lewh$1;->a:Lewh;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lewh;->e(Lewh;I)I

    .line 1205
    :goto_4
    iget-object v4, p0, Lewh$1;->a:Lewh;

    iget-object v5, p0, Lewh$1;->a:Lewh;

    invoke-static {v5}, Lewh;->c(Lewh;)I

    move-result v5

    invoke-static {v4, v5}, Lewh;->f(Lewh;I)V

    .line 1207
    iget-object v4, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigRspModel;->configMap:Ljava/util/Map;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1208
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1209
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1210
    if-lez v5, :cond_8

    .line 1211
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v5

    const/4 v6, 0x1

    .line 2061
    iput-boolean v6, v5, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a:Z

    .line 1217
    :cond_2
    :goto_5
    iget-object v5, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigRspModel;->configMap:Ljava/util/Map;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1218
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1219
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1220
    if-lez v6, :cond_9

    .line 1221
    iget-object v6, p0, Lewh$1;->a:Lewh;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lewh;->b(Lewh;Z)Z

    .line 1229
    :goto_6
    iget-object v6, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigRspModel;->configMap:Ljava/util/Map;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1230
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 1231
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1232
    if-lez v7, :cond_b

    .line 1233
    iget-object v7, p0, Lewh$1;->a:Lewh;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lewh;->c(Lewh;Z)Z

    .line 1240
    :goto_7
    iget-object v7, p0, Lewh$1;->a:Lewh;

    iget-object v8, p0, Lewh$1;->a:Lewh;

    invoke-static {v8}, Lewh;->d(Lewh;)Z

    move-result v8

    invoke-static {v7, v8}, Lewh;->d(Lewh;Z)V

    .line 1242
    iget-object v7, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigRspModel;->configMap:Ljava/util/Map;

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1243
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 1244
    iget-object v8, p0, Lewh$1;->a:Lewh;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lewh;->g(Lewh;I)I

    .line 1245
    iget-object v8, p0, Lewh$1;->a:Lewh;

    iget-object v9, p0, Lewh$1;->a:Lewh;

    invoke-static {v9}, Lewh;->e(Lewh;)I

    move-result v9

    invoke-static {v8, v9}, Lewh;->h(Lewh;I)V

    .line 1250
    :goto_8
    iget-object v8, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigRspModel;->configMap:Ljava/util/Map;

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1251
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 1252
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1253
    if-lez v9, :cond_e

    .line 1254
    iget-object v9, p0, Lewh$1;->a:Lewh;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lewh;->e(Lewh;Z)Z

    .line 1261
    :goto_9
    iget-object v9, p0, Lewh$1;->a:Lewh;

    iget-object v10, p0, Lewh$1;->a:Lewh;

    invoke-static {v10}, Lewh;->f(Lewh;)Z

    move-result v10

    invoke-static {v9, v10}, Lewh;->f(Lewh;Z)V

    .line 1263
    iget-object v9, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigRspModel;->configMap:Ljava/util/Map;

    const/16 v10, 0x10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1264
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11

    .line 1265
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1266
    if-lez v10, :cond_10

    .line 1267
    iget-object v10, p0, Lewh$1;->a:Lewh;

    const/4 v13, 0x1

    invoke-static {v10, v13}, Lewh;->g(Lewh;Z)Z

    .line 1274
    :goto_a
    iget-object v10, p0, Lewh$1;->a:Lewh;

    iget-object v13, p0, Lewh$1;->a:Lewh;

    invoke-static {v13}, Lewh;->g(Lewh;)Z

    move-result v13

    invoke-static {v10, v13}, Lewh;->h(Lewh;Z)V

    .line 1277
    iget-object v10, p1, Lcom/alibaba/android/teleconf/sdk/idl/model/ConfigRspModel;->configMap:Ljava/util/Map;

    const/16 v13, 0xf

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1278
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_13

    .line 1279
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1280
    if-lez v13, :cond_12

    .line 1288
    :goto_b
    iget-object v12, p0, Lewh$1;->a:Lewh;

    invoke-static {v12, v11}, Lewh;->i(Lewh;Z)V

    .line 1290
    new-instance v11, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 1291
    const-string/jumbo v12, "Config:"

    invoke-virtual {v11, v12}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1292
    invoke-virtual {v11, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1293
    const-string/jumbo v0, ","

    invoke-virtual {v11, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1294
    invoke-virtual {v11, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1295
    const-string/jumbo v0, ","

    invoke-virtual {v11, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1296
    invoke-virtual {v11, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1297
    const-string/jumbo v0, ","

    invoke-virtual {v11, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1298
    invoke-virtual {v11, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1299
    const-string/jumbo v0, ","

    invoke-virtual {v11, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1300
    invoke-virtual {v11, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1301
    const-string/jumbo v0, ","

    invoke-virtual {v11, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1302
    invoke-virtual {v11, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1303
    const-string/jumbo v0, ","

    invoke-virtual {v11, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1304
    invoke-virtual {v11, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1305
    const-string/jumbo v0, ","

    invoke-virtual {v11, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1306
    invoke-virtual {v11, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1307
    const-string/jumbo v0, ","

    invoke-virtual {v11, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1308
    invoke-virtual {v11, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1309
    const-string/jumbo v0, ","

    invoke-virtual {v11, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1310
    invoke-virtual {v11, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1311
    const-string/jumbo v0, ","

    invoke-virtual {v11, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1312
    invoke-virtual {v11, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1314
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewh;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 1177
    :cond_3
    :try_start_1
    iget-object v1, p0, Lewh$1;->a:Lewh;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lewh;->a(Lewh;Z)Z

    goto/16 :goto_1

    .line 1180
    :cond_4
    iget-object v1, p0, Lewh$1;->a:Lewh;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lewh;->a(Lewh;Z)Z

    goto/16 :goto_1

    .line 1187
    :cond_5
    iget-object v2, p0, Lewh$1;->a:Lewh;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lewh;->a(Lewh;I)I

    goto/16 :goto_2

    .line 1195
    :cond_6
    iget-object v3, p0, Lewh$1;->a:Lewh;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lewh;->c(Lewh;I)I

    goto/16 :goto_3

    .line 1203
    :cond_7
    iget-object v4, p0, Lewh$1;->a:Lewh;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lewh;->e(Lewh;I)I

    goto/16 :goto_4

    .line 1213
    :cond_8
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v5

    const/4 v6, 0x0

    .line 3061
    iput-boolean v6, v5, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a:Z

    goto/16 :goto_5

    .line 1223
    :cond_9
    iget-object v6, p0, Lewh$1;->a:Lewh;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lewh;->b(Lewh;Z)Z

    goto/16 :goto_6

    .line 1226
    :cond_a
    iget-object v6, p0, Lewh$1;->a:Lewh;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lewh;->b(Lewh;Z)Z

    goto/16 :goto_6

    .line 1235
    :cond_b
    iget-object v7, p0, Lewh$1;->a:Lewh;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lewh;->c(Lewh;Z)Z

    goto/16 :goto_7

    .line 1238
    :cond_c
    iget-object v7, p0, Lewh$1;->a:Lewh;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lewh;->c(Lewh;Z)Z

    goto/16 :goto_7

    .line 1247
    :cond_d
    iget-object v8, p0, Lewh$1;->a:Lewh;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lewh;->g(Lewh;I)I

    goto/16 :goto_8

    .line 1256
    :cond_e
    iget-object v9, p0, Lewh$1;->a:Lewh;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lewh;->e(Lewh;Z)Z

    goto/16 :goto_9

    .line 1259
    :cond_f
    iget-object v9, p0, Lewh$1;->a:Lewh;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lewh;->e(Lewh;Z)Z

    goto/16 :goto_9

    .line 1269
    :cond_10
    iget-object v10, p0, Lewh$1;->a:Lewh;

    const/4 v13, 0x0

    invoke-static {v10, v13}, Lewh;->g(Lewh;Z)Z

    goto/16 :goto_a

    .line 1272
    :cond_11
    iget-object v10, p0, Lewh$1;->a:Lewh;

    const/4 v13, 0x0

    invoke-static {v10, v13}, Lewh;->g(Lewh;Z)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_a

    :cond_12
    move v11, v12

    .line 1285
    goto/16 :goto_b

    :cond_13
    move v11, v12

    .line 1286
    goto/16 :goto_b
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 322
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lewh;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Config fail "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lewh$1;->a:Lewh;

    invoke-static {v0, v4}, Lewh;->a(Lewh;Z)Z

    .line 324
    iget-object v0, p0, Lewh$1;->a:Lewh;

    invoke-static {v0, v4}, Lewh;->b(Lewh;Z)Z

    .line 325
    iget-object v0, p0, Lewh$1;->a:Lewh;

    invoke-static {v0, v5}, Lewh;->a(Lewh;I)I

    .line 326
    iget-object v0, p0, Lewh$1;->a:Lewh;

    invoke-static {v0, v5}, Lewh;->e(Lewh;I)I

    .line 327
    invoke-static {}, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a()Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;

    move-result-object v0

    .line 1061
    iput-boolean v4, v0, Lcom/alibaba/android/teleconf/operation/TeleConfAlarmHelper;->a:Z

    .line 328
    iget-object v0, p0, Lewh$1;->a:Lewh;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lewh;->g(Lewh;I)I

    .line 329
    return-void
.end method

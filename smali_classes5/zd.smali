.class public final Lzd;
.super Ljava/lang/Object;
.source "UserTrackLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0, p1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {p0, p1}, Lzd;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 45
    .local v0, "properties":Ljava/util/Properties;
    const-string/jumbo v1, "event_biz_log"

    invoke-static {v1, v0}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;Ljava/util/Properties;)V

    .line 46
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0, p1}, Lyp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1}, Lzd;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 56
    .local v0, "properties":Ljava/util/Properties;
    const-string/jumbo v1, "event_push_log"

    invoke-static {v1, v0}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;Ljava/util/Properties;)V

    .line 57
    return-void
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;
    .locals 13
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0xa

    .line 71
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 72
    .local v0, "properties":Ljava/util/Properties;
    new-instance v1, Lxz;

    invoke-direct {v1}, Lxz;-><init>()V

    .line 73
    .local v1, "store":Lxz;
    invoke-virtual {v1}, Lxz;->a()Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v3

    .line 74
    .local v3, "userAccountModel":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-eqz v3, :cond_5

    .line 75
    const-string/jumbo v4, "email"

    iget-object v5, v3, Lcom/alibaba/alimei/framework/model/UserAccountModel;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1089
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1090
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1091
    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1093
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1094
    const/4 v5, 0x2

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    .line 1095
    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1096
    const/16 v8, 0xb

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 1097
    const/16 v9, 0xc

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1098
    const/16 v10, 0xd

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1100
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1102
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "-"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    if-ge v5, v12, :cond_0

    .line 1105
    const-string/jumbo v4, "0"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    :cond_0
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    if-ge v7, v12, :cond_1

    .line 1111
    const-string/jumbo v4, "0"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    :cond_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    if-ge v8, v12, :cond_2

    .line 1117
    const-string/jumbo v4, "0"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    :cond_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    if-ge v9, v12, :cond_3

    .line 1123
    const-string/jumbo v4, "0"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    :cond_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    if-ge v6, v12, :cond_4

    .line 1129
    const-string/jumbo v4, "0"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    :cond_4
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1133
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "time":Ljava/lang/String;
    const-string/jumbo v4, "event_name"

    invoke-virtual {v0, v4, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v4, "desc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    return-object v0

    .line 77
    .end local v2    # "time":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "email"

    const-string/jumbo v5, "null"

    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.class public final Lfvo;
.super Lcom/laiwang/idl/client/push/ReceiverMessageHandler;
.source "OrgHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laiwang/idl/client/push/ReceiverMessageHandler",
        "<",
        "Lclb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private static a(Ljava/lang/Class;[B)Ljava/lang/Object;
    .locals 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[B)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 255
    .local p0, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 257
    .local v3, "ret":Ljava/lang/Object;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 260
    .local v0, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Liyo;

    new-instance v4, Lizk;

    array-length v5, p1

    invoke-direct {v4, v0, v5}, Lizk;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v4}, Liyo;-><init>(Lizj;)V

    .line 261
    .local v2, "reader":Liyo;
    invoke-virtual {v2}, Liyo;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4}, Liym;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 271
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    .end local v2    # "reader":Liyo;
    .end local v3    # "ret":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 272
    .restart local v2    # "reader":Liyo;
    .restart local v3    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 263
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Liyo;
    :catch_1
    move-exception v1

    .line 264
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 272
    :catch_2
    move-exception v1

    .line 273
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 265
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 272
    :catch_4
    move-exception v1

    .line 273
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 267
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 271
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_0

    .line 272
    :catch_6
    move-exception v1

    .line 273
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 270
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 271
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 274
    :goto_1
    throw v4

    .line 272
    :catch_7
    move-exception v1

    .line 273
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lfvo;Lclc;)V
    .locals 10
    .param p0, "x0"    # Lfvo;
    .param p1, "x1"    # Lclc;

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    .line 2132
    const/4 v0, 0x0

    .line 2133
    if-eqz p1, :cond_0

    .line 2134
    const-class v0, Lcez;

    iget-object v3, p1, Lclc;->b:[B

    invoke-static {v0, v3}, Lfvo;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 2137
    :cond_0
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcez;

    if-eqz v3, :cond_1

    .line 2138
    check-cast v0, Lcez;

    .line 2140
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->fromIdlModel(Lcez;)Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;

    move-result-object v3

    .line 2141
    new-array v0, v8, [Ljava/lang/String;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const-string/jumbo v4, "pref_key_org_push_timestamp"

    aput-object v4, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v4

    .line 2142
    iget-wide v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->time:J

    cmp-long v0, v6, v4

    if-ltz v0, :cond_1

    .line 2146
    new-array v0, v8, [Ljava/lang/String;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->orgId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const-string/jumbo v4, "pref_key_org_push_timestamp"

    aput-object v4, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->time:J

    invoke-static {v0, v4, v5}, Lcpk;->b(Ljava/lang/String;J)V

    .line 2149
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v4

    .line 2150
    if-eqz v4, :cond_1

    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2151
    :cond_1
    :goto_0
    return-void

    .line 2155
    :cond_2
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 2156
    if-eqz v0, :cond_3

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->orgId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v6, :cond_3

    .line 2158
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->logoMediaId:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    .line 2159
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgOAObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;

    if-eqz v2, :cond_4

    .line 2160
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgOAObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->logoMediaId:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;->iconMediaId:Ljava/lang/String;

    .line 2161
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgOAObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->oaTitle:Ljava/lang/String;

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgOAObject;->title:Ljava/lang/String;

    .line 2164
    :cond_4
    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v3, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoChangeObject;->extension:Ljava/lang/String;

    .line 2187
    if-eqz v2, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    :goto_1
    move v0, v1

    .line 2170
    :goto_2
    if-eqz v0, :cond_1

    .line 2171
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0, v4}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 2172
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    iget-wide v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-virtual {v0, v4, v2, v3}, Lccr;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;J)V

    .line 2174
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.workapp.org_employee_change"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2175
    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 2191
    :cond_6
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2192
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2196
    :goto_3
    if-nez v0, :cond_7

    .line 2197
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2200
    :cond_7
    invoke-static {v3}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 2201
    if-eqz v3, :cond_5

    .line 2205
    const-string/jumbo v5, "applyCode"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2206
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2209
    const-string/jumbo v5, "applyCode"

    invoke-virtual {v0, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2211
    invoke-static {v0}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    goto :goto_1

    .line 2194
    :cond_8
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->ext:Ljava/lang/String;

    invoke-static {v0}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_2
.end method

.method static synthetic a(Lfvo;Lclc;I)V
    .locals 4
    .param p0, "x0"    # Lfvo;
    .param p1, "x1"    # Lclc;
    .param p2, "x2"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    .line 1216
    if-eqz p1, :cond_1

    .line 1217
    const-class v0, Lcfh;

    iget-object v2, p1, Lclc;->b:[B

    invoke-static {v0, v2}, Lfvo;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 1220
    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcfh;

    if-eqz v2, :cond_0

    .line 1221
    check-cast v0, Lcfh;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;->fromIDLModel(Lcfh;)Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;

    move-result-object v0

    .line 1226
    :goto_1
    invoke-static {}, Loi;->a()Loi;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v0, v3, v1}, Loi;->a(ILjava/lang/Object;ILjava/lang/String;)V

    .line 44
    return-void

    .line 1223
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;-><init>()V

    .line 1224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrganizationChangeObject;->time:J

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lfvo;Lclc;I)V
    .locals 7
    .param p0, "x0"    # Lfvo;
    .param p1, "x1"    # Lclc;
    .param p2, "x2"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 44
    const/16 v2, 0x3ee

    .line 1232
    if-eqz p1, :cond_3

    .line 1233
    const-class v0, Lcfa;

    iget-object v3, p1, Lclc;->b:[B

    invoke-static {v0, v3}, Lfvo;->a(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    .line 1236
    :goto_0
    if-eqz v0, :cond_1

    instance-of v3, v0, Lcfa;

    if-eqz v3, :cond_1

    .line 1237
    check-cast v0, Lcfa;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->fromIDLModel(Lcfa;)Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    move-result-object v0

    .line 1241
    :goto_1
    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->authStatus:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1242
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->orgId:J

    invoke-static {v4, v5}, Lfls;->d(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1246
    :cond_0
    :goto_2
    invoke-static {}, Loi;->a()Loi;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v6, v1}, Loi;->a(ILjava/lang/Object;ILjava/lang/String;)V

    .line 44
    return-void

    .line 1239
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;-><init>()V

    goto :goto_1

    .line 1243
    :cond_2
    iget v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->authStatus:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1244
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgManageInfoObject;->orgId:J

    invoke-static {v4, v5}, Lfls;->d(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcpk;->b(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic onReceived(Ljava/lang/Object;Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 44
    check-cast p1, Lclb;

    .line 1069
    if-eqz p1, :cond_1

    iget-object v0, p1, Lclb;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1072
    const/16 v0, 0x2710

    .line 1073
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    .line 1074
    if-eqz v1, :cond_0

    .line 1076
    invoke-virtual {v1}, Lfmz;->g()Lfmw;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1077
    const/16 v0, 0xbb8

    .line 1081
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lfvo$1;

    invoke-direct {v2, p0, p1}, Lfvo$1;-><init>(Lfvo;Lclb;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1125
    invoke-interface {p2}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a()V

    .line 1126
    :goto_0
    return-void

    .line 1128
    :cond_1
    const-string/jumbo v0, ""

    invoke-interface {p2, v0}, Lcom/laiwang/idl/client/push/ReceiverMessageHandler$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

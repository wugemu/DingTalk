.class public Lcom/taobao/statistic/TBS$Ext;
.super Ljava/lang/Object;
.source "TBS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ext"
.end annotation


# static fields
.field private static final PAGE_EXTEND:Ljava/lang/String; = "Page_Extend"

.field private static lCommitEventLockObj:Ljava/lang/Object;

.field private static mDelayEventObject:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/statistic/TBS$DelayEventObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/statistic/TBS$Ext;->mDelayEventObject:Ljava/util/HashMap;

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/statistic/TBS$Ext;->lCommitEventLockObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs _convertStringAToKVSString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "kvs"    # [Ljava/lang/String;

    .prologue
    .line 272
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_0

    .line 273
    const/4 v3, 0x0

    .line 288
    :goto_0
    return-object v3

    .line 275
    :cond_0
    const/4 v1, 0x0

    .line 276
    .local v1, "lFlag":Z
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 277
    .local v2, "lSB":Ljava/lang/StringBuffer;
    if-eqz p0, :cond_3

    array-length v3, p0

    if-lez v3, :cond_3

    .line 278
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 279
    aget-object v3, p0, v0

    .line 4205
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 279
    if-nez v3, :cond_2

    .line 280
    if-eqz v1, :cond_1

    .line 281
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    :cond_1
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    const/4 v1, 0x1

    .line 278
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 288
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static synthetic access$000([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p0}, Lcom/taobao/statistic/TBS$Ext;->_convertStringAToKVSString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static commitEvent(I)V
    .locals 6
    .param p0, "eventID"    # I

    .prologue
    const/4 v2, 0x0

    .line 321
    const-string/jumbo v0, "Page_Extend"

    move v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public static commitEvent(ILjava/lang/Object;)V
    .locals 6
    .param p0, "eventID"    # I
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 329
    const-string/jumbo v0, "Page_Extend"

    move v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public static commitEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p0, "eventID"    # I
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 337
    const-string/jumbo v0, "Page_Extend"

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public static commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p0, "eventID"    # I
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 346
    const-string/jumbo v0, "Page_Extend"

    const/4 v5, 0x0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public static varargs commitEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 6
    .param p0, "eventID"    # I
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "kvs"    # [Ljava/lang/String;

    .prologue
    .line 355
    const-string/jumbo v0, "Page_Extend"

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public static commitEvent(Ljava/lang/String;I)V
    .locals 6
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "eventID"    # I

    .prologue
    const/4 v2, 0x0

    .line 242
    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public static commitEvent(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "eventID"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 250
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public static commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "eventID"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 259
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public static commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "eventID"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 268
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/taobao/statistic/TBS$Ext;->commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public static varargs commitEvent(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 4
    .param p0, "pageName"    # Ljava/lang/String;
    .param p1, "eventID"    # I
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;
    .param p5, "kvs"    # [Ljava/lang/String;

    .prologue
    .line 297
    invoke-static {p5}, Lcom/taobao/statistic/TBS$Ext;->_convertStringAToKVSString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "lArgsString":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 299
    .local v1, "lHitMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->PAGE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lane;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ARG2:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lane;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ARG3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4}, Lane;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    if-eqz v0, :cond_0

    .line 308
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ARGS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_0
    const-string/jumbo v2, "_bmbu"

    const-string/jumbo v3, "yes"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 312
    return-void
.end method

.method public static commitEvent(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 6
    .param p0, "eventLable"    # Ljava/lang/String;
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 154
    .line 1205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 154
    if-nez v2, :cond_0

    .line 155
    new-instance v0, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    invoke-direct {v0, p0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    invoke-static {p1}, Lamw;->a(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 158
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    .line 159
    .local v1, "tracker":Lcom/ut/mini/UTTracker;
    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {v0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 166
    .end local v0    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    .end local v1    # "tracker":Lcom/ut/mini/UTTracker;
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local v0    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    .restart local v1    # "tracker":Lcom/ut/mini/UTTracker;
    :cond_1
    const-string/jumbo v2, "TBS"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "please call UTAnalytics.getInstance().setAppApplicationInstance() before this method"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lamu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static commitEventBegin(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 6
    .param p0, "eventID"    # Ljava/lang/String;
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 177
    .line 2205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 177
    if-eqz v1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 181
    :cond_0
    sget-object v2, Lcom/taobao/statistic/TBS$Ext;->lCommitEventLockObj:Ljava/lang/Object;

    monitor-enter v2

    .line 183
    :try_start_0
    sget-object v1, Lcom/taobao/statistic/TBS$Ext;->mDelayEventObject:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v3, 0x7d0

    if-le v1, v3, :cond_1

    .line 184
    sget-object v1, Lcom/taobao/statistic/TBS$Ext;->mDelayEventObject:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 187
    :cond_1
    sget-object v1, Lcom/taobao/statistic/TBS$Ext;->mDelayEventObject:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    sget-object v1, Lcom/taobao/statistic/TBS$Ext;->mDelayEventObject:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    new-instance v0, Lcom/taobao/statistic/TBS$DelayEventObject;

    invoke-direct {v0}, Lcom/taobao/statistic/TBS$DelayEventObject;-><init>()V

    .line 191
    .local v0, "lObject":Lcom/taobao/statistic/TBS$DelayEventObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/taobao/statistic/TBS$DelayEventObject;->setTimestamp(J)V

    .line 192
    invoke-virtual {v0, p1}, Lcom/taobao/statistic/TBS$DelayEventObject;->setProperties(Ljava/util/Properties;)V

    .line 193
    invoke-virtual {v0}, Lcom/taobao/statistic/TBS$DelayEventObject;->setBegin()V

    .line 194
    sget-object v1, Lcom/taobao/statistic/TBS$Ext;->mDelayEventObject:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    monitor-exit v2

    goto :goto_0

    .end local v0    # "lObject":Lcom/taobao/statistic/TBS$DelayEventObject;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static commitEventEnd(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 12
    .param p0, "eventID"    # Ljava/lang/String;
    .param p1, "properties"    # Ljava/util/Properties;

    .prologue
    .line 203
    .line 3205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 203
    if-eqz v4, :cond_0

    .line 234
    :goto_0
    return-void

    .line 206
    :cond_0
    sget-object v5, Lcom/taobao/statistic/TBS$Ext;->lCommitEventLockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 207
    :try_start_0
    sget-object v4, Lcom/taobao/statistic/TBS$Ext;->mDelayEventObject:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    sget-object v4, Lcom/taobao/statistic/TBS$Ext;->mDelayEventObject:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/statistic/TBS$DelayEventObject;

    .line 209
    .local v1, "lObject":Lcom/taobao/statistic/TBS$DelayEventObject;
    sget-object v4, Lcom/taobao/statistic/TBS$Ext;->mDelayEventObject:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/taobao/statistic/TBS$DelayEventObject;->isBegin()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 211
    invoke-virtual {v1}, Lcom/taobao/statistic/TBS$DelayEventObject;->getProperties()Ljava/util/Properties;

    move-result-object v2

    .line 212
    .local v2, "lPrp1":Ljava/util/Properties;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v3, "lPrpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 214
    invoke-static {v2}, Lamw;->a(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 217
    :cond_1
    if-eqz p1, :cond_2

    .line 218
    invoke-static {p1}, Lamw;->a(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 221
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v0, "lHitMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "19999"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->ARG3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/taobao/statistic/TBS$DelayEventObject;->getTimestamp()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 228
    const-string/jumbo v4, "_bmbu"

    const-string/jumbo v6, "yes"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 231
    monitor-exit v5

    goto/16 :goto_0

    .line 234
    .end local v0    # "lHitMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "lObject":Lcom/taobao/statistic/TBS$DelayEventObject;
    .end local v2    # "lPrp1":Ljava/util/Properties;
    .end local v3    # "lPrpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

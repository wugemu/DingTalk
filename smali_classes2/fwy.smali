.class public final Lfwy;
.super Ljava/lang/Object;
.source "DingDateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 299
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v0

    .line 300
    .local v0, "serverTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 303
    .end local v0    # "serverTime":J
    :goto_0
    return-wide v0

    .restart local v0    # "serverTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 10
    .param p0, "targetDate"    # J

    .prologue
    const/4 v8, 0x1

    .line 211
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-gez v6, :cond_0

    .line 212
    const-string/jumbo v6, "Invalid"

    .line 234
    :goto_0
    return-object v6

    .line 215
    :cond_0
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 216
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v1

    .line 218
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 219
    .local v2, "currentTime":J
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 220
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 222
    .local v4, "currentYear":I
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 223
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 225
    .local v5, "targetYear":I
    if-eq v4, v5, :cond_1

    .line 226
    invoke-static {p0, p1}, Lcog;->g(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 231
    :goto_1
    const-string/jumbo v6, " "

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 232
    invoke-static {p0, p1}, Lcog;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 234
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 228
    :cond_1
    invoke-static {p0, p1}, Lfwy;->b(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1
.end method

.method private static b(J)Ljava/lang/String;
    .locals 4
    .param p0, "targetDate"    # J

    .prologue
    .line 239
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    const v2, 0xa0018

    invoke-static {v1, p0, p1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 244
    :goto_0
    return-object v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    invoke-static {p0, p1}, Lcog;->m(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

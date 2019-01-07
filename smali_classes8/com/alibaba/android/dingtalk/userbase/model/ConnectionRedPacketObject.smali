.class public Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;
.super Ljava/lang/Object;
.source "ConnectionRedPacketObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x74a3725a897b792bL


# instance fields
.field public clickDate:Ljava/lang/String;

.field public endDate:Ljava/lang/String;

.field public endTime:Ljava/lang/String;

.field public isClosed:Z

.field public mediaId:Ljava/lang/String;

.field public startDate:Ljava/lang/String;

.field public startTime:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isShow()Z
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 55
    iget-object v12, p0, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->url:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->mediaId:Ljava/lang/String;

    .line 56
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->startDate:Ljava/lang/String;

    .line 57
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->endDate:Ljava/lang/String;

    .line 58
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->startTime:Ljava/lang/String;

    .line 59
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    iget-object v12, p0, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->endTime:Ljava/lang/String;

    .line 60
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_0
    move v10, v11

    .line 116
    :cond_1
    :goto_0
    return v10

    .line 63
    :cond_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v3, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 64
    .local v3, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 66
    .local v9, "timeFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v12, p0, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->startDate:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 67
    .local v7, "start":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 68
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 69
    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 70
    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 71
    const/16 v12, 0xd

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 72
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 74
    iget-object v12, p0, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->endDate:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 75
    .local v5, "end":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 77
    const/16 v12, 0xb

    const/16 v13, 0x17

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 78
    const/16 v12, 0xc

    const/16 v13, 0x3b

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 79
    const/16 v12, 0xd

    const/16 v13, 0x3b

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 80
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 83
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 84
    .local v2, "currentDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 85
    .local v1, "currentCalendar":Ljava/util/Calendar;
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 87
    iget-object v12, p0, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->startTime:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 88
    .local v8, "startT":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 90
    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 91
    const/4 v12, 0x2

    const/4 v13, 0x2

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 92
    const/4 v12, 0x5

    const/4 v13, 0x5

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 93
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .line 95
    iget-object v12, p0, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->endTime:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 96
    .local v6, "endT":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 98
    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 99
    const/4 v12, 0x2

    const/4 v13, 0x2

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 100
    const/4 v12, 0x5

    const/4 v13, 0x5

    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v0, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 101
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    .line 104
    iget-boolean v12, p0, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->isClosed:Z

    if-nez v12, :cond_3

    .line 105
    invoke-virtual {v2, v7}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v12

    if-ltz v12, :cond_3

    .line 106
    invoke-virtual {v2, v5}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v12

    if-gtz v12, :cond_3

    .line 107
    invoke-virtual {v2, v8}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v12

    if-ltz v12, :cond_3

    .line 108
    invoke-virtual {v2, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v12

    if-gtz v12, :cond_3

    iget-object v12, p0, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->clickDate:Ljava/lang/String;

    .line 109
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-eqz v12, :cond_1

    :cond_3
    move v10, v11

    .line 112
    goto/16 :goto_0

    .line 114
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "currentCalendar":Ljava/util/Calendar;
    .end local v2    # "currentDate":Ljava/util/Date;
    .end local v5    # "end":Ljava/util/Date;
    .end local v6    # "endT":Ljava/util/Date;
    .end local v7    # "start":Ljava/util/Date;
    .end local v8    # "startT":Ljava/util/Date;
    :catch_0
    move-exception v4

    .line 115
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    move v10, v11

    .line 116
    goto/16 :goto_0
.end method

.method public setClickDate()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 121
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 122
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 123
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "currentDate":Ljava/lang/String;
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->clickDate:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    const/4 v3, 0x0

    .line 128
    :goto_0
    return v3

    .line 127
    :cond_0
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/ConnectionRedPacketObject;->clickDate:Ljava/lang/String;

    .line 128
    const/4 v3, 0x1

    goto :goto_0
.end method

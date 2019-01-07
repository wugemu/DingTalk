.class public Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;
.super Ljava/lang/Object;
.source "ScheduleCreateModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;
    }
.end annotation


# static fields
.field private static final KEY_CID:Ljava/lang/String; = "cid"

.field private static final KEY_MESSAGE_ID:Ljava/lang/String; = "msgId"


# instance fields
.field private mAllDay:Ljava/lang/Boolean;

.field private mComment:Ljava/lang/String;

.field private mEnd:Ljava/lang/Long;

.field private mExtension:Ljava/util/HashMap;
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

.field private mRemindMinutes:Ljava/lang/Integer;

.field private mRemindType:Ljava/lang/Integer;

.field private mRepeat:Ljava/lang/Integer;

.field private mScheduleContent:Ljava/lang/String;

.field private mSource:I

.field private mStart:Ljava/lang/Long;

.field private mType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;IILjava/util/HashMap;)V
    .locals 0
    .param p1, "scheduleContent"    # Ljava/lang/String;
    .param p2, "allDay"    # Ljava/lang/Boolean;
    .param p3, "start"    # Ljava/lang/Long;
    .param p4, "end"    # Ljava/lang/Long;
    .param p5, "remindMinutes"    # Ljava/lang/Integer;
    .param p6, "remindType"    # Ljava/lang/Integer;
    .param p7, "repeat"    # Ljava/lang/Integer;
    .param p8, "comment"    # Ljava/lang/String;
    .param p9, "type"    # I
    .param p10, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p11, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mScheduleContent:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mAllDay:Ljava/lang/Boolean;

    .line 86
    iput-object p3, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mStart:Ljava/lang/Long;

    .line 87
    iput-object p4, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mEnd:Ljava/lang/Long;

    .line 88
    iput-object p5, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mRemindMinutes:Ljava/lang/Integer;

    .line 89
    iput-object p6, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mRemindType:Ljava/lang/Integer;

    .line 90
    iput-object p7, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mRepeat:Ljava/lang/Integer;

    .line 91
    iput-object p8, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mComment:Ljava/lang/String;

    .line 92
    iput p9, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mType:I

    .line 93
    iput p10, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mSource:I

    .line 94
    iput-object p11, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mExtension:Ljava/util/HashMap;

    .line 95
    return-void
.end method

.method public static fromMessage(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;J)Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p1, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p2, "remindMillis"    # J

    .prologue
    const/4 v3, 0x0

    .line 243
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-object v3

    .line 247
    :cond_1
    new-instance v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;

    invoke-direct {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;-><init>()V

    .line 249
    .local v0, "builder":Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;
    invoke-static {p1}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getScheduleContent(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "scheduleContent":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1173
    iput-object v2, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->a:Ljava/lang/String;

    .line 254
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1193
    iput-object v3, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->e:Ljava/lang/Integer;

    .line 255
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2183
    iput-object v3, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->c:Ljava/lang/Long;

    .line 256
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2188
    iput-object v3, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->d:Ljava/lang/Long;

    .line 257
    sget-object v3, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->NOTIFICATION:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_TYPE;->getValue()I

    move-result v3

    .line 2213
    iput v3, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->i:I

    .line 258
    sget-object v3, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->IM:Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;

    invoke-virtual {v3}, Lcom/alibaba/android/calendar/base/interfaces/CalendarConst$CALENDAR_SOURCE;->getValue()I

    move-result v3

    .line 2218
    iput v3, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->j:I

    .line 260
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 261
    .local v1, "extension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "cid"

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string/jumbo v3, "msgId"

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2223
    iput-object v1, v0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->k:Ljava/util/HashMap;

    .line 265
    invoke-virtual {v0}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel$a;->a()Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;

    move-result-object v3

    goto :goto_0
.end method

.method private static varargs getAppendString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "params"    # [Ljava/lang/String;

    .prologue
    .line 416
    if-nez p0, :cond_0

    .line 417
    const-string/jumbo v2, ""

    .line 423
    :goto_0
    return-object v2

    .line 419
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 421
    .local v0, "param":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 423
    .end local v0    # "param":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getAtDisplayString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .param p0, "originText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 390
    .local p1, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    move-object v2, p0

    .line 391
    .local v2, "displayContentString":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 392
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 393
    .local v5, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v8, "("

    invoke-virtual {v5, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 395
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 396
    .local v4, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 397
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 398
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 399
    .local v7, "uid":Ljava/lang/Long;
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "@"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, " "

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 400
    const-string/jumbo v8, "|"

    invoke-virtual {v5, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_0

    .line 402
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v7    # "uid":Ljava/lang/Long;
    :cond_0
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->delete(II)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 403
    const-string/jumbo v8, ")"

    invoke-virtual {v5, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 404
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 405
    .local v1, "atTextPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 406
    .local v0, "atTextMatcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 407
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    .line 408
    .local v6, "textToReplace":Ljava/lang/String;
    const-string/jumbo v8, "@"

    const-string/jumbo v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, " "

    const-string/jumbo v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 409
    .restart local v7    # "uid":Ljava/lang/Long;
    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v10, "@"

    aput-object v10, v9, v8

    const/4 v10, 0x1

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v9, v10

    const/4 v8, 0x2

    const-string/jumbo v10, " "

    aput-object v10, v9, v8

    invoke-static {v9}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getAppendString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 410
    goto :goto_1

    .line 412
    .end local v0    # "atTextMatcher":Ljava/util/regex/Matcher;
    .end local v1    # "atTextPattern":Ljava/util/regex/Pattern;
    .end local v4    # "iterator":Ljava/util/Iterator;
    .end local v5    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v6    # "textToReplace":Ljava/lang/String;
    .end local v7    # "uid":Ljava/lang/Long;
    :cond_1
    return-object v2
.end method

.method private static getScheduleContent(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;
    .locals 12
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v11, 0x0

    .line 269
    instance-of v10, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v10, :cond_0

    move-object v10, v11

    .line 382
    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    .local v1, "content":Lcom/alibaba/wukong/im/MessageContent;
    :goto_0
    return-object v10

    .line 273
    .end local v1    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    .line 274
    .restart local v1    # "content":Lcom/alibaba/wukong/im/MessageContent;
    if-nez v1, :cond_1

    move-object v10, v11

    .line 275
    goto :goto_0

    .line 279
    :cond_1
    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    move-object v10, v11

    .line 382
    goto :goto_0

    .line 281
    :sswitch_0
    instance-of v10, v1, Lcom/alibaba/wukong/im/MessageContent$FileContent;

    if-nez v10, :cond_2

    move-object v10, v11

    .line 282
    goto :goto_0

    .line 284
    :cond_2
    check-cast v1, Lcom/alibaba/wukong/im/MessageContent$FileContent;

    .end local v1    # "content":Lcom/alibaba/wukong/im/MessageContent;
    move-object v2, v1

    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$FileContent;

    .line 285
    .local v2, "fileContent":Lcom/alibaba/wukong/im/MessageContent$FileContent;
    new-instance v8, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 286
    .local v8, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Lapg$a;->dt_schedule_file:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 287
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 288
    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 289
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$FileContent;->fileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 291
    :cond_3
    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .end local v2    # "fileContent":Lcom/alibaba/wukong/im/MessageContent$FileContent;
    .end local v8    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local v1    # "content":Lcom/alibaba/wukong/im/MessageContent;
    :sswitch_1
    move-object v10, p0

    .line 294
    check-cast v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v10, v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v10, v10, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-nez v10, :cond_4

    move-object v10, v11

    .line 295
    goto :goto_0

    .line 297
    :cond_4
    check-cast p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v10, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-object v7, v10

    check-cast v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 298
    .local v7, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    new-instance v8, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 299
    .restart local v8    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Lapg$a;->dt_schedule_space_file:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 300
    iget-object v10, v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 301
    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 302
    iget-object v10, v7, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 304
    :cond_5
    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 307
    .end local v7    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v8    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :sswitch_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Lapg$a;->dt_schedule_pic:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 309
    :sswitch_3
    instance-of v10, v1, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    if-nez v10, :cond_6

    move-object v10, v11

    .line 310
    goto/16 :goto_0

    :cond_6
    move-object v3, v1

    .line 312
    check-cast v3, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 313
    .local v3, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    new-instance v8, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 314
    .restart local v8    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Lapg$a;->dt_schedule_link:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 315
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 316
    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 317
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 319
    :cond_7
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 320
    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 321
    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->text()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 323
    :cond_8
    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .end local v3    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    .end local v8    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :sswitch_4
    move-object v10, p0

    .line 325
    check-cast v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v10, v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v10, v10, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    if-nez v10, :cond_9

    move-object v10, v11

    .line 326
    goto/16 :goto_0

    .line 328
    :cond_9
    check-cast p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v10, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    move-object v4, v10

    check-cast v4, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 329
    .local v4, "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    new-instance v8, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 330
    .restart local v8    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Lapg$a;->dt_schedule_mail:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 331
    iget-object v10, v4, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailTitle:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 332
    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 333
    iget-object v10, v4, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailTitle:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 335
    :cond_a
    iget-object v10, v4, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailContent:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 336
    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 337
    iget-object v10, v4, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailContent:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 339
    :cond_b
    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .end local v4    # "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    .end local v8    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :sswitch_5
    move-object v10, p0

    .line 342
    check-cast v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v10, v10, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v10, v10, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    if-nez v10, :cond_c

    move-object v10, v11

    .line 343
    goto/16 :goto_0

    .line 345
    :cond_c
    check-cast p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v10, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v10, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    move-object v5, v10

    check-cast v5, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;

    .line 346
    .local v5, "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    new-instance v8, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 347
    .restart local v8    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v10, v5, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->headerTitle:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 348
    const-string/jumbo v10, "["

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 349
    iget-object v10, v5, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->headerTitle:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 350
    const-string/jumbo v10, "]"

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 352
    :cond_d
    iget-object v10, v5, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyTitle:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 353
    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 354
    iget-object v10, v5, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyTitle:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 356
    :cond_e
    iget-object v10, v5, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyContent:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 357
    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 358
    iget-object v10, v5, Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;->bodyContent:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 360
    :cond_f
    invoke-virtual {v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 362
    .end local v5    # "oaDo":Lcom/alibaba/android/dingtalkbase/models/dos/oa/OADo;
    .end local v8    # "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :sswitch_6
    instance-of v10, v1, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    if-eqz v10, :cond_10

    move-object v9, v1

    .line 363
    check-cast v9, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .line 364
    .local v9, "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    invoke-interface {v9}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->getAtDisplayString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 368
    .end local v9    # "textContent":Lcom/alibaba/wukong/im/MessageContent$TextContent;
    :cond_10
    :sswitch_7
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v10

    sget v11, Lapg$a;->dt_schedule_audio:I

    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 370
    :sswitch_8
    check-cast p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local p0    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 371
    .local v6, "obj":Ljava/lang/Object;
    instance-of v10, v6, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    if-nez v10, :cond_11

    move-object v10, v11

    .line 372
    goto/16 :goto_0

    :cond_11
    move-object v0, v6

    .line 374
    check-cast v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    .line 375
    .local v0, "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    iget-object v10, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_12

    move-object v10, v11

    .line 376
    goto/16 :goto_0

    .line 378
    :cond_12
    iget-object v10, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    goto/16 :goto_0

    .line 380
    .end local v0    # "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    .end local v6    # "obj":Ljava/lang/Object;
    .restart local p0    # "message":Lcom/alibaba/wukong/im/Message;
    :sswitch_9
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_2
        0x3 -> :sswitch_7
        0x4 -> :sswitch_0
        0x66 -> :sswitch_3
        0xfb -> :sswitch_2
        0xfc -> :sswitch_7
        0x12c -> :sswitch_5
        0x12d -> :sswitch_5
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_1
        0x1f5 -> :sswitch_1
        0x2bc -> :sswitch_8
        0x4b0 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public getAllDay()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mAllDay:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mEnd:Ljava/lang/Long;

    return-object v0
.end method

.method public getExtension()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mExtension:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRemindMinutes()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mRemindMinutes:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRemindType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mRemindType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRepeat()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mRepeat:Ljava/lang/Integer;

    return-object v0
.end method

.method public getScheduleContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mScheduleContent:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mSource:I

    return v0
.end method

.method public getStart()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mStart:Ljava/lang/Long;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mType:I

    return v0
.end method

.method public setScheduleContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "scheduleContent"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alibaba/android/calendar/base/interfaces/ScheduleCreateModel;->mScheduleContent:Ljava/lang/String;

    .line 103
    return-void
.end method

.class public abstract Lagm;
.super Lagn;
.source "AbsEventOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lagn",
        "<",
        "Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lagm;-><init>(Z)V

    .line 28
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1
    .param p1, "isSync"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lagn;-><init>(Z)V

    .line 33
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v0

    .line 1277
    iget-object v0, v0, Lagj;->c:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;

    .line 33
    iput-object v0, p0, Lagm;->a:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;

    .line 34
    return-void
.end method

.method private b(Landroid/content/ContentValues;)Z
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 192
    const-string/jumbo v5, "rrule"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "rrule":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 195
    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "ruleList":[Ljava/lang/String;
    array-length v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v3, v5

    .line 197
    .local v1, "recur":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;-><init>()V

    .line 199
    .local v0, "er":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 201
    :catch_0
    move-exception v5

    const-string/jumbo v5, "AbsEventOperation"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Invalid recurrence rule: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {p1}, Lagm;->c(Landroid/content/ContentValues;)V

    .line 208
    .end local v0    # "er":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    .end local v1    # "recur":Ljava/lang/String;
    .end local v3    # "ruleList":[Ljava/lang/String;
    :goto_1
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static c(Landroid/content/ContentValues;)V
    .locals 3
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 212
    if-nez p0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v0, "bob":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "dtStart:       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "dtstart"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    const-string/jumbo v1, "\ndtEnd:         "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "dtend"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    const-string/jumbo v1, "\nall_day:       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "allDay"

    .line 220
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    const-string/jumbo v1, "\ntz:            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "eventTimezone"

    .line 222
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string/jumbo v1, "\ndur:           "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "duration"

    .line 224
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string/jumbo v1, "\nrrule:         "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "rrule"

    .line 226
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string/jumbo v1, "\nrdate:         "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "rdate"

    .line 228
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string/jumbo v1, "\nlast_date:     "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lastDate"

    .line 230
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    const-string/jumbo v1, "\nid:            "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_id"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    const-string/jumbo v1, "\nsync_id:       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_sync_id"

    .line 234
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string/jumbo v1, "\nori_id:        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "original_id"

    .line 236
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 235
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    const-string/jumbo v1, "\nori_sync_id:   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "original_sync_id"

    .line 238
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string/jumbo v1, "\nori_inst_time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "originalInstanceTime"

    .line 240
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    const-string/jumbo v1, "\nori_all_day:   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "originalAllDay"

    .line 242
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method


# virtual methods
.method protected final a(J)Ljava/lang/String;
    .locals 9
    .param p1, "calId"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 256
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_1

    .line 258
    const-string/jumbo v3, "AbsEventOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Calendar Id is not valid: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    :goto_0
    return-object v2

    .line 263
    :cond_1
    new-instance v1, Lcom/alibaba/alimei/orm/query/Select;

    const-class v3, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    .line 2064
    const-string/jumbo v4, "calendar.db"

    .line 263
    const-string/jumbo v5, "Calendars"

    invoke-direct {v1, v3, v4, v5}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .local v1, "select":Lcom/alibaba/alimei/orm/query/Select;
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "ownerAccount"

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 265
    const-string/jumbo v3, "_id=?"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-virtual {v1}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;

    .line 267
    .local v0, "account":Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;
    if-eqz v0, :cond_0

    .line 271
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/db/calendar/entry/Calendars;->ownerAccount:Ljava/lang/String;

    goto :goto_0
.end method

.method protected final a(Landroid/content/ContentValues;)V
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 142
    const-string/jumbo v7, "calendar_id"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Event values must include a calendar_id"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    :cond_0
    const-string/jumbo v7, "eventTimezone"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 147
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Event values must include an eventTimezone"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 151
    :cond_1
    const-string/jumbo v7, "dtstart"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_3

    move v1, v5

    .line 152
    .local v1, "hasDtstart":Z
    :goto_0
    const-string/jumbo v7, "dtend"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    if-eqz v7, :cond_4

    move v0, v5

    .line 153
    .local v0, "hasDtend":Z
    :goto_1
    const-string/jumbo v7, "duration"

    .line 154
    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 153
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    move v2, v5

    .line 155
    .local v2, "hasDuration":Z
    :goto_2
    const-string/jumbo v7, "rrule"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    move v4, v5

    .line 156
    .local v4, "hasRrule":Z
    :goto_3
    const-string/jumbo v7, "rdate"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    move v3, v5

    .line 157
    .local v3, "hasRdate":Z
    :goto_4
    if-nez v4, :cond_2

    if-eqz v3, :cond_8

    .line 158
    :cond_2
    invoke-direct {p0, p1}, Lagm;->b(Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 159
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Invalid recurrence rule: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "rrule"

    .line 160
    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v0    # "hasDtend":Z
    .end local v1    # "hasDtstart":Z
    .end local v2    # "hasDuration":Z
    .end local v3    # "hasRdate":Z
    .end local v4    # "hasRrule":Z
    :cond_3
    move v1, v6

    .line 151
    goto :goto_0

    .restart local v1    # "hasDtstart":Z
    :cond_4
    move v0, v6

    .line 152
    goto :goto_1

    .restart local v0    # "hasDtend":Z
    :cond_5
    move v2, v6

    .line 153
    goto :goto_2

    .restart local v2    # "hasDuration":Z
    :cond_6
    move v4, v6

    .line 155
    goto :goto_3

    .restart local v4    # "hasRrule":Z
    :cond_7
    move v3, v6

    .line 156
    goto :goto_4

    .line 164
    .restart local v3    # "hasRdate":Z
    :cond_8
    if-nez v1, :cond_9

    .line 165
    invoke-static {p1}, Lagm;->c(Landroid/content/ContentValues;)V

    .line 166
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "DTSTART cannot be empty."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 168
    :cond_9
    if-nez v2, :cond_a

    if-nez v0, :cond_a

    .line 169
    invoke-static {p1}, Lagm;->c(Landroid/content/ContentValues;)V

    .line 170
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "DTEND and DURATION cannot both be null for an event."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 173
    :cond_a
    if-eqz v2, :cond_b

    if-eqz v0, :cond_b

    .line 174
    const-string/jumbo v5, "dtend"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 175
    invoke-static {p1}, Lagm;->c(Landroid/content/ContentValues;)V

    .line 176
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Cannot have both DTEND and DURATION in an event"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 179
    :cond_b
    return-void
.end method

.method protected final a(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 10
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "modValues"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 49
    const-string/jumbo v8, "dtend"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_1

    move v0, v6

    .line 50
    .local v0, "hasDtend":Z
    :goto_0
    const-string/jumbo v8, "duration"

    .line 51
    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 50
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    move v1, v6

    .line 52
    .local v1, "hasDuration":Z
    :goto_1
    const-string/jumbo v8, "rrule"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    move v5, v6

    .line 53
    .local v5, "hasRrule":Z
    :goto_2
    const-string/jumbo v8, "rdate"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    move v4, v6

    .line 54
    .local v4, "hasRdate":Z
    :goto_3
    const-string/jumbo v8, "original_sync_id"

    .line 55
    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    move v2, v6

    .line 56
    .local v2, "hasOriginalEvent":Z
    :goto_4
    const-string/jumbo v8, "originalInstanceTime"

    .line 57
    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_6

    move v3, v6

    .line 58
    .local v3, "hasOriginalInstanceTime":Z
    :goto_5
    if-nez v5, :cond_0

    if-eqz v4, :cond_b

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lagm;->b(Landroid/content/ContentValues;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 69
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Invalid recurrence rule: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "rrule"

    .line 70
    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v0    # "hasDtend":Z
    .end local v1    # "hasDuration":Z
    .end local v2    # "hasOriginalEvent":Z
    .end local v3    # "hasOriginalInstanceTime":Z
    .end local v4    # "hasRdate":Z
    .end local v5    # "hasRrule":Z
    :cond_1
    move v0, v7

    .line 49
    goto :goto_0

    .restart local v0    # "hasDtend":Z
    :cond_2
    move v1, v7

    .line 50
    goto :goto_1

    .restart local v1    # "hasDuration":Z
    :cond_3
    move v5, v7

    .line 52
    goto :goto_2

    .restart local v5    # "hasRrule":Z
    :cond_4
    move v4, v7

    .line 53
    goto :goto_3

    .restart local v4    # "hasRdate":Z
    :cond_5
    move v2, v7

    .line 54
    goto :goto_4

    .restart local v2    # "hasOriginalEvent":Z
    :cond_6
    move v3, v7

    .line 57
    goto :goto_5

    .line 72
    .restart local v3    # "hasOriginalInstanceTime":Z
    :cond_7
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    if-nez v2, :cond_8

    if-eqz v3, :cond_a

    .line 76
    :cond_8
    const-string/jumbo v6, "AbsEventOperation"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Invalid values for recurrence: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    :cond_9
    const-string/jumbo v6, "dtend"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v6, "original_sync_id"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v6, "originalInstanceTime"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 82
    if-eqz p2, :cond_a

    .line 83
    const-string/jumbo v6, "dtend"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 84
    const-string/jumbo v6, "original_sync_id"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 85
    const-string/jumbo v6, "originalInstanceTime"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 130
    :cond_a
    :goto_6
    return-void

    .line 88
    :cond_b
    if-nez v2, :cond_c

    if-eqz v3, :cond_f

    .line 98
    :cond_c
    if-eqz v0, :cond_d

    if-nez v1, :cond_d

    if-eqz v2, :cond_d

    if-nez v3, :cond_a

    .line 101
    :cond_d
    const-string/jumbo v6, "AbsEventOperation"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Invalid values for recurrence exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    :cond_e
    const-string/jumbo v6, "duration"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 106
    if-eqz p2, :cond_a

    .line 107
    const-string/jumbo v6, "duration"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_6

    .line 119
    :cond_f
    if-eqz v0, :cond_10

    if-eqz v1, :cond_a

    .line 122
    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Invalid values for event: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo v6, "duration"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 125
    if-eqz p2, :cond_a

    .line 126
    const-string/jumbo v6, "duration"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_6
.end method

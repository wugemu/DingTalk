.class public final Lasc;
.super Lasw;
.source "CalendarObject.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Ljava/lang/String;

.field public e:J

.field public f:J

.field public g:I

.field public h:J

.field public i:I

.field public j:I

.field public k:I

.field public l:Z

.field public m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/lang/String;

.field public o:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lasw;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lasc;->l:Z

    return-void
.end method

.method public static a(Laqg;)Lasc;
    .locals 10
    .param p0, "calendarModel"    # Laqg;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 204
    if-nez p0, :cond_0

    .line 205
    const/4 v2, 0x0

    .line 239
    :goto_0
    return-object v2

    .line 207
    :cond_0
    new-instance v2, Lasc;

    invoke-direct {v2}, Lasc;-><init>()V

    .line 208
    .local v2, "calendarObject":Lasc;
    iget-object v4, p0, Laqg;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v4, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 208
    iput-wide v6, v2, Lasc;->p:J

    .line 209
    iget-object v4, p0, Laqg;->b:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 210
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lasc;->q:Ljava/util/List;

    .line 211
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Laqg;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 212
    iget-object v4, p0, Laqg;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqe;

    .line 213
    .local v0, "calendarEventModel":Laqe;
    if-eqz v0, :cond_1

    .line 216
    iget-object v6, p0, Laqg;->o:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-static {v6, v0, v4}, Lary;->a(Ljava/lang/String;Laqe;Z)Lary;

    move-result-object v1

    .line 217
    .local v1, "calendarEventObject":Lary;
    if-eqz v1, :cond_1

    .line 220
    iget-object v4, v2, Lasc;->q:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v1    # "calendarEventObject":Lary;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v4, v5

    .line 216
    goto :goto_2

    .line 223
    .end local v0    # "calendarEventModel":Laqe;
    .end local v3    # "i":I
    :cond_3
    iget-object v4, p0, Laqg;->c:Ljava/lang/Integer;

    .line 2033
    invoke-static {v4, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 223
    iput v4, v2, Lasc;->a:I

    .line 224
    iget-object v4, p0, Laqg;->d:Ljava/lang/Integer;

    .line 3033
    invoke-static {v4, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 224
    iput v4, v2, Lasc;->b:I

    .line 225
    iget-object v4, p0, Laqg;->e:Ljava/lang/Integer;

    .line 4033
    invoke-static {v4, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 225
    iput v4, v2, Lasc;->c:I

    .line 226
    iget-object v4, p0, Laqg;->f:Ljava/lang/String;

    iput-object v4, v2, Lasc;->d:Ljava/lang/String;

    .line 227
    iget-object v4, p0, Laqg;->g:Ljava/lang/Long;

    .line 4044
    invoke-static {v4, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 227
    iput-wide v6, v2, Lasc;->e:J

    .line 228
    iget-object v4, p0, Laqg;->h:Ljava/lang/Long;

    .line 5044
    invoke-static {v4, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 228
    iput-wide v6, v2, Lasc;->f:J

    .line 229
    iget-object v4, p0, Laqg;->i:Ljava/lang/Integer;

    .line 6033
    invoke-static {v4, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 229
    iput v4, v2, Lasc;->g:I

    .line 230
    iget-object v4, p0, Laqg;->k:Ljava/lang/Integer;

    .line 7033
    invoke-static {v4, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 230
    iput v4, v2, Lasc;->i:I

    .line 231
    iget-object v4, p0, Laqg;->l:Ljava/lang/Integer;

    .line 8033
    invoke-static {v4, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 231
    iput v4, v2, Lasc;->j:I

    .line 232
    iget-object v4, p0, Laqg;->j:Ljava/lang/Long;

    .line 8044
    invoke-static {v4, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 232
    iput-wide v6, v2, Lasc;->h:J

    .line 233
    iget-object v4, p0, Laqg;->m:Ljava/lang/Integer;

    .line 9033
    invoke-static {v4, v5}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 233
    iput v4, v2, Lasc;->k:I

    .line 234
    iput-boolean v5, v2, Lasc;->l:Z

    .line 235
    iget-object v4, p0, Laqg;->n:Ljava/util/Map;

    iput-object v4, v2, Lasc;->m:Ljava/util/Map;

    .line 236
    iget-object v4, p0, Laqg;->o:Ljava/lang/String;

    iput-object v4, v2, Lasc;->n:Ljava/lang/String;

    .line 237
    iget-object v4, p0, Laqg;->p:Ljava/lang/Long;

    .line 9044
    invoke-static {v4, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 237
    iput-wide v4, v2, Lasc;->o:J

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/android/calendar/db/entry/EntryEvent;)Lasc;
    .locals 6
    .param p0, "entryEvent"    # Lcom/alibaba/android/calendar/db/entry/EntryEvent;

    .prologue
    .line 246
    new-instance v0, Lasc;

    invoke-direct {v0}, Lasc;-><init>()V

    .line 248
    .local v0, "calendarObject":Lasc;
    iget-wide v4, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mCalendarId:J

    invoke-virtual {v0, v4, v5}, Lasc;->a(J)V

    .line 249
    iget v3, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mTypeVersion:I

    .line 9085
    iput v3, v0, Lasc;->a:I

    .line 250
    iget v3, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mSource:I

    .line 9089
    iput v3, v0, Lasc;->b:I

    .line 251
    iget v3, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mBizType:I

    .line 9093
    iput v3, v0, Lasc;->c:I

    .line 252
    iget-object v3, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mBizId:Ljava/lang/String;

    .line 9097
    iput-object v3, v0, Lasc;->d:Ljava/lang/String;

    .line 253
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Lasc;->a(Ljava/util/List;)V

    .line 254
    iget-boolean v3, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mHasExpand:Z

    .line 10037
    iput-boolean v3, v0, Lasw;->r:Z

    .line 255
    iget v3, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mStatus:I

    .line 10117
    iput v3, v0, Lasc;->i:I

    .line 256
    iget v3, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mSelfStatus:I

    .line 10125
    iput v3, v0, Lasc;->j:I

    .line 257
    iget-wide v4, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mSenderId:J

    .line 10133
    iput-wide v4, v0, Lasc;->h:J

    .line 258
    iget v3, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mRole:I

    .line 10141
    iput v3, v0, Lasc;->k:I

    .line 259
    iget-wide v4, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mVersion:J

    .line 11105
    iput-wide v4, v0, Lasc;->f:J

    .line 260
    iget-boolean v3, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mIsDeleted:Z

    .line 11159
    iput-boolean v3, v0, Lasc;->l:Z

    .line 262
    iget-object v3, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mExtension:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mExtension:Ljava/lang/String;

    new-instance v4, Lasc$1;

    invoke-direct {v4}, Lasc$1;-><init>()V

    invoke-virtual {v4}, Lasc$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v3, v4}, Lcor;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 11184
    .local v2, "jsonToMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object v2, v0, Lasc;->m:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v2    # "jsonToMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mFolderId:Ljava/lang/String;

    .line 11192
    iput-object v3, v0, Lasc;->n:Ljava/lang/String;

    .line 271
    iget-wide v4, p0, Lcom/alibaba/android/calendar/db/entry/EntryEvent;->mOwnerId:J

    .line 11200
    iput-wide v4, v0, Lasc;->o:J

    .line 272
    return-object v0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "[CalendarObject]parse extension failed"

    invoke-static {v3, v1}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lary;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0}, Lasc;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lasc;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lasc;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lary;

    if-nez v0, :cond_1

    .line 148
    :cond_0
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lasc;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lary;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 289
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "calendarId:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lasc;->p:J

    .line 290
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", calendarTypeVersion:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lasc;->a:I

    .line 291
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ", source:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lasc;->b:I

    .line 292
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, ", bizType:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lasc;->c:I

    .line 293
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, ", bizId:"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lasc;->d:Ljava/lang/String;

    .line 294
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, ", createdAt:"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-wide v2, p0, Lasc;->e:J

    .line 295
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, ", version:"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-wide v2, p0, Lasc;->f:J

    .line 296
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, ", recordStatus:"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget v2, p0, Lasc;->g:I

    .line 297
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, ", senderId:"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-wide v2, p0, Lasc;->h:J

    .line 298
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, ", status:"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    iget v2, p0, Lasc;->i:I

    .line 299
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, ", selfStatus:"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    iget v2, p0, Lasc;->j:I

    .line 300
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, ", role:"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    iget v2, p0, Lasc;->k:I

    .line 301
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, ", mFolderId:"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    iget-object v2, p0, Lasc;->n:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, ", ownerId:"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    iget-wide v2, p0, Lasc;->o:J

    .line 303
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 289
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

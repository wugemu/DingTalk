.class public Lcom/alibaba/alimei/sdk/model/EventInstanceModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "EventInstanceModel.java"

# interfaces
.implements Lyd;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventInstanceModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allDay:Z

.field public canOrganizerResponse:I

.field public color:I

.field public displayName:Ljava/lang/String;

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public folderServerId:Ljava/lang/String;

.field public guestsCanModify:Z

.field public hasAlarm:Z

.field public id:J

.field public isRepeating:Z

.field public isSystem:Z

.field public location:Ljava/lang/CharSequence;

.field public messageAccountId:J

.field public messageMailboxId:J

.field public messageServerId:Ljava/lang/String;

.field public messageThreadTopic:Ljava/lang/String;

.field public messageThreadTopicNumber:I

.field public messageType:I

.field public organizer:Ljava/lang/String;

.field public organizerName:Ljava/lang/String;

.field public owerAccount:Ljava/lang/String;

.field public parentCalendarId:J

.field public rrule:Ljava/lang/String;

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/EventInstanceModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 172
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 174
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->id:J

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->color:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->title:Ljava/lang/CharSequence;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->location:Ljava/lang/CharSequence;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->allDay:Z

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizerName:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizer:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->guestsCanModify:Z

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startDay:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endDay:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startTime:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endTime:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startMillis:J

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endMillis:J

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->hasAlarm:Z

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isRepeating:Z

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->rrule:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->selfAttendeeStatus:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->canOrganizerResponse:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->owerAccount:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageServerId:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageAccountId:J

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopic:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopicNumber:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageType:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->parentCalendarId:J

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v1, v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isSystem:Z

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->displayName:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->folderServerId:Ljava/lang/String;

    .line 204
    return-void

    :cond_0
    move v0, v2

    .line 179
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 182
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 189
    goto :goto_2

    :cond_3
    move v0, v2

    .line 190
    goto :goto_3

    :cond_4
    move v1, v2

    .line 201
    goto :goto_4
.end method

.method public constructor <init>(Lcom/alibaba/alimei/sdk/model/EventInstanceModel;)V
    .locals 0
    .param p1, "m"    # Lcom/alibaba/alimei/sdk/model/EventInstanceModel;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 207
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->copy(Lcom/alibaba/alimei/sdk/model/EventInstanceModel;)V

    .line 208
    return-void
.end method


# virtual methods
.method protected copy(Lcom/alibaba/alimei/sdk/model/EventInstanceModel;)V
    .locals 2
    .param p1, "instanceModel"    # Lcom/alibaba/alimei/sdk/model/EventInstanceModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 211
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->id:J

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->id:J

    .line 212
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->color:I

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->color:I

    .line 213
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->title:Ljava/lang/CharSequence;

    .line 214
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->location:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->location:Ljava/lang/CharSequence;

    .line 215
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->allDay:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->allDay:Z

    .line 216
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizer:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizer:Ljava/lang/String;

    .line 217
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizerName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizerName:Ljava/lang/String;

    .line 218
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->guestsCanModify:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->guestsCanModify:Z

    .line 219
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startDay:I

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startDay:I

    .line 220
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endDay:I

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endDay:I

    .line 221
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startTime:I

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startTime:I

    .line 222
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endTime:I

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endTime:I

    .line 223
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startMillis:J

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startMillis:J

    .line 224
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endMillis:J

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endMillis:J

    .line 225
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->hasAlarm:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->hasAlarm:Z

    .line 226
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isRepeating:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isRepeating:Z

    .line 227
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->rrule:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->rrule:Ljava/lang/String;

    .line 228
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->selfAttendeeStatus:I

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->selfAttendeeStatus:I

    .line 229
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->canOrganizerResponse:I

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->canOrganizerResponse:I

    .line 230
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->owerAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->owerAccount:Ljava/lang/String;

    .line 231
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageServerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageServerId:Ljava/lang/String;

    .line 232
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageAccountId:J

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageAccountId:J

    .line 233
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopic:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopic:Ljava/lang/String;

    .line 234
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopicNumber:I

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopicNumber:I

    .line 235
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageType:I

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageType:I

    .line 236
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->parentCalendarId:J

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->parentCalendarId:J

    .line 237
    iget-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isSystem:Z

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isSystem:Z

    .line 238
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->displayName:Ljava/lang/String;

    .line 239
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->folderServerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->folderServerId:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public final copyTo(Lcom/alibaba/alimei/sdk/model/EventInstanceModel;)V
    .locals 2
    .param p1, "dest"    # Lcom/alibaba/alimei/sdk/model/EventInstanceModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 302
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->id:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->id:J

    .line 303
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->title:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->title:Ljava/lang/CharSequence;

    .line 304
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->color:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->color:I

    .line 305
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->location:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->location:Ljava/lang/CharSequence;

    .line 306
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->allDay:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->allDay:Z

    .line 307
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startDay:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startDay:I

    .line 308
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endDay:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endDay:I

    .line 309
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startTime:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startTime:I

    .line 310
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endTime:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endTime:I

    .line 311
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startMillis:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startMillis:J

    .line 312
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endMillis:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endMillis:J

    .line 313
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->hasAlarm:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->hasAlarm:Z

    .line 314
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isRepeating:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isRepeating:Z

    .line 315
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->selfAttendeeStatus:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->selfAttendeeStatus:I

    .line 316
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizer:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizer:Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizerName:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizerName:Ljava/lang/String;

    .line 318
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->guestsCanModify:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->guestsCanModify:Z

    .line 319
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->canOrganizerResponse:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->canOrganizerResponse:I

    .line 320
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->owerAccount:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->owerAccount:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageServerId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageServerId:Ljava/lang/String;

    .line 322
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageAccountId:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageAccountId:J

    .line 323
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageAccountId:J

    iput-wide v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageAccountId:J

    .line 324
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopic:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopic:Ljava/lang/String;

    .line 325
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopicNumber:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopicNumber:I

    .line 326
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageType:I

    iput v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageType:I

    .line 327
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isSystem:Z

    iput-boolean v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isSystem:Z

    .line 328
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->displayName:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->displayName:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public drawAsAllday()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->allDay:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endMillis:J

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEventType()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageServerId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 338
    :goto_0
    return v0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizer:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->owerAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 338
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->id:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "EventInstance = [id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->location:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", allDay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->allDay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", organizer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", organizerName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", guestsCanModify = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->guestsCanModify:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startDay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endDay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rrule = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->rrule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", selfAttendeeStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->selfAttendeeStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ownerAccount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->owerAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", parentCalendarId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->parentCalendarId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isSystem = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isSystem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 244
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->id:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->title:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->location:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->allDay:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->organizer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->guestsCanModify:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->startMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 257
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->endMillis:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 258
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->hasAlarm:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isRepeating:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->rrule:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->selfAttendeeStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->canOrganizerResponse:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->owerAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageAccountId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 266
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageThreadTopicNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->messageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->parentCalendarId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 270
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->isSystem:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventInstanceModel;->folderServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    return-void

    :cond_0
    move v0, v2

    .line 248
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 251
    goto :goto_1

    :cond_2
    move v0, v2

    .line 258
    goto :goto_2

    :cond_3
    move v0, v2

    .line 259
    goto :goto_3

    :cond_4
    move v1, v2

    .line 270
    goto :goto_4
.end method

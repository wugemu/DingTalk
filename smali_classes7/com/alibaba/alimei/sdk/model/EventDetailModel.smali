.class public Lcom/alibaba/alimei/sdk/model/EventDetailModel;
.super Lcom/alibaba/alimei/framework/model/AbsBaseModel;
.source "EventDetailModel.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lyd;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/alimei/sdk/model/EventDetailModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELF_ATTENDEE_STATUS_ACCEPTED:I = 0x1

.field public static final SELF_ATTENDEE_STATUS_INIT:I = 0x0

.field public static final SELF_ATTENDEE_STATUS_INVITED:I = 0x3

.field public static final SELF_ATTENDEE_STATUS_REJECTED:I = 0x2

.field public static final SELF_ATTENDEE_STATUS_TENTATIVE:I = 0x4


# instance fields
.field public allDay:Z

.field public attachmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field public attendeeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttendeeModel;",
            ">;"
        }
    .end annotation
.end field

.field public calendarId:J

.field public calendarParentId:J

.field public canOrganizerResponse:I

.field public canSync:I

.field public color:I

.field public description:Ljava/lang/String;

.field public dtStart:J

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public folderServerId:Ljava/lang/String;

.field public guestsCanModify:Z

.field public hasAlarm:Z

.field public id:J

.field public isSystem:Z

.field public location:Ljava/lang/String;

.field public messageAccountId:J

.field public messageMailboxId:J

.field public messageServerId:Ljava/lang/String;

.field public messageThreadTopic:Ljava/lang/String;

.field public messageThreadTopicNumber:I

.field public messageType:I

.field public organizer:Ljava/lang/String;

.field public organizerName:Ljava/lang/String;

.field public originalId:J

.field public originalSyncId:Ljava/lang/String;

.field public owerAccount:Ljava/lang/String;

.field public reminderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/ReminderModel;",
            ">;"
        }
    .end annotation
.end field

.field public resourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field public rrule:Ljava/lang/String;

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public status:I

.field public syncId:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 318
    new-instance v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel$1;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/EventDetailModel$1;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 316
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/alibaba/alimei/framework/model/AbsBaseModel;-><init>()V

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->color:I

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->guestsCanModify:Z

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->dtStart:J

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startDay:I

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endDay:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startTime:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endTime:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->hasAlarm:Z

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->selfAttendeeStatus:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canOrganizerResponse:I

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalSyncId:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalId:J

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarId:J

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarParentId:J

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    .line 297
    const-class v0, Lcom/alibaba/alimei/sdk/model/AttendeeModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    .line 298
    const-class v0, Lcom/alibaba/alimei/sdk/model/ReminderModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    .line 299
    const-class v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attachmentList:Ljava/util/List;

    .line 300
    const-class v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->resourceList:Ljava/util/List;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageServerId:Ljava/lang/String;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageAccountId:J

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageMailboxId:J

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageThreadTopic:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageThreadTopicNumber:I

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageType:I

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->status:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canSync:I

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->getBooleanValue(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->isSystem:Z

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->folderServerId:Ljava/lang/String;

    .line 312
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/alimei/sdk/model/EventDetailModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static clone(Lcom/alibaba/alimei/sdk/model/EventDetailModel;)Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    .locals 6
    .param p0, "original"    # Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    .prologue
    const/4 v2, 0x0

    .line 343
    new-instance v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;-><init>()V

    .line 344
    .local v0, "clone":Lcom/alibaba/alimei/sdk/model/EventDetailModel;
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    .line 345
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    .line 346
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->color:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->color:I

    .line 347
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    :goto_1
    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    .line 348
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    :goto_2
    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    .line 349
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    .line 350
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v2

    :goto_3
    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    .line 351
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v2

    :goto_4
    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    .line 352
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->guestsCanModify:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->guestsCanModify:Z

    .line 353
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->dtStart:J

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->dtStart:J

    .line 354
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startDay:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startDay:I

    .line 355
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endDay:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endDay:I

    .line 356
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startTime:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startTime:I

    .line 357
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endTime:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endTime:I

    .line 358
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    .line 359
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->hasAlarm:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->hasAlarm:Z

    .line 360
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    .line 361
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v2

    :goto_5
    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    .line 362
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->selfAttendeeStatus:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->selfAttendeeStatus:I

    .line 363
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canOrganizerResponse:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canOrganizerResponse:I

    .line 364
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v2

    :goto_6
    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    .line 365
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalSyncId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v1, v2

    :goto_7
    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalSyncId:Ljava/lang/String;

    .line 366
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalId:J

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalId:J

    .line 367
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarId:J

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarId:J

    .line 368
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarParentId:J

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarParentId:J

    .line 369
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v2

    :goto_8
    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    .line 370
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v2

    :goto_9
    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    .line 371
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageServerId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v1, v2

    :goto_a
    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageServerId:Ljava/lang/String;

    .line 372
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageAccountId:J

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageAccountId:J

    .line 373
    iget-wide v4, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageMailboxId:J

    iput-wide v4, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageMailboxId:J

    .line 374
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageThreadTopic:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_b
    iput-object v2, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageThreadTopic:Ljava/lang/String;

    .line 375
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageThreadTopicNumber:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageThreadTopicNumber:I

    .line 376
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageType:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageType:I

    .line 377
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->status:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->status:I

    .line 378
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    .line 379
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    .line 380
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attachmentList:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attachmentList:Ljava/util/List;

    .line 381
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->resourceList:Ljava/util/List;

    iput-object v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->resourceList:Ljava/util/List;

    .line 382
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canSync:I

    iput v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canSync:I

    .line 383
    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->isSystem:Z

    iput-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->isSystem:Z

    .line 385
    return-object v0

    .line 345
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    :cond_1
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 348
    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 350
    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 351
    :cond_4
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 361
    :cond_5
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 364
    :cond_6
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 365
    :cond_7
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalSyncId:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 369
    :cond_8
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 370
    :cond_9
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 371
    :cond_a
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageServerId:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 374
    :cond_b
    new-instance v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageThreadTopic:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b
.end method


# virtual methods
.method public getId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 338
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isSelfStatusAccepted()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 393
    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->selfAttendeeStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelfStatusInit()Z
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->selfAttendeeStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelfStatusRejected()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 397
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->selfAttendeeStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelfStatusTentative()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 401
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->selfAttendeeStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "EventDetailModel = [id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", itemId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", organizer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", organizerName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", allDay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rrule = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", originalSyncId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalSyncId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", originalId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canSync = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canSync:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", selfAttendeeStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->selfAttendeeStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canOrganizerResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canOrganizerResponse:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 227
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->syncId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->allDay:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->organizerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->guestsCanModify:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->dtStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 236
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->startMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 241
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->endMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 242
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->hasAlarm:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->rrule:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->selfAttendeeStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canOrganizerResponse:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->owerAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalSyncId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->originalId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 249
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 250
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->calendarParentId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attendeeList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 253
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->reminderList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 254
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->attachmentList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 255
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->resourceList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 256
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->timezone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageAccountId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 259
    iget-wide v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageMailboxId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 260
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageThreadTopic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageThreadTopicNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->messageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->canSync:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget-boolean v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->isSystem:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->getIntValue(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v0, p0, Lcom/alibaba/alimei/sdk/model/EventDetailModel;->folderServerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    return-void
.end method

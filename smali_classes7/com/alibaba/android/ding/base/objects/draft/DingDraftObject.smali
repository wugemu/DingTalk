.class public Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;
.super Ljava/lang/Object;
.source "DingDraftObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private bizType:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "bizType"
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "content"
    .end annotation
.end field

.field private dingAttachmentDataList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "dingAttachmentDataList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;"
        }
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "location"
    .end annotation
.end field

.field private locationCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "locationCode"
    .end annotation
.end field

.field private locationOrgId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "locationOrgId"
    .end annotation
.end field

.field private mCycleRemindRuleObject:Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "cycleRemindRuleObject"
    .end annotation
.end field

.field private mDingContentAudio:Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "dingContentAudio"
    .end annotation
.end field

.field private mDingInWhisperMode:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "inWhisperMode"
    .end annotation
.end field

.field private mDingSendTime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "dingSendTime"
    .end annotation
.end field

.field private mRecorderId:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "recorderId"
    .end annotation
.end field

.field private mTaskDeadlineTime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "taskDeadlineTime"
    .end annotation
.end field

.field private mTaskRemind:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "taskRemind"
    .end annotation
.end field

.field private mTaskRemindType:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "taskRemindType"
    .end annotation
.end field

.field private meetingEndTime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "meetingEndTime"
    .end annotation
.end field

.field private meetingRemindMinutes:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "meetingRemindMinutes"
    .end annotation
.end field

.field private meetingRemindMinutesType:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "meetingRemindMinutesType"
    .end annotation
.end field

.field private meetingStartTime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "meetingStartTime"
    .end annotation
.end field

.field private receiveUidList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "receiveUidList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sendType:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sendType"
    .end annotation
.end field

.field private subBizType:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "subBizType"
    .end annotation
.end field

.field private taskCCUserList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "taskCCUserList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private taskEndTime:J
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "taskEndTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 58
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->sendType:I

    .line 90
    sget-object v0, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->APP:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    .line 91
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->getValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->meetingRemindMinutesType:I

    .line 90
    return-void
.end method


# virtual methods
.method public getBizType()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->bizType:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCycleRemindRuleObject()Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mCycleRemindRuleObject:Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    return-object v0
.end method

.method public getDingAttachmentDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->dingAttachmentDataList:Ljava/util/List;

    return-object v0
.end method

.method public getDingContentAudio()Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mDingContentAudio:Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    return-object v0
.end method

.method public getDingSendTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mDingSendTime:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->locationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationOrgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->locationOrgId:Ljava/lang/String;

    return-object v0
.end method

.method public getMeetingEndTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->meetingEndTime:J

    return-wide v0
.end method

.method public getMeetingRemindMinutes()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->meetingRemindMinutes:I

    return v0
.end method

.method public getMeetingRemindMinutesType()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->meetingRemindMinutesType:I

    return v0
.end method

.method public getMeetingRemindMinutesTypeEnum()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .prologue
    .line 242
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->meetingRemindMinutesType:I

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->fromValue(I)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public getMeetingStartTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->meetingStartTime:J

    return-wide v0
.end method

.method public getReceiveUidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->receiveUidList:Ljava/util/List;

    return-object v0
.end method

.method public getRecorderId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mRecorderId:J

    return-wide v0
.end method

.method public getSendType()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->sendType:I

    return v0
.end method

.method public getSendTypeEnum()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .prologue
    .line 237
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->sendType:I

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->fromValue(I)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public getSubBizType()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->subBizType:I

    return v0
.end method

.method public getTaskCCUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->taskCCUserList:Ljava/util/List;

    return-object v0
.end method

.method public getTaskDeadlineTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mTaskDeadlineTime:J

    return-wide v0
.end method

.method public getTaskEndTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->taskEndTime:J

    return-wide v0
.end method

.method public getTaskRemind()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mTaskRemind:J

    return-wide v0
.end method

.method public getTaskRemindEnum()Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;
    .locals 2
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mTaskRemind:J

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;->fromValue(J)Lcom/alibaba/android/ding/base/interfaces/DingConstants$DEADLINE_REMIND_TYPE;

    move-result-object v0

    return-object v0
.end method

.method public getTaskRemindType()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mTaskRemindType:I

    return v0
.end method

.method public getTaskRemindTypeEnum()Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;
    .locals 1
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        serialize = false
    .end annotation

    .prologue
    .line 292
    iget v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mTaskRemindType:I

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;->fromValue(I)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$DING_REMIND_TYPE_ENUM;

    move-result-object v0

    return-object v0
.end method

.method public isDingInWhisperMode()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mDingInWhisperMode:Z

    return v0
.end method

.method public setBizType(I)V
    .locals 0
    .param p1, "bizType"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->bizType:I

    .line 169
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->content:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setCycleRemindRuleObject(Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;)V
    .locals 0
    .param p1, "cycleRemindRuleObject"    # Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mCycleRemindRuleObject:Lcom/alibaba/android/ding/base/objects/CycleRemindRuleObject;

    .line 309
    return-void
.end method

.method public setDingAttachmentDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "dingAttachmentDataList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->dingAttachmentDataList:Ljava/util/List;

    .line 233
    return-void
.end method

.method public setDingContentAudio(Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;)V
    .locals 0
    .param p1, "dingContentAudio"    # Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mDingContentAudio:Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    .line 301
    return-void
.end method

.method public setDingInWhisperMode(Z)V
    .locals 0
    .param p1, "dingInWhisperMode"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mDingInWhisperMode:Z

    .line 255
    return-void
.end method

.method public setDingSendTime(J)V
    .locals 1
    .param p1, "dingSendTime"    # J

    .prologue
    .line 250
    iput-wide p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mDingSendTime:J

    .line 251
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->location:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setLocationCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "locationCode"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->locationCode:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setLocationOrgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "locationOrgId"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->locationOrgId:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setMeetingEndTime(J)V
    .locals 1
    .param p1, "meetingEndTime"    # J

    .prologue
    .line 216
    iput-wide p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->meetingEndTime:J

    .line 217
    return-void
.end method

.method public setMeetingRemindMinutes(I)V
    .locals 0
    .param p1, "meetingRemindMinutes"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->meetingRemindMinutes:I

    .line 225
    return-void
.end method

.method public setMeetingRemindMinutesType(I)V
    .locals 0
    .param p1, "meetingRemindMinutesType"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->meetingRemindMinutesType:I

    .line 229
    return-void
.end method

.method public setMeetingStartTime(J)V
    .locals 1
    .param p1, "meetingStartTime"    # J

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->meetingStartTime:J

    .line 213
    return-void
.end method

.method public setReceiveUidList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "receiveUidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->receiveUidList:Ljava/util/List;

    .line 181
    return-void
.end method

.method public setRecorderId(J)V
    .locals 1
    .param p1, "recorderId"    # J

    .prologue
    .line 312
    iput-wide p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mRecorderId:J

    .line 313
    return-void
.end method

.method public setSendType(I)V
    .locals 0
    .param p1, "sendType"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->sendType:I

    .line 221
    return-void
.end method

.method public setSubBizType(I)V
    .locals 0
    .param p1, "subBizType"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->subBizType:I

    .line 173
    return-void
.end method

.method public setTaskCCUserList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "taskCCUserList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->taskCCUserList:Ljava/util/List;

    .line 185
    return-void
.end method

.method public setTaskDeadlineTime(J)V
    .locals 1
    .param p1, "taskDeadlineTime"    # J

    .prologue
    .line 266
    iput-wide p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mTaskDeadlineTime:J

    .line 267
    return-void
.end method

.method public setTaskEndTime(J)V
    .locals 1
    .param p1, "taskEndTime"    # J

    .prologue
    .line 208
    iput-wide p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->taskEndTime:J

    .line 209
    return-void
.end method

.method public setTaskRemind(J)V
    .locals 1
    .param p1, "taskRemind"    # J

    .prologue
    .line 274
    iput-wide p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mTaskRemind:J

    .line 275
    return-void
.end method

.method public setTaskRemindType(I)V
    .locals 0
    .param p1, "taskRemindType"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;->mTaskRemindType:I

    .line 288
    return-void
.end method

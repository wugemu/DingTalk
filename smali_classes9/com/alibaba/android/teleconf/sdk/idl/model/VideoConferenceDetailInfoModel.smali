.class public final Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;
.super Ljava/lang/Object;
.source "VideoConferenceDetailInfoModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public acceptCalleeIds:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xb
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

.field public apmtStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
    .end annotation
.end field

.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1a
    .end annotation
.end field

.field public appointId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xa
    .end annotation
.end field

.field public bizType:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x21
    .end annotation
.end field

.field public calleeIds:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x12
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

.field public calleeNicks:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public calleesStatus:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public callerId:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public callerNick:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public confCameraStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x16
    .end annotation
.end field

.field public confDuration:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
    .end annotation
.end field

.field public confInProcessing:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1e
    .end annotation
.end field

.field public confMicStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x17
    .end annotation
.end field

.field public conferenceId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x8
    .end annotation
.end field

.field public conferenceKey:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x9
    .end annotation
.end field

.field public conferenceNonce:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x18
    .end annotation
.end field

.field public conferenceTimestamp:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x19
    .end annotation
.end field

.field public enableDing:Ljava/lang/Boolean;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x11
    .end annotation
.end field

.field public extInfo:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x22
    .end annotation
.end field

.field public gslbs:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public memberJoinStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1f
    .end annotation
.end field

.field public memberJoinStatusDesc:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x20
    .end annotation
.end field

.field public newjoinCalleeIds:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xf
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

.field public operateTime:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x10
    .end annotation
.end field

.field public predDuration:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public rejectCalleeIds:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xc
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

.field public sessionId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1c
    .end annotation
.end field

.field public startTime:Ljava/lang/Long;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public talkingCalleeIds:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xe
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

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
    .end annotation
.end field

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1b
    .end annotation
.end field

.field public unreadCalleeIds:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0xd
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

.field public vconfType:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x14
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final decode(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 115
    packed-switch p1, :pswitch_data_0

    .line 221
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 117
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->callerId:Ljava/lang/Long;

    goto :goto_0

    .line 120
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->callerNick:Ljava/lang/String;

    goto :goto_0

    .line 123
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->title:Ljava/lang/String;

    goto :goto_0

    .line 126
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->startTime:Ljava/lang/Long;

    goto :goto_0

    .line 129
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->predDuration:Ljava/lang/Long;

    goto :goto_0

    .line 132
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->confDuration:Ljava/lang/Long;

    goto :goto_0

    .line 135
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->apmtStatus:Ljava/lang/Integer;

    goto :goto_0

    .line 138
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_7
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->conferenceId:Ljava/lang/String;

    goto :goto_0

    .line 141
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_8
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->conferenceKey:Ljava/lang/String;

    goto :goto_0

    .line 144
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_9
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->appointId:Ljava/lang/String;

    goto :goto_0

    .line 147
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_a
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->acceptCalleeIds:Ljava/util/List;

    goto :goto_0

    .line 150
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_b
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->rejectCalleeIds:Ljava/util/List;

    goto :goto_0

    .line 153
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_c
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->unreadCalleeIds:Ljava/util/List;

    goto :goto_0

    .line 156
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_d
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->talkingCalleeIds:Ljava/util/List;

    goto :goto_0

    .line 159
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_e
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->newjoinCalleeIds:Ljava/util/List;

    goto :goto_0

    .line 162
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->operateTime:Ljava/lang/Long;

    goto :goto_0

    .line 165
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_10
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->enableDing:Ljava/lang/Boolean;

    goto :goto_0

    .line 168
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_11
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeIds:Ljava/util/List;

    goto :goto_0

    .line 171
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_12
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleeNicks:Ljava/util/List;

    goto/16 :goto_0

    .line 174
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_13
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->vconfType:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 177
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_14
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->calleesStatus:Ljava/util/List;

    goto/16 :goto_0

    .line 180
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_15
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->confCameraStatus:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 183
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_16
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->confMicStatus:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 186
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_17
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->conferenceNonce:Ljava/lang/String;

    goto/16 :goto_0

    .line 189
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_18
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->conferenceTimestamp:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 192
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_19
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->appId:Ljava/lang/String;

    goto/16 :goto_0

    .line 195
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1a
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->token:Ljava/lang/String;

    goto/16 :goto_0

    .line 198
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1b
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->sessionId:Ljava/lang/String;

    goto/16 :goto_0

    .line 201
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1c
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->gslbs:Ljava/util/List;

    goto/16 :goto_0

    .line 204
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1d
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->confInProcessing:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 207
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1e
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->memberJoinStatus:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 210
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1f
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->memberJoinStatusDesc:Ljava/lang/String;

    goto/16 :goto_0

    .line 213
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_20
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->bizType:Ljava/lang/String;

    goto/16 :goto_0

    .line 216
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_21
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceDetailInfoModel;->extInfo:Ljava/lang/String;

    goto/16 :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
    .end packed-switch
.end method

.class public final Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;
.super Ljava/lang/Object;
.source "VideoConferenceCreateResultModel.java"

# interfaces
.implements Liyn;


# instance fields
.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x1
    .end annotation
.end field

.field public conferenceId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x2
    .end annotation
.end field

.field public conferenceNonce:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x4
    .end annotation
.end field

.field public conferenceTimestamp:Ljava/lang/Integer;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x5
    .end annotation
.end field

.field public gslbs:Ljava/util/List;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x7
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

.field public sessionId:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x6
    .end annotation
.end field

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/laiwang/idl/FieldId;
        value = 0x3
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
    .line 34
    packed-switch p1, :pswitch_data_0

    .line 59
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 36
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->appId:Ljava/lang/String;

    goto :goto_0

    .line 39
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->conferenceId:Ljava/lang/String;

    goto :goto_0

    .line 42
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->token:Ljava/lang/String;

    goto :goto_0

    .line 45
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->conferenceNonce:Ljava/lang/String;

    goto :goto_0

    .line 48
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->conferenceTimestamp:Ljava/lang/Integer;

    goto :goto_0

    .line 51
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->sessionId:Ljava/lang/String;

    goto :goto_0

    .line 54
    .restart local p2    # "value":Ljava/lang/Object;
    :pswitch_6
    check-cast p2, Ljava/util/List;

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lcom/alibaba/android/teleconf/sdk/idl/model/VideoConferenceCreateResultModel;->gslbs:Ljava/util/List;

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
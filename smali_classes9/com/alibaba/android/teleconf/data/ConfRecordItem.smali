.class public Lcom/alibaba/android/teleconf/data/ConfRecordItem;
.super Ljava/lang/Object;
.source "ConfRecordItem.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CALLTYPE_BIZ:I = 0x6

.field public static final CALLTYPE_MULTI:I = 0x1

.field public static final CALLTYPE_SINGLE:I = 0x0

.field public static final CALLTYPE_SYS_CALL:I = 0x7

.field public static final CALLTYPE_VIDEO_MULTI:I = 0x5

.field public static final CALLTYPE_VIDEO_SINGLE:I = 0x4

.field public static final CALLTYPE_VOIP:I = 0x2

.field public static final CALLTYPE_VOIP_MULTI:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/teleconf/data/ConfRecordItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_AVATAR_MEDIA_ID:Ljava/lang/String; = "avatarMediaId"

.field private static final KEY_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field private static final KEY_CALLER_ID:Ljava/lang/String; = "callerId"

.field private static final KEY_CALLER_NUM:Ljava/lang/String; = "callerNumber"

.field private static final KEY_CALL_TYPE:Ljava/lang/String; = "callType"

.field private static final KEY_DING_ID:Ljava/lang/String; = "dingId"

.field private static final KEY_DING_SIM_CARD:Ljava/lang/String; = "dingSIMCard"

.field private static final KEY_IS_COLLEAGUE:Ljava/lang/String; = "isColleague"

.field private static final KEY_IS_EXTERNAL:Ljava/lang/String; = "isExternal"

.field private static final KEY_IS_FIX_LINE:Ljava/lang/String; = "isCallerFixline"

.field private static final KEY_IS_VIP:Ljava/lang/String; = "isYourVIP"

.field private static final KEY_LAST_TIME:Ljava/lang/String; = "lastTime"

.field private static final KEY_ORG_ID:Ljava/lang/String; = "orgId"

.field private static final KEY_RECORD_ID:Ljava/lang/String; = "recordId"

.field private static final KEY_SESSION_ID:Ljava/lang/String; = "sessionId"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_TARGET_NICKS:Ljava/lang/String; = "targetNicks"

.field private static final KEY_TARGET_NUMBER:Ljava/lang/String; = "targetNumber"

.field private static final KEY_TARGET_TITLE:Ljava/lang/String; = "targetTitle"

.field private static final KEY_TARGET_UIDS:Ljava/lang/String; = "targetUids"

.field public static final STATUS_CONNECTED:I = 0x1

.field public static final STATUS_DISCONNECTED:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public beginTime:J

.field public callSessionId:Ljava/lang/String;

.field public callType:I

.field public callerId:J

.field public callerNumber:Ljava/lang/String;

.field public dingId:Ljava/lang/String;

.field private dingSimCard:I

.field public isCanShowAddExternal:Z

.field public isColleague:Ljava/lang/Boolean;

.field public isExternal:Ljava/lang/Boolean;

.field public isFixLine:Z

.field public isOutgoing:Z

.field public isSelfCanVisitExternal:Z

.field public isSystemCallLog:Z

.field public isUserActive:Ljava/lang/Boolean;

.field public isValid:Z

.field public isYourVIP:Z

.field public lastTime:J

.field public msgId:J

.field public noAnswerCount:I

.field public orgId:J

.field public phoneNum:Ljava/lang/String;

.field public recordId:J

.field public recordKey:Ljava/lang/String;

.field public recordStatus:I

.field public targetMediaId:Ljava/lang/String;

.field public targetNicks:Ljava/lang/String;

.field public targetNumber:Ljava/lang/String;

.field public targetTitle:Ljava/lang/String;

.field public targetUids:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->TAG:Ljava/lang/String;

    .line 453
    new-instance v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem$1;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v7, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isValid:Z

    .line 94
    iput-boolean v6, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSelfCanVisitExternal:Z

    .line 95
    iput-boolean v6, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isCanShowAddExternal:Z

    .line 112
    const/16 v4, 0xa

    new-array v3, v4, [Ljava/lang/String;

    .line 113
    .local v3, "s":[Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 114
    aget-object v4, v3, v6

    iput-object v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    .line 115
    aget-object v4, v3, v7

    iput-object v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    .line 116
    aget-object v4, v3, v8

    iput-object v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNumber:Ljava/lang/String;

    .line 117
    aget-object v4, v3, v9

    iput-object v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetTitle:Ljava/lang/String;

    .line 118
    aget-object v4, v3, v10

    iput-object v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    .line 119
    const/4 v4, 0x5

    aget-object v4, v3, v4

    iput-object v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callSessionId:Ljava/lang/String;

    .line 120
    const/4 v4, 0x6

    aget-object v4, v3, v4

    iput-object v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->dingId:Ljava/lang/String;

    .line 121
    const/4 v4, 0x7

    aget-object v4, v3, v4

    iput-object v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->phoneNum:Ljava/lang/String;

    .line 122
    const/16 v4, 0x8

    aget-object v4, v3, v4

    iput-object v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerNumber:Ljava/lang/String;

    .line 123
    const/16 v4, 0x9

    aget-object v4, v3, v4

    iput-object v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetMediaId:Ljava/lang/String;

    .line 125
    new-array v1, v10, [I

    .line 126
    .local v1, "ints":[I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 127
    aget v4, v1, v6

    iput v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    .line 128
    aget v4, v1, v7

    iput v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordStatus:I

    .line 129
    aget v4, v1, v8

    iput v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    .line 130
    aget v4, v1, v9

    iput v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->dingSimCard:I

    .line 132
    const/4 v4, 0x5

    new-array v2, v4, [J

    .line 133
    .local v2, "longs":[J
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readLongArray([J)V

    .line 134
    aget-wide v4, v2, v6

    iput-wide v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerId:J

    .line 135
    aget-wide v4, v2, v7

    iput-wide v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    .line 136
    aget-wide v4, v2, v8

    iput-wide v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->lastTime:J

    .line 137
    aget-wide v4, v2, v9

    iput-wide v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->msgId:J

    .line 138
    aget-wide v4, v2, v10

    iput-wide v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->orgId:J

    .line 140
    const/16 v4, 0x9

    new-array v0, v4, [Z

    .line 141
    .local v0, "booleans":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 142
    aget-boolean v4, v0, v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isUserActive:Ljava/lang/Boolean;

    .line 143
    aget-boolean v4, v0, v7

    iput-boolean v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isValid:Z

    .line 144
    aget-boolean v4, v0, v8

    iput-boolean v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isFixLine:Z

    .line 145
    aget-boolean v4, v0, v9

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isExternal:Ljava/lang/Boolean;

    .line 146
    aget-boolean v4, v0, v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isColleague:Ljava/lang/Boolean;

    .line 147
    const/4 v4, 0x5

    aget-boolean v4, v0, v4

    iput-boolean v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSelfCanVisitExternal:Z

    .line 148
    const/4 v4, 0x6

    aget-boolean v4, v0, v4

    iput-boolean v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSystemCallLog:Z

    .line 149
    const/4 v4, 0x7

    aget-boolean v4, v0, v4

    iput-boolean v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOutgoing:Z

    .line 150
    const/16 v4, 0x8

    aget-boolean v4, v0, v4

    iput-boolean v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isYourVIP:Z

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;)V
    .locals 4
    .param p1, "recordItem"    # Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v3, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isValid:Z

    .line 94
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSelfCanVisitExternal:Z

    .line 95
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isCanShowAddExternal:Z

    .line 164
    if-eqz p1, :cond_0

    .line 165
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "v_"

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    aput-object v1, v0, v3

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callSessionId:Ljava/lang/String;

    .line 168
    iget-wide v0, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->j:J

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerId:J

    .line 169
    iget-wide v0, p1, Lcom/alibaba/android/teleconf/data/ApmtConfRecordItem;->n:J

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    .line 170
    iput v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    .line 172
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/wukong/im/Message;)V
    .locals 7
    .param p1, "msg"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v6, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isValid:Z

    .line 94
    iput-boolean v5, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSelfCanVisitExternal:Z

    .line 95
    iput-boolean v5, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isCanShowAddExternal:Z

    .line 102
    if-eqz p1, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->fromJson(Lcom/alibaba/wukong/im/Message;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ConfRecordItem, fromJson "

    aput-object v4, v3, v5

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJ)V
    .locals 2
    .param p1, "nicks"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "status"    # I
    .param p6, "beginTime"    # J
    .param p8, "lastTime"    # J

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isValid:Z

    .line 94
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSelfCanVisitExternal:Z

    .line 95
    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isCanShowAddExternal:Z

    .line 154
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetTitle:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->phoneNum:Ljava/lang/String;

    .line 157
    iput p4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    .line 158
    iput p5, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordStatus:I

    .line 159
    iput-wide p6, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    .line 160
    iput-wide p8, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->lastTime:J

    .line 161
    return-void
.end method

.method private convertNick()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 259
    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 260
    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    const-string/jumbo v4, "\u3001"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "tokens":[Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 263
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 264
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Leuj$l;->caller:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u3001"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 265
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 266
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    .line 267
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 265
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_0
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u3001"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 272
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    .line 275
    .end local v0    # "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v1    # "i":I
    .end local v2    # "tokens":[Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method protected fromJson(Lcom/alibaba/wukong/im/Message;)V
    .locals 3
    .param p1, "msg"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 175
    const-string/jumbo v0, "recordId"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const-string/jumbo v0, "recordId"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordId:J

    .line 178
    :cond_0
    const-string/jumbo v0, "targetNicks"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    const-string/jumbo v0, "targetNicks"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    .line 181
    :cond_1
    const-string/jumbo v0, "targetUids"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    const-string/jumbo v0, "targetUids"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    .line 184
    :cond_2
    const-string/jumbo v0, "targetNumber"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    const-string/jumbo v0, "targetNumber"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNumber:Ljava/lang/String;

    .line 187
    :cond_3
    const-string/jumbo v0, "targetTitle"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 188
    const-string/jumbo v0, "targetTitle"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetTitle:Ljava/lang/String;

    .line 190
    :cond_4
    const-string/jumbo v0, "callType"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 191
    const-string/jumbo v0, "callType"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    .line 193
    :cond_5
    const-string/jumbo v0, "callerId"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 194
    const-string/jumbo v0, "callerId"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerId:J

    .line 196
    :cond_6
    const-string/jumbo v0, "status"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 197
    const-string/jumbo v0, "status"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordStatus:I

    .line 199
    :cond_7
    const-string/jumbo v0, "beginTime"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 200
    const-string/jumbo v0, "beginTime"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    .line 202
    :cond_8
    const-string/jumbo v0, "lastTime"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 203
    const-string/jumbo v0, "lastTime"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->lastTime:J

    .line 205
    :cond_9
    const-string/jumbo v0, "sessionId"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 206
    const-string/jumbo v0, "sessionId"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callSessionId:Ljava/lang/String;

    .line 208
    :cond_a
    const-string/jumbo v0, "dingId"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 209
    const-string/jumbo v0, "dingId"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->dingId:Ljava/lang/String;

    .line 211
    :cond_b
    const-string/jumbo v0, "avatarMediaId"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 212
    const-string/jumbo v0, "avatarMediaId"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetMediaId:Ljava/lang/String;

    .line 215
    :cond_c
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    .line 216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 217
    :cond_d
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isValid:Z

    .line 222
    :goto_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->msgId:J

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isUserActive:Ljava/lang/Boolean;

    .line 224
    iput v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    .line 225
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    .line 227
    const-string/jumbo v0, "orgId"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 228
    const-string/jumbo v0, "orgId"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->orgId:J

    .line 233
    :cond_e
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->phoneNum:Ljava/lang/String;

    .line 234
    const-string/jumbo v0, "callerNumber"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 235
    const-string/jumbo v0, "callerNumber"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerNumber:Ljava/lang/String;

    .line 237
    :cond_f
    const-string/jumbo v0, "isCallerFixline"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 238
    const-string/jumbo v0, "isCallerFixline"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isFixLine:Z

    .line 242
    :goto_1
    const-string/jumbo v0, "isExternal"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 243
    const-string/jumbo v0, "isExternal"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isExternal:Ljava/lang/Boolean;

    .line 245
    :cond_10
    const-string/jumbo v0, "isColleague"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 246
    const-string/jumbo v0, "isColleague"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isColleague:Ljava/lang/Boolean;

    .line 249
    :cond_11
    const-string/jumbo v0, "dingSIMCard"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 250
    const-string/jumbo v0, "dingSIMCard"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->dingSimCard:I

    .line 253
    :cond_12
    const-string/jumbo v0, "isYourVIP"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 254
    const-string/jumbo v0, "isYourVIP"

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isYourVIP:Z

    .line 256
    :cond_13
    return-void

    .line 219
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isValid:Z

    goto/16 :goto_0

    .line 240
    :cond_15
    iput-boolean v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isFixLine:Z

    goto :goto_1
.end method

.method public getOrgCorpId()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "corpId":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 320
    .local v1, "currUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 321
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 322
    .local v2, "employee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v4, :cond_0

    .line 325
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    iget-wide v6, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->orgId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 326
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->corpId:Ljava/lang/String;

    .line 331
    .end local v2    # "employee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_1
    return-object v0
.end method

.method public isBizCall()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 291
    iget v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCanShowAddExternal()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isCanShowAddExternal:Z

    return v0
.end method

.method public isColleague()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isColleague:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isColleague:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDingSimCard()Z
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->dingSimCard:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExternal()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isExternal:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isExternal:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFixLine()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isFixLine:Z

    return v0
.end method

.method public isMissedVoIPCall()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 416
    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordStatus:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerId:J

    .line 418
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiUserCall()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 397
    iget v1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    iget v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x3

    iget v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOrgIdValid()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 303
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 304
    .local v2, "userProfileExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz v2, :cond_1

    .line 305
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 306
    .local v1, "orgEmployeeExtensionObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    if-eqz v1, :cond_1

    .line 307
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 308
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v6, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->orgId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 309
    const/4 v3, 0x1

    .line 314
    .end local v0    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v1    # "orgEmployeeExtensionObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isOrgOpenExternalFunction()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v6, 0x5209

    .line 340
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v0

    .line 341
    .local v0, "mainOrg":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 342
    .local v2, "mainOrgId":J
    :goto_0
    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    iget-wide v4, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->orgId:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 341
    .end local v2    # "mainOrgId":J
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 342
    .restart local v2    # "mainOrgId":J
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isOutgoing()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOutgoing:Z

    return v0
.end method

.method public isPhoneNumExist()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->phoneNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelfCanVisitExternal()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSelfCanVisitExternal:Z

    return v0
.end method

.method public isShowAddExternalContact()Z
    .locals 1

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isBizCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOrgIdValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOrgOpenExternalFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isPhoneNumExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isColleague()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isExternal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowPotentialCustomer()Z
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isBizCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isColleague()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOrgOpenExternalFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isFixLine:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowWriteVisitRecord()Z
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isBizCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOrgIdValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOrgOpenExternalFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isColleague()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSelfCanVisitExternal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSingleUserCall()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 403
    iget v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x6

    iget v1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x7

    iget v1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemCall()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 393
    iget v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemCallLog()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSystemCallLog:Z

    return v0
.end method

.method public isToday()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 282
    iget-wide v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Leyr;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "date":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$l;->calendar_today:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUserActive()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isUserActive:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isUserActive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideoUserCall()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 411
    const/4 v0, 0x5

    iget v1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOutgoing(Z)V
    .locals 0
    .param p1, "outgoing"    # Z

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOutgoing:Z

    .line 386
    return-void
.end method

.method public setRecordKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "recordKey"    # Ljava/lang/String;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    .line 390
    return-void
.end method

.method public setSystemCallLog(Z)V
    .locals 0
    .param p1, "systemCallLog"    # Z

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSystemCallLog:Z

    .line 378
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 428
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNumber:Ljava/lang/String;

    aput-object v2, v0, v5

    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetTitle:Ljava/lang/String;

    aput-object v2, v0, v6

    iget-object v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    aput-object v2, v0, v7

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callSessionId:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->dingId:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->phoneNum:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerNumber:Ljava/lang/String;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetMediaId:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 439
    new-array v0, v7, [I

    iget v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    aput v2, v0, v1

    iget v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordStatus:I

    aput v2, v0, v4

    iget v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->noAnswerCount:I

    aput v2, v0, v5

    iget v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->dingSimCard:I

    aput v2, v0, v6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 440
    const/4 v0, 0x5

    new-array v0, v0, [J

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerId:J

    aput-wide v2, v0, v1

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    aput-wide v2, v0, v4

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->lastTime:J

    aput-wide v2, v0, v5

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->msgId:J

    aput-wide v2, v0, v6

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->orgId:J

    aput-wide v2, v0, v7

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 441
    const/16 v0, 0x9

    new-array v2, v0, [Z

    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isUserActive:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    aput-boolean v0, v2, v1

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isValid:Z

    aput-boolean v0, v2, v4

    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isFixLine:Z

    aput-boolean v0, v2, v5

    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isExternal:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    move v0, v1

    .line 444
    :goto_1
    aput-boolean v0, v2, v6

    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isColleague:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 445
    :goto_2
    aput-boolean v1, v2, v7

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSelfCanVisitExternal:Z

    aput-boolean v1, v2, v0

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSystemCallLog:Z

    aput-boolean v1, v2, v0

    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOutgoing:Z

    aput-boolean v1, v2, v0

    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isYourVIP:Z

    aput-boolean v1, v2, v0

    .line 441
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 451
    return-void

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isUserActive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isExternal:Ljava/lang/Boolean;

    .line 444
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isColleague:Ljava/lang/Boolean;

    .line 445
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2
.end method

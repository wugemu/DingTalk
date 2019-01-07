.class public Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
.super Ljava/lang/Object;
.source "UserIdentityObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_COMMON_CONTACT:I = 0x4

.field public static final SOURCE_COMMON_CRM:I = 0x5

.field public static final SOURCE_CONVERSATION_MEMBER:I = 0x3

.field public static final SOURCE_EXTERNAL_CONTACT:I = 0x6

.field public static final SOURCE_FRIEND:I = 0x2

.field public static final SOURCE_LOCAL_CONTACT:I = 0x1

.field public static final SOURCE_ORG_CONTACT:I = 0x0

.field private static final serialVersionUID:J = 0x61070c2627eb4d2L


# instance fields
.field public alias:Ljava/lang/String;

.field public company:Ljava/lang/String;

.field public dingTalkId:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public isActive:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isDataComplete:Z

.field public isDingSimCard:Z

.field public masterDeptNodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;",
            ">;"
        }
    .end annotation
.end field

.field public mediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nick:Ljava/lang/String;

.field public nickPinyin:Ljava/lang/String;

.field public numberType:I

.field public oid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgMail:Ljava/lang/String;

.field public orgUserName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public source:I

.field public staffId:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public workMobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject$1;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject$1;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->masterDeptNodeList:Ljava/util/ArrayList;

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->masterDeptNodeList:Ljava/util/ArrayList;

    .line 185
    const/16 v2, 0xe

    new-array v1, v2, [Ljava/lang/String;

    .line 186
    .local v1, "s":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 187
    aget-object v2, v1, v4

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    .line 188
    aget-object v2, v1, v5

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 189
    aget-object v2, v1, v6

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 190
    aget-object v2, v1, v7

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 191
    const/4 v2, 0x4

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    .line 192
    const/4 v2, 0x5

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    .line 193
    const/4 v2, 0x6

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 194
    const/4 v2, 0x7

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->dingTalkId:Ljava/lang/String;

    .line 195
    const/16 v2, 0x8

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    .line 196
    const/16 v2, 0x9

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 197
    const/16 v2, 0xa

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    .line 198
    const/16 v2, 0xb

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    .line 199
    const/16 v2, 0xc

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->title:Ljava/lang/String;

    .line 200
    const/16 v2, 0xd

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 204
    new-array v0, v7, [Z

    .line 205
    .local v0, "b":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 206
    aget-boolean v2, v0, v4

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    .line 207
    aget-boolean v2, v0, v5

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    .line 208
    aget-boolean v2, v0, v6

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDingSimCard:Z

    .line 209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->masterDeptNodeList:Ljava/util/ArrayList;

    .line 210
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->masterDeptNodeList:Ljava/util/ArrayList;

    sget-object v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 211
    return-void
.end method

.method public static copyFromUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 4
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    const/4 v1, 0x1

    .line 454
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 459
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobile:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 463
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    :goto_1
    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 464
    const/4 v0, 0x2

    iput v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 465
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDataComplete:Z

    iput-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    .line 466
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    :goto_2
    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->dingTalkId:Ljava/lang/String;

    .line 469
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    .line 471
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->status:I

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    iput-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    .line 472
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDingSimCard()Z

    move-result v0

    iput-boolean v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDingSimCard:Z

    goto :goto_0

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto :goto_1

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    goto :goto_2

    .line 471
    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static fromIDL(Lcgd;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 8
    .param p0, "model"    # Lcgd;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 142
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 143
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v1, p0, Lcgd;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 143
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 144
    iget-object v1, p0, Lcgd;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcgd;->c:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 145
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    .line 146
    iget-object v1, p0, Lcgd;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcgd;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcgd;->g:Ljava/lang/Integer;

    .line 3033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 148
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 149
    iget-object v1, p0, Lcgd;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lcgd;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcgd;->h:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 151
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    .line 152
    iget-object v1, p0, Lcgd;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lcgd;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->dingTalkId:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcgd;->k:Ljava/lang/Integer;

    .line 4033
    invoke-static {v1, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v1

    .line 154
    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->numberType:I

    .line 155
    iget-object v1, p0, Lcgd;->l:Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    .line 156
    return-object v0
.end method

.method public static getUserIdentityObject(Lcew;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 4
    .param p0, "orgEmployeeObject"    # Lcew;

    .prologue
    .line 431
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 432
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v1, p0, Lcew;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 433
    iget-object v1, p0, Lcew;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 434
    iget-object v1, p0, Lcew;->a:Ljava/lang/Long;

    .line 4044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 434
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 435
    iget-object v1, p0, Lcew;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    iget-object v1, p0, Lcew;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 440
    :goto_0
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 441
    iget-object v1, p0, Lcew;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    .line 442
    iget-object v1, p0, Lcew;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    .line 443
    iget-object v1, p0, Lcew;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Lcew;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    .line 448
    :goto_1
    iget-object v1, p0, Lcew;->B:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    .line 449
    return-object v0

    .line 438
    :cond_0
    iget-object v1, p0, Lcew;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 446
    :cond_1
    iget-object v1, p0, Lcew;->t:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getUserIdentityObject(Lcgc;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 8
    .param p0, "infoModel"    # Lcgc;

    .prologue
    const-wide/16 v6, 0x0

    .line 602
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 603
    .local v1, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz p0, :cond_1

    .line 604
    iget-object v2, p0, Lcgc;->a:Lcgk;

    .line 605
    .local v2, "userProfileModel":Lcgk;
    iget-object v0, p0, Lcgc;->b:Lcet;

    .line 606
    .local v0, "baseModel":Lcet;
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    .line 607
    if-eqz v0, :cond_1

    .line 608
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 609
    iget-object v3, v0, Lcet;->a:Ljava/lang/Long;

    .line 6044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 609
    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 611
    :cond_0
    const/4 v3, 0x0

    iput v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 612
    iget-object v3, v0, Lcet;->b:Ljava/lang/Long;

    .line 7044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 612
    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    .line 613
    iget-object v3, v0, Lcet;->c:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    .line 614
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 615
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    .line 616
    iget-object v3, v0, Lcet;->d:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    .line 617
    iget-object v3, v0, Lcet;->e:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    .line 618
    iget-object v3, v0, Lcet;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 619
    iget-object v3, v0, Lcet;->f:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    .line 623
    :goto_0
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 624
    iget-object v3, v2, Lcgk;->w:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    .line 628
    .end local v0    # "baseModel":Lcet;
    .end local v2    # "userProfileModel":Lcgk;
    :cond_1
    return-object v1

    .line 621
    .restart local v0    # "baseModel":Lcet;
    .restart local v2    # "userProfileModel":Lcgk;
    :cond_2
    iget-object v3, v0, Lcet;->g:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getUserIdentityObject(Lchg;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 4
    .param p0, "userObject"    # Lchg;

    .prologue
    .line 539
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 540
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v2, p0, Lchg;->e:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 541
    iget-object v1, p0, Lchg;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 542
    iget-object v1, p0, Lchg;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 543
    iget-object v1, p0, Lchg;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 544
    iget-boolean v1, p0, Lchg;->k:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    .line 545
    return-object v0
.end method

.method public static getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 5
    .param p0, "commonContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    .prologue
    const/4 v4, 0x4

    .line 559
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 560
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 561
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 562
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 563
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 564
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nick:Ljava/lang/String;

    :goto_0
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 565
    iput v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 566
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isDataComplete:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    .line 567
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->aliasPinyin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->nickPinyin:Ljava/lang/String;

    :goto_1
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    .line 568
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    .line 569
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->dingTalkId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->dingTalkId:Ljava/lang/String;

    .line 570
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isActive:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    .line 571
    iput v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 572
    return-object v0

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->alias:Ljava/lang/String;

    goto :goto_0

    .line 567
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->aliasPinyin:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 4
    .param p0, "crmContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;

    .prologue
    .line 483
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 484
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz p0, :cond_0

    .line 485
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->uid:Ljava/lang/Long;

    .line 5044
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 485
    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 486
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 487
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 488
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 489
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/CrmContactObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 490
    const/4 v1, 0x5

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 492
    :cond_0
    return-object v0
.end method

.method public static getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 4
    .param p0, "localContactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .prologue
    .line 575
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 576
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 577
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 578
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 579
    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 580
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    .line 581
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 582
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    .line 583
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->isActive:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    .line 584
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->company:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    .line 585
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->jobTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->title:Ljava/lang/String;

    .line 586
    return-object v0
.end method

.method public static getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 1
    .param p0, "orgEmployeeObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObjectWithContactNameRule(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    return-object v0
.end method

.method public static getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;

    .prologue
    .line 590
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 591
    .local v0, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz p0, :cond_0

    .line 592
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 593
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 594
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 595
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 596
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgMemberObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 598
    :cond_0
    return-object v0
.end method

.method public static getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 11
    .param p0, "orgNodeItemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 363
    if-nez p0, :cond_0

    .line 427
    :goto_0
    return-object v5

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    .line 368
    .local v2, "orgEmployeeObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 370
    .local v4, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 371
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v2, :cond_4

    .line 372
    iget-wide v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    iput-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 373
    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 374
    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 378
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 379
    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobile:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    .line 381
    :cond_2
    iput v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 382
    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 383
    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 387
    :cond_3
    :goto_2
    if-nez v4, :cond_8

    move-object v0, v5

    .line 388
    .local v0, "alias":Ljava/lang/String;
    :goto_3
    if-nez v4, :cond_9

    move-object v1, v5

    .line 389
    .local v1, "nick":Ljava/lang/String;
    :goto_4
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v8

    iget-object v9, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    iget-object v10, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1, v9, v10}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 390
    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    .line 391
    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    .line 392
    iget-wide v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    iput-wide v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    .line 394
    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAuthEmail:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 395
    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgEmail:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    .line 400
    :goto_5
    iput-boolean v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    .line 401
    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserNamePinyin:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    .line 403
    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->companyName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 405
    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->companyName:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    .line 412
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "nick":Ljava/lang/String;
    :cond_4
    :goto_6
    if-eqz v4, :cond_d

    .line 413
    iget v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->status:I

    if-eq v5, v6, :cond_c

    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    if-eqz v5, :cond_c

    move v5, v6

    :goto_7
    iput-boolean v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    .line 414
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 415
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 416
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    iput-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    .line 417
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    iput-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->dingTalkId:Ljava/lang/String;

    .line 418
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 419
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    iput-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    .line 421
    :cond_5
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDingSimCard()Z

    move-result v5

    iput-boolean v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDingSimCard:Z

    :goto_8
    move-object v5, v3

    .line 427
    goto/16 :goto_0

    .line 375
    :cond_6
    if-eqz v4, :cond_1

    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 376
    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    goto/16 :goto_1

    .line 384
    :cond_7
    if-eqz v4, :cond_3

    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 385
    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    goto/16 :goto_2

    .line 387
    :cond_8
    iget-object v0, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto/16 :goto_3

    .line 388
    .restart local v0    # "alias":Ljava/lang/String;
    :cond_9
    iget-object v1, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    goto/16 :goto_4

    .line 397
    .restart local v1    # "nick":Ljava/lang/String;
    :cond_a
    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAuthEmail:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    goto :goto_5

    .line 406
    :cond_b
    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 408
    iget-object v8, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgName:Ljava/lang/String;

    iput-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    goto :goto_6

    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "nick":Ljava/lang/String;
    :cond_c
    move v5, v7

    .line 413
    goto :goto_7

    .line 423
    :cond_d
    const-string/jumbo v6, ""

    iput-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->dingTalkId:Ljava/lang/String;

    .line 424
    iput-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    goto :goto_8
.end method

.method public static getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 1
    .param p0, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 477
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 478
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-static {p0, v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->copyFromUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 479
    return-object v0
.end method

.method public static getUserIdentityObject(Lcom/alibaba/wukong/im/Member;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 4
    .param p0, "member"    # Lcom/alibaba/wukong/im/Member;

    .prologue
    .line 548
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 549
    .local v0, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->openId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 550
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->mobile()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 551
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->avatar()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 552
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->nickname()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 553
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->alias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->nickname()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 554
    const/4 v1, 0x3

    iput v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 555
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->aliasPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->nicknamePinyin()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    .line 556
    return-object v0

    .line 553
    :cond_0
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->alias()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 555
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Member;->user()Lcom/alibaba/wukong/im/User;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/User;->aliasPinyin()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static getUserIdentityObjectList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    .local p0, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    if-nez p0, :cond_1

    .line 520
    const/4 v1, 0x0

    .line 526
    :cond_0
    return-object v1

    .line 522
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 524
    .local v0, "obj":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getUserIdentityObjectWithContactNameRule(Lcgc;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 1
    .param p0, "infoModel"    # Lcgc;

    .prologue
    .line 637
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObjectWithContactNameRule(Lcgc;Z)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    return-object v0
.end method

.method public static getUserIdentityObjectWithContactNameRule(Lcgc;Z)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 8
    .param p0, "infoModel"    # Lcgc;
    .param p1, "ignoreOrgNickName"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 646
    if-nez p0, :cond_1

    .line 647
    const/4 v1, 0x0

    .line 688
    :cond_0
    :goto_0
    return-object v1

    .line 650
    :cond_1
    iget-object v2, p0, Lcgc;->a:Lcgk;

    .line 651
    .local v2, "userProfileModel":Lcgk;
    iget-object v0, p0, Lcgc;->b:Lcet;

    .line 653
    .local v0, "baseModel":Lcet;
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    .line 655
    .local v1, "userObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz v0, :cond_0

    .line 659
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 660
    iget-object v3, v0, Lcet;->a:Ljava/lang/Long;

    .line 8044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 660
    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 664
    :cond_2
    const/4 v3, 0x0

    iput v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 665
    iget-object v3, v0, Lcet;->b:Ljava/lang/Long;

    .line 9044
    invoke-static {v3, v6, v7}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 665
    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    .line 666
    iget-object v3, v0, Lcet;->c:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    .line 667
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 668
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    .line 669
    iget-object v3, v0, Lcet;->d:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    .line 670
    iget-object v3, v0, Lcet;->e:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    .line 672
    iget-object v3, v0, Lcet;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 673
    iget-object v3, v0, Lcet;->f:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    .line 678
    :goto_1
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 679
    iget-object v3, v2, Lcgk;->w:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    .line 682
    :cond_3
    if-eqz p1, :cond_5

    .line 683
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v3

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 675
    :cond_4
    iget-object v3, v0, Lcet;->g:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    goto :goto_1

    .line 685
    :cond_5
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v3

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    iget-object v5, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    iget-object v7, v0, Lcet;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getUserIdentityObjectWithContactNameRule(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Z)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .locals 9
    .param p0, "orgEmployeeObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p2, "ignoreOrgNickName"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 295
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 296
    .local v2, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    if-eqz p0, :cond_3

    .line 297
    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    iput-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 298
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 299
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserMobile:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 303
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 304
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobile:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    .line 306
    :cond_1
    iput v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 307
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 308
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAvatarMediaId:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 312
    :cond_2
    :goto_1
    if-nez p1, :cond_7

    move-object v0, v5

    .line 313
    .local v0, "alias":Ljava/lang/String;
    :goto_2
    if-nez p1, :cond_8

    move-object v1, v5

    .line 315
    .local v1, "nick":Ljava/lang/String;
    :goto_3
    if-eqz p2, :cond_9

    .line 316
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    const-string/jumbo v8, ""

    invoke-virtual {v6, v0, v1, v7, v8}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    .line 321
    :goto_4
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    .line 322
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgStaffId:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    .line 323
    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgId:J

    iput-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    .line 325
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAuthEmail:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 326
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgEmail:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    .line 331
    :goto_5
    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    .line 332
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserNamePinyin:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    .line 334
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->companyName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 336
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->companyName:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    .line 343
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "nick":Ljava/lang/String;
    :cond_3
    :goto_6
    if-eqz p1, :cond_d

    .line 344
    iget v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->status:I

    if-eq v5, v3, :cond_c

    iget-object v5, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-static {v5, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    if-eqz v5, :cond_c

    :goto_7
    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    .line 345
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    .line 346
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 347
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    .line 348
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->dingTalkId:Ljava/lang/String;

    .line 349
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 350
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    .line 352
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDingSimCard()Z

    move-result v3

    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDingSimCard:Z

    .line 358
    :goto_8
    return-object v2

    .line 300
    :cond_5
    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 301
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    goto/16 :goto_0

    .line 309
    :cond_6
    if-eqz p1, :cond_2

    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 310
    iget-object v6, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    goto/16 :goto_1

    .line 312
    :cond_7
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    goto/16 :goto_2

    .line 313
    .restart local v0    # "alias":Ljava/lang/String;
    :cond_8
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    goto/16 :goto_3

    .line 318
    .restart local v1    # "nick":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgUserName:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgNickName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1, v7, v8}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    goto/16 :goto_4

    .line 328
    :cond_a
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgAuthEmail:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    goto/16 :goto_5

    .line 337
    :cond_b
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 339
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->orgName:Ljava/lang/String;

    iput-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    goto/16 :goto_6

    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "nick":Ljava/lang/String;
    :cond_c
    move v3, v4

    .line 344
    goto :goto_7

    .line 354
    :cond_d
    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->dingTalkId:Ljava/lang/String;

    .line 355
    iput-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    goto :goto_8
.end method

.method public static getUserIdentityObjects(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lchg;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "userObjects":Ljava/util/List;, "Ljava/util/List<Lchg;>;"
    if-nez p0, :cond_1

    .line 530
    const/4 v1, 0x0

    .line 536
    :cond_0
    return-object v1

    .line 532
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchg;

    .line 534
    .local v0, "obj":Lchg;
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lchg;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static toIDL(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcgd;
    .locals 4
    .param p0, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .prologue
    .line 160
    new-instance v0, Lcgd;

    invoke-direct {v0}, Lcgd;-><init>()V

    .line 161
    .local v0, "userIdentityModel":Lcgd;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcgd;->a:Ljava/lang/Long;

    .line 162
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    iput-object v1, v0, Lcgd;->b:Ljava/lang/String;

    .line 163
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcgd;->c:Ljava/lang/Long;

    .line 164
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcgd;->d:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcgd;->e:Ljava/lang/String;

    .line 166
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcgd;->g:Ljava/lang/Integer;

    .line 167
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lcgd;->f:Ljava/lang/String;

    .line 168
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcgd;->h:Ljava/lang/Boolean;

    .line 169
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    iput-object v1, v0, Lcgd;->j:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->dingTalkId:Ljava/lang/String;

    iput-object v1, v0, Lcgd;->i:Ljava/lang/String;

    .line 171
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->numberType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcgd;->k:Ljava/lang/Integer;

    .line 172
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcgd;->l:Ljava/lang/Boolean;

    .line 173
    return-object v0
.end method

.method public static toUserProfileObject(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 4
    .param p0, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 502
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 504
    .local v0, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 505
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    .line 506
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobile:Ljava/lang/String;

    .line 507
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 508
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 509
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 510
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDataComplete:Z

    .line 511
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    .line 512
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    .line 513
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->dingTalkId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    .line 515
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 238
    if-ne p0, p1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v4

    .line 240
    :cond_1
    if-nez p1, :cond_2

    move v4, v5

    .line 241
    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_3

    move v4, v5

    .line 243
    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 244
    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 245
    .local v1, "other":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    const/4 v0, 0x0

    .line 246
    .local v0, "mobileEquals":Z
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 247
    const/4 v0, 0x1

    .line 250
    :cond_4
    const/4 v2, 0x0

    .line 251
    .local v2, "staffIdEquals":Z
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    iget-object v7, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_5

    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    iget-wide v8, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 252
    const/4 v2, 0x1

    .line 255
    :cond_5
    const/4 v3, 0x0

    .line 256
    .local v3, "uIdEquals":Z
    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_6

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 257
    const/4 v3, 0x1

    .line 259
    :cond_6
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/16 v6, 0x20

    .line 264
    const/16 v0, 0x11

    .line 265
    .local v0, "result":I
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 268
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    goto :goto_0

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 271
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 215
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->staffId:Ljava/lang/String;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->displayName:Ljava/lang/String;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nickPinyin:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->email:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->dingTalkId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->alias:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgMail:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 217
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 218
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 219
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    new-array v0, v6, [Z

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDataComplete:Z

    aput-boolean v1, v0, v3

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isActive:Z

    aput-boolean v1, v0, v4

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->isDingSimCard:Z

    aput-boolean v1, v0, v5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->masterDeptNodeList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 222
    return-void
.end method

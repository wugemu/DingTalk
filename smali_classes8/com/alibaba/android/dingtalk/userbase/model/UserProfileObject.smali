.class public Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
.super Ljava/lang/Object;
.source "UserProfileObject.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_ENCRYPT_APP_KEY:Ljava/lang/String; = "20160219"

.field public static final NUMBER_TYPE_FIXED_LINE:I = 0x1

.field public static final NUMBER_TYPE_MOBILE:I = 0x0

.field public static final USER_TYPE_LIGHTAPP:I = 0xb

.field public static final USER_TYPE_OA:I = 0x3

.field public static final USER_TYPE_ORG:I = 0x7

.field public static final USER_TYPE_PERSON:I = 0x0

.field public static final USER_TYPE_ROBOT:I = 0x1

.field public static final USER_TYPE_SYSTEM_ACCOUNT:I = 0x2

.field private static final serialVersionUID:J = 0x597728f221959bbeL


# instance fields
.field public activeTime:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public alias:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public aliasPinyin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public authOrgs:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;",
            ">;"
        }
    .end annotation
.end field

.field public avatarMediaId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public bizOrgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public city:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public dingTalkId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public dob:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public extension:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public extensionMap:Ljava/util/HashMap;
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

.field public gender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public industry:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public industryCode:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isActive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isActive2:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isDataComplete:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isFriend:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public isMyLocalContact:Z

.field public isOrgUser:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public jobPosition:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public labels:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
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

.field public volatile latestVer:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public mUserTitleConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;",
            ">;"
        }
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nick:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nickAlpha:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public nickPinyin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public numberType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgIdList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
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

.field public orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public orgInfoStr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public personStatus:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;",
            ">;"
        }
    .end annotation
.end field

.field public realName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public registerIdentity:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public registerOrgId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public registerOrgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public stateCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tag:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public userType:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public volatile ver:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public workMobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public workMobileStateCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 644
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$2;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$2;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isMyLocalContact:Z

    .line 317
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 12
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-boolean v8, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isMyLocalContact:Z

    .line 584
    const-class v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive2:Z

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 587
    .local v4, "tmpDob":J
    const-wide/16 v10, -0x1

    cmp-long v6, v4, v10

    if-nez v6, :cond_1

    const/4 v6, 0x0

    :goto_1
    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dob:Ljava/util/Date;

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->ver:I

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->city:Ljava/lang/String;

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->gender:Ljava/lang/String;

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    .line 594
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobile:Ljava/lang/String;

    .line 595
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 596
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    .line 597
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 598
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->stateCode:Ljava/lang/String;

    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobileStateCode:Ljava/lang/String;

    .line 601
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->tag:J

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->labels:Ljava/util/List;

    .line 603
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->authOrgs:Ljava/util/List;

    .line 604
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->authOrgs:Ljava/util/List;

    const-class v9, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {p1, v6, v9}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDataComplete:Z

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isOrgUser:Z

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickAlpha:Ljava/lang/String;

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->activeTime:J

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->status:I

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industryCode:I

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industry:Ljava/lang/String;

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->numberType:I

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 620
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    .line 621
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    const-class v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {p1, v6, v9}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->jobPosition:Ljava/lang/String;

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->latestVer:J

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_4
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isMyLocalContact:Z

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 628
    .local v2, "mUserTitleConfigSize":I
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mUserTitleConfig:Ljava/util/Map;

    .line 629
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_5

    .line 630
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;

    .line 632
    .local v3, "value":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mUserTitleConfig:Ljava/util/Map;

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "mUserTitleConfigSize":I
    .end local v3    # "value":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;
    .end local v4    # "tmpDob":J
    :cond_0
    move v6, v8

    .line 585
    goto/16 :goto_0

    .line 587
    .restart local v4    # "tmpDob":J
    :cond_1
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_1

    :cond_2
    move v6, v8

    .line 605
    goto/16 :goto_2

    :cond_3
    move v6, v8

    .line 606
    goto/16 :goto_3

    :cond_4
    move v6, v8

    .line 626
    goto :goto_4

    .line 634
    .restart local v0    # "i":I
    .restart local v2    # "mUserTitleConfigSize":I
    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->personStatus:Ljava/util/List;

    .line 635
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->personStatus:Ljava/util/List;

    const-class v9, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {p1, v6, v9}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 636
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-eqz v6, :cond_6

    :goto_6
    iput-boolean v7, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z

    .line 637
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    .line 638
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->bizOrgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 639
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerOrgName:Ljava/lang/String;

    .line 640
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerOrgId:J

    .line 641
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerIdentity:I

    .line 642
    return-void

    :cond_6
    move v7, v8

    .line 636
    goto :goto_6
.end method

.method public static copyUserProfile(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 1
    .param p0, "userProfile"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->copyUserProfile(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    return-object v0
.end method

.method public static copyUserProfile(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 4
    .param p0, "src"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .param p1, "dest"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 331
    if-nez p0, :cond_0

    move-object v0, p1

    .line 382
    .end local p1    # "dest":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .local v0, "dest":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :goto_0
    return-object v0

    .line 335
    .end local v0    # "dest":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .restart local p1    # "dest":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_0
    if-nez p1, :cond_1

    .line 336
    new-instance p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .end local p1    # "dest":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-direct {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 338
    .restart local p1    # "dest":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 339
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->city:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->city:Ljava/lang/String;

    .line 340
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dob:Ljava/util/Date;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dob:Ljava/util/Date;

    .line 341
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->gender:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->gender:Ljava/lang/String;

    .line 342
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    .line 343
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    .line 344
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 345
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    .line 346
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 347
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 348
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->stateCode:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->stateCode:Ljava/lang/String;

    .line 349
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 350
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->ver:I

    iput v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->ver:I

    .line 351
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->latestVer:J

    iput-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->latestVer:J

    .line 352
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->labels:Ljava/util/List;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->labels:Ljava/util/List;

    .line 353
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->authOrgs:Ljava/util/List;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->authOrgs:Ljava/util/List;

    .line 354
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDataComplete:Z

    iput-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDataComplete:Z

    .line 355
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isOrgUser:Z

    iput-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isOrgUser:Z

    .line 356
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    .line 357
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    iput v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    .line 358
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    .line 359
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->processExtension(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 360
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickAlpha:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickAlpha:Ljava/lang/String;

    .line 361
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    .line 362
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    .line 363
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->activeTime:J

    iput-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->activeTime:J

    .line 364
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->status:I

    iput v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->status:I

    .line 365
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    .line 366
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industryCode:I

    iput v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industryCode:I

    .line 367
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industry:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industry:Ljava/lang/String;

    .line 368
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->numberType:I

    iput v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->numberType:I

    .line 369
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobileStateCode:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobileStateCode:Ljava/lang/String;

    .line 370
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobile:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobile:Ljava/lang/String;

    .line 371
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 372
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->bizOrgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->bizOrgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 373
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    .line 374
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    .line 375
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->jobPosition:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->jobPosition:Ljava/lang/String;

    .line 376
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z

    iput-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z

    .line 377
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    .line 378
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerOrgName:Ljava/lang/String;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerOrgName:Ljava/lang/String;

    .line 379
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerOrgId:J

    iput-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerOrgId:J

    .line 380
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerIdentity:I

    iput v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerIdentity:I

    move-object v0, p1

    .line 382
    .end local p1    # "dest":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .restart local v0    # "dest":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    goto/16 :goto_0
.end method

.method public static fromIDLModel(Lcgk;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 10
    .param p0, "model"    # Lcgk;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 200
    if-nez p0, :cond_1

    .line 201
    const/4 v2, 0x0

    .line 259
    :cond_0
    :goto_0
    return-object v2

    .line 203
    :cond_1
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 204
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-object v5, p0, Lcgk;->v:Ljava/lang/Integer;

    .line 1033
    invoke-static {v5, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v5

    .line 204
    if-eq v5, v3, :cond_3

    iget-object v5, p0, Lcgk;->j:Ljava/lang/Boolean;

    invoke-static {v5, v3}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    .line 205
    iget-object v3, p0, Lcgk;->f:Ljava/util/Date;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dob:Ljava/util/Date;

    .line 206
    iget-object v3, p0, Lcgk;->k:Ljava/lang/Integer;

    .line 2033
    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 206
    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->ver:I

    .line 207
    iget v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->ver:I

    int-to-long v6, v3

    iput-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->latestVer:J

    .line 208
    iget-object v3, p0, Lcgk;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 208
    iput-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 209
    iget-object v3, p0, Lcgk;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    .line 210
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    :try_start_0
    iget-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_2
    :goto_2
    iget-object v3, p0, Lcgk;->g:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->city:Ljava/lang/String;

    .line 218
    iget-object v3, p0, Lcgk;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->gender:Ljava/lang/String;

    .line 219
    iget-object v3, p0, Lcgk;->i:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    .line 220
    iget-object v3, p0, Lcgk;->b:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 221
    iget-object v3, p0, Lcgk;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    .line 222
    iget-object v3, p0, Lcgk;->h:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->stateCode:Ljava/lang/String;

    .line 223
    iget-object v3, p0, Lcgk;->l:Ljava/util/List;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->labels:Ljava/util/List;

    .line 224
    iget-object v3, p0, Lcgk;->t:Ljava/util/List;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->fromIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->authOrgs:Ljava/util/List;

    .line 225
    iget-object v3, p0, Lcgk;->m:Ljava/lang/Boolean;

    .line 3022
    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 225
    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDataComplete:Z

    .line 226
    iget-object v3, p0, Lcgk;->n:Ljava/lang/Boolean;

    .line 4022
    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    .line 226
    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isOrgUser:Z

    .line 227
    iget-object v3, p0, Lcgk;->o:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    .line 228
    iget-object v3, p0, Lcgk;->p:Ljava/lang/Integer;

    if-nez v3, :cond_4

    .line 229
    iput v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    .line 233
    :goto_3
    iget-object v3, p0, Lcgk;->q:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    .line 234
    iget-object v3, p0, Lcgk;->q:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->processExtension(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 235
    iget-object v3, p0, Lcgk;->r:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    .line 236
    iget-object v3, p0, Lcgk;->s:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    .line 237
    iget-object v3, p0, Lcgk;->u:Ljava/lang/Long;

    .line 4044
    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 237
    iput-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->activeTime:J

    .line 238
    iget-object v3, p0, Lcgk;->v:Ljava/lang/Integer;

    .line 5033
    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 238
    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->status:I

    .line 239
    iget-object v3, p0, Lcgk;->w:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    .line 240
    iget-object v3, p0, Lcgk;->x:Ljava/lang/Integer;

    .line 6033
    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 240
    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industryCode:I

    .line 241
    iget-object v3, p0, Lcgk;->y:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industry:Ljava/lang/String;

    .line 242
    iget-object v3, p0, Lcgk;->z:Ljava/lang/Integer;

    .line 7033
    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 242
    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->numberType:I

    .line 243
    iget-object v3, p0, Lcgk;->B:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobile:Ljava/lang/String;

    .line 244
    iget-object v3, p0, Lcgk;->A:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobileStateCode:Ljava/lang/String;

    .line 245
    iget-object v3, p0, Lcgk;->C:Lccz;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->fromIdl(Lccz;)Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 246
    iget-object v3, p0, Lcgk;->H:Lccz;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->fromIdl(Lccz;)Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->bizOrgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 247
    iget-object v3, p0, Lcgk;->D:Ljava/util/List;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    .line 248
    iget-object v3, p0, Lcgk;->E:Lcgm;

    invoke-static {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;->fromIDLModel(Lcgm;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    .line 249
    iget-object v3, p0, Lcgk;->F:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->jobPosition:Ljava/lang/String;

    .line 250
    iget-object v3, p0, Lcgk;->G:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    .line 251
    iget-object v3, p0, Lcgk;->I:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerOrgName:Ljava/lang/String;

    .line 252
    iget-object v3, p0, Lcgk;->J:Ljava/lang/Long;

    .line 7044
    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 252
    iput-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerOrgId:J

    .line 253
    iget-object v3, p0, Lcgk;->K:Ljava/lang/Integer;

    .line 8033
    invoke-static {v3, v4}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 253
    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerIdentity:I

    .line 255
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    .line 8084
    iget-object v1, v3, Lccr;->d:Lccs;

    .line 256
    .local v1, "localizationConverter":Lccs;
    if-eqz v1, :cond_0

    .line 257
    invoke-interface {v1, v2}, Lccs;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto/16 :goto_0

    .end local v1    # "localizationConverter":Lccs;
    :cond_3
    move v3, v4

    .line 204
    goto/16 :goto_1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_2

    .line 231
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_4
    iget-object v3, p0, Lcgk;->p:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    goto/16 :goto_3
.end method

.method private static getAuthOrgList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "authOrgString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 285
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v2, v6

    .line 303
    :cond_0
    :goto_0
    return-object v2

    .line 289
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 291
    .local v5, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 293
    new-instance v4, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;-><init>()V

    .line 294
    .local v4, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 295
    .local v3, "object":Lorg/json/JSONObject;
    const-string/jumbo v7, "orgId"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgId:Ljava/lang/String;

    .line 296
    const-string/jumbo v7, "orgName"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    .line 297
    const-string/jumbo v7, "logoMediaId"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->logoMediaId:Ljava/lang/String;

    .line 298
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 303
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "index":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;>;"
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    .end local v5    # "size":I
    :catch_0
    move-exception v7

    move-object v2, v6

    goto :goto_0
.end method

.method private getAuthOrgString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 264
    .local p1, "authOrgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 265
    :cond_0
    const-string/jumbo v5, ""

    .line 280
    :goto_0
    return-object v5

    .line 267
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 268
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 269
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 270
    .local v4, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 272
    .local v3, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v5, "orgId"

    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string/jumbo v5, "orgName"

    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string/jumbo v5, "logoMediaId"

    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->logoMediaId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 276
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 280
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getUserProfile(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 1
    .param p0, "mUserProfile"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .prologue
    .line 320
    invoke-static {p0}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->copyUserProfile(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v0

    .line 321
    .local v0, "profile":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    return-object v0
.end method

.method public static processExtension(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 4
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    if-eqz p1, :cond_0

    .line 189
    invoke-static {p0}, Lcoz;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 191
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    .line 192
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    const-string/jumbo v2, "ownness"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    const-string/jumbo v3, "ownness"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$1;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$1;-><init>()V

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->personStatus:Ljava/util/List;

    goto :goto_0
.end method

.method public static staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "encryptedStr"    # Ljava/lang/String;

    .prologue
    .line 429
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 430
    const-string/jumbo v1, ""

    .line 443
    :cond_0
    :goto_0
    return-object v1

    .line 433
    :cond_1
    const/4 v1, 0x0

    .line 434
    .local v1, "decryptedStr":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v2

    .line 435
    .local v2, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v2, :cond_0

    .line 436
    invoke-virtual {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    .line 437
    .local v0, "comp":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v0, :cond_0

    .line 438
    const/16 v3, 0x10

    const-string/jumbo v4, "20160219"

    invoke-interface {v0, v3, v4, p0}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeDecrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static staticDataEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, "encryptedStr":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v2

    .line 417
    .local v2, "sgMgr":Lcom/taobao/wireless/security/sdk/SecurityGuardManager;
    if-eqz v2, :cond_0

    .line 418
    invoke-virtual {v2}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getStaticDataEncryptComp()Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;

    move-result-object v0

    .line 419
    .local v0, "comp":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    if-eqz v0, :cond_0

    .line 420
    const/16 v3, 0x10

    const-string/jumbo v4, "20160219"

    invoke-interface {v0, v3, v4, p0}, Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;->staticSafeEncrypt(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .end local v0    # "comp":Lcom/taobao/wireless/security/sdk/staticdataencrypt/IStaticDataEncryptComponent;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 393
    if-ne p0, p1, :cond_1

    .line 394
    const/4 v1, 0x1

    .line 403
    :cond_0
    :goto_0
    return v1

    .line 395
    :cond_1
    if-eqz p1, :cond_0

    .line 397
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 399
    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 400
    .local v0, "other":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    const/4 v1, 0x1

    .line 401
    .local v1, "uIdEquals":Z
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 402
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserTitleConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mUserTitleConfig:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 448
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mUserTitleConfig:Ljava/util/Map;

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mUserTitleConfig:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 409
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 410
    .local v0, "result":I
    return v0
.end method

.method public isDingSimCard()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    const-string/jumbo v3, "dingSIMCard"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    const-string/jumbo v3, "dingSIMCard"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 310
    .local v0, "value":I
    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 312
    .end local v0    # "value":I
    :goto_0
    return v1

    .restart local v0    # "value":I
    :cond_0
    move v1, v2

    .line 310
    goto :goto_0

    .end local v0    # "value":I
    :cond_1
    move v1, v2

    .line 312
    goto :goto_0
.end method

.method public isStale()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 516
    iget v0, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->ver:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->latestVer:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toIDLModel()Lcgk;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 140
    new-instance v0, Lcgk;

    invoke-direct {v0}, Lcgk;-><init>()V

    .line 141
    .local v0, "model":Lcgk;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    iput-object v1, v0, Lcgk;->j:Ljava/lang/Boolean;

    .line 142
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dob:Ljava/util/Date;

    iput-object v1, v0, Lcgk;->f:Ljava/util/Date;

    .line 143
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->ver:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcgk;->k:Ljava/lang/Integer;

    .line 144
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcgk;->a:Ljava/lang/Long;

    .line 145
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->e:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->city:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->g:Ljava/lang/String;

    .line 147
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->gender:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->d:Ljava/lang/String;

    .line 148
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->i:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->b:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->c:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->stateCode:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->h:Ljava/lang/String;

    .line 152
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->labels:Ljava/util/List;

    iput-object v1, v0, Lcgk;->l:Ljava/util/List;

    .line 153
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->authOrgs:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->toIdlList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcgk;->t:Ljava/util/List;

    .line 154
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDataComplete:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcgk;->m:Ljava/lang/Boolean;

    .line 155
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isOrgUser:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcgk;->n:Ljava/lang/Boolean;

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->o:Ljava/lang/String;

    .line 157
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcgk;->p:Ljava/lang/Integer;

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->q:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->r:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->s:Ljava/lang/String;

    .line 161
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->activeTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcgk;->u:Ljava/lang/Long;

    .line 162
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->status:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcgk;->v:Ljava/lang/Integer;

    .line 163
    const/4 v1, 0x0

    iput-object v1, v0, Lcgk;->w:Ljava/lang/String;

    .line 164
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industryCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcgk;->x:Ljava/lang/Integer;

    .line 165
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industry:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->y:Ljava/lang/String;

    .line 166
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->numberType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcgk;->z:Ljava/lang/Integer;

    .line 167
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobileStateCode:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->A:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobile:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->B:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->toIdl(Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;)Lccz;

    move-result-object v1

    iput-object v1, v0, Lcgk;->C:Lccz;

    .line 170
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->bizOrgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->toIdl(Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;)Lccz;

    move-result-object v1

    iput-object v1, v0, Lcgk;->H:Lccz;

    .line 171
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    iput-object v1, v0, Lcgk;->D:Ljava/util/List;

    .line 172
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;->toIDLModel(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;)Lcgm;

    move-result-object v1

    iput-object v1, v0, Lcgk;->E:Lcgm;

    .line 173
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->jobPosition:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->F:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->G:Ljava/lang/String;

    .line 175
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerOrgName:Ljava/lang/String;

    iput-object v1, v0, Lcgk;->I:Ljava/lang/String;

    .line 176
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerOrgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcgk;->J:Ljava/lang/Long;

    .line 177
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerIdentity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcgk;->K:Ljava/lang/Integer;

    .line 178
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 527
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 528
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive2:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 529
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dob:Ljava/util/Date;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dob:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_1
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 530
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->ver:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 532
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->city:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->gender:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobile:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->stateCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->workMobileStateCode:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 543
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->tag:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 544
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->labels:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 545
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->authOrgs:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 546
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDataComplete:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 547
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isOrgUser:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 548
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickAlpha:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->activeTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 555
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->status:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 557
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industryCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industry:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 559
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->numberType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 561
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 562
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 563
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->jobPosition:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 564
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->latestVer:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 565
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extensionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 566
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isMyLocalContact:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 567
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mUserTitleConfig:Ljava/util/Map;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mUserTitleConfig:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mUserTitleConfig:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 569
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mUserTitleConfig:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 570
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 571
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_6

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject$UserTitleConfig;>;"
    :cond_0
    move v1, v3

    .line 528
    goto/16 :goto_0

    .line 529
    :cond_1
    const-wide/16 v4, -0x1

    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 546
    goto/16 :goto_2

    :cond_3
    move v1, v3

    .line 547
    goto/16 :goto_3

    :cond_4
    move v1, v3

    .line 566
    goto :goto_4

    :cond_5
    move v1, v3

    .line 567
    goto :goto_5

    .line 574
    :cond_6
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->personStatus:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 575
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z

    if-eqz v1, :cond_7

    :goto_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 576
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->bizOrgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 578
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerOrgName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    iget-wide v2, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerOrgId:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 580
    iget v1, p0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->registerIdentity:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    return-void

    :cond_7
    move v2, v3

    .line 575
    goto :goto_7
.end method

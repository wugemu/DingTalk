.class public Lcom/alibaba/android/user/entry/UserProfileEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "UserProfileEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbuser"
.end annotation


# static fields
.field public static final NAME_ACTIVE_TIME:Ljava/lang/String; = "activeTime"

.field public static final NAME_ALIAS:Ljava/lang/String; = "alias"

.field public static final NAME_ALIASPINYIN:Ljava/lang/String; = "aliaspinyin"

.field public static final NAME_AUTH_ORG:Ljava/lang/String; = "authOrg"

.field public static final NAME_AUTH_ORG_NAME:Ljava/lang/String; = "authOrgName"

.field public static final NAME_BIZ_AUTH_ORG:Ljava/lang/String; = "bizAuthOrg"

.field public static final NAME_CITY:Ljava/lang/String; = "city"

.field public static final NAME_DATA_COMPLETE:Ljava/lang/String; = "data_complete"

.field public static final NAME_DINGTALK_ID:Ljava/lang/String; = "dingtaklId"

.field public static final NAME_EMAIL:Ljava/lang/String; = "email"

.field public static final NAME_EXTENSATION:Ljava/lang/String; = "extensation"

.field public static final NAME_GENDER:Ljava/lang/String; = "gender"

.field public static final NAME_ICONMEDIAID:Ljava/lang/String; = "iconMediaId"

.field public static final NAME_INDUSTRY:Ljava/lang/String; = "industry"

.field public static final NAME_INDUSTRY_CODE:Ljava/lang/String; = "industryCode"

.field public static final NAME_IS_ACTIVE:Ljava/lang/String; = "is_active"

.field public static final NAME_IS_ORGUSER:Ljava/lang/String; = "is_orguser"

.field public static final NAME_LABELS:Ljava/lang/String; = "labels"

.field public static final NAME_LATEST_TAG:Ljava/lang/String; = "latestTag"

.field public static final NAME_MOBILE:Ljava/lang/String; = "mobile"

.field public static final NAME_MODIFYTIME:Ljava/lang/String; = "modifyTime"

.field public static final NAME_NICK:Ljava/lang/String; = "nick"

.field public static final NAME_NICKALPHA:Ljava/lang/String; = "nickAlpha"

.field public static final NAME_NICKPINYIN:Ljava/lang/String; = "nickpinyin"

.field public static final NAME_NUMBER_TYPE:Ljava/lang/String; = "numberType"

.field public static final NAME_ORG_EMAIL:Ljava/lang/String; = "orgEmail"

.field public static final NAME_ORG_ID_LIST:Ljava/lang/String; = "orgIdList"

.field public static final NAME_ORG_INFO:Ljava/lang/String; = "orgInfo"

.field public static final NAME_ORG_INFO_STR:Ljava/lang/String; = "orgInfoStr"

.field public static final NAME_PROFILE_TYPE:Ljava/lang/String; = "profileType"

.field public static final NAME_REAL_NAME:Ljava/lang/String; = "real_name"

.field public static final NAME_SETTINGS:Ljava/lang/String; = "settings"

.field public static final NAME_STATECODE:Ljava/lang/String; = "stateCode"

.field public static final NAME_STATUS:Ljava/lang/String; = "status"

.field public static final NAME_TAG:Ljava/lang/String; = "tag"

.field public static final NAME_UID:Ljava/lang/String; = "uid"

.field public static final NAME_USER_TYPE:Ljava/lang/String; = "user_type"

.field public static final TABLE_NAME:Ljava/lang/String; = "tbuser"


# instance fields
.field public activeTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "activeTime"
        sort = 0x19
    .end annotation
.end field

.field public alias:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = ""
        name = "alias"
        sort = 0x14
    .end annotation
.end field

.field public aliasPinyin:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = ""
        name = "aliaspinyin"
        sort = 0x15
    .end annotation
.end field

.field public authOrg:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = ""
        name = "authOrg"
        sort = 0x18
    .end annotation
.end field

.field public authOrgName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "authOrgName"
        sort = 0x25
    .end annotation
.end field

.field public bizOrgInfo:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "bizAuthOrg"
        sort = 0x24
    .end annotation
.end field

.field public city:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "city"
        sort = 0x8
    .end annotation
.end field

.field public dataComplete:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "data_complete"
        sort = 0xd
    .end annotation
.end field

.field public dingTalkId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = ""
        name = "dingtaklId"
        sort = 0x16
    .end annotation
.end field

.field public email:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = ""
        name = "email"
        sort = 0x17
    .end annotation
.end field

.field public extensation:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "extensation"
        sort = 0x11
    .end annotation
.end field

.field public gender:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "gender"
        sort = 0x7
    .end annotation
.end field

.field public iconMediaId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "iconMediaId"
        sort = 0x4
    .end annotation
.end field

.field public industry:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "industry"
        sort = 0x1d
    .end annotation
.end field

.field public industryCode:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "industryCode"
        sort = 0x1c
    .end annotation
.end field

.field public isActive:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "is_active"
        sort = 0xe
    .end annotation
.end field

.field public isOrgUser:Z
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "is_orguser"
        sort = 0x13
    .end annotation
.end field

.field public labels:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "labels"
        sort = 0xc
    .end annotation
.end field

.field public latestTag:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "2147483647"
        name = "latestTag"
        sort = 0x22
    .end annotation
.end field

.field public mobile:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "mobile"
        sort = 0xa
    .end annotation
.end field

.field public modifyTime:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "modifyTime"
        nullable = false
        sort = 0xb
    .end annotation
.end field

.field public nick:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "nick"
        sort = 0x5
    .end annotation
.end field

.field public nickAlpha:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "nickAlpha"
        sort = 0x12
    .end annotation
.end field

.field public nickpinyin:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "nickpinyin"
        sort = 0x6
    .end annotation
.end field

.field public numberType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "numberType"
        sort = 0x1e
    .end annotation
.end field

.field public orgEmail:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "orgEmail"
        sort = 0x1b
    .end annotation
.end field

.field public orgIdList:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "orgIdList"
        sort = 0x20
    .end annotation
.end field

.field public orgInfo:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "orgInfo"
        sort = 0x1f
    .end annotation
.end field

.field public orgInfoStr:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "orgInfoStr"
        sort = 0x23
    .end annotation
.end field

.field public profileType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "profileType"
        sort = 0x2
    .end annotation
.end field

.field public realName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "real_name"
        sort = 0xf
    .end annotation
.end field

.field public settings:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "settings"
        sort = 0x21
    .end annotation
.end field

.field public stateCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "stateCode"
        sort = 0x9
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "status"
        sort = 0x1a
    .end annotation
.end field

.field public tag:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "tag"
        sort = 0x3
    .end annotation
.end field

.field public uid:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "uid"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_tabmsgactor_uid:1"
    .end annotation
.end field

.field public userType:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "user_type"
        sort = 0x10
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    return-void
.end method

.method public static fromDBEntry(Lcom/alibaba/android/user/entry/UserProfileEntry;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 6
    .param p0, "entry"    # Lcom/alibaba/android/user/entry/UserProfileEntry;

    .prologue
    .line 307
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 308
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    iget-wide v4, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->uid:J

    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 309
    iget v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->tag:I

    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->ver:I

    .line 310
    iget v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->latestTag:I

    int-to-long v4, v3

    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->latestVer:J

    .line 311
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->iconMediaId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->iconMediaId:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->iconMediaId:Ljava/lang/String;

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->nick:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 321
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->nickpinyin:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    .line 322
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->alias:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 323
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->aliasPinyin:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 324
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->gender:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->gender:Ljava/lang/String;

    .line 325
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->city:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->city:Ljava/lang/String;

    .line 326
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->stateCode:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->stateCode:Ljava/lang/String;

    .line 327
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->mobile:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    .line 328
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->labels:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getLabelsContentList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->labels:Ljava/util/List;

    .line 329
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->authOrg:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getAuthOrgList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->authOrgs:Ljava/util/List;

    .line 330
    iget-boolean v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->dataComplete:Z

    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDataComplete:Z

    .line 331
    iget-boolean v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->isOrgUser:Z

    iput-boolean v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isOrgUser:Z

    .line 332
    iget-boolean v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->isActive:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    .line 333
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->realName:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    .line 334
    iget v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->userType:I

    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    .line 335
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->extensation:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    .line 336
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->extensation:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->processExtension(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 337
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->nickAlpha:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickAlpha:Ljava/lang/String;

    .line 338
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->dingTalkId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    .line 339
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->email:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    .line 340
    iget-wide v4, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->activeTime:J

    iput-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->activeTime:J

    .line 341
    iget v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->status:I

    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->status:I

    .line 342
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->orgEmail:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    .line 343
    iget v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->industryCode:I

    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industryCode:I

    .line 344
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->industry:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industry:Ljava/lang/String;

    .line 345
    iget v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->numberType:I

    iput v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->numberType:I

    .line 346
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->orgInfo:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getAuthOrg(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 347
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->bizOrgInfo:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getAuthOrg(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->bizOrgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 348
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->orgIdList:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getOrgIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    .line 349
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->settings:Ljava/lang/String;

    const-class v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    invoke-static {v3, v4}, Lcom/alibaba/android/user/entry/UserProfileEntry;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    .line 350
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->orgInfoStr:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    .line 351
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    .line 1084
    iget-object v1, v3, Lccr;->d:Lccs;

    .line 352
    .local v1, "localizationConverter":Lccs;
    if-eqz v1, :cond_0

    .line 353
    invoke-interface {v1, v2}, Lccs;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 355
    :cond_0
    return-object v2

    .line 314
    .end local v1    # "localizationConverter":Lccs;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 318
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->iconMediaId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 583
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 592
    :goto_0
    return-object v2

    .line 587
    :cond_0
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 588
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-static {v1, p0, p1}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 589
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 360
    const/4 v5, 0x0

    .line 426
    :cond_0
    :goto_0
    return-object v5

    .line 362
    :cond_1
    new-instance v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;-><init>()V

    .line 363
    .local v5, "object":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    const-string/jumbo v7, "uid"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 364
    const-string/jumbo v7, "uid"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 366
    :cond_2
    const-string/jumbo v7, "tag"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 367
    const-string/jumbo v7, "tag"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->ver:I

    .line 369
    :cond_3
    const-string/jumbo v7, "latestTag"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 370
    const-string/jumbo v7, "latestTag"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v8, v7

    iput-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->latestVer:J

    .line 372
    :cond_4
    const-string/jumbo v7, "iconMediaId"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 373
    .local v3, "mediaId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 375
    :try_start_0
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_1
    const-string/jumbo v7, "nick"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 383
    const-string/jumbo v7, "nickpinyin"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    .line 384
    const-string/jumbo v7, "alias"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 385
    const-string/jumbo v7, "aliaspinyin"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 386
    const-string/jumbo v7, "gender"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->gender:Ljava/lang/String;

    .line 387
    const-string/jumbo v7, "city"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->city:Ljava/lang/String;

    .line 388
    const-string/jumbo v7, "stateCode"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->stateCode:Ljava/lang/String;

    .line 389
    const-string/jumbo v7, "mobile"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    .line 390
    const-string/jumbo v7, "labels"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getLabelsContentList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->labels:Ljava/util/List;

    .line 391
    const-string/jumbo v7, "1"

    const-string/jumbo v8, "data_complete"

    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDataComplete:Z

    .line 392
    const-string/jumbo v7, "1"

    const-string/jumbo v8, "is_orguser"

    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isOrgUser:Z

    .line 393
    const-string/jumbo v7, "1"

    const-string/jumbo v8, "is_active"

    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    .line 394
    const-string/jumbo v7, "real_name"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    .line 395
    const-string/jumbo v7, "user_type"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 396
    const-string/jumbo v7, "user_type"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    .line 398
    :cond_5
    const-string/jumbo v7, "extensation"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    .line 399
    iget-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    invoke-static {v7, v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->processExtension(Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 400
    const-string/jumbo v7, "nickAlpha"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickAlpha:Ljava/lang/String;

    .line 401
    const-string/jumbo v7, "dingtaklId"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    .line 402
    const-string/jumbo v7, "email"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    .line 403
    const-string/jumbo v7, "activeTime"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 404
    .local v0, "activeTimeStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 406
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->activeTime:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 411
    :cond_6
    :goto_2
    const-string/jumbo v7, "status"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 412
    .local v6, "statusStr":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 414
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->status:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 419
    :cond_7
    :goto_3
    const-string/jumbo v7, "orgEmail"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    .line 420
    const-string/jumbo v7, "orgInfoStr"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    .line 421
    const-string/jumbo v7, "orgInfo"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getAuthOrg(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    move-result-object v7

    iput-object v7, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .line 422
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v7

    .line 2084
    iget-object v2, v7, Lccr;->d:Lccs;

    .line 423
    .local v2, "localizationConverter":Lccs;
    if-eqz v2, :cond_0

    .line 424
    invoke-interface {v2, v5}, Lccs;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    goto/16 :goto_0

    .line 376
    .end local v0    # "activeTimeStr":Ljava/lang/String;
    .end local v2    # "localizationConverter":Lccs;
    .end local v6    # "statusStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 380
    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_8
    iput-object v3, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    goto/16 :goto_1

    .line 407
    .restart local v0    # "activeTimeStr":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 408
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    .line 415
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v6    # "statusStr":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 416
    .restart local v4    # "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3
.end method

.method private static getAuthOrg(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 530
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 540
    :goto_0
    return-object v2

    .line 534
    :cond_0
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 535
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v4, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    invoke-static {v1, p0, v4}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    .local v2, "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    goto :goto_0

    .line 537
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "orgObject":Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 540
    goto :goto_0
.end method

.method private static getAuthOrgList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
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
    const/4 v3, 0x0

    .line 517
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 526
    :goto_0
    return-object v2

    .line 521
    :cond_0
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 522
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v2, Lcom/alibaba/android/user/entry/UserProfileEntry$1;

    invoke-direct {v2}, Lcom/alibaba/android/user/entry/UserProfileEntry$1;-><init>()V

    invoke-virtual {v2}, Lcom/alibaba/android/user/entry/UserProfileEntry$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 526
    goto :goto_0
.end method

.method private static getAuthOrgString(Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;)Ljava/lang/String;
    .locals 4
    .param p0, "authOrgObject"    # Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    .prologue
    const/4 v2, 0x0

    .line 544
    if-nez p0, :cond_0

    .line 553
    :goto_0
    return-object v2

    .line 548
    :cond_0
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 549
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-static {v1, p0}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 550
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :catch_0
    move-exception v0

    .line 551
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getAuthOrgString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
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

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "authOrgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;>;"
    const/4 v2, 0x0

    .line 504
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-object v2

    .line 508
    :cond_1
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 509
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-static {v1, p1}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 510
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :catch_0
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getLabelsContentList(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "labels2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 474
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v2, v5

    .line 488
    :cond_0
    :goto_0
    return-object v2

    .line 478
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 480
    .local v4, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 482
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 483
    .local v3, "object":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 488
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "index":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "size":I
    :catch_0
    move-exception v6

    move-object v2, v5

    goto :goto_0
.end method

.method private getLabelsStringContent(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 492
    .local p1, "mlabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 493
    :cond_0
    const-string/jumbo v3, ""

    .line 500
    :goto_0
    return-object v3

    .line 495
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 496
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 497
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 498
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 500
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getOrgIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 557
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 566
    :goto_0
    return-object v2

    .line 561
    :cond_0
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 562
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v2, Lcom/alibaba/android/user/entry/UserProfileEntry$2;

    invoke-direct {v2}, Lcom/alibaba/android/user/entry/UserProfileEntry$2;-><init>()V

    invoke-virtual {v2}, Lcom/alibaba/android/user/entry/UserProfileEntry$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 563
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :catch_0
    move-exception v0

    .line 564
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 566
    goto :goto_0
.end method

.method private static getOrgIdListString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "orgIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 570
    if-nez p0, :cond_0

    .line 579
    :goto_0
    return-object v2

    .line 574
    :cond_0
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 575
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-static {v1, p0}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 576
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 596
    if-nez p0, :cond_0

    .line 605
    :goto_0
    return-object v2

    .line 600
    :cond_0
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    .line 601
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-static {v1, p0}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 602
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 268
    iput-wide v2, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->uid:J

    .line 269
    iput v1, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->profileType:I

    .line 270
    iput v1, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->tag:I

    .line 271
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->iconMediaId:Ljava/lang/String;

    .line 272
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->nick:Ljava/lang/String;

    .line 273
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->nickpinyin:Ljava/lang/String;

    .line 274
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->gender:Ljava/lang/String;

    .line 275
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->city:Ljava/lang/String;

    .line 276
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->stateCode:Ljava/lang/String;

    .line 277
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->mobile:Ljava/lang/String;

    .line 278
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->labels:Ljava/lang/String;

    .line 279
    iput-boolean v1, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->dataComplete:Z

    .line 280
    iput-boolean v1, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->isActive:Z

    .line 281
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->realName:Ljava/lang/String;

    .line 282
    iput v1, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->userType:I

    .line 283
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->extensation:Ljava/lang/String;

    .line 284
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->nickAlpha:Ljava/lang/String;

    .line 285
    iput-boolean v1, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->isOrgUser:Z

    .line 286
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->alias:Ljava/lang/String;

    .line 287
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->aliasPinyin:Ljava/lang/String;

    .line 288
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->dingTalkId:Ljava/lang/String;

    .line 289
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->email:Ljava/lang/String;

    .line 290
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->authOrg:Ljava/lang/String;

    .line 291
    iput-wide v2, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->activeTime:J

    .line 292
    iput v1, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->status:I

    .line 293
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->orgEmail:Ljava/lang/String;

    .line 294
    iput v1, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->industryCode:I

    .line 295
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->industry:Ljava/lang/String;

    .line 296
    iput v1, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->numberType:I

    .line 297
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->orgInfo:Ljava/lang/String;

    .line 298
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->bizOrgInfo:Ljava/lang/String;

    .line 299
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->orgIdList:Ljava/lang/String;

    .line 300
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->settings:Ljava/lang/String;

    .line 301
    iput v1, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->latestTag:I

    .line 302
    iput-object v0, p0, Lcom/alibaba/android/user/entry/UserProfileEntry;->authOrgName:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public toDBEntry(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/user/entry/UserProfileEntry;
    .locals 5
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x7c

    .line 430
    new-instance v0, Lcom/alibaba/android/user/entry/UserProfileEntry;

    invoke-direct {v0}, Lcom/alibaba/android/user/entry/UserProfileEntry;-><init>()V

    .line 431
    .local v0, "entry":Lcom/alibaba/android/user/entry/UserProfileEntry;
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->uid:J

    .line 432
    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->ver:I

    iput v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->tag:I

    .line 433
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->iconMediaId:Ljava/lang/String;

    .line 434
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->nick:Ljava/lang/String;

    .line 435
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->nickpinyin:Ljava/lang/String;

    .line 436
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->alias:Ljava/lang/String;

    .line 437
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->aliasPinyin:Ljava/lang/String;

    .line 438
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->gender:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->gender:Ljava/lang/String;

    .line 439
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->city:Ljava/lang/String;

    .line 440
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->stateCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->stateCode:Ljava/lang/String;

    .line 441
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->mobile:Ljava/lang/String;

    .line 442
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->labels:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getLabelsStringContent(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->labels:Ljava/lang/String;

    .line 443
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->authOrgs:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getAuthOrgString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->authOrg:Ljava/lang/String;

    .line 444
    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isDataComplete:Z

    iput-boolean v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->dataComplete:Z

    .line 445
    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isOrgUser:Z

    iput-boolean v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->isOrgUser:Z

    .line 446
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    .line 3022
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 446
    iput-boolean v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->isActive:Z

    .line 447
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->realName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->realName:Ljava/lang/String;

    .line 448
    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    iput v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->userType:I

    .line 449
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->extension:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->extensation:Ljava/lang/String;

    .line 450
    iget-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->aliasPinyin:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, ""

    iget-object v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->aliasPinyin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 451
    iget-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->aliasPinyin:Ljava/lang/String;

    invoke-static {v1, v4}, Lcpz;->a(Ljava/lang/String;C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->nickAlpha:Ljava/lang/String;

    .line 455
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->dingTalkId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->dingTalkId:Ljava/lang/String;

    .line 456
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->email:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->email:Ljava/lang/String;

    .line 457
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->activeTime:J

    iput-wide v2, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->activeTime:J

    .line 458
    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->status:I

    iput v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->status:I

    .line 459
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgEmail:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->orgEmail:Ljava/lang/String;

    .line 460
    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industryCode:I

    iput v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->industryCode:I

    .line 461
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->industry:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->industry:Ljava/lang/String;

    .line 462
    iget v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->numberType:I

    iput v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->numberType:I

    .line 463
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    invoke-static {v1}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getAuthOrgString(Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->orgInfo:Ljava/lang/String;

    .line 464
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;->orgName:Ljava/lang/String;

    :goto_1
    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->authOrgName:Ljava/lang/String;

    .line 465
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->bizOrgInfo:Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;

    invoke-static {v1}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getAuthOrgString(Lcom/alibaba/android/dingtalk/userbase/model/AuthOrgObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->bizOrgInfo:Ljava/lang/String;

    .line 466
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgIdList:Ljava/util/List;

    invoke-static {v1}, Lcom/alibaba/android/user/entry/UserProfileEntry;->getOrgIdListString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->orgIdList:Ljava/lang/String;

    .line 467
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->settings:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileSettingsObject;

    invoke-static {v1}, Lcom/alibaba/android/user/entry/UserProfileEntry;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->settings:Ljava/lang/String;

    .line 468
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->latestVer:J

    long-to-int v1, v2

    iput v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->latestTag:I

    .line 469
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->orgInfoStr:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->orgInfoStr:Ljava/lang/String;

    .line 470
    return-object v0

    .line 452
    :cond_1
    iget-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->nickpinyin:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->nickpinyin:Ljava/lang/String;

    invoke-static {v1, v4}, Lcpz;->a(Ljava/lang/String;C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/entry/UserProfileEntry;->nickAlpha:Ljava/lang/String;

    goto :goto_0

    .line 464
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_1
.end method

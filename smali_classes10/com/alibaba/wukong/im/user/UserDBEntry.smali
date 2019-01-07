.class public Lcom/alibaba/wukong/im/user/UserDBEntry;
.super Lcom/alibaba/bee/impl/table/BaseTableEntry;
.source "UserDBEntry.java"


# annotations
.annotation runtime Lcom/alibaba/bee/impl/table/DBTable;
    name = "tbuser"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "tbuser"


# instance fields
.field public mAlias:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "alias"
        sort = 0xe
    .end annotation
.end field

.field public mAliasPinyin:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "aliasPinyin"
        sort = 0xf
    .end annotation
.end field

.field public mAvatar:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "avatar"
        sort = 0x6
    .end annotation
.end field

.field public mBirthday:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "birthday"
        sort = 0x8
    .end annotation
.end field

.field public mCity:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "city"
        sort = 0x9
    .end annotation
.end field

.field public mCountryCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "countryCode"
        sort = 0xa
    .end annotation
.end field

.field public mExtension:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "ext"
        sort = 0xd
    .end annotation
.end field

.field public mGender:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "gender"
        sort = 0x5
    .end annotation
.end field

.field public mIsActive:I
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        defaultValue = "0"
        name = "isActive"
        sort = 0xc
    .end annotation
.end field

.field public mMobile:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        indexName = "idx_user_mobile:1"
        name = "mobile"
        sort = 0xb
    .end annotation
.end field

.field public mNickname:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "nickname"
        sort = 0x3
    .end annotation
.end field

.field public mNicknamePinyin:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "nicknamePinyin"
        sort = 0x4
    .end annotation
.end field

.field public mOpenId:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "openId"
        nullable = false
        sort = 0x1
        uniqueIndexName = "idx_user_id:1"
    .end annotation
.end field

.field public mRemark:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "remark"
        sort = 0x7
    .end annotation
.end field

.field public mRemarkExtension:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "remarkExt"
        sort = 0x11
    .end annotation
.end field

.field public mRemarkSound:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "remarkSound"
        sort = 0x10
    .end annotation
.end field

.field public mTag:J
    .annotation runtime Lcom/alibaba/bee/impl/table/DBColumn;
        name = "tag"
        nullable = false
        sort = 0x2
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/bee/impl/table/BaseTableEntry;-><init>()V

    .line 137
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 118
    iput-wide v2, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mOpenId:J

    .line 119
    iput-wide v2, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mTag:J

    .line 120
    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mNickname:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mNicknamePinyin:Ljava/lang/String;

    .line 122
    iput v1, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mGender:I

    .line 123
    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mAvatar:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mRemark:Ljava/lang/String;

    .line 125
    iput-wide v2, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mBirthday:J

    .line 126
    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mCity:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mCountryCode:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mMobile:Ljava/lang/String;

    .line 129
    iput v1, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mIsActive:I

    .line 130
    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mExtension:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mAlias:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mAliasPinyin:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mRemarkSound:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserDBEntry;->mRemarkExtension:Ljava/lang/String;

    .line 135
    return-void
.end method

.class public Lcom/alibaba/wukong/im/user/UserImpl;
.super Ljava/lang/Object;
.source "UserImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/User;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x257307427065823L


# instance fields
.field public mAlias:Ljava/lang/String;

.field public mAliasPinyin:Ljava/lang/String;

.field public mAvatar:Ljava/lang/String;

.field public mBirthday:J

.field public mCity:Ljava/lang/String;

.field public mCountryCode:Ljava/lang/String;

.field public mExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mGender:I

.field public mIsActive:Z

.field public mMobile:Ljava/lang/String;

.field public mNickname:Ljava/lang/String;

.field public mNicknamePinyin:Ljava/lang/String;

.field public mOpenId:J

.field public mRemark:Ljava/lang/String;

.field public mRemarkExtension:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRemarkSound:Ljava/lang/String;

.field public mTag:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAliasModel(Lcom/alibaba/wukong/idl/user/models/AliasModel;)Lcom/alibaba/wukong/im/user/UserImpl;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/wukong/idl/user/models/AliasModel;

    .prologue
    .line 301
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 309
    :goto_0
    return-object v0

    .line 303
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/user/UserImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/user/UserImpl;-><init>()V

    .line 304
    .local v0, "object":Lcom/alibaba/wukong/im/user/UserImpl;
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/AliasModel;->openId:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    .line 305
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/AliasModel;->alias:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mAlias:Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/AliasModel;->pinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mAliasPinyin:Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/AliasModel;->audio:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkSound:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/AliasModel;->extension:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    goto :goto_0
.end method

.method public static fromProfileModel(Lcom/alibaba/wukong/idl/user/models/ProfileModel;)Lcom/alibaba/wukong/im/user/UserImpl;
    .locals 4
    .param p0, "model"    # Lcom/alibaba/wukong/idl/user/models/ProfileModel;

    .prologue
    .line 281
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 297
    :goto_0
    return-object v0

    .line 283
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/im/user/UserImpl;

    invoke-direct {v0}, Lcom/alibaba/wukong/im/user/UserImpl;-><init>()V

    .line 284
    .local v0, "object":Lcom/alibaba/wukong/im/user/UserImpl;
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->openId:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    .line 285
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->ver:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    .line 286
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mNickname:Ljava/lang/String;

    .line 287
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->nickPinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mNicknamePinyin:Ljava/lang/String;

    .line 288
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->gender:Ljava/lang/Integer;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Integer;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mGender:I

    .line 289
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mAvatar:Ljava/lang/String;

    .line 290
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->remark:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemark:Ljava/lang/String;

    .line 291
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->dob:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mBirthday:J

    .line 292
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mCity:Ljava/lang/String;

    .line 293
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->stateCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mCountryCode:Ljava/lang/String;

    .line 294
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mMobile:Ljava/lang/String;

    .line 295
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mIsActive:Z

    .line 296
    iget-object v1, p0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->extension:Ljava/lang/String;

    invoke-static {v1}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public alias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public aliasPinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mAliasPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public avatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public birthday()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mBirthday:J

    return-wide v0
.end method

.method public city()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public copyFromUser(Lcom/alibaba/wukong/im/user/UserImpl;)V
    .locals 2
    .param p1, "object"    # Lcom/alibaba/wukong/im/user/UserImpl;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 313
    if-nez p1, :cond_0

    .line 330
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-wide v0, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    .line 316
    iget-wide v0, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    .line 317
    iget-object v0, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mNickname:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mNickname:Ljava/lang/String;

    .line 318
    iget-object v0, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mNicknamePinyin:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mNicknamePinyin:Ljava/lang/String;

    .line 319
    iget v0, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mGender:I

    iput v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mGender:I

    .line 320
    iget-object v0, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mAvatar:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mAvatar:Ljava/lang/String;

    .line 321
    iget-object v0, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mRemark:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemark:Ljava/lang/String;

    .line 322
    iget-wide v0, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mBirthday:J

    iput-wide v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mBirthday:J

    .line 323
    iget-object v0, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mCity:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mCity:Ljava/lang/String;

    .line 324
    iget-object v0, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mCountryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mCountryCode:Ljava/lang/String;

    .line 325
    iget-object v0, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mMobile:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mMobile:Ljava/lang/String;

    .line 326
    iget-boolean v0, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mIsActive:Z

    iput-boolean v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mIsActive:Z

    .line 327
    iget-object v0, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1
.end method

.method public countryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 337
    if-ne p0, p1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v1

    .line 339
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 340
    goto :goto_0

    .line 341
    :cond_2
    instance-of v3, p1, Lcom/alibaba/wukong/im/user/UserImpl;

    if-nez v3, :cond_3

    move v1, v2

    .line 342
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 344
    check-cast v0, Lcom/alibaba/wukong/im/user/UserImpl;

    .line 345
    .local v0, "other":Lcom/alibaba/wukong/im/user/UserImpl;
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/user/UserImpl;->openId()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public extension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public extension()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    goto :goto_0
.end method

.method public gender()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mGender:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 351
    iget-wide v2, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    iget-wide v4, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 352
    .local v0, "result":I
    return v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mIsActive:Z

    return v0
.end method

.method public mobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mMobile:Ljava/lang/String;

    return-object v0
.end method

.method public nickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mNickname:Ljava/lang/String;

    return-object v0
.end method

.method public nicknamePinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mNicknamePinyin:Ljava/lang/String;

    return-object v0
.end method

.method public openId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    return-wide v0
.end method

.method public remark()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemark:Ljava/lang/String;

    return-object v0
.end method

.method public remarkExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public remarkExtension()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkExtension:Ljava/util/Map;

    goto :goto_0
.end method

.method public remarkSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemarkSound:Ljava/lang/String;

    return-object v0
.end method

.method public toProfileModel()Lcom/alibaba/wukong/idl/user/models/ProfileModel;
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 263
    new-instance v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;

    invoke-direct {v0}, Lcom/alibaba/wukong/idl/user/models/ProfileModel;-><init>()V

    .line 264
    .local v0, "model":Lcom/alibaba/wukong/idl/user/models/ProfileModel;
    iget-wide v4, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_0

    move-object v1, v2

    :goto_0
    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->openId:Ljava/lang/Long;

    .line 265
    iget-wide v4, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    move-object v1, v2

    :goto_1
    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->ver:Ljava/lang/Long;

    .line 266
    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mNickname:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->nick:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mNicknamePinyin:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->nickPinyin:Ljava/lang/String;

    .line 268
    iget v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mGender:I

    if-gtz v1, :cond_2

    move-object v1, v2

    :goto_2
    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->gender:Ljava/lang/Integer;

    .line 269
    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mAvatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->avatar:Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mRemark:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->remark:Ljava/lang/String;

    .line 271
    iget-wide v4, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mBirthday:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_3

    :goto_3
    iput-object v2, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->dob:Ljava/lang/Long;

    .line 272
    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mCity:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->city:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mCountryCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->stateCode:Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mMobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->mobile:Ljava/lang/String;

    .line 275
    iget-boolean v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mIsActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->isActive:Ljava/lang/Boolean;

    .line 276
    iget-object v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mExtension:Ljava/util/Map;

    invoke-static {v1}, Lieb;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/idl/user/models/ProfileModel;->extension:Ljava/lang/String;

    .line 277
    return-object v0

    .line 264
    :cond_0
    iget-wide v4, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mOpenId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 265
    :cond_1
    iget-wide v4, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    .line 268
    :cond_2
    iget v1, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mGender:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 271
    :cond_3
    iget-wide v2, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mBirthday:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3
.end method

.method public version()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/alibaba/wukong/im/user/UserImpl;->mTag:J

    return-wide v0
.end method

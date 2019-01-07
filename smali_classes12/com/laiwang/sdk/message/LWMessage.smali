.class public Lcom/laiwang/sdk/message/LWMessage;
.super Ljava/lang/Object;
.source "LWMessage.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljaj;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/laiwang/sdk/message/LWMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LWMessage"

.field protected static final URL_MAX_LEN:I = 0x2800


# instance fields
.field protected appUrl:Ljava/lang/String;

.field protected mLWVersion:I

.field private mThumbImage:Ljal;

.field protected msgActivity:Ljava/lang/String;

.field protected msgAppKey:Ljava/lang/String;

.field protected msgChat:Ljava/lang/String;

.field protected msgContent:Ljava/lang/String;

.field protected msgIcon:Ljava/lang/String;

.field protected msgImageThumbBMP:Landroid/graphics/Bitmap;

.field protected msgImageThumbPath:Ljava/lang/String;

.field protected msgImageURL:Ljava/lang/String;

.field protected msgLinkUrl:Ljava/lang/String;

.field protected msgSecret:Ljava/lang/String;

.field protected msgShareType:Ljava/lang/String;

.field protected msgSource:Ljava/lang/String;

.field protected msgTitle:Ljava/lang/String;

.field protected msgType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/laiwang/sdk/message/LWMessage$1;

    invoke-direct {v0}, Lcom/laiwang/sdk/message/LWMessage$1;-><init>()V

    sput-object v0, Lcom/laiwang/sdk/message/LWMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0, p1}, Lcom/laiwang/sdk/message/LWMessage;->readFromParcel(Landroid/os/Parcel;)V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/laiwang/sdk/message/LWMessage;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/laiwang/sdk/message/LWMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 374
    iget-object v1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 375
    :cond_0
    const-string/jumbo v1, "LWMessage"

    const-string/jumbo v2, "title are null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_0
    return v0

    .line 379
    :cond_1
    iget-object v1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgLinkUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgLinkUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgLinkUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x2800

    if-le v1, v2, :cond_3

    .line 380
    :cond_2
    const-string/jumbo v1, "LWMessage"

    const-string/jumbo v2, "videoUrl is too long"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :cond_3
    iget-object v1, p0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    if-nez v1, :cond_4

    .line 385
    const/4 v0, 0x1

    goto :goto_0

    .line 388
    :cond_4
    sget v1, Ljal;->c:I

    iget-object v2, p0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    invoke-virtual {v2}, Ljal;->a()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/laiwang/sdk/message/LWMessage;->mLWVersion:I

    const v2, 0x20140102

    if-ge v1, v2, :cond_5

    .line 389
    const-string/jumbo v1, "LWMessage"

    const-string/jumbo v2, "version is not support!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string/jumbo v1, "\u6682\u4e0d\u652f\u6301\u60a8\u7684\u5206\u4eab,\u8bf7\u53ca\u65f6\u66f4\u65b0\u6765\u5f80!"

    invoke-static {}, Ljap;->a()Landroid/app/Application;

    move-result-object v2

    invoke-static {v1, v2}, Ljar;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 394
    :cond_5
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    invoke-virtual {v0}, Ljal;->checkArgs()Z

    move-result v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)Ljaj;
    .locals 24
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 306
    const-string/jumbo v18, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 307
    .local v17, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/laiwang/sdk/message/LWMessage;->setMessageTitle(Ljava/lang/String;)V

    .line 308
    const-string/jumbo v18, "content"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 309
    .local v15, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/laiwang/sdk/message/LWMessage;->setMessageText(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v18, "chat"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "chat":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/laiwang/sdk/message/LWMessage;->setMessageChat(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v18, "content"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 313
    .local v8, "description":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/laiwang/sdk/message/LWMessage;->setMessageText(Ljava/lang/String;)V

    .line 314
    const-string/jumbo v18, "picUrl"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 315
    .local v12, "picUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/laiwang/sdk/message/LWMessage;->setMessageImageURL(Ljava/lang/String;)V

    .line 316
    const-string/jumbo v18, "source"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 317
    .local v14, "source":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/laiwang/sdk/message/LWMessage;->setMesssageSource(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v18, "icon"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 319
    .local v9, "icon":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/laiwang/sdk/message/LWMessage;->setMessageIcon(Ljava/lang/String;)V

    .line 320
    const-string/jumbo v18, "link"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 321
    .local v11, "link":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/laiwang/sdk/message/LWMessage;->setMessageLinkUrl(Ljava/lang/String;)V

    .line 322
    const-string/jumbo v18, "clientId"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, "clientId":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/laiwang/sdk/message/LWMessage;->setAppkey(Ljava/lang/String;)V

    .line 324
    const-string/jumbo v18, "clientSecret"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 325
    .local v6, "clientSecret":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/laiwang/sdk/message/LWMessage;->setSecret(Ljava/lang/String;)V

    .line 326
    const-string/jumbo v18, "contentUrl"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, "contentUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/laiwang/sdk/message/LWMessage;->setMessageLinkUrl(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v18, "shareType"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 329
    .local v13, "shareType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/laiwang/sdk/message/LWMessage;->setShareType(Ljava/lang/String;)V

    .line 330
    const-string/jumbo v18, "reqeustTYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 332
    const/16 v18, 0x6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 335
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/laiwang/sdk/message/LWMessage;->mLWVersion:I

    move/from16 v18, v0

    const v19, 0x20140102

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 336
    const-string/jumbo v18, "thumbImage"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    .line 337
    .local v16, "thumbImage":Landroid/os/Bundle;
    if-eqz v16, :cond_1

    .line 338
    new-instance v18, Ljal;

    invoke-direct/range {v18 .. v18}, Ljal;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljal;->a(Landroid/os/Bundle;)Ljak;

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljal;->a()I

    move-result v18

    if-nez v18, :cond_2

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljal;->b()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/laiwang/sdk/message/LWMessage;->setMessageImageURL(Ljava/lang/String;)V

    .line 352
    .end local v16    # "thumbImage":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-object p0

    .line 345
    .restart local v16    # "thumbImage":Landroid/os/Bundle;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljal;->d()[B

    move-result-object v18

    .line 1221
    invoke-static/range {v18 .. v18}, Ljas;->a([B)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1223
    if-eqz v20, :cond_6

    .line 1228
    invoke-static {}, Ljap;->a()Landroid/app/Application;

    move-result-object v19

    .line 3402
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v18

    .line 3403
    const-string/jumbo v21, "mounted"

    .line 3402
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 2424
    if-eqz v18, :cond_5

    .line 2426
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x8

    move/from16 v0, v18

    move/from16 v1, v21

    if-lt v0, v1, :cond_4

    .line 3407
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v18

    .line 2435
    :goto_1
    if-eqz v18, :cond_3

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_3

    .line 2436
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 1443
    :cond_3
    new-instance v19, Ljava/io/File;

    const-string/jumbo v21, "uil-images"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1444
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_7

    .line 1445
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdir()Z

    move-result v21

    if-nez v21, :cond_7

    .line 1230
    :goto_2
    if-eqz v18, :cond_6

    .line 1234
    new-instance v19, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "laiwang_share_"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ".png"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1235
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljas;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v18

    .line 1237
    if-eqz v18, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 346
    .local v10, "imagePath":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljal;->b(Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/laiwang/sdk/message/LWMessage;->setMessageImageURL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3417
    .end local v10    # "imagePath":Ljava/lang/String;
    :cond_4
    new-instance v18, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    .line 3418
    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "/Android/data/"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3419
    const-string/jumbo v22, "/cache/"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 3418
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 3417
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2433
    :cond_5
    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v18

    goto/16 :goto_1

    .line 1237
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    move-object/from16 v18, v19

    goto/16 :goto_2
.end method

.method public bridge synthetic fromBundle(Landroid/os/Bundle;)Ljak;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/laiwang/sdk/message/LWMessage;->fromBundle(Landroid/os/Bundle;)Ljaj;

    move-result-object v0

    return-object v0
.end method

.method public getAppUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->appUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLWMessageImage()Ljal;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    return-object v0
.end method

.method public getMessageActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageChat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgChat:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageImageThumbBMP()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageThumbBMP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMessageImageThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgLinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSource:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageThumb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageURL()Ljava/lang/String;

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageThumbPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    return v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getShareType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgShareType:Ljava/lang/String;

    return-object v0
.end method

.method public isIMessageMusic()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x3

    iput v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 247
    return-void
.end method

.method public isMessageComponent()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x6

    iput v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 154
    return-void
.end method

.method public isMessageImage()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x2

    iput v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 145
    return-void
.end method

.method public isMessageLink()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x5

    iput v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 158
    return-void
.end method

.method public isMessageText()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    iput v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 141
    return-void
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "prev"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgShareType:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgAppKey:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSecret:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgContent:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSource:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgIcon:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageURL:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageThumbPath:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgTitle:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgLinkUrl:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgChat:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgActivity:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setAppUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "appUrl"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->appUrl:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgAppKey:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setImageThumb(Ljal;)V
    .locals 0
    .param p1, "lwmsgImage"    # Ljal;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    .line 366
    return-void
.end method

.method public setLWVersion(I)V
    .locals 0
    .param p1, "nLWVersion"    # I

    .prologue
    .line 399
    iput p1, p0, Lcom/laiwang/sdk/message/LWMessage;->mLWVersion:I

    .line 400
    return-void
.end method

.method public setMessageActiviy(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgActivity"    # Ljava/lang/String;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgActivity:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setMessageChat(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgChat"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgChat:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setMessageIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgIcon"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgIcon:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setMessageImageThumbBMP(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "thumbBMP"    # Landroid/graphics/Bitmap;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageThumbBMP:Landroid/graphics/Bitmap;

    .line 234
    return-void
.end method

.method public setMessageImageThumbPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageImageThumbUrl"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageThumbPath:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setMessageImageURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageImageUrl"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageURL:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setMessageLinkUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgLinkUrl:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setMessageText(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgContent"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgContent:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setMessageTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgTitle:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setMessageType(I)V
    .locals 0
    .param p1, "msgType"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    .line 243
    return-void
.end method

.method public setMesssageSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgSource"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSource:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgSecret"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSecret:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setShareType(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgShareType"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/laiwang/sdk/message/LWMessage;->msgShareType:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    .local v0, "toBundle":Landroid/os/Bundle;
    const-string/jumbo v1, "reqeustTYPE"

    iget v2, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    const-string/jumbo v1, "title"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string/jumbo v1, "content"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string/jumbo v1, "chat"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageChat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 269
    const-string/jumbo v1, "picUrl"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :goto_0
    const-string/jumbo v1, "source"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v1, "icon"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v1, "link"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageLinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v1, "clientId"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getAppkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v1, "clientSecret"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v1, "contentUrl"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageLinkUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string/jumbo v1, "DYNAMIC"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getShareType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    const-string/jumbo v1, "DYNAMIC2"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getShareType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 283
    :cond_0
    const-string/jumbo v1, "shareType"

    const-string/jumbo v2, "DYNAMIC"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_1
    iget-object v1, p0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    if-nez v1, :cond_4

    .line 301
    :cond_1
    :goto_2
    return-object v0

    .line 271
    :cond_2
    const-string/jumbo v1, "picUrl"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getMessageImageThumbPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_3
    const-string/jumbo v1, "shareType"

    invoke-virtual {p0}, Lcom/laiwang/sdk/message/LWMessage;->getShareType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :cond_4
    iget v1, p0, Lcom/laiwang/sdk/message/LWMessage;->mLWVersion:I

    const v2, 0x20140102

    if-ge v1, v2, :cond_6

    .line 293
    iget-object v1, p0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    invoke-virtual {v1}, Ljal;->a()I

    move-result v1

    if-nez v1, :cond_5

    .line 294
    const-string/jumbo v1, "picUrl"

    iget-object v2, p0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    invoke-virtual {v2}, Ljal;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 295
    :cond_5
    sget v1, Ljal;->b:I

    iget-object v2, p0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    invoke-virtual {v2}, Ljal;->a()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 296
    const-string/jumbo v1, "picUrl"

    iget-object v2, p0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    invoke-virtual {v2}, Ljal;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 299
    :cond_6
    const-string/jumbo v1, "thumbImage"

    iget-object v2, p0, Lcom/laiwang/sdk/message/LWMessage;->mThumbImage:Ljal;

    invoke-virtual {v2}, Ljal;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 90
    iget v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgShareType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgAppKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgImageThumbPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgLinkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgChat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/laiwang/sdk/message/LWMessage;->msgActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return-void
.end method

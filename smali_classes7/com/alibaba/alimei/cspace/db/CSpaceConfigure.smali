.class public Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;
.super Ljava/lang/Object;
.source "CSpaceConfigure.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "cspace.db"

.field public static final DATABASE_VERSION:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CSpaceConfigure"

.field public static final mConfiguration:Lcom/alibaba/alimei/orm/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .prologue
    .line 42
    new-instance v23, Lcom/alibaba/alimei/orm/Configuration;

    const-string/jumbo v24, "cspace.db"

    const/16 v25, 0x5

    invoke-direct/range {v23 .. v25}, Lcom/alibaba/alimei/orm/Configuration;-><init>(Ljava/lang/String;I)V

    .line 43
    sput-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    const-string/jumbo v24, "cspace_dentry"

    const-class v25, Lcom/alibaba/alimei/cspace/db/entry/DentryEntry;

    invoke-virtual/range {v23 .. v25}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/String;Ljava/lang/Class;)V

    .line 44
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    const-string/jumbo v24, "dentry_version"

    const-class v25, Lcom/alibaba/alimei/cspace/db/entry/DentryVersionEntry;

    invoke-virtual/range {v23 .. v25}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    const-string/jumbo v24, "dentry_sync_info"

    const-class v25, Lcom/alibaba/alimei/cspace/db/entry/DentrySyncEntry;

    invoke-virtual/range {v23 .. v25}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/String;Ljava/lang/Class;)V

    .line 46
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    const-string/jumbo v24, "favorite"

    const-class v25, Lcom/alibaba/alimei/fav/db/entry/FavoriteEntry;

    invoke-virtual/range {v23 .. v25}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/String;Ljava/lang/Class;)V

    .line 47
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    const-string/jumbo v24, "fav_sync_info"

    const-class v25, Lcom/alibaba/alimei/fav/db/entry/FavoriteSyncEntry;

    invoke-virtual/range {v23 .. v25}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/String;Ljava/lang/Class;)V

    .line 48
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    const-string/jumbo v24, "rct_operation"

    const-class v25, Lcom/alibaba/alimei/cspace/db/entry/RecentOperationEntry;

    invoke-virtual/range {v23 .. v25}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/String;Ljava/lang/Class;)V

    .line 49
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    const-string/jumbo v24, "rct_dentry"

    const-class v25, Lcom/alibaba/alimei/cspace/db/entry/RecentDentryEntry;

    invoke-virtual/range {v23 .. v25}, Lcom/alibaba/alimei/orm/Configuration;->addTableEntry(Ljava/lang/String;Ljava/lang/Class;)V

    .line 54
    new-instance v2, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$1;

    invoke-direct {v2}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$1;-><init>()V

    .line 72
    .local v2, "migration":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 78
    new-instance v3, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$2;

    invoke-direct {v3}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$2;-><init>()V

    .line 107
    .local v3, "migrationAddCount":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 112
    new-instance v4, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$3;

    invoke-direct {v4}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$3;-><init>()V

    .line 130
    .local v4, "migrationAddDentryId":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 132
    new-instance v6, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$4;

    invoke-direct {v6}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$4;-><init>()V

    .line 151
    .local v6, "migrationUpdateAccount":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 153
    new-instance v5, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$5;

    invoke-direct {v5}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$5;-><init>()V

    .line 194
    .local v5, "migrationFavoriteSearchUpdate":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 196
    new-instance v12, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$6;

    invoke-direct {v12}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$6;-><init>()V

    .line 214
    .local v12, "spaceAddExpireColumn":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 216
    new-instance v21, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$7;

    invoke-direct/range {v21 .. v21}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$7;-><init>()V

    .line 235
    .local v21, "spaceAddStatisticColumn":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 237
    new-instance v8, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$8;

    invoke-direct {v8}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$8;-><init>()V

    .line 259
    .local v8, "spaceAddCryptColumns":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 261
    new-instance v22, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$9;

    invoke-direct/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$9;-><init>()V

    .line 281
    .local v22, "spaceRecentAddCryptColumns":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 283
    new-instance v15, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$10;

    invoke-direct {v15}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$10;-><init>()V

    .line 303
    .local v15, "spaceAddLastCommentIdColumn":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 305
    new-instance v7, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$11;

    invoke-direct {v7}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$11;-><init>()V

    .line 324
    .local v7, "spaceAddAuthFlagColumn":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 329
    new-instance v17, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$12;

    invoke-direct/range {v17 .. v17}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$12;-><init>()V

    .line 350
    .local v17, "spaceAddMeidaInfoColumn":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 355
    new-instance v16, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$13;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$13;-><init>()V

    .line 376
    .local v16, "spaceAddMeidaExtraInfoColumn":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 378
    new-instance v18, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$14;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$14;-><init>()V

    .line 399
    .local v18, "spaceAddOnlineEditColumn":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 401
    new-instance v19, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$15;

    invoke-direct/range {v19 .. v19}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$15;-><init>()V

    .line 418
    .local v19, "spaceAddOnlineEditUnFinishEditorCountColumn":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 420
    new-instance v20, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$16;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$16;-><init>()V

    .line 436
    .local v20, "spaceAddSpaceTypeBelongColumn":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 439
    new-instance v13, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$17;

    invoke-direct {v13}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$17;-><init>()V

    .line 455
    .local v13, "spaceAddFeatureFlagColumn":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 457
    new-instance v14, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$18;

    invoke-direct {v14}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$18;-><init>()V

    .line 474
    .local v14, "spaceAddIsESafeNetEncryptColumn":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 476
    new-instance v11, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$19;

    invoke-direct {v11}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$19;-><init>()V

    .line 491
    .local v11, "spaceAddDisplayAlbumColumn":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 493
    new-instance v9, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$20;

    invoke-direct {v9}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$20;-><init>()V

    .line 513
    .local v9, "spaceAddDentryLinkColumn":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 515
    new-instance v10, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$21;

    invoke-direct {v10}, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure$21;-><init>()V

    .line 530
    .local v10, "spaceAddDentryOrgIdColumn":Lcom/alibaba/alimei/orm/migration/Migration;
    sget-object v23, Lcom/alibaba/alimei/cspace/db/CSpaceConfigure;->mConfiguration:Lcom/alibaba/alimei/orm/Configuration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/alibaba/alimei/orm/Configuration;->addMigration(Lcom/alibaba/alimei/orm/migration/Migration;)V

    .line 531
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

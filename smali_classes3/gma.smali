.class public final Lgma;
.super Ljava/lang/Object;
.source "SpaceMenuObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgma$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 116
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "action_file_online_edit"

    aput-object v1, v0, v4

    const-string/jumbo v1, "action_file_local_edit"

    aput-object v1, v0, v5

    const-string/jumbo v1, "action_file_download"

    aput-object v1, v0, v6

    const-string/jumbo v1, "action_file_open"

    aput-object v1, v0, v3

    const-string/jumbo v1, "action_file_send_file_link"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "action_file_send_to_contact"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "action_file_comment"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "action_file_release_edit_lock"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "action_file_history"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "action_file_invite_online_edit"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "action_file_invite_local_edit"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "action_file_save_to_ding_drive"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "action_file_send_to_assistant"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "action_file_share_as_link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "action_file_send_as_email"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "action_file_like"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "action_file_print"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "action_file_rename"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "action_file_re_path"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "action_file_delete"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "action_file_add_to_favourite"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "action_folder_acl_view"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "action_folder_acl_modify"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lgma;->a:Ljava/util/List;

    .line 142
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "action_file_release_edit_lock"

    aput-object v1, v0, v4

    const-string/jumbo v1, "action_file_history"

    aput-object v1, v0, v5

    const-string/jumbo v1, "action_file_online_edit"

    aput-object v1, v0, v6

    const-string/jumbo v1, "action_file_local_edit"

    aput-object v1, v0, v3

    const-string/jumbo v1, "action_file_send_file_link"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "action_link_open_parent_folder"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "action_folder_acl_view"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "action_folder_acl_modify"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "action_file_invite_online_edit"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "action_file_invite_local_edit"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "action_file_send_to_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "action_file_save_to_ding_drive"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "action_file_send_to_assistant"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "action_file_share_as_link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "action_file_send_as_email"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "action_file_like"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "action_file_comment"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "action_file_print"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "action_file_rename"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "action_file_re_path"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "action_file_delete"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "action_file_add_to_favourite"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lgma;->b:Ljava/util/List;

    .line 167
    new-instance v0, Lcom/alibaba/dingtalk/cspace/menus/SpaceMenuObjectFactory$1;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/menus/SpaceMenuObjectFactory$1;-><init>()V

    sput-object v0, Lgma;->c:Ljava/util/Map;

    .line 194
    new-instance v0, Lcom/alibaba/dingtalk/cspace/menus/SpaceMenuObjectFactory$2;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/menus/SpaceMenuObjectFactory$2;-><init>()V

    sput-object v0, Lgma;->d:Ljava/util/Map;

    .line 221
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0xa

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x1e

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0xfa

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x50

    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x6e

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 227
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x122

    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x12c

    .line 229
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 221
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lgma;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static a(Ljava/util/List;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;ILcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
    .locals 2
    .param p1, "menuBottomView"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
    .param p2, "pageTag"    # I
    .param p3, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;",
            "I",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ")",
            "Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p2}, Lgma;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 429
    .local v0, "menuIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v0, p1, p2, p3}, Lgma;->b(Ljava/util/List;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;ILcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    move-result-object v1

    return-object v1
.end method

.method private static a(Lglr$d;Lgma$a;)Lglr$d;
    .locals 4
    .param p1, "factoryParam"    # Lgma$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lglr$d;",
            ">(TT;",
            "Lgma$a;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "authParam":Lglr$d;, "TT;"
    const/4 v0, 0x1

    .line 540
    if-nez p1, :cond_0

    .line 551
    :goto_0
    return-object p0

    .line 543
    :cond_0
    iget v1, p1, Lgma$a;->a:I

    invoke-virtual {p0, v1}, Lglr$d;->a(I)V

    .line 544
    iget-wide v2, p1, Lgma$a;->b:J

    invoke-virtual {p0, v2, v3}, Lglr$d;->a(J)V

    .line 545
    iget-object v1, p1, Lgma$a;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lglr$d;->a(Ljava/lang/String;)V

    .line 546
    iget-boolean v1, p1, Lgma$a;->e:Z

    invoke-virtual {p0, v1}, Lglr$d;->c(Z)V

    .line 547
    iget-object v1, p1, Lgma$a;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p0, v1}, Lglr$d;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 548
    iget-boolean v1, p1, Lgma$a;->i:Z

    invoke-virtual {p0, v1}, Lglr$d;->a(Z)V

    .line 549
    iget v1, p1, Lgma$a;->h:I

    if-ne v1, v0, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lglr$d;->b(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(ILcom/alibaba/alimei/cspace/model/DentryModel;)Lgqm;
    .locals 12
    .param p0, "menuId"    # I
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 248
    sparse-switch p0, :sswitch_data_0

    .line 1389
    :cond_0
    :goto_0
    return-object v5

    .line 251
    :sswitch_0
    sget v6, Lfzs$h;->cspace_menu_download:I

    invoke-static {v6}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "downloadText":Ljava/lang/String;
    if-nez p1, :cond_1

    move-object v1, v2

    .line 254
    .local v1, "downloadMenuName":Ljava/lang/String;
    :goto_1
    new-instance v5, Lgqm;

    const/16 v6, 0xa

    sget v7, Lfzs$h;->icon_download:I

    invoke-direct {v5, v6, v7, v1}, Lgqm;-><init>(IILjava/lang/String;)V

    goto :goto_0

    .line 252
    .end local v1    # "downloadMenuName":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v10

    const-string/jumbo v7, "("

    aput-object v7, v6, v11

    const/4 v7, 0x2

    .line 253
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v8

    .line 1046
    invoke-static {v8, v9}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v8

    .line 253
    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string/jumbo v8, ")"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 257
    .end local v2    # "downloadText":Ljava/lang/String;
    :sswitch_1
    new-instance v5, Lgqm;

    const/16 v6, 0x1e

    sget v7, Lfzs$h;->icon_otherapp:I

    .line 258
    invoke-static {p1}, Lgpr;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto :goto_0

    .line 261
    :sswitch_2
    new-instance v5, Lgqm;

    const/16 v6, 0xe6

    sget v7, Lfzs$h;->icon_likegood:I

    sget v8, Lfzs$h;->dt_space_file_comment_like_title:I

    .line 262
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto :goto_0

    .line 265
    :sswitch_3
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLikeCount()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    sget v6, Lfzs$h;->dt_comment_like_count:I

    .line 266
    invoke-static {v6}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLikeCount()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "linkMenuName":Ljava/lang/String;
    :goto_2
    new-instance v5, Lgqm;

    const/16 v6, 0xfa

    sget v7, Lfzs$h;->icon_likegood:I

    invoke-direct {v5, v6, v7, v3}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 266
    .end local v3    # "linkMenuName":Ljava/lang/String;
    :cond_2
    sget v6, Lfzs$h;->dt_space_file_comment_like_title:I

    .line 267
    invoke-static {v6}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 271
    :sswitch_4
    if-eqz p1, :cond_3

    sget v6, Lfzs$h;->dt_cspace_detail_filecomment_count:I

    .line 272
    invoke-static {v6}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getCommentCount()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "commentMenuName":Ljava/lang/String;
    :goto_3
    new-instance v5, Lgqm;

    const/16 v6, 0x50

    sget v7, Lfzs$h;->icon_message:I

    invoke-direct {v5, v6, v7, v0}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 272
    .end local v0    # "commentMenuName":Ljava/lang/String;
    :cond_3
    sget v6, Lfzs$h;->dt_common_comments:I

    .line 273
    invoke-static {v6}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 277
    :sswitch_5
    new-instance v5, Lgqm;

    const/16 v6, 0xf0

    sget v7, Lfzs$h;->dt_common_comments:I

    .line 278
    invoke-static {v7}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v10, v7}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 281
    :sswitch_6
    new-instance v5, Lgqm;

    const/16 v6, 0x10e

    sget v7, Lfzs$h;->icon_compile:I

    sget v8, Lfzs$h;->space_file_rename:I

    .line 282
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :sswitch_7
    new-instance v5, Lgqm;

    const/16 v6, 0x118

    sget v7, Lfzs$h;->icon_move:I

    sget v8, Lfzs$h;->dt_cspace_move_to:I

    .line 286
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 289
    :sswitch_8
    new-instance v5, Lgqm;

    const/16 v6, 0x14a

    sget v7, Lfzs$h;->icon_delete:I

    sget v8, Lfzs$h;->space_file_delete:I

    .line 290
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 294
    :sswitch_9
    new-instance v5, Lgqm;

    sget v6, Lfzs$h;->icon_online_editing:I

    sget v7, Lfzs$h;->dt_cspace_online_document_edit:I

    .line 295
    invoke-static {v7}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lgqm;-><init>(IILjava/lang/String;)V

    .line 296
    .local v5, "menuObject":Lgqm;
    const-string/jumbo v6, "pref_key_space_online_edit"

    invoke-static {v6, v11}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lgqm;->e:Z

    goto/16 :goto_0

    .line 302
    .end local v5    # "menuObject":Lgqm;
    :sswitch_a
    new-instance v5, Lgqm;

    sget v6, Lfzs$h;->icon_online_editing:I

    sget v7, Lfzs$h;->dt_cspace_local_edit_tip:I

    .line 303
    invoke-static {v7}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p0, v6, v7}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 306
    :sswitch_b
    new-instance v5, Lgqm;

    const/16 v6, 0x82

    sget v7, Lfzs$h;->icon_addperson:I

    sget v8, Lfzs$h;->dt_space_auth_setting:I

    .line 307
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 310
    :sswitch_c
    new-instance v5, Lgqm;

    const/16 v6, 0x8c

    sget v7, Lfzs$h;->icon_addperson:I

    sget v8, Lfzs$h;->dt_space_auth_setting:I

    .line 311
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 314
    :sswitch_d
    new-instance v5, Lgqm;

    const/16 v6, 0x104

    sget v7, Lfzs$h;->icon_print:I

    sget v8, Lfzs$h;->dt_cspace_action_print:I

    .line 315
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 318
    :sswitch_e
    new-instance v5, Lgqm;

    const/16 v6, 0xa0

    sget v7, Lfzs$h;->icon_transpond:I

    sget v8, Lfzs$h;->send_action:I

    .line 319
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 322
    :sswitch_f
    new-instance v5, Lgqm;

    const/16 v6, 0x3c

    sget v7, Lfzs$h;->icon_transpond:I

    sget v8, Lfzs$h;->send_action:I

    .line 323
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 326
    :sswitch_10
    new-instance v5, Lgqm;

    const/16 v6, 0xaa

    sget v7, Lfzs$h;->icon_transpond:I

    sget v8, Lfzs$h;->send_action:I

    .line 327
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 330
    :sswitch_11
    new-instance v5, Lgqm;

    const/16 v6, 0x46

    sget v7, Lfzs$h;->icon_transpond:I

    sget v8, Lfzs$h;->send_action:I

    .line 331
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 334
    :sswitch_12
    new-instance v5, Lgqm;

    const/16 v6, 0xb4

    sget v7, Lfzs$h;->icon_sendfile:I

    sget v8, Lfzs$h;->cmail_send_file_to_help:I

    .line 335
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 338
    :sswitch_13
    new-instance v5, Lgqm;

    const/16 v6, 0xc8

    sget v7, Lfzs$h;->icon_share:I

    sget v8, Lfzs$h;->dt_cspace_get_share_link:I

    .line 339
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 342
    :sswitch_14
    new-instance v5, Lgqm;

    const/16 v6, 0xdc

    sget v7, Lfzs$h;->icon_dmail:I

    sget v8, Lfzs$h;->cspace_menu_forward_email:I

    .line 343
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1388
    :sswitch_15
    const/16 v6, 0x122

    if-eq p0, v6, :cond_4

    const/16 v6, 0x12c

    if-ne p0, v6, :cond_0

    .line 1391
    :cond_4
    sget v7, Lfzs$h;->alm_cmail_save_to_space:I

    .line 1392
    if-eqz p1, :cond_8

    .line 1393
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgqu;->a(Ljava/lang/String;)I

    move-result v6

    .line 1394
    const/4 v8, -0x1

    if-ne v6, v8, :cond_5

    .line 1395
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v6

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lfzv;->d(Ljava/lang/String;)I

    move-result v6

    .line 1397
    :cond_5
    invoke-static {v6}, Lgqu;->e(I)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v6}, Lgqu;->b(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1398
    invoke-static {v6}, Lgqu;->h(I)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v6}, Lgqu;->d(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1399
    :cond_6
    sget v6, Lfzs$h;->dt_cspace_copy_to:I

    .line 1402
    :goto_4
    new-instance v5, Lgqm;

    sget v7, Lfzs$h;->icon_cloudup:I

    invoke-static {v6}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v7, v6}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 350
    :sswitch_16
    new-instance v5, Lgqm;

    const/16 v6, 0x32

    sget v7, Lfzs$h;->icon_mobilephone:I

    sget v8, Lfzs$h;->save_to_phone:I

    .line 351
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 354
    :sswitch_17
    new-instance v5, Lgqm;

    const/16 v6, 0x136

    sget v7, Lfzs$h;->icon_star:I

    sget v8, Lfzs$h;->favorite_add:I

    .line 355
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 358
    :sswitch_18
    new-instance v5, Lgqm;

    const/16 v6, 0x5a

    sget v7, Lfzs$h;->icon_unlock:I

    sget v8, Lfzs$h;->dt_cspace_release_lock:I

    .line 359
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 362
    :sswitch_19
    new-instance v5, Lgqm;

    const/16 v6, 0x64

    sget v7, Lfzs$h;->icon_historyfile:I

    sget v8, Lfzs$h;->dt_cspace_file_history_title:I

    .line 363
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 366
    :sswitch_1a
    new-instance v5, Lgqm;

    const/16 v6, 0x154

    sget v7, Lfzs$h;->icon_task:I

    sget v8, Lfzs$h;->dt_external_contact_view_permission:I

    .line 367
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 370
    :sswitch_1b
    new-instance v5, Lgqm;

    const/16 v6, 0x15e

    sget v7, Lfzs$h;->icon_task:I

    sget v8, Lfzs$h;->and_setting_rights:I

    .line 371
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 374
    :sswitch_1c
    invoke-static {p1}, Lgpv;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget v6, Lfzs$h;->dt_space_send_folder_path:I

    :goto_5
    invoke-static {v6}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "menuName":Ljava/lang/String;
    new-instance v5, Lgqm;

    const/16 v6, 0x23

    sget v7, Lfzs$h;->icon_roundshare:I

    invoke-direct {v5, v6, v7, v4}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 374
    .end local v4    # "menuName":Ljava/lang/String;
    :cond_7
    sget v6, Lfzs$h;->dt_space_send_file_path:I

    goto :goto_5

    .line 379
    :sswitch_1d
    new-instance v5, Lgqm;

    const/16 v6, 0x25

    sget v7, Lfzs$h;->icon_file:I

    sget v8, Lfzs$h;->dt_cspace_open_folder:I

    .line 380
    invoke-static {v8}, Lgma;->b(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move v6, v7

    goto/16 :goto_4

    .line 248
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_9
        0x6 -> :sswitch_a
        0xa -> :sswitch_0
        0x1e -> :sswitch_1
        0x23 -> :sswitch_1c
        0x25 -> :sswitch_1d
        0x32 -> :sswitch_16
        0x3c -> :sswitch_f
        0x46 -> :sswitch_11
        0x50 -> :sswitch_4
        0x5a -> :sswitch_18
        0x64 -> :sswitch_19
        0x6e -> :sswitch_9
        0x78 -> :sswitch_a
        0x82 -> :sswitch_b
        0x8c -> :sswitch_c
        0xa0 -> :sswitch_e
        0xaa -> :sswitch_10
        0xb4 -> :sswitch_12
        0xc8 -> :sswitch_13
        0xdc -> :sswitch_14
        0xe6 -> :sswitch_2
        0xf0 -> :sswitch_5
        0xfa -> :sswitch_3
        0x104 -> :sswitch_d
        0x10e -> :sswitch_6
        0x118 -> :sswitch_7
        0x122 -> :sswitch_15
        0x12c -> :sswitch_15
        0x136 -> :sswitch_17
        0x14a -> :sswitch_8
        0x154 -> :sswitch_1a
        0x15e -> :sswitch_1b
    .end sparse-switch
.end method

.method public static a(Lgma$a;)Ljava/util/List;
    .locals 5
    .param p0, "param"    # Lgma$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgma$a;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    iget-object v2, p0, Lgma$a;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v2}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 479
    new-instance v2, Lglq$a;

    invoke-direct {v2}, Lglq$a;-><init>()V

    invoke-static {v2, p0}, Lgma;->a(Lglr$d;Lgma$a;)Lglr$d;

    move-result-object v1

    check-cast v1, Lglq$a;

    .line 4155
    .local v1, "authParam":Lglq$a;
    sget-object v2, Lglr$j;->a:Lglr;

    .line 480
    invoke-virtual {v2, v1}, Lglr;->a(Lglr$f;)Ljava/util/List;

    move-result-object v0

    .line 510
    .end local v1    # "authParam":Lglq$a;
    .local v0, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    iget v2, p0, Lgma$a;->h:I

    .line 10514
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 10515
    :cond_0
    const/4 v0, 0x0

    .line 10524
    .end local v0    # "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-object v0

    .line 482
    :cond_2
    iget v2, p0, Lgma$a;->a:I

    invoke-static {v2}, Lgqu;->b(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 483
    new-instance v2, Lglv$a;

    invoke-direct {v2}, Lglv$a;-><init>()V

    invoke-static {v2, p0}, Lgma;->a(Lglr$d;Lgma$a;)Lglr$d;

    move-result-object v1

    check-cast v1, Lglv$a;

    .line 5155
    .local v1, "authParam":Lglv$a;
    sget-object v2, Lglr$j;->a:Lglr;

    .line 484
    invoke-virtual {v2, v1}, Lglr;->a(Lglr$f;)Ljava/util/List;

    move-result-object v0

    .line 486
    .restart local v0    # "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .end local v0    # "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "authParam":Lglv$a;
    :cond_3
    iget v2, p0, Lgma$a;->a:I

    invoke-static {v2}, Lgqu;->g(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 487
    new-instance v2, Lglu$a;

    invoke-direct {v2}, Lglu$a;-><init>()V

    invoke-static {v2, p0}, Lgma;->a(Lglr$d;Lgma$a;)Lglr$d;

    move-result-object v1

    check-cast v1, Lglu$a;

    .line 488
    .local v1, "authParam":Lglu$a;
    iget-boolean v2, p0, Lgma$a;->d:Z

    invoke-virtual {v1, v2}, Lglu$a;->d(Z)V

    .line 6155
    sget-object v2, Lglr$j;->a:Lglr;

    .line 489
    invoke-virtual {v2, v1}, Lglr;->a(Lglr$f;)Ljava/util/List;

    move-result-object v0

    .line 491
    .restart local v0    # "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .end local v0    # "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "authParam":Lglu$a;
    :cond_4
    iget v2, p0, Lgma$a;->a:I

    invoke-static {v2}, Lgqu;->h(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 492
    new-instance v2, Lglw$c;

    invoke-direct {v2}, Lglw$c;-><init>()V

    invoke-static {v2, p0}, Lgma;->a(Lglr$d;Lgma$a;)Lglr$d;

    move-result-object v1

    check-cast v1, Lglw$c;

    .line 493
    .local v1, "authParam":Lglw$c;
    iget-boolean v2, p0, Lgma$a;->d:Z

    invoke-virtual {v1, v2}, Lglw$c;->d(Z)V

    .line 7155
    sget-object v2, Lglr$j;->a:Lglr;

    .line 494
    invoke-virtual {v2, v1}, Lglr;->a(Lglr$f;)Ljava/util/List;

    move-result-object v0

    .line 496
    .restart local v0    # "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .end local v0    # "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "authParam":Lglw$c;
    :cond_5
    iget v2, p0, Lgma$a;->a:I

    invoke-static {v2}, Lgqu;->d(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 497
    new-instance v2, Lgls$c;

    invoke-direct {v2}, Lgls$c;-><init>()V

    invoke-static {v2, p0}, Lgma;->a(Lglr$d;Lgma$a;)Lglr$d;

    move-result-object v1

    check-cast v1, Lgls$c;

    .line 498
    .local v1, "authParam":Lgls$c;
    iget v2, p0, Lgma$a;->f:I

    invoke-virtual {v1, v2}, Lgls$c;->b(I)V

    .line 8155
    sget-object v2, Lglr$j;->a:Lglr;

    .line 499
    invoke-virtual {v2, v1}, Lglr;->a(Lglr$f;)Ljava/util/List;

    move-result-object v0

    .line 501
    .restart local v0    # "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_0

    .end local v0    # "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "authParam":Lgls$c;
    :cond_6
    iget v2, p0, Lgma$a;->a:I

    invoke-static {v2}, Lgqu;->c(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 502
    new-instance v2, Lglx$a;

    invoke-direct {v2}, Lglx$a;-><init>()V

    invoke-static {v2, p0}, Lgma;->a(Lglr$d;Lgma$a;)Lglr$d;

    move-result-object v1

    check-cast v1, Lglx$a;

    .line 9155
    .local v1, "authParam":Lglx$a;
    sget-object v2, Lglr$j;->a:Lglr;

    .line 503
    invoke-virtual {v2, v1}, Lglr;->a(Lglr$f;)Ljava/util/List;

    move-result-object v0

    .line 505
    .restart local v0    # "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 506
    .end local v0    # "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "authParam":Lglx$a;
    :cond_7
    new-instance v2, Lglt$a;

    invoke-direct {v2}, Lglt$a;-><init>()V

    invoke-static {v2, p0}, Lgma;->a(Lglr$d;Lgma$a;)Lglr$d;

    move-result-object v1

    check-cast v1, Lglt$a;

    .line 10155
    .local v1, "authParam":Lglt$a;
    sget-object v2, Lglr$j;->a:Lglr;

    .line 507
    invoke-virtual {v2, v1}, Lglr;->a(Lglr$f;)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 10519
    .end local v1    # "authParam":Lglt$a;
    :cond_8
    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 10520
    sget-object v2, Lgma;->a:Ljava/util/List;

    .line 10527
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10528
    invoke-interface {v3, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 10530
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10531
    invoke-interface {v4, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 10532
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 10533
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_9
    move-object v0, v3

    .line 510
    goto/16 :goto_1

    .line 10521
    :cond_a
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 10522
    sget-object v2, Lgma;->b:Ljava/util/List;

    goto :goto_2
.end method

.method public static a(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .param p1, "pageTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 462
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move-object v1, v4

    .line 469
    :cond_1
    return-object v1

    .line 465
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 466
    .local v1, "menuIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2447
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 467
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3410
    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 3411
    sget-object v2, Lgma;->c:Ljava/util/Map;

    .line 2451
    :goto_2
    if-nez v2, :cond_6

    move v2, v3

    .line 2452
    goto :goto_1

    .line 3413
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 3414
    sget-object v2, Lgma;->d:Ljava/util/Map;

    goto :goto_2

    :cond_5
    move-object v2, v4

    .line 3416
    goto :goto_2

    .line 2454
    :cond_6
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2455
    if-nez v2, :cond_7

    move v2, v3

    .line 2456
    goto :goto_1

    .line 2458
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1
.end method

.method public static a(I)Z
    .locals 2
    .param p0, "menuId"    # I

    .prologue
    .line 232
    sget-object v0, Lgma;->e:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/util/List;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;ILcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
    .locals 4
    .param p1, "menuBottomView"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
    .param p2, "pageTag"    # I
    .param p3, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;",
            "I",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ")",
            "Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, "menuIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 443
    :cond_0
    return-object p1

    .line 437
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 438
    .local v0, "menuId":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 441
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2393
    invoke-static {v3}, Lgma;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2396
    invoke-virtual {p1, v3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(I)Lgqm;

    move-result-object v1

    .line 2397
    if-eqz v1, :cond_3

    .line 2381
    :goto_1
    invoke-virtual {p1, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    goto :goto_0

    .line 2400
    :cond_3
    invoke-static {v3, p2, p3}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(IILcom/alibaba/alimei/cspace/model/DentryModel;)Lgqm;

    move-result-object v1

    goto :goto_1
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 406
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

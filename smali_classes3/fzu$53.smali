.class final Lfzu$53;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcma;Lcom/alibaba/wukong/im/Conversation;Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lfzu$53;->a:Lcma;

    iput-object p2, p0, Lfzu$53;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Lfzu$53;->c:Landroid/app/Activity;

    iput p4, p0, Lfzu$53;->d:I

    iput-object p5, p0, Lfzu$53;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lfzu$53;Ljava/lang/String;ZZI)V
    .locals 2
    .param p0, "x0"    # Lfzu$53;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 526
    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lfzu$53;->a(Ljava/lang/String;ZZI)V

    return-void
.end method

.method private a(Ljava/lang/String;ZZI)V
    .locals 22
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "isSpaceAdmin"    # Z
    .param p3, "needShowDialog"    # Z
    .param p4, "spaceType"    # I

    .prologue
    .line 574
    invoke-static {}, Lglr;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 575
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->create()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v2

    .line 576
    .local v2, "args":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setSpaceId(Ljava/lang/String;)V

    .line 577
    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setDentryId(Ljava/lang/String;)V

    .line 578
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setShowUploadRemindDialog(Z)V

    .line 579
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setAdmin(Z)V

    .line 580
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setFromConversation(Z)V

    .line 581
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$53;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setConversationName(Ljava/lang/String;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$53;->c:Landroid/app/Activity;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lfzu$53;->a:Lcma;

    invoke-static {v3, v2, v4, v5}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;ZLcma;)V

    .line 590
    .end local v2    # "args":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    :goto_0
    return-void

    .line 586
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$53;->c:Landroid/app/Activity;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lfzu$53;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 587
    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lfzu$53;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lfzu$53;->a:Lcma;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v7, p1

    move/from16 v12, p3

    move/from16 v13, p2

    move/from16 v16, p4

    .line 586
    invoke-static/range {v3 .. v21}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZZZLjava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 526
    check-cast p1, Ljava/lang/String;

    .line 1529
    if-nez p1, :cond_1

    .line 1530
    iget-object v0, p0, Lfzu$53;->a:Lcma;

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Lfzu$53;->a:Lcma;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1533
    :cond_0
    const-string/jumbo v0, "2012"

    const-string/jumbo v1, "data error"

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    :goto_0
    return-void

    .line 1537
    :cond_1
    iget-object v0, p0, Lfzu$53;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfzu$53;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1538
    sget-object v0, Lfzu;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lfzu$53;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lfzu$53;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lfzv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, Lfzu$53;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1541
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lfzu$53;->b:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v2, "doc_readonly"

    invoke-interface {v1, v2}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1542
    const-string/jumbo v1, "1"

    iget-object v2, p0, Lfzu$53;->b:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v3, "watermark"

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1543
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lfzv;->b(Ljava/lang/String;Z)V

    .line 1544
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lfzv;->c(Ljava/lang/String;Z)V

    .line 1547
    :cond_2
    new-instance v0, Lfzu$53$1;

    invoke-direct {v0, p0, p1}, Lfzu$53$1;-><init>(Lfzu$53;Ljava/lang/String;)V

    .line 1562
    const-class v1, Lcma;

    iget-object v2, p0, Lfzu$53;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1563
    iget-object v1, p0, Lfzu$53;->c:Landroid/app/Activity;

    iget-object v2, p0, Lfzu$53;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lgpt;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 1566
    :cond_3
    iget-object v0, p0, Lfzu$53;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfzu$53;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1567
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lfzu$53;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lfzv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :cond_4
    iget v0, p0, Lfzu$53;->d:I

    invoke-direct {p0, p1, v2, v2, v0}, Lfzu$53;->a(Ljava/lang/String;ZZI)V

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 598
    iget-object v0, p0, Lfzu$53;->a:Lcma;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lfzu$53;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_0
    const-string/jumbo v0, "2012"

    const-string/jumbo v1, "data error"

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 594
    return-void
.end method

.class final Lfzu$3$1;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfzu$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfzu$3;


# direct methods
.method constructor <init>(Lfzu$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$3;

    .prologue
    .line 1247
    iput-object p1, p0, Lfzu$3$1;->b:Lfzu$3;

    iput-object p2, p0, Lfzu$3$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 20
    .param p1, "isAdmin"    # Z

    .prologue
    .line 1265
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$3$1;->b:Lfzu$3;

    iget-boolean v3, v3, Lfzu$3;->c:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lglr;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1266
    invoke-static {}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->create()Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;

    move-result-object v2

    .line 1267
    .local v2, "args":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$3$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setSpaceId(Ljava/lang/String;)V

    .line 1268
    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setDentryId(Ljava/lang/String;)V

    .line 1269
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setShowUploadRemindDialog(Z)V

    .line 1270
    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setAdmin(Z)V

    .line 1271
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setFromConversation(Z)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$3$1;->b:Lfzu$3;

    iget-object v3, v3, Lfzu$3;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->setConversationName(Ljava/lang/String;)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$3$1;->b:Lfzu$3;

    iget-object v3, v3, Lfzu$3;->b:Landroid/content/Context;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lfzu$3$1;->b:Lfzu$3;

    iget-object v5, v5, Lfzu$3;->e:Lcma;

    invoke-static {v3, v2, v4, v5}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;ZLcma;)V

    .line 1281
    .end local v2    # "args":Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    :goto_0
    return-void

    .line 1276
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lfzu$3$1;->b:Lfzu$3;

    iget-object v3, v3, Lfzu$3;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lfzu$3$1;->b:Lfzu$3;

    iget-wide v4, v4, Lfzu$3;->f:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lfzu$3$1;->b:Lfzu$3;

    iget v6, v6, Lfzu$3;->g:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lfzu$3$1;->a:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lfzu$3$1;->b:Lfzu$3;

    iget-object v9, v9, Lfzu$3;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lfzu$3$1;->b:Lfzu$3;

    iget-object v10, v10, Lfzu$3;->i:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lfzu$3$1;->b:Lfzu$3;

    iget-object v11, v11, Lfzu$3;->d:Ljava/lang/String;

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lfzu$3$1;->b:Lfzu$3;

    iget-object v14, v13, Lfzu$3;->e:Lcma;

    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lfzu$3$1;->b:Lfzu$3;

    iget-boolean v0, v13, Lfzu$3;->c:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lfzu$3$1;->b:Lfzu$3;

    iget-object v0, v13, Lfzu$3;->j:Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lfzu$3$1;->b:Lfzu$3;

    iget-object v0, v13, Lfzu$3;->k:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move/from16 v13, p1

    invoke-static/range {v3 .. v19}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1247
    check-cast p1, Ljava/lang/Boolean;

    .line 3022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 2251
    invoke-direct {p0, v0}, Lfzu$3$1;->a(Z)V

    .line 1247
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1261
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfzu$3$1;->a(Z)V

    .line 1262
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1257
    return-void
.end method

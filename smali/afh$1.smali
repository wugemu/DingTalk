.class final Lafh$1;
.super Ljava/lang/Object;
.source "MailUtils.java"

# interfaces
.implements Laeq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lafh;->a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic e:Ljava/util/List;


# direct methods
.method constructor <init>(Lcma;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lafh$1;->a:Lcma;

    iput-object p2, p0, Lafh$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lafh$1;->c:Ljava/util/List;

    iput-object p4, p0, Lafh$1;->d:Lcom/alibaba/wukong/im/Conversation;

    iput-object p5, p0, Lafh$1;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 822
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 14
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 827
    .local p3, "localAttachments":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .local p4, "spaceAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    .local p5, "resAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    new-instance v11, Lafh$1$1;

    invoke-direct {v11, p0}, Lafh$1$1;-><init>(Lafh$1;)V

    .line 843
    .local v11, "sendMailListener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    new-instance v1, Lagz;

    invoke-direct {v1}, Lagz;-><init>()V

    .line 845
    .local v1, "mCurrentNewMailModel":Lagz;
    iget-object v2, p0, Lafh$1;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 847
    iput-object p1, v1, Lagz;->g:Ljava/lang/String;

    .line 852
    :goto_0
    move-object/from16 v0, p2

    iput-object v0, v1, Lagz;->i:Ljava/lang/String;

    .line 854
    iget-object v2, p0, Lafh$1;->c:Ljava/util/List;

    iput-object v2, v1, Lagz;->d:Ljava/util/List;

    .line 856
    if-eqz p3, :cond_2

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 857
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 1220
    .local v10, "localAttachmentUri":Landroid/net/Uri;
    iget-object v3, v1, Lagz;->q:Ljava/util/List;

    if-nez v3, :cond_0

    .line 1221
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lagz;->q:Ljava/util/List;

    .line 1223
    :cond_0
    iget-object v3, v1, Lagz;->q:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 849
    .end local v10    # "localAttachmentUri":Landroid/net/Uri;
    :cond_1
    iget-object v2, p0, Lafh$1;->b:Ljava/lang/String;

    iput-object v2, v1, Lagz;->g:Ljava/lang/String;

    goto :goto_0

    .line 862
    :cond_2
    if-eqz p5, :cond_3

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 863
    move-object/from16 v0, p5

    iput-object v0, v1, Lagz;->p:Ljava/util/List;

    .line 1246
    :cond_3
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 866
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 868
    .local v5, "token":Ljava/lang/String;
    if-eqz p4, :cond_5

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 869
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 870
    .local v12, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v2, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    iget-object v3, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iget-object v4, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    iget-object v6, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lagz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    move-result-object v8

    .line 871
    .local v8, "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    if-nez v8, :cond_4

    .line 872
    invoke-static {}, Lss;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 873
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v2

    sget v3, Laxo$i;->dt_cmail_add_space_attachment_fail:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v6, v12, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 879
    .end local v8    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v12    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_5
    invoke-static {}, Laew;->a()Laew;

    iget-object v2, p0, Lafh$1;->c:Ljava/util/List;

    invoke-static {v2}, Laew;->a(Ljava/util/List;)Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    move-result-object v2

    iput-object v2, v1, Lagz;->x:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    .line 880
    iget-object v3, p0, Lafh$1;->d:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lafh$1;->e:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Message;

    invoke-static {v3, v2}, Lafh;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lagz;->s:Ljava/util/List;

    .line 882
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v9

    .line 884
    .local v9, "currentAccountName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 885
    invoke-interface {v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v9

    .line 888
    :cond_6
    invoke-static {v9}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    invoke-interface {v2, v1, v11}, Lcom/alibaba/alimei/sdk/api/MailApi;->sendMail(Lagz;Lxv;)V

    .line 889
    return-void
.end method

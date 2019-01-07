.class public Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;
.super Lrq;
.source "CMailAttachmentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrq",
        "<",
        "Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget v0, Laxo$g;->cmail_attach_list:I

    invoke-direct {p0, p1, v0}, Lrq;-><init>(Landroid/content/Context;I)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->f:Z

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->a:Ljava/util/Map;

    .line 40
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lrr;Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x32

    .line 29
    check-cast p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;

    .line 1044
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    if-nez v0, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    iget-object v0, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    .line 1049
    const-string/jumbo v0, ""

    .line 1051
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1052
    const-string/jumbo v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1053
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 1054
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1062
    :goto_1
    invoke-static {v0}, Lse;->a(Ljava/lang/String;)Z

    move-result v2

    .line 1063
    invoke-static {v0}, Lse;->c(Ljava/lang/String;)Z

    move-result v3

    .line 1064
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1066
    invoke-static {}, Lacg;->f()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v4

    .line 1067
    invoke-interface {v4}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccessToken()Ljava/lang/String;

    move-result-object v4

    .line 1068
    iget-object v5, p0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->b:Landroid/content/Context;

    if-eqz v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1069
    if-eqz v2, :cond_8

    .line 1070
    iget-object v2, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    sget v0, Laxo$f;->icon:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1070
    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {v2, v4, v0, v3}, Laji;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 1091
    :cond_2
    :goto_2
    sget v0, Laxo$f;->date:I

    iget-wide v2, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->date:J

    .line 6096
    iget-object v4, p1, Lrr;->a:Landroid/content/Context;

    .line 1091
    invoke-static {v2, v3, v4}, Lcog;->b(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    .line 1093
    iget-object v0, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->subject:Ljava/lang/String;

    .line 1097
    if-eqz v1, :cond_3

    .line 1098
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1101
    :cond_3
    if-eqz v0, :cond_4

    .line 1102
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 7096
    :cond_4
    iget-object v2, p1, Lrr;->a:Landroid/content/Context;

    .line 1106
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->e:Ljava/lang/String;

    invoke-static {v2, v1, v3, v6}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1107
    iget-object v3, p0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->e:Ljava/lang/String;

    invoke-static {v2, v0, v3, v6}, Lcos;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1109
    sget v2, Laxo$f;->name:I

    invoke-virtual {p1, v2, v1}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    .line 1110
    sget v1, Laxo$f;->subject:I

    invoke-virtual {p1, v1, v0}, Lrr;->a(ILjava/lang/CharSequence;)Lrr;

    .line 1112
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->f:Z

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->a:Ljava/util/Map;

    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1114
    if-nez v0, :cond_5

    .line 1115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1116
    iget-object v1, p0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->a:Ljava/util/Map;

    iget-object v2, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    :cond_5
    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1056
    :cond_6
    const-string/jumbo v0, ""

    goto/16 :goto_1

    .line 1059
    :cond_7
    const-string/jumbo v1, ""

    goto/16 :goto_1

    .line 1071
    :cond_8
    if-eqz v3, :cond_9

    .line 3096
    iget-object v2, p1, Lrr;->a:Landroid/content/Context;

    .line 1072
    iget-object v3, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    sget v0, Laxo$f;->icon:I

    .line 3100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1073
    check-cast v0, Landroid/widget/ImageView;

    iget-object v5, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 1072
    invoke-static {v2, v3, v4, v0, v5}, Laji;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto :goto_2

    .line 1075
    :cond_9
    sget v2, Laxo$f;->icon:I

    invoke-virtual {p1, v2, v0}, Lrr;->b(II)Lrr;

    goto :goto_2

    .line 1078
    :cond_a
    iget-object v4, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v4}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1079
    if-eqz v2, :cond_b

    .line 1080
    iget-object v2, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    sget v0, Laxo$f;->icon:I

    .line 4100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1080
    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {v2, v5, v0, v3}, Laji;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto/16 :goto_2

    .line 1081
    :cond_b
    if-eqz v3, :cond_c

    .line 5096
    iget-object v2, p1, Lrr;->a:Landroid/content/Context;

    .line 1082
    iget-object v3, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->serverId:Ljava/lang/String;

    sget v0, Laxo$f;->icon:I

    .line 5100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1083
    check-cast v0, Landroid/widget/ImageView;

    iget-object v4, p2, Lcom/alibaba/alimei/sdk/model/MailAttachmentSearchModel;->attachmentModel:Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 1082
    invoke-static {v2, v3, v5, v0, v4}, Laji;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto/16 :goto_2

    .line 1085
    :cond_c
    sget v2, Laxo$f;->icon:I

    invoke-virtual {p1, v2, v0}, Lrr;->b(II)Lrr;

    goto/16 :goto_2

    .line 1088
    :cond_d
    sget v2, Laxo$f;->icon:I

    invoke-virtual {p1, v2, v0}, Lrr;->b(II)Lrr;

    goto/16 :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "attachmentId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->f:Z

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->a:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 163
    .local v0, "attachSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Lrq;->b()V

    .line 173
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->c()V

    .line 174
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alibaba/alimei/mail/adapter/CMailAttachmentListAdapter;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 150
    :cond_0
    return-void
.end method

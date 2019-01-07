.class public Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;
.super Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;
.source "SpaceLinkForwardHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpaceLinkForwardHandler"


# instance fields
.field private mAppendText:Ljava/lang/String;

.field private final mNeedShowConfirmDialog:Z

.field private final mSpaceLinkDo:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Z)V
    .locals 1
    .param p1, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p2, "needShowConfirmDialog"    # Z

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;-><init>(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;ZLjava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;ZLjava/lang/String;)V
    .locals 0
    .param p1, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p2, "needShowConfirmDialog"    # Z
    .param p3, "appendText"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->mSpaceLinkDo:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .line 48
    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->mNeedShowConfirmDialog:Z

    .line 49
    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->mAppendText:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->createSpaceLink(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p3, "x3"    # Lcom/alibaba/wukong/im/Conversation;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->sendSpaceLinkWithAppendText(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->dismissLoadingDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->mSpaceLinkDo:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->traceError(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p3, "x3"    # Lcom/alibaba/wukong/im/Conversation;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->sendAppendText(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "x2"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p3, "x3"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->checkPermissionForSpaceLink(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method

.method private checkPermissionForSpaceLink(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 7
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->dismissLoadingDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 233
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_4

    .line 234
    :cond_0
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "SpaceLinkForwardHandler"

    const/4 v0, 0x7

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v0, "checkPermissionForSpaceLink: null param"

    aput-object v0, v5, v2

    const-string/jumbo v0, ", activity null ? "

    aput-object v0, v5, v1

    const/4 v6, 0x2

    if-nez p1, :cond_1

    move v0, v1

    .line 236
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x3

    const-string/jumbo v6, ", spaceLinkDo null ? "

    aput-object v6, v5, v0

    const/4 v6, 0x4

    if-nez p2, :cond_2

    move v0, v1

    .line 237
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x5

    const-string/jumbo v6, ", conversation null ? "

    aput-object v6, v5, v0

    const/4 v0, 0x6

    if-nez p3, :cond_3

    .line 238
    :goto_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 234
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    sget v0, Lctk$i;->space_send_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 245
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 234
    goto :goto_0

    :cond_2
    move v0, v2

    .line 236
    goto :goto_1

    :cond_3
    move v1, v2

    .line 237
    goto :goto_2

    .line 243
    :cond_4
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V

    .line 244
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->finish()V

    goto :goto_3
.end method

.method private createSpaceLink(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "appendText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 112
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 113
    :cond_0
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "SpaceLinkForwardHandler"

    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/String;

    const-string/jumbo v1, "createSpaceLink: null param"

    aput-object v1, v6, v3

    const-string/jumbo v1, ", activity null ? "

    aput-object v1, v6, v2

    const/4 v7, 0x2

    if-nez p1, :cond_1

    move v1, v2

    .line 115
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x3

    const-string/jumbo v7, ", conversation null ? "

    aput-object v7, v6, v1

    const/4 v1, 0x4

    if-nez p2, :cond_2

    .line 116
    :goto_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 113
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget v1, Lctk$i;->space_send_fail:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 118
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->dismissLoadingDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 147
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 113
    goto :goto_0

    :cond_2
    move v2, v3

    .line 115
    goto :goto_1

    .line 122
    :cond_3
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->showLoadingDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 124
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$2;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 145
    .local v0, "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;>;"
    const-class v1, Lcma;

    invoke-static {v0, v1, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;>;"
    check-cast v0, Lcma;

    .line 146
    .restart local v0    # "listener":Lcma;, "Lcma<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->mSpaceLinkDo:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    goto :goto_2
.end method

.method private dismissLoadingDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 269
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    goto :goto_0
.end method

.method private sendAppendText(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 8
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p4, "appendText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 191
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_4

    .line 192
    :cond_0
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "SpaceLinkForwardHandler"

    const/4 v1, 0x7

    new-array v6, v1, [Ljava/lang/String;

    const-string/jumbo v1, "sendAppendText: null param"

    aput-object v1, v6, v3

    const-string/jumbo v1, ", activity null ? "

    aput-object v1, v6, v2

    const/4 v7, 0x2

    if-nez p1, :cond_1

    move v1, v2

    .line 194
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x3

    const-string/jumbo v7, ", spaceLinkDo null ? "

    aput-object v7, v6, v1

    const/4 v7, 0x4

    if-nez p2, :cond_2

    move v1, v2

    .line 195
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x5

    const-string/jumbo v7, ", conversation null ? "

    aput-object v7, v6, v1

    const/4 v1, 0x6

    if-nez p3, :cond_3

    .line 196
    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 192
    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget v1, Lctk$i;->space_send_fail:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 198
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->dismissLoadingDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 227
    :goto_3
    return-void

    :cond_1
    move v1, v3

    .line 192
    goto :goto_0

    :cond_2
    move v1, v3

    .line 194
    goto :goto_1

    :cond_3
    move v2, v3

    .line 195
    goto :goto_2

    .line 202
    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 203
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->checkPermissionForSpaceLink(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_3

    .line 207
    :cond_5
    new-instance v0, Ldiz;

    invoke-direct {v0, p3}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    .line 208
    .local v0, "messageSender":Ldiz;
    new-instance v1, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$4;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1131
    iput-object v1, v0, Ldiz;->b:Ldiz$a;

    .line 1413
    invoke-virtual {v0, p4, v4, v4}, Ldiz;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Z

    goto :goto_3
.end method

.method private sendSpaceLinkWithAppendText(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 9
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p4, "appendText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 151
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_4

    .line 152
    :cond_0
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "SpaceLinkForwardHandler"

    const/4 v1, 0x7

    new-array v7, v1, [Ljava/lang/String;

    const-string/jumbo v1, "sendSpaceLinkWithAppendText: null param"

    aput-object v1, v7, v3

    const-string/jumbo v1, ", activity null ? "

    aput-object v1, v7, v2

    const/4 v8, 0x2

    if-nez p1, :cond_1

    move v1, v2

    .line 154
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x3

    const-string/jumbo v8, ", spaceLinkDo null ? "

    aput-object v8, v7, v1

    const/4 v8, 0x4

    if-nez p2, :cond_2

    move v1, v2

    .line 155
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x5

    const-string/jumbo v8, ", conversation null ? "

    aput-object v8, v7, v1

    const/4 v1, 0x6

    if-nez p3, :cond_3

    .line 156
    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 152
    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget v1, Lctk$i;->space_send_fail:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 158
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->dismissLoadingDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    .line 187
    :goto_3
    return-void

    :cond_1
    move v1, v3

    .line 152
    goto :goto_0

    :cond_2
    move v1, v3

    .line 154
    goto :goto_1

    :cond_3
    move v2, v3

    .line 155
    goto :goto_2

    .line 162
    :cond_4
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$3;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 180
    .local v0, "listener":Lcma;
    const-class v1, Lcma;

    invoke-static {v0, v1, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;
    check-cast v0, Lcma;

    .line 182
    .restart local v0    # "listener":Lcma;
    new-instance v6, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 183
    .local v6, "messageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    const/16 v1, 0x1f8

    iput v1, v6, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 184
    iput-object p2, v6, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 186
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, p3, v6, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    goto :goto_3
.end method

.method private showConfirmDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 5
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 72
    if-nez p2, :cond_0

    .line 73
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "SpaceLinkForwardHandler"

    const-string/jumbo v4, "showConfirmDialog: dingtalkConversation is null"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget v2, Lctk$i;->space_send_fail:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 108
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-boolean v2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->mNeedShowConfirmDialog:Z

    if-nez v2, :cond_1

    .line 79
    iget-object v2, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->mAppendText:Ljava/lang/String;

    invoke-direct {p0, p1, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->createSpaceLink(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 106
    .local v0, "listener":Ldhy$b;
    invoke-static {p2}, Ldhy;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, "recipientList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->mAppendText:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3, v0}, Ldhy;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ldhy$b;)V

    goto :goto_0
.end method

.method private showLoadingDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .prologue
    .line 262
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    goto :goto_0
.end method

.method private traceError(Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    .param p3, "convId"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;
    .param p5, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 248
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 249
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-virtual {v0, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", convId: "

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 250
    if-eqz p2, :cond_0

    .line 251
    const-string/jumbo v1, ", spaceId: "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 252
    const-string/jumbo v1, ", fileId: "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 253
    const-string/jumbo v1, ", linkSpaceId: "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->linkSpaceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 254
    const-string/jumbo v1, ", linkFileId: "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->linkFileId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 256
    :cond_0
    const-string/jumbo v1, ", errorCode: "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 257
    const-string/jumbo v1, ", errorMsg: "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 258
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "SpaceLinkForwardHandler"

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method


# virtual methods
.method public isSupportMultiple()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method protected paramInvalidate()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->mSpaceLinkDo:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/forward/BaseForwardHandler;->paramInvalidate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected share2SingleConversationImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p2, "dingtalkConversation"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 65
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/forward/SpaceLinkForwardHandler;->showConfirmDialog(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto :goto_0
.end method

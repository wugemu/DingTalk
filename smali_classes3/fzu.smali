.class public Lfzu;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"


# static fields
.field public static a:J

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/String;

.field public static final d:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/alibaba/wukong/im/Conversation;

.field private static f:J

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfzu;->b:Ljava/util/HashMap;

    .line 138
    const-class v0, Lfzu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfzu;->c:Ljava/lang/String;

    .line 156
    new-instance v0, Lfzu$1;

    invoke-direct {v0}, Lfzu$1;-><init>()V

    sput-object v0, Lfzu;->d:Lcma;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 2
    .param p0, "spaceId"    # Ljava/lang/String;

    .prologue
    .line 2388
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfzv;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2381
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getCurrentUid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "serverId"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2910
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "path":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;

    .prologue
    .line 2426
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2427
    .local v0, "sbUrl":Ljava/lang/StringBuffer;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2428
    const-string/jumbo v1, "&filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2429
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2431
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2432
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(ZI)Ljava/lang/String;
    .locals 2
    .param p0, "fromConversation"    # Z
    .param p1, "spaceType"    # I

    .prologue
    const/4 v1, 0x3

    .line 2917
    if-eqz p0, :cond_2

    .line 2919
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 2920
    const-string/jumbo v0, "chatsingle"

    .line 2936
    :goto_0
    return-object v0

    .line 2921
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2922
    const-string/jumbo v0, "chatgroup"

    goto :goto_0

    .line 2923
    :cond_1
    if-ne p1, v1, :cond_5

    .line 2924
    const-string/jumbo v0, "chatorg"

    goto :goto_0

    .line 2928
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 2929
    const-string/jumbo v0, "spaceprofile"

    goto :goto_0

    .line 2930
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 2931
    const-string/jumbo v0, "spacepublic"

    goto :goto_0

    .line 2932
    :cond_4
    if-ne p1, v1, :cond_5

    .line 2933
    const-string/jumbo v0, "spaceorg"

    goto :goto_0

    .line 2936
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 3415
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/recent_setting.html"

    .line 3416
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfzu$46;

    invoke-direct {v3}, Lfzu$46;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 3423
    return-void
.end method

.method public static a(Landroid/app/Activity;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "searchType"    # I
    .param p2, "orgId"    # J
    .param p4, "spaceId"    # Ljava/lang/String;
    .param p5, "folderId"    # Ljava/lang/String;

    .prologue
    .line 3672
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_search_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 3673
    if-nez p0, :cond_0

    .line 3689
    :goto_0
    return-void

    .line 3676
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/space/search.html"

    .line 3678
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lfzu$52;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lfzu$52;-><init>(IJLjava/lang/String;Ljava/lang/String;)V

    .line 3676
    invoke-interface {v6, v7, v8, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;J)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fileOwnerId"    # J

    .prologue
    .line 3513
    if-eqz p0, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    .line 3514
    :cond_0
    const-string/jumbo v1, "CSpace"

    sget-object v2, Lfzu;->c:Ljava/lang/String;

    const-string/jumbo v3, "showApplyOnlineEditPermissionDialog: activity or fileOwnerId is invalid"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 3523
    :goto_0
    return-void

    .line 3520
    :cond_1
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;-><init>(Landroid/app/Activity;)V

    .line 20043
    .local v0, "dialog":Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;
    iput-wide p1, v0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->a:J

    .line 3522
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->show()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orgId"    # J
    .param p3, "max"    # I
    .param p4, "chooseTitle"    # Ljava/lang/String;
    .param p5, "requestCode"    # Ljava/lang/String;
    .param p6, "isOwner"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3379
    .local p7, "filterConversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v10}, Lfzu;->a(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/String;ZZZLjava/util/List;)V

    .line 3380
    return-void
.end method

.method public static a(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/String;ZZZLjava/util/List;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orgId"    # J
    .param p3, "max"    # I
    .param p4, "chooseTitle"    # Ljava/lang/String;
    .param p5, "requestCode"    # Ljava/lang/String;
    .param p6, "isOwner"    # Z
    .param p7, "chooseEnterpriseGroup"    # Z
    .param p8, "chooseCooperativeGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3384
    .local p9, "filterConversations":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3385
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "choose_mode"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3386
    const-string/jumbo v4, "count_limit"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3387
    const-string/jumbo v4, "activity_identify"

    invoke-virtual {v0, v4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3388
    const-string/jumbo v4, "title"

    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3389
    const-string/jumbo v4, "org_id"

    invoke-virtual {v0, v4, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3390
    const-string/jumbo v4, "choose_enterprise_group_conversation"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3391
    const-string/jumbo v4, "intent_key_only_show_my_group"

    invoke-virtual {v0, v4, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3393
    const-string/jumbo v4, "choose_cooperative_group_conversation"

    invoke-virtual {v0, v4, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3395
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3396
    .local v2, "filterObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    if-eqz p9, :cond_1

    .line 3397
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Conversation;

    .line 3398
    .local v1, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v1, :cond_0

    .line 3402
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->fromConversation(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    move-result-object v3

    .line 3404
    .local v3, "messageRecipientDataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v3, :cond_0

    .line 3405
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3409
    .end local v1    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v3    # "messageRecipientDataObject":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :cond_1
    const-string/jumbo v4, "conversation"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3411
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    invoke-virtual {v4, p0, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 3412
    return-void
.end method

.method public static a(Landroid/app/Activity;JLcma;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 425
    sget v4, Lfzu;->g:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 426
    if-eqz p3, :cond_0

    .line 427
    sget-wide v4, Lfzu;->f:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 493
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 427
    goto :goto_0

    .line 429
    :cond_2
    sget v4, Lfzu;->g:I

    if-ne v4, v0, :cond_3

    .line 430
    if-eqz p3, :cond_0

    .line 431
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_1

    .line 433
    :cond_3
    sget v4, Lfzu;->g:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 434
    if-eqz p3, :cond_0

    .line 435
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_1

    .line 438
    :cond_4
    sget-object v4, Lfzu;->e:Lcom/alibaba/wukong/im/Conversation;

    if-nez v4, :cond_5

    .line 439
    if-eqz p3, :cond_0

    .line 440
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_1

    .line 444
    :cond_5
    sget-object v4, Lfzu;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    if-ne v4, v0, :cond_6

    .line 446
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    sget-object v1, Lfzu;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 447
    .local v2, "uid":J
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lfzu$43;

    invoke-direct {v1, p3}, Lfzu$43;-><init>(Lcma;)V

    const-class v4, Lcma;

    invoke-interface {v0, v1, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 467
    .local v6, "listenerUserProfile":Lcma;, "Lcma<Lcgc;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(JJLcma;)V

    goto :goto_1

    .line 468
    .end local v2    # "uid":J
    .end local v6    # "listenerUserProfile":Lcma;, "Lcma<Lcgc;>;"
    :cond_6
    sget-object v4, Lfzu;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 470
    sget-object v4, Lfzu;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 472
    sget-object v4, Lfzu;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v4}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v8

    .line 473
    .local v8, "conversionOrgId":J
    cmp-long v4, v8, p1

    if-nez v4, :cond_7

    .line 475
    if-eqz p3, :cond_0

    .line 476
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 480
    :cond_7
    if-eqz p3, :cond_0

    .line 481
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 487
    .end local v8    # "conversionOrgId":J
    :cond_8
    if-eqz p3, :cond_0

    .line 488
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private static a(Landroid/app/Activity;JLjava/lang/String;Lcma;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 15
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orgId"    # J
    .param p3, "actionFlag"    # Ljava/lang/String;
    .param p5, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/alibaba/wukong/im/Conversation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 324
    .line 325
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    sput-object p5, Lfzu;->e:Lcom/alibaba/wukong/im/Conversation;

    if-nez p5, :cond_0

    .line 326
    const/4 v2, 0x1

    sput v2, Lfzu;->g:I

    .line 334
    :goto_0
    const-wide/16 v2, 0x0

    sput-wide v2, Lfzu;->f:J

    .line 335
    invoke-static/range {p5 .. p5}, Lgri;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v13

    .line 337
    .local v13, "src":Ljava/lang/String;
    new-instance v12, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-direct {v12}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;-><init>()V

    .line 338
    .local v12, "sendParam":Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setIntentAction(Ljava/lang/String;)V

    .line 339
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v9, p4

    invoke-static/range {v3 .. v13}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/util/ArrayList;Lcma;ZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;)V

    .line 340
    return-void

    .line 328
    .end local v12    # "sendParam":Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;
    .end local v13    # "src":Ljava/lang/String;
    :cond_0
    sget-object v2, Lfzu;->e:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Lgpt;->e(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    const/4 v2, 0x4

    sput v2, Lfzu;->g:I

    goto :goto_0

    .line 331
    :cond_1
    const/4 v2, 0x2

    sput v2, Lfzu;->g:I

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "orgId"    # J
    .param p3, "spaceId"    # Ljava/lang/String;
    .param p4, "folderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3570
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfzu$50;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lfzu$50;-><init>(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Lcma;)V

    invoke-static {v0}, Lfzu;->a(Lgqq;)V

    .line 3585
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZLcma;Ljava/lang/String;IJ)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "isAdmin"    # Z
    .param p4, "from"    # Ljava/lang/String;
    .param p5, "spaceType"    # I
    .param p6, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 992
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    invoke-static {p1}, Lgpx;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 999
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V

    goto :goto_0

    .line 1002
    :cond_2
    new-instance v1, Lfzu$56;

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lfzu$56;-><init>(Lcma;Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;ZLjava/lang/String;IJ)V

    invoke-static {v1}, Lfzu;->a(Lgqq;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "spaceLinkDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .prologue
    .line 3636
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3637
    :cond_0
    const-string/jumbo v1, "CSpace"

    sget-object v2, Lfzu;->c:Ljava/lang/String;

    const-string/jumbo v3, "navToSpaceLink: invalid param, activity or spaceLinkDo is null:"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3639
    sget v1, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 3648
    :goto_0
    return-void

    .line 3643
    :cond_1
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3644
    const-string/jumbo v1, "0"

    iput-object v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileId:Ljava/lang/String;

    .line 3646
    :cond_2
    invoke-static {p1}, Lgoc;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    .line 3647
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->orgName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "param"    # Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    .prologue
    const/4 v4, 0x0

    .line 343
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 344
    :cond_0
    sget v1, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 399
    :cond_1
    :goto_0
    return-void

    .line 348
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->getOrgId()J

    move-result-wide v2

    sput-wide v2, Lfzu;->f:J

    .line 349
    sput-object v4, Lfzu;->e:Lcom/alibaba/wukong/im/Conversation;

    .line 351
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->getTargetSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->isCopy()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string/jumbo v1, "com.alibaba.ligthapp.choose.space"

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->getIntentAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 352
    :cond_4
    const/4 v1, 0x3

    sput v1, Lfzu;->g:I

    .line 357
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->getIntentAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 362
    const-string/jumbo v1, "com.workapp.msg.send"

    invoke-virtual {p1, v1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setIntentAction(Ljava/lang/String;)V

    .line 365
    :cond_5
    sget v1, Lfzs$h;->loading:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-static {p0, v4, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;

    move-result-object v0

    .line 366
    .local v0, "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;->show()V

    .line 367
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CSpace"

    const-string/jumbo v3, "space.main.enter"

    invoke-static {v1, v2, v3}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance v1, Lfzu$32;

    invoke-direct {v1, v0, p0, p1}, Lfzu$32;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;)V

    invoke-static {v1}, Lfzu;->a(Lgqq;)V

    goto :goto_0

    .line 354
    .end local v0    # "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDelayProgressDialog;
    :cond_6
    const/4 v1, 0x1

    sput v1, Lfzu;->g:I

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "args"    # Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;

    .prologue
    .line 3460
    if-nez p0, :cond_0

    .line 3461
    const-string/jumbo v1, "CSpace"

    sget-object v2, Lfzu;->c:Ljava/lang/String;

    const-string/jumbo v3, "showRemindOnlineCollaboratorDialog: activity or args is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3462
    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3478
    :goto_0
    return-void

    .line 3465
    :cond_0
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;-><init>(Landroid/app/Activity;)V

    .line 3466
    .local v0, "dialog":Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;
    invoke-static {p1}, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->fix(Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;)Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;

    move-result-object p1

    .line 3467
    sget v1, Lfzs$h;->dt_cspace_notify_new_collaborator:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->b(Ljava/lang/String;)V

    .line 3468
    sget v1, Lfzs$h;->dt_space_online_edit_remind_sure:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->c(Ljava/lang/String;)V

    .line 3469
    sget v1, Lfzs$h;->dt_space_online_edit_remind_cancel:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->d(Ljava/lang/String;)V

    .line 3470
    sget v1, Lfzs$h;->dt_cspace_invite_you_to_edit_online:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 18081
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->e:Ljava/lang/String;

    .line 3471
    iget-object v1, p1, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->a(Ljava/lang/String;)V

    .line 3472
    iget-object v1, p1, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->msgId:Ljava/lang/String;

    .line 19065
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->a:Ljava/lang/String;

    .line 3473
    iget v1, p1, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectType:I

    .line 19069
    iput v1, v0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->b:I

    .line 3474
    iget-object v1, p1, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectId:Ljava/lang/String;

    .line 19073
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->c:Ljava/lang/String;

    .line 3475
    iget-object v1, p1, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->objectContainerId:Ljava/lang/String;

    .line 19077
    iput-object v1, v0, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->d:Ljava/lang/String;

    .line 3476
    iget-object v1, p1, Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;->memberList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->a(Ljava/util/List;)V

    .line 3477
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/RemindOnlineCollaboratorDialog;->show()V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcma;)V
    .locals 17
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "actionFlag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static/range {p1 .. p1}, Lgpt;->d(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v10

    .line 500
    .local v10, "spaceType":I
    invoke-static/range {p1 .. p1}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 502
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 503
    const-string/jumbo v2, "1"

    const-string/jumbo v7, "doc_readonly"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    .line 504
    .local v14, "isReadOnly":Z
    const-string/jumbo v2, "1"

    const-string/jumbo v7, "watermark"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    .line 505
    .local v15, "isWaterMark":Z
    invoke-static/range {p1 .. p1}, Lgps;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v16

    .line 506
    .local v16, "spaceId":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 507
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v14}, Lfzv;->b(Ljava/lang/String;Z)V

    .line 508
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lfzv;->c(Ljava/lang/String;Z)V

    .line 512
    .end local v14    # "isReadOnly":Z
    .end local v15    # "isWaterMark":Z
    .end local v16    # "spaceId":Ljava/lang/String;
    :cond_0
    new-instance v3, Lcem;

    invoke-direct {v3}, Lcem;-><init>()V

    .line 513
    .local v3, "orgConversationModel":Lcem;
    if-eqz p1, :cond_1

    .line 514
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcem;->a:Ljava/lang/String;

    .line 515
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->extension()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v3, Lcem;->c:Ljava/util/Map;

    .line 516
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcem;->b:Ljava/lang/String;

    .line 519
    :cond_1
    invoke-static/range {p1 .. p1}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 520
    .local v4, "orgId":J
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 521
    invoke-interface/range {p1 .. p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v10, p3

    .line 520
    invoke-static/range {v2 .. v13}, Lfzu;->a(Landroid/content/Context;Lcem;JILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcma;ZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/util/ArrayList;)V

    .line 606
    .end local v3    # "orgConversationModel":Lcem;
    .end local v4    # "orgId":J
    .end local v10    # "spaceType":I
    :goto_0
    return-void

    .line 526
    .restart local v10    # "spaceType":I
    :cond_2
    new-instance v6, Lfzu$53;

    const/4 v11, 0x0

    move-object/from16 v7, p3

    move-object/from16 v8, p1

    move-object/from16 v9, p0

    invoke-direct/range {v6 .. v11}, Lfzu$53;-><init>(Lcma;Lcom/alibaba/wukong/im/Conversation;Landroid/app/Activity;ILjava/lang/String;)V

    .line 604
    .local v6, "spaceIdListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v2, Lcma;

    move-object/from16 v0, p0

    invoke-static {v6, v2, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "spaceIdListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    check-cast v6, Lcma;

    .line 605
    .restart local v6    # "spaceIdListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lgps;->a(Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 233
    const-wide/16 v2, 0x0

    sget-object v4, Lfzu;->d:Lcma;

    const/4 v7, 0x0

    move-object v1, p0

    move v6, v5

    invoke-static/range {v1 .. v7}, Lfzu;->a(Landroid/content/Context;JLcma;ZILjava/lang/String;)V

    .line 234
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderType"    # I

    .prologue
    const-wide/16 v3, 0x0

    .line 3051
    const/16 v2, 0x64

    const/4 v5, 0x0

    const/4 v12, 0x0

    sget v13, Lcom/alibaba/dingtalk/cspace/constants/SpaceConstants;->b:I

    move-object v1, p0

    move-wide v6, v3

    move-wide v8, v3

    move-wide v10, v3

    invoke-static/range {v1 .. v13}, Lfzu;->a(Landroid/content/Context;IJLjava/lang/String;JJJZI)V

    .line 3052
    return-void
.end method

.method public static a(Landroid/content/Context;IJLjava/lang/String;JJJZI)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderType"    # I
    .param p2, "orgId"    # J
    .param p4, "orgName"    # Ljava/lang/String;
    .param p5, "publicSpaceId"    # J
    .param p7, "publicCapacityUsed"    # J
    .param p9, "publicSpaceModifiedTime"    # J
    .param p11, "isPublicSpaceAdmin"    # Z
    .param p12, "fromFlag"    # I

    .prologue
    .line 3068
    if-nez p0, :cond_0

    .line 3087
    :goto_0
    return-void

    .line 3071
    :cond_0
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v16, "https://qr.dingtalk.com/space/folder.html"

    .line 3072
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v17

    new-instance v3, Lfzu$33;

    move-wide/from16 v4, p2

    move/from16 v6, p1

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p11

    move-wide/from16 v13, p9

    move/from16 v15, p12

    invoke-direct/range {v3 .. v15}, Lfzu$33;-><init>(JILjava/lang/String;JJZJI)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v2, v0, v1, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J

    .prologue
    .line 244
    if-eqz p0, :cond_0

    .line 245
    const-string/jumbo v0, "pref_space_default_org"

    invoke-static {p0, v0, p1, p2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 247
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;JI)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "fromFlag"    # I

    .prologue
    .line 3060
    const/16 v2, 0x64

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-wide/from16 v3, p1

    move/from16 v13, p3

    invoke-static/range {v1 .. v13}, Lfzu;->a(Landroid/content/Context;IJLjava/lang/String;JJJZI)V

    .line 3061
    return-void
.end method

.method public static a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "mode"    # I
    .param p4, "spaceId"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "localPath"    # Ljava/lang/String;
    .param p8, "conversationName"    # Ljava/lang/String;
    .param p9, "needShowDialog"    # Z
    .param p10, "isSpaceAdmin"    # Z
    .param p12, "spaceType"    # I
    .param p13, "isPublic"    # Z
    .param p14, "fromConversation"    # Z
    .param p15, "sendParam"    # Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;
    .param p16, "authFlag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;IZZ",
            "Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1345
    .local p7, "rePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p11, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    .local p17, "generalFileModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;>;"
    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-static/range {v1 .. v19}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1347
    return-void
.end method

.method public static a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "mode"    # I
    .param p4, "spaceId"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "localPath"    # Ljava/lang/String;
    .param p8, "conversationName"    # Ljava/lang/String;
    .param p9, "needShowDialog"    # Z
    .param p10, "isSpaceAdmin"    # Z
    .param p12, "spaceType"    # I
    .param p13, "isPublic"    # Z
    .param p14, "fromConversation"    # Z
    .param p15, "sendParam"    # Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;
    .param p16, "authFlag"    # Ljava/lang/String;
    .param p18, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;IZZ",
            "Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;",
            ">;",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1357
    .local p7, "rePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p11, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    .local p17, "generalFileModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->o()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1358
    if-eqz p11, :cond_0

    .line 1359
    const/4 v2, 0x0

    move-object/from16 v0, p11

    invoke-interface {v0, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    if-nez p0, :cond_2

    .line 1364
    if-eqz p11, :cond_0

    .line 1365
    const-string/jumbo v2, "2012"

    const-string/jumbo v3, "data error"

    move-object/from16 v0, p11

    invoke-interface {v0, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1369
    :cond_2
    const/4 v2, 0x4

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    .line 1370
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "space_file_more_move"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1372
    :cond_3
    new-instance v2, Lfzu$4;

    move-object/from16 v3, p11

    move-object/from16 v4, p0

    move/from16 v5, p3

    move-wide/from16 v6, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    invoke-direct/range {v2 .. v21}, Lfzu$4;-><init>(Lcma;Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZIZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    invoke-static {v2}, Lfzu;->a(Lgqq;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/util/ArrayList;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "mode"    # I
    .param p4, "spaceId"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "localPath"    # Ljava/lang/String;
    .param p8, "conversationName"    # Ljava/lang/String;
    .param p9, "needShowDialog"    # Z
    .param p10, "isSpaceAdmin"    # Z
    .param p12, "spaceType"    # I
    .param p13, "isPublic"    # Z
    .param p14, "fromConversation"    # Z
    .param p15, "sendParam"    # Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;IZZ",
            "Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1331
    .local p7, "rePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p11, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    .local p16, "generalFileModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;>;"
    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v18, p16

    invoke-static/range {v1 .. v18}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1333
    return-void
.end method

.method public static a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZ)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "mode"    # I
    .param p4, "spaceId"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "localPath"    # Ljava/lang/String;
    .param p8, "conversationName"    # Ljava/lang/String;
    .param p9, "needShowDialog"    # Z
    .param p10, "isSpaceAdmin"    # Z
    .param p11, "actionFlag"    # Ljava/lang/String;
    .param p13, "spaceType"    # I
    .param p14, "fromConversation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1441
    .local p7, "rePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p12, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-static/range {v1 .. v16}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZLjava/util/ArrayList;)V

    .line 1443
    return-void
.end method

.method public static a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZLjava/util/ArrayList;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "mode"    # I
    .param p4, "spaceId"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "localPath"    # Ljava/lang/String;
    .param p8, "conversationName"    # Ljava/lang/String;
    .param p9, "needShowDialog"    # Z
    .param p10, "isSpaceAdmin"    # Z
    .param p11, "actionFlag"    # Ljava/lang/String;
    .param p13, "spaceType"    # I
    .param p14, "fromConversation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;IZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1454
    .local p7, "rePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p12, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    .local p15, "generalFileModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;>;"
    new-instance v18, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;-><init>()V

    .line 1455
    .local v18, "sendParam":Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;
    move-object/from16 v0, v18

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setIntentAction(Ljava/lang/String;)V

    .line 1456
    const/16 v16, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p12

    move/from16 v15, p13

    move/from16 v17, p14

    move-object/from16 v19, p15

    invoke-static/range {v3 .. v19}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/util/ArrayList;)V

    .line 1459
    return-void
.end method

.method public static a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZZZLjava/lang/String;I)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "mode"    # I
    .param p4, "spaceId"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "localPath"    # Ljava/lang/String;
    .param p8, "conversationName"    # Ljava/lang/String;
    .param p9, "needShowDialog"    # Z
    .param p10, "isSpaceAdmin"    # Z
    .param p11, "actionFlag"    # Ljava/lang/String;
    .param p13, "spaceType"    # I
    .param p14, "isPublic"    # Z
    .param p15, "fromConversation"    # Z
    .param p16, "isCopy"    # Z
    .param p17, "spaceId2Copy"    # Ljava/lang/String;
    .param p18, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;IZZZ",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1311
    .local p7, "rePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p12, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v18, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;-><init>()V

    .line 1312
    .local v18, "sendParam":Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;
    move-object/from16 v0, v18

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setIntentAction(Ljava/lang/String;)V

    .line 1313
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setCopy(Z)V

    .line 1314
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setTargetSpaceId(Ljava/lang/String;)V

    .line 1315
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;->setMax(I)V

    .line 1316
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p12

    move/from16 v15, p13

    move/from16 v17, p15

    invoke-static/range {v3 .. v19}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/util/ArrayList;)V

    .line 1318
    return-void
.end method

.method private static a(Landroid/content/Context;JILjava/lang/String;Ljava/util/ArrayList;Lcma;ZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 19
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "mode"    # I
    .param p4, "localPath"    # Ljava/lang/String;
    .param p7, "orgVisible"    # Z
    .param p8, "shouldShowRecentTab"    # Z
    .param p9, "sendParam"    # Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;
    .param p10, "defaultTabIndex"    # I
    .param p11, "src"    # Ljava/lang/String;
    .param p12, "lastMsgTip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;ZZ",
            "Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1099
    .local p5, "rePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    .local p13, "generalFileModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;>;"
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->o()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1100
    if-eqz p6, :cond_0

    .line 1101
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1106
    :cond_1
    if-nez p0, :cond_2

    .line 1107
    if-eqz p6, :cond_0

    .line 1108
    const-string/jumbo v2, "2012"

    const-string/jumbo v3, "data error"

    move-object/from16 v0, p6

    invoke-interface {v0, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1113
    :cond_2
    const/4 v2, 0x0

    sget v3, Lfzs$h;->loading:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v5, v6}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v4

    .line 1114
    .local v4, "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 1116
    sget-object v2, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v3, "CSpace"

    const-string/jumbo v5, "space.main.enter"

    invoke-static {v2, v3, v5}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    new-instance v3, Lfzu$2;

    move-object/from16 v5, p6

    move-object/from16 v6, p0

    move/from16 v7, p3

    move-wide/from16 v8, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    move/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    invoke-direct/range {v3 .. v18}, Lfzu$2;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Lcma;Landroid/content/Context;IJLjava/lang/String;Ljava/util/ArrayList;ZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v3}, Lfzu;->a(Lgqq;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;JILjava/lang/String;Ljava/util/ArrayList;Lcma;ZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;)V
    .locals 15
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "mode"    # I
    .param p4, "localPath"    # Ljava/lang/String;
    .param p7, "orgVisible"    # Z
    .param p8, "shouldShowRecentTab"    # Z
    .param p9, "sendParam"    # Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;
    .param p10, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;ZZ",
            "Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1197
    .local p5, "rePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    move-object/from16 v12, p10

    invoke-static/range {v1 .. v14}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/util/ArrayList;Lcma;ZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1200
    return-void
.end method

.method private static a(Landroid/content/Context;JLcma;ZILjava/lang/String;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p4, "shouldShowRecentTab"    # Z
    .param p5, "defaultTabIndex"    # I
    .param p6, "lastMsgTip"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 680
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v7, p3

    move/from16 v9, p4

    move/from16 v11, p5

    move-object/from16 v13, p6

    invoke-static/range {v1 .. v14}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/util/ArrayList;Lcma;ZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 682
    return-void
.end method

.method public static a(Landroid/content/Context;JLcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 15
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p6, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v8, 0x0

    .line 625
    .local v8, "dentryModelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p3, :cond_0

    .line 626
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "dentryModelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v2, 0x1

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 627
    .restart local v8    # "dentryModelList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_0
    const/4 v6, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v13, p5

    invoke-static/range {v3 .. v13}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/util/ArrayList;Lcma;ZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method public static a(Landroid/content/Context;JLght;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "cSpaceRecentFileModel"    # Lght;

    .prologue
    .line 1801
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 1810
    :cond_0
    :goto_0
    return-void

    .line 1804
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1805
    .local v2, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    invoke-static {p3}, Lgoc;->a(Lght;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    .line 1806
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    const-string/jumbo v3, "0"

    iput-object v3, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 1807
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    .line 1809
    .local v0, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JLght;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "cSpaceRecentFileModel"    # Lght;
    .param p4, "dingTextContent"    # Ljava/lang/String;
    .param p5, "src"    # Ljava/lang/String;
    .param p6, "statisticKey"    # Ljava/lang/String;
    .param p7, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 1933
    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    .line 1953
    :cond_0
    :goto_0
    return-void

    .line 1936
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1937
    .local v2, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    invoke-static {p3}, Lgoc;->a(Lght;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v1

    .line 1938
    .local v1, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    const-string/jumbo v3, "0"

    iput-object v3, v1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 1939
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1940
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1941
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "msg_entity_list"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1943
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1944
    const-string/jumbo v3, "ding_text_content"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    :cond_2
    const-string/jumbo v3, "space_transfer_src"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    const-string/jumbo v3, "space_statistic_key"

    invoke-virtual {v0, v3, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    const-string/jumbo v3, "need_space_copy"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1952
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "localUrl"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 656
    if-nez p0, :cond_0

    .line 666
    :goto_0
    return-void

    .line 660
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static/range {p3 .. p3}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 661
    :cond_1
    sget v0, Lfzs$h;->cspace_file_not_exist:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0

    .line 665
    :cond_2
    const/4 v4, 0x5

    sget-object v7, Lfzu;->d:Lcma;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string/jumbo v11, "other"

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v5, p3

    move-object v10, v6

    invoke-static/range {v1 .. v11}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/util/ArrayList;Lcma;ZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;ILjava/util/List;III)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "cid"    # Ljava/lang/String;
    .param p4, "mode"    # I
    .param p6, "role"    # I
    .param p7, "memberType"    # I
    .param p8, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 1680
    .local p5, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;>;"
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v10, "https://qr.dingtalk.com/space/sharemember.html"

    .line 1682
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v11

    new-instance v1, Lfzu$11;

    move-wide v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lfzu$11;-><init>(JLjava/lang/String;IIIILjava/util/List;)V

    .line 1680
    invoke-interface {v0, v10, v11, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 1702
    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Lcma;Z)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "lastMsgTip"    # Ljava/lang/String;
    .param p5, "shouldShowRecentTab"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p4, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v5, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v6, 0x0

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p4

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lfzu;->a(Landroid/content/Context;JLcma;ZILjava/lang/String;)V

    .line 674
    return-void

    .line 672
    :cond_0
    const/4 v6, 0x2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;

    .prologue
    .line 638
    if-nez p0, :cond_0

    .line 650
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 642
    :cond_1
    sget v0, Lfzs$h;->space_save_param_error:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :cond_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "&filename="

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p4, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "&from=isv"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 648
    .local v5, "tempUrl":Ljava/lang/String;
    const/4 v4, 0x5

    const/4 v6, 0x0

    sget-object v7, Lfzu;->d:Lcma;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string/jumbo v11, "app"

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v1 .. v11}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/util/ArrayList;Lcma;ZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JLjava/util/ArrayList;Ljava/lang/String;Lcma;)V
    .locals 15
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p4, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;",
            ">;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1087
    .local p3, "generalFileModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;>;"
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v7, p5

    move-object/from16 v12, p4

    move-object/from16 v14, p3

    invoke-static/range {v1 .. v14}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/util/ArrayList;Lcma;ZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1090
    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/util/List;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1784
    .local p3, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1785
    .local v3, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1786
    .local v1, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v2

    .line 1787
    .local v2, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 1788
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1790
    .end local v1    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v2    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    .line 1791
    .local v0, "mailInterface":Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;
    const/4 v4, 0x0

    invoke-virtual {v0, p0, v3, v4}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcma;)V

    .line 1792
    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p4, "src"    # Ljava/lang/String;
    .param p5, "statisticKey"    # Ljava/lang/String;
    .param p6, "conversationId"    # Ljava/lang/String;
    .param p7, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1823
    .local p3, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, p7, v4

    if-gtz v4, :cond_1

    .line 1824
    :cond_0
    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v5, p0

    move-wide v6, p1

    move-object/from16 v8, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-static/range {v5 .. v12}, Lfzu;->a(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    .line 1852
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 1828
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v11

    .line 1829
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v12

    new-instance v4, Lfzu$14;

    move-object v5, p0

    move-wide v6, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lfzu$14;-><init>(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-class v5, Lcma;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-interface {v12, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    .line 1828
    move-object/from16 v0, p6

    move-wide/from16 v1, p7

    invoke-virtual {v11, v0, v1, v2, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;JLcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p4, "dingTextContent"    # Ljava/lang/String;
    .param p5, "src"    # Ljava/lang/String;
    .param p6, "statisticKey"    # Ljava/lang/String;
    .param p7, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1925
    .local p3, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v1 .. v10}, Lfzu;->a(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1926
    return-void
.end method

.method public static a(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p4, "dingTextContent"    # Ljava/lang/String;
    .param p5, "src"    # Ljava/lang/String;
    .param p6, "statisticKey"    # Ljava/lang/String;
    .param p7, "message"    # Lcom/alibaba/wukong/im/Message;
    .param p8, "fwdStatisticsFrom"    # Ljava/lang/String;
    .param p9, "bundleExtra"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1896
    .local p3, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1921
    .end local p8    # "fwdStatisticsFrom":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1899
    .restart local p8    # "fwdStatisticsFrom":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "space_file_more_sendcontact"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1901
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1902
    .local v3, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1903
    .local v1, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v2

    .line 1904
    .local v2, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 1905
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1907
    .end local v1    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v2    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_2
    if-nez p9, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1908
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_2
    const-string/jumbo v4, "msg_entity_list"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1910
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1911
    const-string/jumbo v4, "ding_text_content"

    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    :cond_3
    const-string/jumbo v4, "space_transfer_src"

    invoke-virtual {v0, v4, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    const-string/jumbo v4, "space_statistic_key"

    invoke-virtual {v0, v4, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    const-string/jumbo v4, "need_space_copy"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1916
    if-eqz p7, :cond_4

    .line 1917
    const-string/jumbo v4, "message"

    invoke-virtual {v0, v4, p7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1919
    :cond_4
    const-string/jumbo v4, "im_navigator_from"

    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo p8, "cspace"

    .end local p8    # "fwdStatisticsFrom":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0, v4, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .restart local p8    # "fwdStatisticsFrom":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p9

    .line 1907
    goto :goto_2
.end method

.method public static a(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J
    .param p4, "dingTextContent"    # Ljava/lang/String;
    .param p5, "src"    # Ljava/lang/String;
    .param p6, "statisticKey"    # Ljava/lang/String;
    .param p7, "conversationId"    # Ljava/lang/String;
    .param p8, "msgId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1859
    .local p3, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    invoke-static/range {p8 .. p8}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v12

    .line 1860
    .local v12, "messageId":J
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gtz v2, :cond_1

    .line 1861
    :cond_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    invoke-static/range {v3 .. v10}, Lfzu;->a(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    .line 1889
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 1865
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v10

    .line 1866
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v11

    new-instance v2, Lfzu$15;

    const/4 v8, 0x0

    move-object v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lfzu$15;-><init>(Landroid/content/Context;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Lcma;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-interface {v11, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 1865
    move-object/from16 v0, p7

    invoke-virtual {v10, v0, v12, v13, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;JLcma;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/os/Parcelable;Lcma;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Parcelable;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1733
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1734
    :cond_0
    if-eqz p2, :cond_1

    .line 1735
    const-string/jumbo v1, "2012"

    const-string/jumbo v2, "data error"

    invoke-interface {p2, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    :cond_1
    :goto_0
    return-void

    .line 1739
    :cond_2
    new-instance v0, Lfzu$13;

    invoke-direct {v0, p2, p0, p1}, Lfzu$13;-><init>(Lcma;Landroid/content/Context;Landroid/os/Parcelable;)V

    .line 1770
    .local v0, "checkLoginCallback":Lgqq;
    invoke-static {v0}, Lfzu;->a(Lgqq;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcem;JILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcma;ZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/util/ArrayList;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcem;
    .param p2, "orgId"    # J
    .param p4, "mode"    # I
    .param p5, "localPath"    # Ljava/lang/String;
    .param p6, "conversionName"    # Ljava/lang/String;
    .param p9, "fromConversation"    # Z
    .param p10, "sendParam"    # Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcem;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;Z",
            "Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1226
    .local p7, "rePathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .local p8, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    .local p11, "generalFileModels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/dingtalk/cspace/model/GeneralFileModel;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1227
    :cond_0
    if-eqz p8, :cond_1

    .line 1228
    const-string/jumbo v3, "2012"

    const-string/jumbo v4, "data error"

    move-object/from16 v0, p8

    invoke-interface {v0, v3, v4}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    .end local p0    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    return-void

    .line 1233
    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    new-instance v2, Lfzu$3;

    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move/from16 v5, p9

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-wide/from16 v8, p2

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-direct/range {v2 .. v14}, Lfzu$3;-><init>(Lcem;Landroid/content/Context;ZLjava/lang/String;Lcma;JILjava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/util/ArrayList;)V

    .line 1296
    .local v2, "spaceIdListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_3

    .line 1297
    const-class v3, Lcma;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    move-object/from16 v0, p0

    invoke-static {v2, v3, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "spaceIdListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    check-cast v2, Lcma;

    .line 1299
    .restart local v2    # "spaceIdListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lgps;->a(Lcem;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;IJ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "spaceType"    # I
    .param p3, "orgID"    # J

    .prologue
    .line 3115
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3132
    :cond_0
    :goto_0
    return-void

    .line 3119
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/statistic.html"

    .line 3120
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfzu$34;

    invoke-direct {v3, p1, p2, p3, p4}, Lfzu$34;-><init>(Lcom/alibaba/alimei/cspace/model/DentryModel;IJ)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Lcma;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1716
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_file_more_rename"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1717
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;-><init>()V

    .line 1718
    .local v0, "args":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;
    iput-object p1, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameDentryArgs;->dentry:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1719
    invoke-static {p0, v0, p2}, Lfzu;->a(Landroid/content/Context;Landroid/os/Parcelable;Lcma;)V

    .line 1720
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;

    .prologue
    .line 614
    if-nez p0, :cond_0

    .line 618
    :goto_0
    return-void

    .line 617
    :cond_0
    const-wide/16 v2, 0x0

    sget-object v7, Lfzu;->d:Lcma;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v1 .. v7}, Lfzu;->a(Landroid/content/Context;JLcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/alimei/cspace/model/DentryModel;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p2, "enableEdit"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1047
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move v6, v5

    invoke-static/range {v0 .. v7}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 2093
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 2095
    .local v0, "orgName":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1, v0}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V

    .line 2096
    return-void

    .line 2094
    .end local v0    # "orgName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 10109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2094
    invoke-virtual {v1, v2, v3}, Lfzv;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;Lcma;)V
    .locals 18
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "conversationOrgId"    # J
    .param p4, "messageId"    # J
    .param p6, "conversationId"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            "JJ",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p8, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 698
    :cond_0
    if-eqz p8, :cond_1

    .line 699
    const-string/jumbo v2, "2012"

    const-string/jumbo v3, "data error"

    move-object/from16 v0, p8

    invoke-interface {v0, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :cond_1
    :goto_0
    return-void

    .line 703
    :cond_2
    if-nez p7, :cond_3

    .line 704
    new-instance p7, Landroid/os/Bundle;

    .end local p7    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {p7 .. p7}, Landroid/os/Bundle;-><init>()V

    .line 706
    .restart local p7    # "bundle":Landroid/os/Bundle;
    :cond_3
    move-object/from16 v9, p7

    .line 707
    .local v9, "finalBundle":Landroid/os/Bundle;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 5109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v16

    .line 708
    .local v16, "finalOrgId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-nez v2, :cond_4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v10, p8

    .line 709
    invoke-static/range {v2 .. v10}, Lfzu;->b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;Lcma;)V

    goto :goto_0

    .line 713
    :cond_4
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v3, v0, v1}, Lfzv;->a(Ljava/lang/String;J)V

    .line 715
    new-instance v6, Lfzu$54;

    move-object/from16 v7, p8

    move-object/from16 v8, p1

    move-object/from16 v10, p0

    move-wide/from16 v11, p2

    move-wide/from16 v13, p4

    move-object/from16 v15, p6

    invoke-direct/range {v6 .. v17}, Lfzu$54;-><init>(Lcma;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Landroid/os/Bundle;Landroid/content/Context;JJLjava/lang/String;J)V

    invoke-static {v6}, Lfzu;->a(Lgqq;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JLandroid/os/Bundle;Lcma;)V
    .locals 10
    .param p0, "activity"    # Landroid/content/Context;
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "conversationOrgId"    # J
    .param p4, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            "J",
            "Landroid/os/Bundle;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lfzu;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;Lcma;)V

    .line 689
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "orgName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 2099
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2156
    :cond_0
    :goto_0
    return-void

    .line 2103
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 2105
    .local v1, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    iget v2, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    const/4 v9, 0x0

    invoke-static {v2, v9}, Lgqu;->a(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2106
    iget v8, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    .line 2111
    .local v8, "spaceType":I
    :goto_1
    invoke-static {p1}, Lgpv;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2112
    invoke-static {p0, p1, p2}, Lfzu;->b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V

    goto :goto_0

    .line 2108
    .end local v8    # "spaceType":I
    :cond_2
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    iget-object v9, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lfzv;->d(Ljava/lang/String;)I

    move-result v8

    .restart local v8    # "spaceType":I
    goto :goto_1

    .line 2116
    :cond_3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2117
    .local v3, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "data"

    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2119
    invoke-static {v8}, Lgqu;->d(I)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, p0

    .line 2120
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    goto :goto_0

    .line 2124
    :cond_4
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    iget-object v9, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lfzv;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2125
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    iget-object v9, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lfzv;->l(Ljava/lang/String;)I

    move-result v7

    .line 2126
    .local v7, "roleType":I
    if-eq v7, v10, :cond_5

    const/16 v2, 0x65

    if-ne v7, v2, :cond_6

    .line 2128
    :cond_5
    const-string/jumbo v2, "is_space_admin"

    invoke-virtual {v3, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    move-object v2, p0

    .line 2130
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    goto :goto_0

    .line 2134
    .end local v7    # "roleType":I
    :cond_7
    new-instance v0, Lfzu$18;

    invoke-direct {v0, v3, v1, p0}, Lfzu$18;-><init>(Landroid/os/Bundle;Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;Landroid/content/Context;)V

    .line 2152
    .local v0, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_8

    .line 2153
    const-class v4, Lcma;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    invoke-static {v0, v4, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    check-cast v0, Lcma;

    .line 2155
    .restart local v0    # "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    :cond_8
    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lgop;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p0, p1, p2, p3}, Lfzu;->b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;Lcma;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    .param p2, "x2"    # Lcma;

    .prologue
    .line 130
    invoke-static {p0, p1, p2}, Lfzu;->b(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;Lcma;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;ZLcma;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    .param p2, "checkArgsNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v2, 0x1

    .line 1577
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1578
    const/4 v1, 0x0

    invoke-static {v1, p3}, Lgpr;->a(Ljava/lang/Object;Lcma;)V

    .line 1629
    :goto_0
    return-void

    .line 1582
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 1583
    :cond_1
    const-string/jumbo v1, "2012"

    const-string/jumbo v2, "data error"

    invoke-static {v1, v2, p3}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 1587
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->getCsDentry()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1588
    invoke-static {p0, p1, p3}, Lfzu;->b(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;Lcma;)V

    goto :goto_0

    .line 1592
    :cond_3
    invoke-static {p0}, Lgpr;->c(Landroid/content/Context;)V

    .line 8054
    new-instance v0, Lgaf$a;

    invoke-direct {v0}, Lgaf$a;-><init>()V

    .line 1594
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    .line 8067
    iput-object v1, v0, Lgaf$a;->a:Ljava/lang/String;

    .line 1595
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;->getDentryId()Ljava/lang/String;

    move-result-object v1

    .line 8076
    iput-object v1, v0, Lgaf$a;->b:Ljava/lang/String;

    .line 8112
    iput-boolean v2, v0, Lgaf$a;->e:Z

    .line 9103
    iput-boolean v2, v0, Lgaf$a;->d:Z

    .line 9121
    iput-boolean v2, v0, Lgaf$a;->f:Z

    .line 9130
    const/4 v1, 0x0

    iput-boolean v1, v0, Lgaf$a;->g:Z

    .line 1600
    .local v0, "request":Lgaf$a;
    new-instance v1, Lfzu$9;

    invoke-direct {v1, p0, p1, p3}, Lfzu$9;-><init>(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;Lcma;)V

    invoke-static {v0, v1}, Lgaf;->a(Lgaf$a;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;Lcma;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFileArgs;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1711
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {p0, p1, p2}, Lfzu;->a(Landroid/content/Context;Landroid/os/Parcelable;Lcma;)V

    .line 1712
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;Lcma;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceCreateFolderArgs;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1706
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {p0, p1, p2}, Lfzu;->a(Landroid/content/Context;Landroid/os/Parcelable;Lcma;)V

    .line 1707
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionSettingArgs"    # Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;

    .prologue
    .line 3337
    .line 17340
    if-eqz p1, :cond_0

    .line 17344
    invoke-static {p1}, Lgfq;->a(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17348
    iget v0, p1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceType:I

    invoke-static {v0}, Lgqu;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17349
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_sharefile_alidoc_setting_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 3339
    :cond_0
    :goto_0
    if-nez p0, :cond_4

    .line 3350
    :goto_1
    return-void

    .line 17350
    :cond_1
    iget v0, p1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceType:I

    invoke-static {v0}, Lgqu;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17351
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_orgfile_alidoc_setting_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 17352
    :cond_2
    iget v0, p1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceType:I

    invoke-static {v0}, Lgqu;->g(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17353
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_chatfile_filelist_openfile_alidoc_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 17354
    :cond_3
    iget v0, p1, Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;->spaceType:I

    invoke-static {v0}, Lgqu;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17355
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_myfile_alidoc_setting_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 3343
    :cond_4
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/permission_setting.html"

    new-instance v2, Lfzu$45;

    invoke-direct {v2, p1}, Lfzu$45;-><init>(Lcom/alibaba/dingtalk/cspace/functions/permission/PermissionSettingArgs;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_1
.end method

.method static synthetic a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;Lcma;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;
    .param p2, "x2"    # Lcma;

    .prologue
    .line 130
    invoke-static {p0, p1, p2}, Lfzu;->b(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;Lcma;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;ZLcma;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;
    .param p2, "checkArgsNow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v3, 0x1

    .line 1464
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->o()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1465
    if-eqz p3, :cond_0

    .line 1466
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lfzu$5;

    invoke-direct {v2, p3}, Lfzu$5;-><init>(Lcma;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 1533
    :cond_0
    :goto_0
    return-void

    .line 1475
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    .line 1476
    :cond_2
    if-eqz p3, :cond_0

    .line 1477
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lfzu$6;

    invoke-direct {v2, p3}, Lfzu$6;-><init>(Lcma;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1486
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 1487
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_file_more_move"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1490
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getCsDentry()Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1491
    invoke-static {p0, p1, p3}, Lfzu;->b(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;Lcma;)V

    goto :goto_0

    .line 1495
    :cond_5
    invoke-static {p0}, Lgpr;->c(Landroid/content/Context;)V

    .line 6054
    new-instance v0, Lgaf$a;

    invoke-direct {v0}, Lgaf$a;-><init>()V

    .line 1498
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    .line 6067
    iput-object v1, v0, Lgaf$a;->a:Ljava/lang/String;

    .line 1499
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;->getDentryId()Ljava/lang/String;

    move-result-object v1

    .line 6076
    iput-object v1, v0, Lgaf$a;->b:Ljava/lang/String;

    .line 6112
    iput-boolean v3, v0, Lgaf$a;->e:Z

    .line 7103
    iput-boolean v3, v0, Lgaf$a;->d:Z

    .line 7121
    iput-boolean v3, v0, Lgaf$a;->f:Z

    .line 7130
    const/4 v1, 0x0

    iput-boolean v1, v0, Lgaf$a;->g:Z

    .line 1504
    .local v0, "request":Lgaf$a;
    new-instance v1, Lfzu$7;

    invoke-direct {v1, p0, p1, p3}, Lfzu$7;-><init>(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;Lcma;)V

    invoke-static {v0, v1}, Lgaf;->a(Lgaf$a;Lcma;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spaceLinkShareModel"    # Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    .prologue
    .line 3272
    if-nez p0, :cond_0

    .line 3284
    :goto_0
    return-void

    .line 3276
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/link_share.html"

    new-instance v2, Lfzu$41;

    invoke-direct {v2, p1}, Lfzu$41;-><init>(Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;

    .prologue
    .line 3426
    if-nez p0, :cond_0

    .line 3427
    const-string/jumbo v0, "CSpace"

    sget-object v1, Lfzu;->c:Ljava/lang/String;

    const-string/jumbo v2, "navToEditOnlineCollaborator: context is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3428
    const-string/jumbo v0, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3457
    :goto_0
    return-void

    .line 3431
    :cond_0
    new-instance v0, Lfzu$47;

    invoke-direct {v0, p0, p1}, Lfzu$47;-><init>(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/EditOnlineCollaboratorArgs;)V

    invoke-static {v0}, Lfzu;->a(Lgqq;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;

    .prologue
    .line 3526
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3527
    :cond_0
    const-string/jumbo v0, "CSpace"

    sget-object v1, Lfzu;->c:Ljava/lang/String;

    const-string/jumbo v2, "navToOnlineEditStatistic: context or args is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3528
    const-string/jumbo v0, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3557
    :goto_0
    return-void

    .line 3531
    :cond_1
    new-instance v0, Lfzu$49;

    invoke-direct {v0, p0, p1}, Lfzu$49;-><init>(Landroid/content/Context;Lcom/alibaba/dingtalk/cspacebase/space/OnlineEditStatisticArgs;)V

    invoke-static {v0}, Lfzu;->a(Lgqq;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 2479
    new-instance v0, Lfzu$25;

    invoke-direct {v0, p0, p2, p1}, Lfzu$25;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/wukong/im/Conversation;)V

    .line 2506
    .local v0, "spaceIdListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {p1, v0}, Lgps;->a(Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 2507
    return-void
.end method

.method public static a(Landroid/content/Context;Lgit;ILjava/lang/String;)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpCoFolderModel"    # Lgit;
    .param p2, "mode"    # I
    .param p3, "actionFlag"    # Ljava/lang/String;

    .prologue
    .line 3093
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3109
    :cond_0
    :goto_0
    return-void

    .line 3096
    :cond_1
    move-object/from16 v0, p1

    iget-object v3, v0, Lgit;->a:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3097
    .local v7, "spaceId":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lgit;->c:Ljava/lang/String;

    .line 3098
    .local v11, "folderName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lgit;->k:Ljava/lang/Integer;

    .line 17033
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcoc;->a(Ljava/lang/Integer;I)I

    move-result v2

    .line 3099
    .local v2, "role":I
    const-wide/16 v4, 0x0

    .line 3101
    .local v4, "cooperationOrgId":J
    move-object/from16 v0, p1

    iget-object v3, v0, Lgit;->j:Lgjb;

    if-eqz v3, :cond_2

    .line 3102
    move-object/from16 v0, p1

    iget-object v3, v0, Lgit;->j:Lgjb;

    iget-object v3, v3, Lgjb;->a:Ljava/lang/Long;

    .line 17044
    const-wide/16 v8, 0x0

    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    .line 3105
    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/16 v3, 0x65

    if-eq v2, v3, :cond_3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    :cond_3
    const/4 v13, 0x1

    :goto_1
    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p2

    move-object/from16 v14, p3

    invoke-static/range {v3 .. v21}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZZZLjava/lang/String;I)V

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lgit;J)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderModel"    # Lgit;
    .param p2, "orgId"    # J

    .prologue
    .line 1206
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lgit;->a:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lgit;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lfzv;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lgit;->a:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lgit;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lfzv;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-object v2, v0, Lgit;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget-object v11, v0, Lgit;->c:Ljava/lang/String;

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    invoke-static/range {v3 .. v21}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZZZLjava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lgiy;JJ)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groupModel"    # Lgiy;
    .param p2, "orgId"    # J
    .param p4, "spaceId"    # J

    .prologue
    .line 2944
    if-nez p1, :cond_0

    .line 2946
    invoke-static {}, Lgqd;->a()Lgqd;

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Lgqd;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2947
    .local v13, "aclCacheKey":Ljava/lang/String;
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v2

    invoke-virtual {v2, v13}, Lgqd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2948
    .local v5, "authFlag":Ljava/lang/String;
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "0"

    move-object v2, p0

    move-wide/from16 v6, p2

    invoke-static/range {v2 .. v7}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3006
    .end local v5    # "authFlag":Ljava/lang/String;
    .end local v13    # "aclCacheKey":Ljava/lang/String;
    :goto_0
    return-void

    .line 2952
    :cond_0
    iget-object v2, p1, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v3, "doc_readonly"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 2953
    .local v7, "isReadOnly":Z
    iget-object v2, p1, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v3, "watermark"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    .line 2955
    .local v8, "isWaterMark":Z
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gtz v2, :cond_1

    .line 2957
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    iget-object v3, p1, Lgiy;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-instance v6, Lfzu$28;

    move-object v9, p1

    move-wide/from16 v10, p2

    move-object v12, p0

    invoke-direct/range {v6 .. v12}, Lfzu$28;-><init>(ZZLgiy;JLandroid/content/Context;)V

    invoke-virtual {v2, v3, v4, v6}, Lgon;->a(Ljava/lang/String;ILcma;)V

    goto :goto_0

    .line 2996
    :cond_1
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/space/read_only_setting.html"

    .line 2997
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lfzu$29;

    move-wide/from16 v0, p4

    invoke-direct {v6, v0, v1}, Lfzu$29;-><init>(J)V

    invoke-interface {v2, v3, v4, v6}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lgrc;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgpe$b;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uploadParam"    # Lgrc;
    .param p2, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    .param p3, "listener"    # Lgpe$b;

    .prologue
    .line 2795
    if-nez p3, :cond_0

    .line 2897
    :goto_0
    return-void

    .line 2799
    :cond_0
    if-nez p1, :cond_1

    .line 2800
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    new-instance v3, Lggs;

    const-string/jumbo v4, "20170720"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    sget v6, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v5, v6}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lggs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0, v1, v2, v3}, Lgpe$b;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Lggs;)V

    goto :goto_0

    .line 2804
    :cond_1
    new-instance v0, Lfzu$27;

    invoke-direct {v0, p1, p2, p3}, Lfzu$27;-><init>(Lgrc;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgpe$b;)V

    invoke-static {v0}, Lfzu;->a(Lgqq;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "atSeed"    # J

    .prologue
    .line 3235
    if-nez p0, :cond_0

    .line 3251
    :goto_0
    return-void

    .line 3239
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/group_chat_member.html"

    new-instance v2, Lfzu$39;

    invoke-direct {v2, p1, p2, p3}, Lfzu$39;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shareUrl"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/Long;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "fileExtension"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;

    .prologue
    .line 3156
    if-nez p0, :cond_0

    .line 3174
    :goto_0
    return-void

    .line 3160
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/space/link_share.html"

    .line 3161
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lfzu$36;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lfzu$36;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7, v8, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileUrl"    # Ljava/lang/String;

    .prologue
    .line 2089
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2090
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectContainerId"    # Ljava/lang/String;
    .param p3, "objectType"    # I
    .param p4, "msgId"    # Ljava/lang/String;
    .param p5, "conversationId"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;

    .prologue
    .line 3197
    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3198
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectContainerId"    # Ljava/lang/String;
    .param p3, "objectType"    # I
    .param p4, "msgId"    # Ljava/lang/String;
    .param p5, "conversationId"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 3206
    if-nez p0, :cond_0

    .line 3227
    :goto_0
    return-void

    .line 3210
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v8

    const-string/jumbo v9, "https://qr.dingtalk.com/space/comment.html"

    .line 3211
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lfzu$38;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lfzu$38;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v8, v9, v10, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "currentRole"    # I
    .param p6, "shareUrl"    # Ljava/lang/String;

    .prologue
    .line 3029
    if-nez p0, :cond_0

    .line 3045
    :goto_0
    return-void

    .line 3032
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v8, "https://qr.dingtalk.com/space/coopreation_info.html"

    .line 3033
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v9

    new-instance v1, Lfzu$31;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lfzu$31;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    invoke-interface {v0, v8, v9, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/ArrayList;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "folderId"    # Ljava/lang/String;
    .param p3, "orgId"    # J
    .param p5, "aclType"    # J
    .param p7, "canEdit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3290
    .local p8, "addMemberTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    .line 3307
    :goto_0
    return-void

    .line 3294
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v10, "https://qr.dingtalk.com/space/acl_members.html"

    new-instance v1, Lfzu$42;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lfzu$42;-><init>(Ljava/lang/String;Ljava/lang/String;JJZLjava/util/ArrayList;)V

    invoke-interface {v0, v10, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileUrl"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2027
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2085
    :cond_0
    :goto_0
    return-void

    .line 2031
    :cond_1
    invoke-static {p2}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v1

    .line 2033
    .local v1, "isLocalFile":Z
    if-eqz v1, :cond_2

    .line 2034
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2039
    .local v2, "uri":Landroid/net/Uri;
    :goto_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v3, "space_file_more_sendcontact"

    invoke-interface {v0, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 2041
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/im/forward.html"

    .line 2042
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lfzu$17;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfzu$17;-><init>(ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v6, v7, v8, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0

    .line 2036
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "uri":Landroid/net/Uri;
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "coFolderConvId"    # Ljava/lang/String;
    .param p2, "coFolderName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1724
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "space_file_more_rename"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1725
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;-><init>()V

    .line 1726
    .local v0, "args":Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;
    iput-object p1, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;->coFolderConvId:Ljava/lang/String;

    .line 1727
    iput-object p2, v0, Lcom/alibaba/dingtalk/cspace/functions/editname/SpaceRenameCoFolderArgs;->coFolderName:Ljava/lang/String;

    .line 1728
    invoke-static {p0, v0, p3}, Lfzu;->a(Landroid/content/Context;Landroid/os/Parcelable;Lcma;)V

    .line 1729
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "folderId"    # Ljava/lang/String;
    .param p3, "authFlag"    # Ljava/lang/String;
    .param p4, "orgId"    # J

    .prologue
    .line 3313
    if-nez p0, :cond_0

    .line 3327
    :goto_0
    return-void

    .line 3317
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v6

    const-string/jumbo v7, "https://qr.dingtalk.com/space/acl_des.html"

    new-instance v0, Lfzu$44;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lfzu$44;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v6, v7, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcma;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spaceId"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "fileExtension"    # Ljava/lang/String;
    .param p5, "enableEdit"    # Z
    .param p6, "newBorn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1056
    .local p7, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-nez p0, :cond_0

    .line 1057
    const-string/jumbo v2, "null param"

    sget v3, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 1058
    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 1057
    invoke-static {v2, v3, p7}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1084
    :goto_0
    return-void

    .line 1062
    :cond_0
    const/4 v0, 0x0

    .line 1063
    .local v0, "clickKey":Ljava/lang/String;
    invoke-static {p4}, Lgpx;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1064
    const-string/jumbo v0, "space_filelist_opendoc_alidoc_click"

    .line 1068
    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1069
    const-string/jumbo v2, "invalid type"

    sget v3, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 1070
    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 1069
    invoke-static {v2, v3, p7}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 1065
    :cond_2
    invoke-static {p4}, Lgpx;->h(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1066
    const-string/jumbo v0, "space_filelist_opensheet_alidoc_click"

    goto :goto_1

    .line 1073
    :cond_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1075
    invoke-static/range {p1 .. p6}, Lgla;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 1076
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1077
    const-string/jumbo v2, "null url"

    sget v3, Lfzs$h;->dt_cspace_invalid_param_tip:I

    .line 1078
    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 1077
    invoke-static {v2, v3, p7}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 1082
    :cond_4
    const/4 v2, 0x0

    invoke-static {v2, p7}, Lgpr;->a(Ljava/lang/Object;Lcma;)V

    .line 1083
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "statisticKey"    # Ljava/lang/String;
    .param p4, "message"    # Lcom/alibaba/wukong/im/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/wukong/im/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1960
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1984
    :cond_0
    :goto_0
    return-void

    .line 1963
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "space_file_more_sendcontact"

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1965
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1966
    .local v3, "spaceDoArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1967
    .local v1, "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v1, :cond_2

    .line 1970
    invoke-static {v1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v2

    .line 1971
    .local v2, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1973
    .end local v1    # "model":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v2    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1974
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "msg_entity_list"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1976
    const-string/jumbo v4, "space_transfer_src"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    const-string/jumbo v4, "space_statistic_key"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    const-string/jumbo v4, "need_space_copy"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1979
    if-eqz p4, :cond_4

    .line 1980
    const-string/jumbo v4, "message"

    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1982
    :cond_4
    const-string/jumbo v4, "im_navigator_from"

    const-string/jumbo v5, "cspace"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "statisticKey"    # Ljava/lang/String;
    .param p4, "conversationId"    # Ljava/lang/String;
    .param p5, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/cspace/model/DentryModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 1990
    .local p1, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2024
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 1994
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "space_file_more_sendcontact"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1997
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gtz v0, :cond_3

    .line 1998
    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lfzu;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0

    .line 2002
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    .line 2003
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v2, Lfzu$16;

    invoke-direct {v2, p0, p1, p2, p3}, Lfzu$16;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Lcma;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-interface {v0, v2, v3, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2002
    invoke-virtual {v1, p4, p5, p6, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;JLcma;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Ljava/lang/String;J)V
    .locals 7
    .param p0, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p1, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .param p2, "actionFlag"    # Ljava/lang/String;
    .param p3, "appId"    # J

    .prologue
    .line 185
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lfzu;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Ljava/lang/String;JLcom/alibaba/wukong/im/Conversation;)V

    .line 186
    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Ljava/lang/String;JLcom/alibaba/wukong/im/Conversation;)V
    .locals 13
    .param p0, "activity"    # Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    .param p1, "userProfileExtensionObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    .param p2, "actionFlag"    # Ljava/lang/String;
    .param p3, "appId"    # J
    .param p5, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 197
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-nez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .local v0, "filterOrgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 205
    .local v10, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v10, :cond_2

    iget-object v4, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 206
    invoke-static {}, Lgpz;->a()Lgpz;

    iget-wide v4, v10, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v4, v5}, Lgpz;->b(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    .end local v10    # "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 211
    .local v11, "orgEmployeesLength":I
    if-lez v11, :cond_9

    .line 212
    const-wide/16 v2, 0x0

    .line 213
    .local v2, "orgId":J
    invoke-static/range {p5 .. p5}, Lgpt;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 214
    invoke-static/range {p5 .. p5}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 4254
    :cond_4
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 4257
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 4258
    const-string/jumbo v1, "com.workapp.msg.send"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 4260
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    .line 4262
    const/4 v4, 0x0

    .line 4263
    if-eqz v1, :cond_5

    .line 4264
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4267
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "/page/yunpan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7

    .line 4268
    :cond_6
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lfzu$12;

    invoke-direct {v4, p0}, Lfzu$12;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    const-class v5, Lcma;

    invoke-interface {v1, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    move-object v1, p0

    move-object v4, p2

    move-object/from16 v6, p5

    .line 4287
    invoke-static/range {v1 .. v6}, Lfzu;->a(Landroid/app/Activity;JLjava/lang/String;Lcma;Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_0

    .line 4289
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 4290
    const/4 v5, 0x0

    invoke-virtual {v1, p0, v4, v5}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4294
    :cond_8
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lfzu$23;

    invoke-direct {v4, p0}, Lfzu$23;-><init>(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;)V

    const-class v5, Lcma;

    invoke-interface {v1, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    move-object v1, p0

    move-object v4, p2

    move-object/from16 v6, p5

    .line 4313
    invoke-static/range {v1 .. v6}, Lfzu;->a(Landroid/app/Activity;JLjava/lang/String;Lcma;Lcom/alibaba/wukong/im/Conversation;)V

    goto/16 :goto_0

    .line 218
    .end local v2    # "orgId":J
    :cond_9
    const-string/jumbo v1, "2012"

    const-string/jumbo v4, "data error"

    invoke-static {v1, v4}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgrc;Lgpe$b;Landroid/content/Context;)V
    .locals 5
    .param p0, "cryptionDo"    # Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;
    .param p1, "param"    # Lgrc;
    .param p2, "listener"    # Lgpe$b;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 2513
    if-nez p1, :cond_0

    .line 2515
    const-wide/16 v2, -0x1

    invoke-interface {p2, v2, v3, v4, v4}, Lgpe$b;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Lggs;)V

    .line 2517
    const-string/jumbo v2, "CSpace"

    sget-object v3, Lfzu;->c:Ljava/lang/String;

    const-string/jumbo v4, "uploadFile2Space param is null"

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    :goto_0
    return-void

    .line 2521
    :cond_0
    if-eqz p0, :cond_1

    .line 2522
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;->spaceId:Ljava/lang/String;

    .line 15060
    iput-object v2, p1, Lgrc;->a:Ljava/lang/String;

    .line 2523
    invoke-static {p3, p1, p0, p2}, Lfzu;->a(Landroid/content/Context;Lgrc;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgpe$b;)V

    goto :goto_0

    .line 16056
    :cond_1
    iget-object v2, p1, Lgrc;->a:Ljava/lang/String;

    .line 2527
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2528
    invoke-static {p3, p1, v4, p2}, Lfzu;->a(Landroid/content/Context;Lgrc;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgpe$b;)V

    goto :goto_0

    .line 16112
    :cond_2
    iget-object v0, p1, Lgrc;->h:Lcom/alibaba/wukong/im/Conversation;

    .line 2534
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    new-instance v1, Lfzu$26;

    invoke-direct {v1, p1, p3, p2, v0}, Lfzu$26;-><init>(Lgrc;Landroid/content/Context;Lgpe$b;Lcom/alibaba/wukong/im/Conversation;)V

    .line 2564
    .local v1, "spaceIdListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lgps;->a(Lcom/alibaba/wukong/im/Conversation;Lcma;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
    .locals 13
    .param p0, "uploadParams"    # Lcom/alibaba/wukong/im/Uploader$UploadParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Uploader$UploadParams;",
            "Lcom/alibaba/wukong/im/Uploader$UploadListener",
            "<",
            "Lcom/alibaba/wukong/im/MessageContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2571
    .local p1, "listener":Lcom/alibaba/wukong/im/Uploader$UploadListener;, "Lcom/alibaba/wukong/im/Uploader$UploadListener<Lcom/alibaba/wukong/im/MessageContent;>;"
    if-nez p1, :cond_0

    .line 2757
    :goto_0
    return-void

    .line 2575
    :cond_0
    if-nez p0, :cond_1

    .line 2576
    const-string/jumbo v0, "CSpace"

    sget-object v1, Lfzu;->c:Ljava/lang/String;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "encryptFileUpload "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "10600"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, " uploadParams is null"

    aput-object v12, v10, v11

    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v1, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    const-string/jumbo v0, "10600"

    sget v1, Lfzs$h;->and_space_save_param_error:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2582
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 2583
    .local v5, "filePath":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 2584
    .local v7, "isFilePathEmpty":Z
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/Uploader$UploadParams;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v4

    .line 2585
    .local v4, "message":Lcom/alibaba/wukong/im/Message;
    if-nez v4, :cond_3

    const/4 v9, 0x1

    .line 2586
    .local v9, "isMessageNull":Z
    :goto_1
    if-nez v7, :cond_2

    if-eqz v9, :cond_4

    .line 2587
    :cond_2
    const-string/jumbo v0, "CSpace"

    sget-object v1, Lfzu;->c:Ljava/lang/String;

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "encryptFileUpload "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "10600"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, ", uploadParams.getFilePath() empty ? "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 2589
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, ", uploadParams.getMessage() null ? "

    aput-object v12, v10, v11

    const/4 v11, 0x5

    .line 2590
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 2587
    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v1, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2591
    const-string/jumbo v0, "10600"

    sget v1, Lfzs$h;->and_space_save_param_error:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2585
    .end local v9    # "isMessageNull":Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .line 2595
    .restart local v9    # "isMessageNull":Z
    :cond_4
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    .line 2596
    .local v2, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-nez v2, :cond_6

    const/4 v6, 0x1

    .line 2597
    .local v6, "isConversationNull":Z
    :goto_2
    invoke-interface {v4}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    .line 2598
    .local v3, "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    if-nez v3, :cond_7

    const/4 v8, 0x1

    .line 2599
    .local v8, "isMessageContentNull":Z
    :goto_3
    if-nez v6, :cond_5

    if-eqz v8, :cond_8

    .line 2600
    :cond_5
    const-string/jumbo v0, "CSpace"

    sget-object v1, Lfzu;->c:Ljava/lang/String;

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "encryptFileUpload "

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "10600"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, ", uploadParams.getMessage().conversation() null ? "

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 2602
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string/jumbo v12, ", uploadParams.getMessage().messageContent() null ? "

    aput-object v12, v10, v11

    const/4 v11, 0x5

    .line 2603
    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 2600
    invoke-static {v10}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v1, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    const-string/jumbo v0, "10600"

    sget v1, Lfzs$h;->and_space_save_param_error:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2596
    .end local v3    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .end local v6    # "isConversationNull":Z
    .end local v8    # "isMessageContentNull":Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    .line 2598
    .restart local v3    # "messageContent":Lcom/alibaba/wukong/im/MessageContent;
    .restart local v6    # "isConversationNull":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_3

    .line 2756
    .restart local v8    # "isMessageContentNull":Z
    :cond_8
    new-instance v0, Lfzu$a;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lfzu$a;-><init>(Lcom/alibaba/wukong/im/Uploader$UploadListener;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/MessageContent;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)V

    .line 16614
    new-instance v1, Lfzu$a$1;

    invoke-direct {v1, v0}, Lfzu$a$1;-><init>(Lfzu$a;)V

    .line 16634
    iget-object v10, v0, Lfzu$a;->b:Lcom/alibaba/wukong/im/Conversation;

    const/4 v11, 0x1

    iget-object v0, v0, Lfzu$a;->c:Lcom/alibaba/wukong/im/MessageContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v0

    invoke-static {v10, v11, v0, v1}, Lgps;->a(Lcom/alibaba/wukong/im/Conversation;ZILcma;)V

    goto/16 :goto_0
.end method

.method public static a(Lgqq;)V
    .locals 3
    .param p0, "listener"    # Lgqq;

    .prologue
    .line 2348
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2350
    if-eqz p0, :cond_0

    .line 2351
    const-string/jumbo v0, "0000"

    .line 2352
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lfzs$h;->dt_alimei_init_processing_notify:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2351
    invoke-virtual {p0, v0, v1}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    :cond_0
    :goto_0
    return-void

    .line 2357
    :cond_1
    const-string/jumbo v0, "checkSpaceToken"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lfzu$24;

    invoke-direct {v1, p0}, Lfzu$24;-><init>(Lgqq;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 6
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 130
    .line 20964
    if-eqz p1, :cond_0

    .line 20967
    invoke-virtual {p1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20968
    new-array v5, v3, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 20969
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20970
    invoke-static {p1}, Lgoc;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v2

    .line 20971
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20972
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lgoc;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v2

    .line 20973
    aput-object v2, v5, v0

    .line 20974
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 20975
    const-string/jumbo v0, "dentry_list"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 20978
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    move-object v1, p0

    move v4, v3

    .line 20979
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 20981
    :goto_0
    return v3

    :cond_0
    move v3, v0

    .line 130
    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z
    .locals 4
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 412
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v2

    if-nez v2, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    sget v2, Lfzu;->g:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    sget v2, Lfzu;->g:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    sget v2, Lfzu;->g:I

    if-ne v2, v0, :cond_3

    :cond_2
    move v0, v1

    .line 416
    goto :goto_0

    .line 418
    :cond_3
    sget v2, Lfzu;->g:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 421
    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, 0x0

    .line 237
    if-eqz p0, :cond_0

    .line 238
    const-string/jumbo v2, "pref_space_default_org"

    invoke-static {p0, v2, v0, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 240
    :cond_0
    return-wide v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2395
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;
    .locals 1
    .param p0, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 2903
    if-nez p0, :cond_0

    .line 2904
    const/4 v0, 0x0

    .line 2906
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 7
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcma;

    .prologue
    .line 130
    .line 21588
    new-instance v0, Lfzu$51;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lfzu$51;-><init>(Landroid/app/Activity;JLjava/lang/String;Lcma;)V

    .line 21632
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    invoke-virtual {v1, p3, p4, v0}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 130
    return-void
.end method

.method public static b(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "args"    # Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;

    .prologue
    .line 3481
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 3482
    :cond_0
    const-string/jumbo v1, "CSpace"

    sget-object v2, Lfzu;->c:Ljava/lang/String;

    const-string/jumbo v3, "showApplyOnlineCollaboratorDialog: activity or args is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3483
    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3510
    :goto_0
    return-void

    .line 3488
    :cond_1
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;-><init>(Landroid/app/Activity;)V

    .line 3489
    .local v0, "applyDialog":Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;
    sget v1, Lfzs$h;->dt_cspace_online_edit_permission_confirm_resolve:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->b(Ljava/lang/String;)V

    .line 3490
    new-instance v1, Lfzu$48;

    invoke-direct {v1, v0, p0, p1}, Lfzu$48;-><init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;Landroid/app/Activity;Lcom/alibaba/dingtalk/cspacebase/space/RemindOnlineCollaboratorArgs;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->a(Landroid/view/View$OnClickListener;)V

    .line 3509
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditApplyPermissionDialog;->show()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;J)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J

    .prologue
    const/4 v5, 0x0

    .line 405
    const/4 v4, 0x7

    sget-object v7, Lfzu;->d:Lcma;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string/jumbo v11, "app"

    move-object v1, p0

    move-wide v2, p1

    move-object v6, v5

    move-object v10, v5

    invoke-static/range {v1 .. v11}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/util/ArrayList;Lcma;ZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 2164
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 2166
    .local v0, "orgName":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1, v0}, Lfzu;->b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V

    .line 2167
    return-void

    .line 2165
    .end local v0    # "orgName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 11109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2165
    invoke-virtual {v1, v2, v3}, Lfzv;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;JJLjava/lang/String;Landroid/os/Bundle;Lcma;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "conversationOrgId"    # J
    .param p4, "messageId"    # J
    .param p6, "conversationId"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            "JJ",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 857
    .local p8, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 858
    :cond_0
    if-eqz p8, :cond_1

    .line 859
    const-string/jumbo v2, "2012"

    const-string/jumbo v3, "data error"

    move-object/from16 v0, p8

    invoke-interface {v0, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    :cond_1
    :goto_0
    return-void

    .line 863
    :cond_2
    new-instance v2, Lfzu$55;

    move-object/from16 v3, p8

    move-object v4, p1

    move-object v5, p0

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p6

    invoke-direct/range {v2 .. v11}, Lfzu$55;-><init>(Lcma;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Landroid/content/Context;JJLandroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v2}, Lfzu;->a(Lgqq;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V
    .locals 44
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "orgName"    # Ljava/lang/String;

    .prologue
    .line 2169
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 12109
    const-wide/16 v8, 0x0

    invoke-static {v4, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v42

    .line 2170
    .local v42, "spaceDoOrgId":J
    const-wide/16 v4, 0x0

    cmp-long v4, v42, v4

    if-lez v4, :cond_1

    move-wide/from16 v6, v42

    .line 2172
    .local v6, "orgId":J
    :goto_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lgqu;->a(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2173
    move-object/from16 v0, p1

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    move/from16 v18, v0

    .line 2177
    .local v18, "spaceType":I
    :goto_1
    const/4 v4, 0x2

    move/from16 v0, v18

    if-ne v0, v4, :cond_3

    .line 2178
    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 2179
    invoke-static/range {p1 .. p1}, Lgpr;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v5, p0

    .line 2178
    invoke-static/range {v5 .. v23}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZZZLjava/lang/String;I)V

    .line 2260
    .end local p0    # "context":Landroid/content/Context;
    .end local p2    # "orgName":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 2170
    .end local v6    # "orgId":J
    .end local v18    # "spaceType":I
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p2    # "orgName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lfzv;->a(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_0

    .line 2175
    .restart local v6    # "orgId":J
    :cond_2
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lfzv;->d(Ljava/lang/String;)I

    move-result v18

    .restart local v18    # "spaceType":I
    goto :goto_1

    .line 2182
    :cond_3
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_a

    .line 12263
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 12266
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12267
    const-string/jumbo v4, "0"

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    .line 12268
    const-string/jumbo v4, "/"

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    .line 12270
    :cond_4
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v4

    .line 12271
    invoke-static {}, Lgqd;->a()Lgqd;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-static {v5, v8}, Lgqd;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12270
    invoke-virtual {v4, v5}, Lgqd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12272
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 12274
    .end local p2    # "orgName":Ljava/lang/String;
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 12275
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v4, v2}, Lfzu;->b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 12273
    .restart local p2    # "orgName":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 13109
    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 12273
    invoke-virtual {v5, v8, v9}, Lfzv;->a(J)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 12278
    .end local p2    # "orgName":Ljava/lang/String;
    :cond_6
    invoke-static/range {p1 .. p1}, Lgpv;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 12280
    new-instance v4, Lfzu$21;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v4, v0, v1, v2}, Lfzu$21;-><init>(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Landroid/content/Context;Ljava/lang/String;)V

    .line 12302
    move-object/from16 v0, p0

    instance-of v5, v0, Landroid/app/Activity;

    if-eqz v5, :cond_7

    .line 12303
    const-class v5, Lcma;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    .line 12305
    :cond_7
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9, v4}, Lgon;->a(Ljava/lang/String;ZLcma;)V

    goto/16 :goto_2

    .line 12309
    .restart local p0    # "context":Landroid/content/Context;
    :cond_8
    new-instance v4, Lfzu$22;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v4, v0, v1, v2}, Lfzu$22;-><init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V

    .line 12325
    move-object/from16 v0, p0

    instance-of v5, v0, Landroid/app/Activity;

    if-eqz v5, :cond_9

    .line 12326
    const-class v5, Lcma;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    .line 12328
    :cond_9
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    invoke-virtual {v5, v8, v9, v4}, Lgon;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto/16 :goto_2

    .line 2184
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p2    # "orgName":Ljava/lang/String;
    :cond_a
    const/4 v4, 0x3

    move/from16 v0, v18

    if-ne v0, v4, :cond_b

    .line 2185
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lfzv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 2186
    .local v38, "conversationId":Ljava/lang/String;
    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lfzu$19;

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move/from16 v9, v18

    invoke-direct/range {v4 .. v9}, Lfzu$19;-><init>(Landroid/content/Context;JLcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;I)V

    const-class v5, Lcma;

    check-cast p0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .end local p0    # "context":Landroid/content/Context;
    move-object/from16 v0, p0

    invoke-interface {v10, v4, v5, v0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcma;

    .line 2219
    .local v39, "listenerUid":Lcma;, "Lcma<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v4

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;Lcma;)V

    goto/16 :goto_2

    .line 2220
    .end local v38    # "conversationId":Ljava/lang/String;
    .end local v39    # "listenerUid":Lcma;, "Lcma<Ljava/lang/Long;>;"
    .restart local p0    # "context":Landroid/content/Context;
    :cond_b
    const/4 v4, 0x6

    move/from16 v0, v18

    if-ne v0, v4, :cond_10

    .line 2221
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lfzv;->m(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2222
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lfzv;->l(Ljava/lang/String;)I

    move-result v40

    .line 2223
    .local v40, "roleType":I
    invoke-static/range {p1 .. p1}, Lgpv;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 2224
    .local v13, "convName":Ljava/lang/String;
    :goto_4
    const/16 v4, 0x65

    move/from16 v0, v40

    if-eq v0, v4, :cond_c

    const/4 v4, 0x1

    move/from16 v0, v40

    if-ne v0, v4, :cond_e

    :cond_c
    const/4 v15, 0x1

    .line 2225
    .local v15, "isSpaceAdmin":Z
    :goto_5
    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 2226
    invoke-static/range {p1 .. p1}, Lgpr;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v5, p0

    .line 2225
    invoke-static/range {v5 .. v23}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZZZLjava/lang/String;I)V

    goto/16 :goto_2

    .line 2223
    .end local v13    # "convName":Ljava/lang/String;
    .end local v15    # "isSpaceAdmin":Z
    :cond_d
    const/4 v13, 0x0

    goto :goto_4

    .line 2224
    .restart local v13    # "convName":Ljava/lang/String;
    :cond_e
    const/4 v15, 0x0

    goto :goto_5

    .line 2230
    .end local v13    # "convName":Ljava/lang/String;
    .end local v40    # "roleType":I
    :cond_f
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    new-instance v4, Lfzu$20;

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move/from16 v9, v18

    invoke-direct/range {v4 .. v9}, Lfzu$20;-><init>(Landroid/content/Context;JLcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;I)V

    const-class v8, Lcma;

    move-object/from16 v5, p0

    check-cast v5, Landroid/app/Activity;

    invoke-static {v4, v8, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    move-object/from16 v0, p0

    invoke-static {v0, v10, v4}, Lgop;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto/16 :goto_2

    .line 2255
    :cond_10
    const/16 v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 2256
    invoke-static/range {p1 .. p1}, Lgpr;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v19, p0

    move-wide/from16 v20, v6

    move/from16 v32, v18

    .line 2255
    invoke-static/range {v19 .. v37}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLjava/lang/String;Lcma;IZZZLjava/lang/String;I)V

    goto/16 :goto_2
.end method

.method private static b(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .param p2, "authFlag"    # Ljava/lang/String;
    .param p3, "orgName"    # Ljava/lang/String;

    .prologue
    .line 2332
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2340
    :cond_0
    :goto_0
    return-void

    .line 2335
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 14109
    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2335
    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 2336
    invoke-static/range {p1 .. p1}, Lgpr;->b(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget v15, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceType:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v3, p0

    move-object/from16 v11, p3

    move-object/from16 v19, p2

    .line 2335
    invoke-static/range {v3 .. v20}, Lfzu;->a(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;ZZLcma;IZZLcom/alibaba/dingtalk/cspacebase/model/SpaceFileSendParam;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;Lcma;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1633
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1634
    :cond_0
    const-string/jumbo v1, "2012"

    const-string/jumbo v2, "data error"

    invoke-static {v1, v2, p2}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1673
    :goto_0
    return-void

    .line 1637
    :cond_1
    new-instance v0, Lfzu$10;

    invoke-direct {v0, p2, p0, p1}, Lfzu$10;-><init>(Lcma;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/CsDentryListArgs;)V

    .line 1672
    .local v0, "loginListener":Lgqq;
    invoke-static {v0}, Lfzu;->a(Lgqq;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;Lcma;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1537
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Lfzu$8;

    invoke-direct {v0, p2, p0, p1}, Lfzu$8;-><init>(Lcma;Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/model/DentryListPageArgs;)V

    .line 1572
    .local v0, "loginListener":Lgqq;
    invoke-static {v0}, Lfzu;->a(Lgqq;)V

    .line 1573
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3012
    if-nez p0, :cond_0

    .line 3023
    :goto_0
    return-void

    .line 3015
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/recent.html"

    .line 3016
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfzu$30;

    invoke-direct {v3}, Lfzu$30;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orgId"    # J

    .prologue
    .line 3257
    if-nez p0, :cond_0

    .line 3269
    :goto_0
    return-void

    .line 3261
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/link_share_list.html"

    new-instance v2, Lfzu$40;

    invoke-direct {v2, p1, p2}, Lfzu$40;-><init>(J)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .prologue
    .line 3177
    if-nez p0, :cond_0

    .line 3190
    :goto_0
    return-void

    .line 3181
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/link_share.html"

    .line 3182
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfzu$37;

    invoke-direct {v3, p1}, Lfzu$37;-><init>(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static c()Z
    .locals 7

    .prologue
    .line 2403
    const/4 v1, 0x0

    .line 2405
    .local v1, "hasSpace":Z
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    .line 2406
    .local v3, "oaDatasource":Lcom/alibaba/dingtalk/oabase/OAInterface;
    if-eqz v3, :cond_1

    .line 2407
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(I)Ljava/util/List;

    move-result-object v2

    .line 2408
    .local v2, "oaData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    if-eqz v2, :cond_1

    .line 2409
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 2410
    .local v0, "chatApp":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v0, :cond_0

    .line 2411
    invoke-virtual {v3, v0}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    move-result-object v5

    sget-object v6, Lcom/alibaba/dingtalk/oabase/models/MicroAppType;->MicroAppTypeYunPan:Lcom/alibaba/dingtalk/oabase/models/MicroAppType;

    if-ne v5, v6, :cond_0

    .line 2412
    const/4 v1, 0x1

    .line 2419
    .end local v0    # "chatApp":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    .end local v2    # "oaData":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;>;"
    :cond_1
    return v1
.end method

.method public static d(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3138
    if-nez p0, :cond_0

    .line 3150
    :goto_0
    return-void

    .line 3142
    :cond_0
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/recent_operation.html"

    .line 3143
    invoke-static {}, Lfzu;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfzu$35;

    invoke-direct {v3}, Lfzu$35;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3560
    if-nez p0, :cond_0

    .line 3561
    const-string/jumbo v1, "CSpace"

    sget-object v2, Lfzu;->c:Ljava/lang/String;

    const-string/jumbo v3, "navToDingDriveIntroPage: context is null"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3562
    const-string/jumbo v1, ""

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-virtual {v2, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3567
    :goto_0
    return-void

    .line 3565
    :cond_0
    invoke-static {}, Lcms;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "https://tms.dingtalk.com/markets/dingtalk/dingdrive_video"

    .line 3566
    .local v0, "url":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    sget v2, Lfzs$h;->dt_cspace_space:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3565
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "https://tms.dingtalk.com/markets/dingtalk/dingdrive_video_global"

    goto :goto_1
.end method

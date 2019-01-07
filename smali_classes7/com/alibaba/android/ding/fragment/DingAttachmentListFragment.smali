.class public Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "DingAttachmentListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final a:Ljava/text/SimpleDateFormat;

.field private b:Landroid/widget/ListView;

.field private c:Laxv;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Lbht;

.field private i:Lbht$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;Laxv;)Laxv;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;
    .param p1, "x1"    # Laxv;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->c:Laxv;

    return-object p1
.end method

.method public static a(Ljava/util/List;JLjava/lang/String;J)Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;
    .locals 4
    .param p1, "sendId"    # J
    .param p3, "dingId"    # Ljava/lang/String;
    .param p4, "createTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;",
            ">;J",
            "Ljava/lang/String;",
            "J)",
            "Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "attachmentObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;>;"
    new-instance v1, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;

    invoke-direct {v1}, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;-><init>()V

    .line 58
    .local v1, "fragment":Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;
    if-eqz p0, :cond_0

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "key_attachment_object_list"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 61
    const-string/jumbo v2, "key_attachment_create"

    invoke-virtual {v0, v2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 62
    const-string/jumbo v2, "key_attachment_send_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 63
    const-string/jumbo v2, "ding_id"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v0}, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;)Laxv;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->c:Laxv;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v8, -0x1

    .line 76
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 80
    const-string/jumbo v5, "key_attachment_object_list"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->d:Ljava/util/List;

    .line 81
    const-string/jumbo v5, "key_attachment_create"

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->g:J

    .line 83
    const-string/jumbo v1, ""

    .line 84
    .local v1, "createTimeStr":Ljava/lang/String;
    iget-wide v6, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->g:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_0

    .line 85
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 86
    .local v2, "date":Ljava/util/Date;
    iget-wide v6, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->g:J

    invoke-virtual {v2, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 87
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .end local v2    # "date":Ljava/util/Date;
    :cond_0
    const-string/jumbo v5, "key_attachment_send_id"

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->e:J

    .line 90
    const-string/jumbo v5, "ding_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->f:Ljava/lang/String;

    .line 91
    iget-wide v6, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->e:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_1

    .line 92
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    iget-wide v6, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->e:J

    invoke-virtual {v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->f(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    .line 93
    .local v4, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v4, :cond_2

    .line 94
    invoke-static {v4}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v3

    .line 95
    .local v3, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v5, Laxv;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-direct {v5, v6, v1, v7}, Laxv;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->c:Laxv;

    .line 96
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->c:Laxv;

    iget-object v6, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->d:Ljava/util/List;

    invoke-virtual {v5, v6}, Laxv;->a(Ljava/util/Collection;)V

    .line 129
    .end local v1    # "createTimeStr":Ljava/lang/String;
    .end local v3    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v4    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_1
    :goto_0
    return-void

    .line 98
    .restart local v1    # "createTimeStr":Ljava/lang/String;
    .restart local v4    # "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->h:Lbht;

    if-eqz v5, :cond_3

    .line 99
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->h:Lbht;

    .line 1053
    const/4 v6, 0x1

    iput-boolean v6, v5, Lbht;->a:Z

    .line 101
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->i:Lbht$a;

    if-nez v5, :cond_4

    .line 102
    new-instance v5, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment$1;

    invoke-direct {v5, p0}, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment$1;-><init>(Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;)V

    const-class v6, Lbht$a;

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 102
    invoke-static {v5, v6, v7}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbht$a;

    iput-object v5, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->i:Lbht$a;

    .line 124
    :cond_4
    new-instance v5, Lbht;

    iget-wide v6, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->e:J

    iget-object v8, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->i:Lbht$a;

    invoke-direct {v5, v6, v7, v8}, Lbht;-><init>(JLbht$a;)V

    iput-object v5, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->h:Lbht;

    .line 125
    iget-object v5, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->h:Lbht;

    invoke-virtual {v5}, Lbht;->a()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 133
    .line 1071
    sget v1, Laxp$g;->ding_layout_ding_detail_attachment_list:I

    .line 133
    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->c:Laxv;

    if-eqz v1, :cond_0

    .line 135
    sget v1, Laxp$f;->listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->b:Landroid/widget/ListView;

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->b:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->c:Laxv;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    iget-object v1, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->b:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    :cond_0
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 15
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->d:Ljava/util/List;

    move/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .line 146
    .local v13, "attachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    if-eqz v13, :cond_0

    .line 147
    iget v2, v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    move-result-object v14

    .line 148
    .local v14, "type":Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    sget-object v2, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment$2;->a:[I

    invoke-virtual {v14}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 164
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-wide v5, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->e:J

    .line 3065
    if-eqz v13, :cond_0

    .line 3066
    iget v2, v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    move-result-object v2

    .line 3067
    sget-object v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->FILE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v4, v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3069
    :try_start_0
    iget-object v2, v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    iget-object v4, v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    invoke-static {v2, v4}, Lbjl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3070
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    .line 3071
    iget-object v4, v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    invoke-static {v4}, Lcow;->a(Ljava/lang/String;)I

    move-result v6

    .line 3072
    const-wide/16 v4, 0x0

    iget-object v7, v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    iget-wide v10, v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    .line 3073
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iget-object v10, v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->detailType:Ljava/lang/String;

    const-wide/16 v11, 0x0

    .line 3072
    invoke-virtual/range {v2 .. v12}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3076
    .end local v13    # "attachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .end local v14    # "type":Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 154
    .restart local v13    # "attachmentObject":Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .restart local v14    # "type":Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->e:J

    iget-object v2, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->f:Ljava/lang/String;

    .line 1086
    if-eqz v13, :cond_0

    .line 1087
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    invoke-static {v4, v5, v2, v13}, Lbjk;->a(JLjava/lang/String;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v2

    .line 1089
    if-eqz v2, :cond_1

    .line 1090
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1092
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    new-array v4, v2, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 1093
    const/4 v5, 0x0

    .line 1094
    const/4 v2, 0x0

    move v6, v2

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_2

    .line 1095
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 1096
    aput-object v2, v4, v6

    .line 1094
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-object v5, v2

    goto :goto_1

    .line 1099
    :cond_2
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;ZLandroid/os/Bundle;)V

    .line 1230
    const-string/jumbo v2, "chat_image_view_big"

    invoke-static {v2}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-wide v4, p0, Lcom/alibaba/android/ding/fragment/DingAttachmentListFragment;->e:J

    .line 2105
    if-eqz v13, :cond_0

    .line 2106
    iget v2, v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    sget-object v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->SPACE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v6}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->getValue()I

    move-result v6

    if-ne v2, v6, :cond_3

    .line 2107
    invoke-static {v3, v13}, Lbjk;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    goto :goto_0

    .line 2109
    :cond_3
    iget-object v2, v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->type:I

    invoke-static {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;

    move-result-object v2

    .line 2110
    sget-object v6, Lbjk$1;->a:[I

    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$LinkType;->ordinal()I

    move-result v2

    aget v2, v6, v2

    packed-switch v2, :pswitch_data_1

    .line 2123
    iget-object v2, v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->linkUrl:Ljava/lang/String;

    invoke-static {v3, v4, v5, v2}, Lbjv;->a(Landroid/app/Activity;JLjava/lang/String;)V

    goto :goto_0

    .line 2185
    :pswitch_3
    iget-object v2, v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->linkContent:Lcom/alibaba/android/ding/base/objects/DingLinkObject;

    .line 2186
    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2189
    iget-object v2, v2, Lcom/alibaba/android/ding/base/objects/DingLinkObject;->extension:Ljava/util/Map;

    const-class v4, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    invoke-static {v2, v4}, Lckw;->a(Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 2190
    if-eqz v2, :cond_0

    .line 2191
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v4

    .line 2192
    invoke-virtual {v4, v3, v2}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->a(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;)V

    goto/16 :goto_0

    .line 2116
    :pswitch_4
    invoke-static {v3, v13}, Lbjk;->b(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    goto/16 :goto_0

    .line 2120
    :pswitch_5
    invoke-static {v3, v13}, Lbjk;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    goto/16 :goto_0

    .line 3074
    :catch_0
    move-exception v2

    .line 3075
    const-string/jumbo v3, "[DingAttachmentUtil]handleDefaultAttachment failed"

    invoke-static {v3, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 3077
    :cond_4
    sget-object v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->HONGBAO:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v4, v2}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3078
    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-eqz v2, :cond_0

    iget-object v2, v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v4, "clusterId"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3079
    invoke-static {}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a()Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v7, v13, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    const-string/jumbo v8, "clusterId"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 148
    .line 2110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 71
    sget v0, Laxp$g;->ding_layout_ding_detail_attachment_list:I

    return v0
.end method

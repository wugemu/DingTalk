.class public Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;
.super Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;
.source "SpaceShareSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lgae;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private A:J

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

.field private H:I

.field k:Landroid/os/Handler;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/alibaba/dingtalk/cspace/widget/ExpandableHeightGridView;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/view/View;

.field private y:Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

.field private z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;-><init>()V

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->z:Ljava/util/HashMap;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->D:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->E:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->F:Ljava/util/List;

    .line 563
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$4;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;
    .param p1, "x1"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->A:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;)Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;
    .param p1, "x1"    # Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->y:Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->z:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;Ljava/util/List;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 59
    .line 5227
    invoke-static {p0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5228
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$7;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5246
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->y:Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;Ljava/util/List;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 59
    .line 5252
    if-eqz p1, :cond_2

    invoke-static {p0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->e:Ljava/util/List;

    .line 5255
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 5256
    new-instance v3, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->z:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->b:I

    invoke-direct {v3, v0, v1, v4}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;II)V

    .line 5257
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iget-wide v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->A:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 5258
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->E:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5262
    :goto_1
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 5263
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 5264
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5260
    :cond_0
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->E:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5267
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->d()V

    .line 59
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->C:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v8, 0x65

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 272
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->E:Ljava/util/List;

    if-nez v4, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->b:I

    if-eq v4, v8, :cond_2

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->b:I

    if-ne v4, v6, :cond_5

    .line 276
    :cond_2
    const/16 v4, 0x3a

    iput v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->H:I

    .line 277
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->x:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    :goto_1
    iget v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->H:I

    .line 283
    .local v3, "tempMax":I
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->E:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->H:I

    if-ge v4, v5, :cond_3

    .line 284
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->E:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 286
    :cond_3
    const/4 v0, 0x0

    .line 287
    .local v0, "index":I
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->F:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 288
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->F:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 290
    :cond_4
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->E:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 291
    .local v2, "shareMemberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    if-ge v0, v3, :cond_6

    .line 292
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->F:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 296
    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_2

    .line 280
    .end local v0    # "index":I
    .end local v2    # "shareMemberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    .end local v3    # "tempMax":I
    :cond_5
    const/16 v4, 0x3c

    iput v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->H:I

    goto :goto_1

    .restart local v1    # "index":I
    .restart local v2    # "shareMemberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    .restart local v3    # "tempMax":I
    :cond_6
    move v0, v1

    .line 3316
    .end local v1    # "index":I
    .end local v2    # "shareMemberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    .restart local v0    # "index":I
    :cond_7
    new-instance v4, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;-><init>(I)V

    .line 3317
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->F:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3318
    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->b:I

    if-eq v4, v6, :cond_8

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->b:I

    if-ne v4, v8, :cond_9

    .line 3319
    :cond_8
    new-instance v4, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;-><init>(I)V

    .line 3320
    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->F:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_9
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->G:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    if-nez v4, :cond_a

    .line 299
    new-instance v4, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->G:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    .line 300
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->G:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    .line 4027
    iput-object p0, v4, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->a:Lgae;

    .line 301
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->G:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->F:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->a(Ljava/util/List;)V

    .line 302
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->o:Lcom/alibaba/dingtalk/cspace/widget/ExpandableHeightGridView;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->G:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cspace/widget/ExpandableHeightGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 308
    :goto_3
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->q:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->E:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->E:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 310
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->v:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 311
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 304
    :cond_a
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->G:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->F:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->a(Ljava/util/List;)V

    .line 305
    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->G:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    invoke-virtual {v4}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->notifyDataSetChanged()V

    goto :goto_3
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    .prologue
    .line 59
    .line 5421
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->showLoadingDialog()V

    .line 5422
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$11;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 5441
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->d:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Liav;->a(Ljava/lang/String;Ljava/lang/Boolean;Lcom/alibaba/wukong/idl/im/models/SendMessageModel;Lcom/alibaba/wukong/Callback;)V

    .line 59
    return-void
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    .prologue
    .line 59
    .line 5471
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->showLoadingDialog()V

    .line 5472
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V

    const-class v2, Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/Callback;

    .line 5491
    invoke-static {}, Lcom/alibaba/wukong/im/context/IMModule;->getInstance()Lcom/alibaba/wukong/im/context/IMModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/im/context/IMModule;->getConversationRpc()Liav;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Liav;->b(Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 59
    return-void
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    .prologue
    .line 59
    .line 5600
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.space.share.delete"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5601
    const-string/jumbo v1, "space_id"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5602
    const-string/jumbo v1, "conv_id"

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5603
    const-string/jumbo v1, "space_org_id"

    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5604
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 59
    return-void
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    .prologue
    .line 59
    .line 6377
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->y:Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    if-nez v0, :cond_1

    .line 6378
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->finish()V

    .line 6379
    :cond_0
    :goto_0
    return-void

    .line 6382
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->y:Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6383
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->y:Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->ownerId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 6385
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->w:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6387
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->y:Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;

    iget-object v0, v0, Lcom/alibaba/wukong/idl/im/models/BaseConversationModel;->memberCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6388
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->v:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;

    .prologue
    .line 59
    .line 7181
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$6;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V

    const-class v2, Lcma;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 7223
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lgop;->a(Ljava/lang/String;Lcma;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 496
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->E:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->E:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->g:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 498
    invoke-direct {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->d()V

    .line 500
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;)V
    .locals 10
    .param p1, "memberModel"    # Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v9, 0x3a

    .line 609
    if-eqz p1, :cond_0

    .line 610
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getRole()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 611
    invoke-virtual {p0, v9}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->a(I)V

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getRole()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 613
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->c:J

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->d:Ljava/lang/String;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->E:Ljava/util/List;

    iget v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->b:I

    const/4 v8, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lfzu;->a(Landroid/content/Context;JLjava/lang/String;ILjava/util/List;III)V

    goto :goto_0

    .line 616
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getUid()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 557
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->a(Ljava/lang/String;)V

    .line 558
    invoke-static {p0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    :cond_0
    return-void
.end method

.method protected final a(Ljava/util/HashMap;I)V
    .locals 6
    .param p2, "newRole"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 533
    .local p1, "uIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-super {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->a(Ljava/util/HashMap;I)V

    .line 534
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->E:Ljava/util/List;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 538
    .local v1, "shareMemberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 539
    invoke-virtual {v1, p2}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->setRole(I)V

    goto :goto_1

    .line 542
    .end local v1    # "shareMemberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    :cond_3
    const/4 v0, 0x0

    .line 543
    .local v0, "display":Z
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    .line 544
    .restart local v1    # "shareMemberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->getUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 545
    invoke-virtual {v1, p2}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->setRole(I)V

    .line 546
    const/4 v0, 0x1

    goto :goto_2

    .line 549
    .end local v1    # "shareMemberModel":Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;
    :cond_5
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->G:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    if-eqz v2, :cond_0

    .line 550
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->G:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->F:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->a(Ljava/util/List;)V

    .line 551
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->G:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceShareUserHztAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->ll_share_name:I

    if-ne v0, v1, :cond_1

    .line 351
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/space/sharerename.html"

    .line 352
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$8;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$8;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V

    .line 351
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->rl_user_list:I

    if-ne v0, v1, :cond_2

    .line 366
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->c:J

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->E:Ljava/util/List;

    iget v7, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->b:I

    const/16 v9, 0x3a

    move-object v1, p0

    move v8, v5

    invoke-static/range {v1 .. v9}, Lfzu;->a(Landroid/content/Context;JLjava/lang/String;ILjava/util/List;III)V

    goto :goto_0

    .line 367
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->rl_conversation:I

    if-ne v0, v1, :cond_3

    .line 368
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v5}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 369
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->rl_exit_share:I

    if-ne v0, v1, :cond_4

    .line 4394
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4395
    sget v1, Lfzs$h;->space_share_exit:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4399
    sget v1, Lfzs$h;->space_share_exit_file_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4402
    sget v1, Lfzs$h;->sure:I

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$10;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lfzs$h;->cancel:I

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$9;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$9;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V

    .line 4411
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4417
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0

    .line 371
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lfzs$f;->rl_delete_share:I

    if-ne v0, v1, :cond_0

    .line 4445
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4446
    sget v1, Lfzs$h;->space_share_delete:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4450
    sget v1, Lfzs$h;->space_share_delete_file_tip:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4453
    sget v1, Lfzs$h;->sure:I

    new-instance v2, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lfzs$h;->cancel:I

    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$12;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$12;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V

    .line 4461
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 4467
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    const-wide/16 v8, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    sget v0, Lfzs$g;->activity_space_share_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->setContentView(I)V

    .line 100
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lfzs$h;->space_share_setting_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1325
    sget v0, Lfzs$f;->ll_share_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->l:Landroid/widget/LinearLayout;

    .line 1326
    sget v0, Lfzs$f;->tv_share_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->m:Landroid/widget/TextView;

    .line 1327
    sget v0, Lfzs$f;->tv_save_org:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->n:Landroid/widget/TextView;

    .line 1328
    sget v0, Lfzs$f;->grid_user:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/widget/ExpandableHeightGridView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->o:Lcom/alibaba/dingtalk/cspace/widget/ExpandableHeightGridView;

    .line 1329
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->o:Lcom/alibaba/dingtalk/cspace/widget/ExpandableHeightGridView;

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/cspace/widget/ExpandableHeightGridView;->setExpanded(Z)V

    .line 1330
    sget v0, Lfzs$f;->rl_user_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->p:Landroid/widget/RelativeLayout;

    .line 1331
    sget v0, Lfzs$f;->tv_user_count:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->q:Landroid/widget/TextView;

    .line 1332
    sget v0, Lfzs$f;->tv_right_tip:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->r:Landroid/widget/TextView;

    .line 1333
    sget v0, Lfzs$f;->rl_conversation:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->s:Landroid/widget/RelativeLayout;

    .line 1334
    sget v0, Lfzs$f;->rl_auto_create:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->t:Landroid/widget/RelativeLayout;

    .line 1335
    sget v0, Lfzs$f;->tv_create_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->u:Landroid/widget/TextView;

    .line 1336
    sget v0, Lfzs$f;->rl_exit_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->v:Landroid/widget/RelativeLayout;

    .line 1337
    sget v0, Lfzs$f;->rl_delete_share:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->w:Landroid/widget/RelativeLayout;

    .line 1338
    sget v0, Lfzs$f;->img_share_next:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->x:Landroid/view/View;

    .line 1340
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1341
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1342
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1343
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1344
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1345
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->w:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "space_org_id"

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->c:J

    .line 106
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conv_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->d:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "space_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->C:Ljava/lang/String;

    .line 109
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->c:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->finish()V

    .line 3147
    :cond_2
    :goto_0
    return-void

    .line 114
    :cond_3
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->d:Ljava/lang/String;

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v1, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2263
    const-class v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;

    .line 2265
    new-instance v4, Lgop$18;

    invoke-direct {v4, v0}, Lgop$18;-><init>(Lcma;)V

    invoke-interface {v1, v2, v4}, Lcom/alibaba/wukong/idl/im/client/IDLConversationService;->getByIdUnlimited(Ljava/lang/String;Liyv;)V

    .line 3145
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 3146
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 3150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3151
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 3152
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-wide v6, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->c:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 3153
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->B:Ljava/lang/String;

    .line 3154
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->n:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;->B:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3155
    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    cmp-long v1, v4, v8

    if-lez v1, :cond_5

    .line 3156
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3161
    :cond_5
    new-instance v0, Lglg;

    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$5;

    invoke-direct {v5, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity$5;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareSettingActivity;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lglg;-><init>(Landroid/app/Activity;Ljava/util/List;ZLjava/lang/String;Lglg$a;)V

    .line 3176
    invoke-virtual {v0}, Lglg;->a()V

    goto/16 :goto_0
.end method

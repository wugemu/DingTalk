.class public Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
.super Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;
.source "SessionFragmentImplV2.java"

# interfaces
.implements Lcxi;
.implements Ldze$a;


# static fields
.field public static final k:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:Landroid/view/animation/AnimationSet;

.field private C:Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ldyy$a;

.field private F:Lcom/alibaba/wukong/im/category/CategoryObject;

.field private M:Lcpo$a;

.field private N:F

.field private O:Z

.field private P:Ldjk;

.field private Q:Ldze;

.field private R:Z

.field private S:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

.field private T:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

.field private U:I

.field private V:I

.field private W:I

.field private X:Z

.field private Y:Ldbz;

.field private Z:Landroid/widget/AbsListView$OnScrollListener;

.field public i:Z

.field public j:Lcjo$a;

.field public l:Lcrb;

.field m:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

.field n:Ldyy$b;

.field private o:Lcxe;

.field private p:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/AdapterView$OnItemClickListener;

.field private s:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private t:Landroid/widget/ProgressBar;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/FrameLayout;

.field private y:Lcom/alibaba/wukong/im/Conversation;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    const-class v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;-><init>()V

    .line 155
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->i:Z

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->A:I

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->D:Ljava/util/List;

    .line 172
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->O:Z

    .line 187
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->m:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    .line 370
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$12;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->n:Ldyy$b;

    .line 928
    iput v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->U:I

    .line 929
    iput v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->V:I

    .line 930
    sget v0, Lctk$g;->fragment_im_list_default_empty:I

    iput v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->W:I

    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    .line 30925
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30926
    sget v1, Lctk$i;->version_low:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->sure:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$11;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$11;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    .line 30927
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->cancel:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$10;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$10;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    .line 30934
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 30941
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 139
    return-void
.end method

.method static synthetic B(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Z
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 31078
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v1, "dt_function"

    const-string/jumbo v2, "session_open_as_old"

    invoke-virtual {v0, v1, v2}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31079
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 139
    goto :goto_0
.end method

.method static synthetic C(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Z:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # F

    .prologue
    .line 139
    iput p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->N:F

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcxe;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Ldyy$a;)Ldyy$a;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Ldyy$a;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # I

    .prologue
    .line 139
    invoke-static {p1, p2, p3}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p2, "unreadCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1663
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1666
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1667
    const-string/jumbo v2, "unReadCount"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1668
    :catch_0
    move-exception v0

    .line 1669
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;I)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # I

    .prologue
    .line 139
    .line 25012
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->t:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "x2"    # I

    .prologue
    .line 139
    .line 19758
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    if-nez v0, :cond_1

    .line 19783
    :cond_0
    :goto_0
    return-void

    .line 19761
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 19763
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    .line 20135
    iget-object v0, v0, Lcxe;->g:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcxg;

    .line 20136
    if-eqz v0, :cond_0

    .line 20506
    iget-object v1, v0, Lcxg;->m:Ljava/lang/String;

    .line 20136
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20137
    invoke-virtual {v0, p1}, Lcxg;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto :goto_0

    .line 19766
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    invoke-virtual {v0, p1}, Lcxe;->c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 19767
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    invoke-virtual {v0, p1}, Lcxe;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 19768
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    invoke-virtual {v0, p1}, Lcxe;->d(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto :goto_0

    .line 19771
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    invoke-virtual {v0, p1}, Lcxe;->d(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto :goto_0

    .line 19774
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    .line 21170
    iget-object v0, v0, Lcxe;->g:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcxg;

    .line 21171
    if-eqz v0, :cond_0

    .line 21506
    iget-object v1, v0, Lcxg;->m:Ljava/lang/String;

    .line 21171
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21172
    invoke-virtual {v0, p1}, Lcxg;->d(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto :goto_0

    .line 19777
    :pswitch_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    invoke-virtual {v0, p1}, Lcxe;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto :goto_0

    .line 19780
    :pswitch_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    invoke-virtual {v0, p1}, Lcxe;->c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 19781
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    invoke-virtual {v0, p1}, Lcxe;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 19782
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    invoke-virtual {v0, p1}, Lcxe;->d(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto/16 :goto_0

    .line 19785
    :pswitch_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    .line 22177
    iget-object v0, v0, Lcxe;->g:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcxg;

    .line 22178
    if-eqz v0, :cond_0

    .line 22506
    iget-object v1, v0, Lcxg;->m:Ljava/lang/String;

    .line 22178
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23483
    invoke-virtual {v0, p1}, Lcxg;->c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto/16 :goto_0

    .line 19761
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 139
    .line 30153
    if-eqz p1, :cond_0

    .line 30156
    invoke-static {p1}, Ldez;->a(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    move-result-object v0

    .line 30157
    sget-object v1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$16;->a:[I

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 30163
    :cond_0
    :goto_0
    return-void

    .line 30160
    :pswitch_0
    invoke-static {p1}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v0

    .line 30161
    const-string/jumbo v1, "spm-url"

    const-string/jumbo v2, "a2o5v.12290059"

    const-string/jumbo v3, "welcome_icon"

    invoke-static {v2, v3}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30162
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Page_Chat_List"

    const-string/jumbo v3, "Button-welcome_icon"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 30165
    :pswitch_1
    invoke-static {p1}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v0

    .line 30166
    const-string/jumbo v1, "spm-url"

    const-string/jumbo v2, "a2o5v.12290059"

    const-string/jumbo v3, "birthday_icon"

    invoke-static {v2, v3}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30167
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Page_Chat_List"

    const-string/jumbo v3, "Button-birthday_icon"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 30157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;I)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # I

    .prologue
    .line 139
    .line 28965
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 28966
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->guide_text_i_know_that:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$14;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$14;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    .line 28967
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 28977
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;Landroid/content/Intent;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 139
    .line 31636
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 31637
    :cond_0
    :goto_0
    return-void

    .line 31640
    :cond_1
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 31641
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 31643
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 31644
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldks;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31645
    const-string/jumbo v0, "intent_key_clear_unread_count"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 4
    .param p1, "conversationObject"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "desc"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1945
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1946
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lctk$i;->guide_text_i_know_that:I

    new-instance v3, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$13;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$13;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1947
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1957
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 1958
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->m()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 139
    .line 31676
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 31677
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 31678
    const-string/jumbo v0, ""

    .line 31679
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 31680
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 31681
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v1

    .line 31682
    if-eqz v1, :cond_0

    .line 31683
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->m:Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    .line 31689
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d()Z

    move-result v3

    .line 31692
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_6

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v1, v4, v6

    if-nez v1, :cond_6

    .line 31694
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b:Z

    if-eqz v1, :cond_4

    .line 31695
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 31696
    const/4 v4, 0x0

    sget v5, Lctk$i;->conversation_list_clear:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 31697
    const/4 v4, 0x1

    sget v5, Lctk$i;->dt_conversation_list_cell_clear:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 31755
    :cond_1
    :goto_1
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 31756
    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;

    invoke-direct {v5, p0, p1, v3, v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$7;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;ZLjava/lang/String;)V

    .line 31757
    invoke-virtual {v4, v1, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 31823
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 31825
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31828
    :cond_2
    :goto_2
    return-void

    .line 31686
    :cond_3
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 31699
    :cond_4
    if-eqz v3, :cond_5

    const/4 v1, 0x3

    :goto_3
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 31700
    const/4 v4, 0x0

    sget v5, Lctk$i;->conversation_list_clear:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 31701
    const/4 v4, 0x1

    sget v5, Lctk$i;->dt_conversation_list_cell_clear:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 31702
    if-eqz v3, :cond_1

    .line 31703
    const/4 v4, 0x2

    sget v5, Lctk$i;->dt_im_category_move:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_1

    .line 31699
    :cond_5
    const/4 v1, 0x2

    goto :goto_3

    .line 31706
    :cond_6
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v1

    invoke-virtual {v1, p1}, Ldks;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p1}, Libb;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 31708
    :cond_7
    if-eqz v3, :cond_8

    const/4 v1, 0x2

    :goto_4
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 31709
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_9

    .line 31710
    const/4 v4, 0x0

    sget v5, Lctk$i;->cancel_sticky:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 31714
    :goto_5
    if-eqz v3, :cond_1

    .line 31715
    const/4 v4, 0x1

    sget v5, Lctk$i;->dt_im_category_move:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto/16 :goto_1

    .line 31708
    :cond_8
    const/4 v1, 0x1

    goto :goto_4

    .line 31712
    :cond_9
    const/4 v4, 0x0

    sget v5, Lctk$i;->sticky:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_5

    .line 31717
    :cond_a
    invoke-static {}, Ldks;->b()Ldks;

    move-result-object v1

    invoke-virtual {v1, p1}, Ldks;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {p1}, Libb;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 31719
    :cond_b
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 31720
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_c

    .line 31721
    const/4 v4, 0x0

    sget v5, Lctk$i;->cancel_sticky:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 31725
    :goto_6
    const/4 v4, 0x1

    sget v5, Lctk$i;->dt_conversation_list_cell_clear:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto/16 :goto_1

    .line 31723
    :cond_c
    const/4 v4, 0x0

    sget v5, Lctk$i;->sticky:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_6

    .line 31726
    :cond_d
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_e

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0x7

    cmp-long v1, v4, v6

    if-eqz v1, :cond_e

    .line 31727
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    cmp-long v1, v4, v6

    if-nez v1, :cond_11

    .line 31729
    :cond_e
    if-eqz v3, :cond_f

    const/4 v1, 0x3

    :goto_7
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 31730
    const/4 v4, 0x0

    sget v5, Lctk$i;->dt_conversation_list_cell_clear:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 31731
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_10

    .line 31732
    const/4 v4, 0x1

    sget v5, Lctk$i;->cancel_sticky:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 31736
    :goto_8
    if-eqz v3, :cond_1

    .line 31737
    const/4 v4, 0x2

    sget v5, Lctk$i;->dt_im_category_move:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto/16 :goto_1

    .line 31729
    :cond_f
    const/4 v1, 0x2

    goto :goto_7

    .line 31734
    :cond_10
    const/4 v4, 0x1

    sget v5, Lctk$i;->sticky:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_8

    .line 31741
    :cond_11
    if-eqz v3, :cond_12

    const/4 v1, 0x4

    :goto_9
    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 31742
    const/4 v4, 0x0

    sget v5, Lctk$i;->dt_conversation_list_cell_clear:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 31743
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_13

    .line 31744
    const/4 v4, 0x1

    sget v5, Lctk$i;->cancel_sticky:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 31748
    :goto_a
    const/4 v4, 0x2

    sget v5, Lctk$i;->conversation_setting:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 31749
    if-eqz v3, :cond_1

    .line 31750
    const/4 v4, 0x3

    sget v5, Lctk$i;->dt_im_category_move:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto/16 :goto_1

    .line 31741
    :cond_12
    const/4 v1, 0x3

    goto :goto_9

    .line 31746
    :cond_13
    const/4 v4, 0x1

    sget v5, Lctk$i;->sticky:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_a

    .line 31826
    :catch_0
    move-exception v0

    .line 31827
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;I)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # I

    .prologue
    .line 139
    .line 29961
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 139
    .line 32909
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    .line 32910
    invoke-static {p1}, Ldjl;->D(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$9;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 32909
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 139
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->O:Z

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->l()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 139
    .line 31837
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b(Ljava/lang/String;)V

    .line 31838
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 31839
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 31841
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$8;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$8;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-interface {p1, v0}, Lcom/alibaba/wukong/im/Conversation;->clear(Lcom/alibaba/wukong/Callback;)V

    .line 31866
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SessionFragment"

    const-string/jumbo v2, "chatlist_delete_one_session"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 139
    .line 31870
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->b(Ljava/lang/String;)V

    .line 31871
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 31872
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 31875
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->hide()V

    .line 31877
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31878
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x10

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 31879
    const-string/jumbo v1, "isretail"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31881
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "SessionFragment"

    const-string/jumbo v3, "chatlist_delete_one_session"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldjk;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->P:Ldjk;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 139
    .line 32833
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Ldde;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 139
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcjo$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->j:Lcjo$a;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 139
    .line 32885
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    .line 32886
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->getTop()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move v3, v0

    .line 32887
    :goto_0
    if-eqz v3, :cond_2

    const-string/jumbo v2, ",status=off"

    .line 32888
    :goto_1
    if-nez v3, :cond_3

    :goto_2
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/alibaba/wukong/im/Conversation;->stayOnTop(ZLcom/alibaba/wukong/Callback;)V

    .line 32889
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 32890
    cmp-long v3, v0, v4

    if-lez v3, :cond_4

    .line 32891
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 32892
    const-string/jumbo v4, "uid"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32893
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v0

    const-wide/16 v4, 0x10

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 32894
    const-string/jumbo v0, "isretail"

    const-string/jumbo v1, "true"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32896
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "SessionFragment"

    const-string/jumbo v2, "chat_session_top_click"

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 32899
    :goto_3
    return-void

    :cond_1
    move v3, v1

    .line 32886
    goto :goto_0

    .line 32887
    :cond_2
    const-string/jumbo v2, ",status=on"

    goto :goto_1

    :cond_3
    move v0, v1

    .line 32888
    goto :goto_2

    .line 32900
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32901
    const-string/jumbo v1, "cid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32902
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "SessionFragment"

    const-string/jumbo v3, "chat_session_top_click"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->i:Z

    return v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->w:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method private k()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z:Z

    if-eqz v0, :cond_0

    .line 815
    invoke-static {}, Ldbv;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->AT_ME:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1}, Ldze;->c(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->AT_ME:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method private l()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 825
    iget-boolean v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z:Z

    if-eqz v4, :cond_3

    .line 826
    invoke-static {}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a()Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;

    move-result-object v4

    .line 15092
    iget-object v5, v4, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15093
    :cond_0
    const/4 v2, 0x0

    .line 827
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;>;"
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 828
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v5, Lcom/alibaba/android/dingtalkim/session/header/Header;->DEVICE_STATUS:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v4, v5}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 829
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v5, Lcom/alibaba/android/dingtalkim/session/header/Header;->IPAD_STATUS:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v4, v5}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 853
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;>;"
    :cond_3
    :goto_0
    return-void

    .line 15095
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15096
    iget-object v4, v4, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/wukong/im/DeviceStatus;

    .line 15097
    if-eqz v4, :cond_5

    .line 15100
    invoke-interface {v4}, Lcom/alibaba/wukong/im/DeviceStatus;->status()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 15101
    invoke-interface {v4}, Lcom/alibaba/wukong/im/DeviceStatus;->deviceType()I

    move-result v4

    invoke-static {v4}, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->valueOf(I)Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 832
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;>;"
    :cond_6
    const/4 v1, 0x0

    .line 833
    .local v1, "hasPCDevice":Z
    const/4 v0, 0x0

    .line 834
    .local v0, "hasIPadDevice":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    .line 835
    .local v3, "type":Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;
    if-eqz v3, :cond_7

    .line 838
    sget-object v5, Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;->DEVICE_TYPE_IPAD:Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;

    if-ne v3, v5, :cond_8

    .line 839
    const/4 v0, 0x1

    .line 840
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v6, Lcom/alibaba/android/dingtalkim/session/header/Header;->IPAD_STATUS:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v5, v6}, Ldze;->c(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    goto :goto_2

    .line 842
    :cond_8
    const/4 v1, 0x1

    .line 843
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v6, Lcom/alibaba/android/dingtalkim/session/header/Header;->DEVICE_STATUS:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v5, v6}, Ldze;->c(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    goto :goto_2

    .line 846
    .end local v3    # "type":Lcom/alibaba/android/dingtalkbase/models/DeviceStatusModel$DeviceType;
    :cond_9
    if-nez v1, :cond_a

    .line 847
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v5, Lcom/alibaba/android/dingtalkim/session/header/Header;->DEVICE_STATUS:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v4, v5}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 849
    :cond_a
    if-nez v0, :cond_3

    .line 850
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v5, Lcom/alibaba/android/dingtalkim/session/header/Header;->IPAD_STATUS:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v4, v5}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldbz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Y:Ldbz;

    return-object v0
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 856
    const-string/jumbo v0, "pref.key.new.user.lifestyle.guide.is.show"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z:Z

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->GUIDE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1}, Ldze;->c(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 861
    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1982
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    if-eqz v0, :cond_0

    .line 1983
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d:Z

    if-eqz v0, :cond_1

    .line 1984
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->F:Lcom/alibaba/wukong/im/category/CategoryObject;

    invoke-interface {v0, v1}, Ldyy$a;->a(Lcom/alibaba/wukong/im/category/CategoryObject;)V

    .line 1985
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->S:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    if-eqz v0, :cond_0

    .line 1986
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->S:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->setEnabled(Z)V

    .line 2000
    :cond_0
    :goto_0
    return-void

    .line 1989
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->S:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    if-eqz v0, :cond_2

    .line 1990
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z:Z

    if-eqz v0, :cond_3

    .line 1991
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->S:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->setEnabled(Z)V

    .line 1992
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->S:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->O:Z

    .line 17745
    iput-boolean v1, v0, Lin/srain/cube/views/ptr/PtrFrameLayout;->g:Z

    .line 1997
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d()Z

    move-result v1

    invoke-interface {v0, v1}, Ldyy$a;->a(Z)V

    goto :goto_0

    .line 1994
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->S:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->setEnabled(Z)V

    goto :goto_1
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    .line 24003
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->X:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->q:Landroid/view/View;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v0, :cond_0

    .line 24004
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->X:Z

    .line 139
    :cond_0
    return-void
.end method

.method private o()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2119
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    if-nez v6, :cond_1

    .line 2150
    :cond_0
    :goto_0
    return-void

    .line 2122
    :cond_1
    const/4 v4, 0x0

    .line 2123
    .local v4, "isAddNeed":Z
    const/4 v5, 0x0

    .line 2125
    .local v5, "isAlreadyAdded":Z
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->getHeaderViewsCount()I

    move-result v1

    .line 2126
    .local v1, "headerViewsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 2127
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    invoke-virtual {v6, v3}, Ldze;->a(I)Ldzl;

    move-result-object v2

    .line 2128
    .local v2, "holder":Ldzl;
    if-eqz v2, :cond_2

    .line 2131
    invoke-virtual {v2}, Ldzl;->d()Lcom/alibaba/android/dingtalkim/session/header/Header;

    move-result-object v0

    .line 2132
    .local v0, "header":Lcom/alibaba/android/dingtalkim/session/header/Header;
    sget-object v6, Lcom/alibaba/android/dingtalkim/session/header/Header;->LINE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    if-ne v0, v6, :cond_3

    .line 2133
    const/4 v5, 0x1

    .line 2126
    .end local v0    # "header":Lcom/alibaba/android/dingtalkim/session/header/Header;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2135
    .restart local v0    # "header":Lcom/alibaba/android/dingtalkim/session/header/Header;
    :cond_3
    sget-object v6, Lcom/alibaba/android/dingtalkim/session/header/Header;->EMPTY:Lcom/alibaba/android/dingtalkim/session/header/Header;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/alibaba/android/dingtalkim/session/header/Header;->SEARCH:Lcom/alibaba/android/dingtalkim/session/header/Header;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/alibaba/android/dingtalkim/session/header/Header;->CAMPUS_STUDENT:Lcom/alibaba/android/dingtalkim/session/header/Header;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/alibaba/android/dingtalkim/session/header/Header;->CAMPUS_HR:Lcom/alibaba/android/dingtalkim/session/header/Header;

    if-eq v0, v6, :cond_2

    .line 2137
    const/4 v4, 0x1

    goto :goto_2

    .line 2141
    .end local v0    # "header":Lcom/alibaba/android/dingtalkim/session/header/Header;
    .end local v2    # "holder":Ldzl;
    :cond_4
    if-eqz v4, :cond_5

    .line 2142
    if-nez v5, :cond_0

    .line 2143
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v7, Lcom/alibaba/android/dingtalkim/session/header/Header;->LINE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v6, v7}, Ldze;->c(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    goto :goto_0

    .line 2146
    :cond_5
    if-eqz v5, :cond_0

    .line 2147
    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v7, Lcom/alibaba/android/dingtalkim/session/header/Header;->LINE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v6, v7}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    goto :goto_0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z:Z

    return v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->k()V

    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->S:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->T:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    .line 24892
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->NOTIFICATION_SETTING:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 139
    return-void
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    .line 24925
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->CONTACT_MATCH_GUIDE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 139
    return-void
.end method

.method static synthetic u(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    .line 25016
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->t:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    return-void
.end method

.method static synthetic v(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)F
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->N:F

    return v0
.end method

.method static synthetic w(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->C:Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    const/4 v8, 0x1

    .line 139
    .line 25082
    iget v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->N:F

    invoke-static {v0}, Ldza;->a(F)Ljava/lang/String;

    move-result-object v0

    .line 25084
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;)V

    .line 25085
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 25086
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 25087
    const-string/jumbo v4, "resource"

    sget v5, Lctk$e;->icon_im_focus_pull_new:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25088
    const-string/jumbo v4, "title"

    sget v5, Lctk$i;->dt_streamline_mode_pull_down_popup_title:I

    invoke-virtual {p0, v5}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25089
    const-string/jumbo v4, "content"

    sget v5, Lctk$i;->dt_streamline_mode_pull_down_popup_content:I

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25090
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25091
    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Ljava/util/List;)V

    .line 25093
    sget v0, Lctk$i;->dt_streamline_mode_pull_down_popup_btn1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 26083
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->b:Ljava/lang/String;

    .line 25094
    sget v0, Lctk$i;->guide_text_i_know_that:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 27079
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 25095
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$21;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$21;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 27095
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    .line 25102
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$22;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$22;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 27099
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->g:Landroid/view/View$OnClickListener;

    .line 25109
    new-instance v0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$23;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$23;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 28091
    iput-object v0, v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->e:Landroid/view/View$OnClickListener;

    .line 25116
    invoke-virtual {v1, v8}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setCanceledOnTouchOutside(Z)V

    .line 25117
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->show()V

    .line 139
    return-void
.end method

.method static synthetic y(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldyy$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Lcrb;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->l:Lcrb;

    return-object v0
.end method


# virtual methods
.method public final F_()Landroid/widget/ListView;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2060
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->I:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->I:Landroid/view/View;

    sget v2, Lctk$f;->session_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 2061
    check-cast v0, Landroid/widget/ListView;

    .line 2063
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2175
    const-string/jumbo v0, "Page_Chat_List"

    return-object v0
.end method

.method protected final J()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2179
    const-string/jumbo v0, "a2o5v.12290059"

    return-object v0
.end method

.method public final a(ILdbz;)V
    .locals 0
    .param p1, "res"    # I
    .param p2, "listener"    # Ldbz;

    .prologue
    .line 1021
    iput p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->W:I

    .line 1022
    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Y:Ldbz;

    .line 1023
    return-void
.end method

.method public final a(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 1653
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Z:Landroid/widget/AbsListView$OnScrollListener;

    .line 1654
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V
    .locals 2
    .param p1, "sessionFilter"    # Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 206
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    invoke-interface {v0, v1}, Ldyy$a;->a(Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V

    .line 210
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 4
    .param p1, "efficientModeOpen"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->a(Z)V

    .line 5044
    const-string/jumbo v1, "pref_key_efficient_mode_open"

    invoke-static {v1, p1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 265
    const-string/jumbo v1, "pref_key_efficient_intro_show"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    const-string/jumbo v1, "pref_key_efficient_intro_show"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 267
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/efficient_intro.html"

    new-instance v3, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$1;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lctk$a;->slide_in_up:I

    sget v3, Lctk$a;->slide_out_down:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->n()V

    .line 279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 280
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    if-eqz p1, :cond_1

    const-string/jumbo v1, "on"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "setting_high_effiency_set_click"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 282
    return-void

    .line 280
    :cond_1
    const-string/jumbo v1, "off"

    goto :goto_0
.end method

.method public final a(ZLandroid/widget/TextView;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 12
    .param p1, "animation"    # Z
    .param p2, "btnView"    # Landroid/widget/TextView;
    .param p3, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 936
    if-nez p3, :cond_1

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->A:I

    if-ne v0, v7, :cond_2

    .line 940
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v3, "pre_key_first_hide_conversation"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->A:I

    .line 943
    :cond_2
    iget v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->A:I

    if-ne v0, v7, :cond_4

    .line 944
    iput v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->A:I

    .line 945
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v3, "pre_key_first_hide_conversation"

    iget v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->A:I

    invoke-static {v0, v3, v6}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 947
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->C:Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;

    if-nez v0, :cond_3

    .line 948
    new-instance v0, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->C:Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;

    .line 951
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->C:Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;

    new-instance v3, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$19;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$19;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;->a(Landroid/view/View$OnClickListener;)V

    .line 957
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->C:Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkim/views/BlueGuidePopUpWindow;->setOutsideTouchable(Z)V

    .line 960
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->D:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    if-eqz v0, :cond_0

    .line 962
    sget v6, Lctk$i;->dt_conversation_remove_session:I

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p3, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->timeSpan:Ljava/lang/String;

    .line 15990
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->f()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    move v3, v4

    .line 963
    :cond_6
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    .line 962
    invoke-virtual {p0, v6, v7}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    if-eqz p1, :cond_0

    .line 16971
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->B:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_7

    .line 16972
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->B:Landroid/view/animation/AnimationSet;

    .line 16973
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v2

    move v4, v2

    move v6, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 16974
    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 16975
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->B:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 16976
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 16977
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 16978
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->B:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 16980
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->B:Landroid/view/animation/AnimationSet;

    .line 965
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 15995
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v3, v4

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .line 15996
    if-eqz v0, :cond_9

    iget v10, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->displayType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->timeSpan:Ljava/lang/String;

    .line 15997
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 15998
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 15999
    :cond_9
    if-gtz v3, :cond_6

    goto :goto_1
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->i:Z

    return v0
.end method

.method public final d()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 256
    .line 5036
    const-string/jumbo v0, "pref_key_efficient_mode_open"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 256
    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->c:Z

    .line 257
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->c:Z

    return v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    invoke-interface {v0}, Ldyy$a;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->n()V

    .line 215
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 2104
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o()V

    .line 2105
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 2109
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o()V

    .line 2110
    return-void
.end method

.method public final j()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2114
    .line 19751
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->SESSION_RETRY:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;)Ldzl;

    move-result-object v0

    .line 19752
    if-eqz v0, :cond_0

    .line 19753
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->SESSION_RETRY:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v0, v1}, Ldze;->b(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 2115
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->n()V

    .line 2116
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v12, 0x8

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 293
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 295
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 296
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v5, "session_load"

    aput-object v5, v1, v3

    const-string/jumbo v5, "session_fragement_onActivityCreated"

    invoke-interface {v0, v1, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics([Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v5, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->y:Lcom/alibaba/wukong/im/Conversation;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->n:Ldyy$b;

    .line 6346
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z:Z

    if-eqz v1, :cond_19

    move v1, v2

    .line 6349
    :goto_0
    iget-boolean v9, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->e:Z

    if-eqz v9, :cond_0

    .line 6350
    or-int/lit8 v1, v1, 0x2

    .line 6352
    :cond_0
    iget-boolean v9, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d:Z

    if-eqz v9, :cond_1

    .line 6353
    or-int/lit8 v1, v1, 0x4

    .line 6355
    :cond_1
    iget-boolean v9, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b:Z

    if-eqz v9, :cond_2

    .line 6356
    or-int/lit8 v1, v1, 0x8

    .line 6358
    :cond_2
    iget-boolean v9, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->f:Z

    if-eqz v9, :cond_3

    .line 6359
    or-int/lit8 v1, v1, 0x10

    .line 6361
    :cond_3
    iget-boolean v9, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->g:Z

    if-eqz v9, :cond_4

    .line 6362
    or-int/lit8 v1, v1, 0x20

    .line 7114
    :cond_4
    iget-wide v10, p0, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->h:J

    .line 6364
    invoke-static {v10, v11}, Libb;->a(J)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 6365
    or-int/lit8 v1, v1, 0x40

    .line 298
    :cond_5
    invoke-direct {v5, v6, v7, v8, v1}, Lcom/alibaba/android/dingtalkim/session/SessionPresenter;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ldyy$b;I)V

    .line 300
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    if-eqz v1, :cond_6

    .line 301
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->a:Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;

    invoke-interface {v1, v5}, Ldyy$a;->a(Lcom/alibaba/android/dingtalkim/base/IMInterface$ConversationFilter;)V

    .line 304
    :cond_6
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->e:Z

    if-nez v1, :cond_14

    move v1, v2

    .line 8065
    :goto_1
    iput-boolean v1, v5, Ldze;->f:Z

    .line 305
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-boolean v7, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z:Z

    .line 9049
    iput-object v5, v1, Ldze;->a:Landroid/app/Activity;

    .line 9050
    iput-object v6, v1, Ldze;->b:Landroid/widget/ListView;

    .line 9051
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v1, Ldze;->c:Ljava/util/ArrayList;

    .line 9052
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v12}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, v1, Ldze;->d:Ljava/util/HashMap;

    .line 9054
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_7

    .line 9057
    sget-object v5, Lcom/alibaba/android/dingtalkim/session/header/Header;->EMPTY:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v1, v5}, Ldze;->c(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 9059
    :cond_7
    if-eqz v7, :cond_8

    .line 9060
    sget-object v5, Lcom/alibaba/android/dingtalkim/session/header/Header;->SEARCH:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v1, v5}, Ldze;->c(Lcom/alibaba/android/dingtalkim/session/header/Header;)V

    .line 9083
    :cond_8
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z:Z

    if-eqz v1, :cond_9

    .line 9086
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v5, "im_banner_enable"

    .line 9087
    invoke-virtual {v1, v5, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 9088
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v5

    const-string/jumbo v6, "f_im_banner_enable"

    .line 9089
    invoke-virtual {v5, v6}, Lchx;->a(Ljava/lang/String;)Z

    move-result v5

    .line 9090
    if-eqz v1, :cond_9

    if-eqz v5, :cond_9

    .line 9091
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v1

    sget-object v5, Lble;->I:Ljava/lang/String;

    new-instance v6, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$15;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$15;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->register(Ljava/lang/String;Lblc;)V

    .line 9098
    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->R:Z

    .line 309
    :cond_9
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->k()V

    .line 312
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->m()V

    .line 314
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->l()V

    .line 9865
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z:Z

    if-eqz v1, :cond_a

    .line 9869
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9870
    invoke-static {}, Lcmo;->a()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 9871
    const-string/jumbo v5, "enable"

    const-string/jumbo v6, "1"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9872
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->k:Ljava/lang/String;

    const-string/jumbo v7, "android_user_enable_push_notification"

    invoke-interface {v5, v6, v7, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 9897
    :cond_a
    :goto_2
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z:Z

    if-eqz v1, :cond_b

    .line 9901
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    new-instance v6, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$18;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$18;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    invoke-virtual {v1, v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Landroid/app/Activity;Lcma;)V

    .line 323
    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->n:Ldyy$b;

    invoke-interface {v1}, Ldyy$b;->s()V

    .line 325
    new-instance v1, Lcxe;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v1, v5, p0}, Lcxe;-><init>(Landroid/app/Activity;Lcxi;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    .line 326
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z:Z

    .line 10049
    iput-boolean v5, v1, Lcxe;->f:Z

    .line 327
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->f()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcxe;->b(Ljava/util/List;)V

    .line 328
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b:Z

    if-eqz v1, :cond_17

    :cond_c
    move v1, v2

    .line 11040
    :goto_3
    iput-boolean v1, v5, Lcxe;->e:Z

    .line 11795
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 11798
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->x:Landroid/widget/FrameLayout;

    .line 11799
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v5, Lctk$g;->layout_session_footer:I

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->u:Landroid/view/View;

    .line 11800
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->u:Landroid/view/View;

    sget v5, Lctk$f;->rl_category_manager_root:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->w:Landroid/widget/RelativeLayout;

    .line 11801
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->u:Landroid/view/View;

    sget v5, Lctk$f;->rl_category_manager:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->v:Landroid/widget/RelativeLayout;

    .line 11802
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->v:Landroid/widget/RelativeLayout;

    new-instance v5, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$17;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$17;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11809
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->x:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->u:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 11810
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->x:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->addFooterView(Landroid/view/View;)V

    .line 330
    :cond_d
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12122
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    if-eqz v1, :cond_f

    .line 12123
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    invoke-interface {v1}, Ldyy$a;->a()Lcom/alibaba/wukong/im/ConversationChangeListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v7, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$2;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$2;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    .line 13025
    if-eqz v1, :cond_e

    .line 13027
    new-instance v8, Ldjg;

    invoke-direct {v8, v1, v5, v6, v7}, Ldjg;-><init>(Lcom/alibaba/wukong/im/ConversationChangeListener;Landroid/app/Activity;Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 13029
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v1, v8}, Lcom/alibaba/wukong/im/ConversationService;->addConversationChangeListener(Lcom/alibaba/wukong/im/ConversationChangeListener;)V

    .line 12146
    :cond_e
    new-instance v1, Ldjk;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    invoke-interface {v6}, Ldyy$a;->b()Lcom/alibaba/wukong/im/ConversationListener;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v8, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$3;

    invoke-direct {v8, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$3;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    invoke-direct {v1, v5, v6, v7, v8}, Ldjk;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/ConversationListener;Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->P:Ldjk;

    .line 12161
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->P:Ldjk;

    .line 13054
    invoke-virtual {v1, v3, v3}, Ldjk;->a(ZZ)V

    .line 12162
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->P:Ldjk;

    .line 14038
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v1, v5}, Lcom/alibaba/wukong/im/ConversationService;->addConversationListener(Lcom/alibaba/wukong/im/ConversationListener;)V

    .line 12165
    :cond_f
    new-instance v1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$4;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->r:Landroid/widget/AdapterView$OnItemClickListener;

    .line 12581
    new-instance v1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$5;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->s:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 12611
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->r:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 12612
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->s:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 12613
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    new-instance v5, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$6;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$6;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    invoke-virtual {v1, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 333
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v5, "session_load"

    aput-object v5, v1, v3

    const-string/jumbo v5, "load_session_data"

    invoke-interface {v0, v1, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineSubDurationStatistics([Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->n()V

    .line 335
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v5, "session_load"

    aput-object v5, v1, v3

    const-string/jumbo v3, "session_fragement_onActivityCreated"

    invoke-interface {v0, v1, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->endOffLineSubDurationStatistics([Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d:Z

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b:Z

    if-nez v1, :cond_13

    .line 338
    invoke-static {}, Leal;->a()Leal;

    move-result-object v3

    .line 14119
    invoke-static {}, Leal;->g()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 14122
    iget-object v1, v3, Leal;->b:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_10

    .line 14123
    new-instance v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskManager$1;

    invoke-direct {v1, v3}, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskManager$1;-><init>(Leal;)V

    iput-object v1, v3, Leal;->b:Landroid/content/BroadcastReceiver;

    .line 14134
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 14135
    const-string/jumbo v5, "action_close_push_task_banner"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14136
    iget-object v5, v3, Leal;->c:Landroid/content/Context;

    invoke-static {v5}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v5

    iget-object v6, v3, Leal;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 14207
    :cond_10
    const-string/jumbo v1, "key_pref_last_push_task_dispatch_object"

    invoke-static {v1}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14208
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object v1, v4

    .line 14138
    :goto_4
    iput-object v1, v3, Leal;->a:Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    .line 14139
    iget-object v1, v3, Leal;->a:Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    if-eqz v1, :cond_11

    .line 14140
    iget-object v1, v3, Leal;->a:Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    iput-boolean v2, v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;->isClicked:Z

    .line 14141
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "PushTaskManager"

    const-string/jumbo v4, "reloadLastTask, mLastTask != null"

    invoke-static {v1, v2, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14143
    :cond_11
    iget-object v1, v3, Leal;->a:Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    invoke-virtual {v3, v1}, Leal;->a(Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;)V

    .line 339
    :cond_12
    invoke-static {}, Leal;->a()Leal;

    move-result-object v1

    invoke-virtual {v1}, Leal;->e()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->O:Z

    .line 342
    :cond_13
    return-void

    :cond_14
    move v1, v3

    .line 304
    goto/16 :goto_1

    .line 9875
    :cond_15
    const-string/jumbo v5, "enable"

    const-string/jumbo v6, "0"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9876
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->k:Ljava/lang/String;

    const-string/jumbo v7, "android_user_enable_push_notification"

    invoke-interface {v5, v6, v7, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 9878
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 9879
    const-string/jumbo v5, "pref_key_close_notification_setting_clicked"

    invoke-static {v5, v2}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 9880
    const-string/jumbo v5, "enable"

    const-string/jumbo v6, "0"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9881
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->k:Ljava/lang/String;

    const-string/jumbo v7, "android_soft_ask_permission_for_push_notification"

    invoke-interface {v5, v6, v7, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 9884
    :cond_16
    const-string/jumbo v5, "enable"

    const-string/jumbo v6, "1"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9885
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->k:Ljava/lang/String;

    const-string/jumbo v7, "android_soft_ask_permission_for_push_notification"

    invoke-interface {v5, v6, v7, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 9887
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    sget-object v5, Lcom/alibaba/android/dingtalkim/session/header/Header;->NOTIFICATION_SETTING:Lcom/alibaba/android/dingtalkim/session/header/Header;

    invoke-virtual {v1, v5, v4}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_17
    move v1, v3

    .line 328
    goto/16 :goto_3

    .line 14212
    :cond_18
    invoke-static {}, Leal;->f()Lcom/google/gson/Gson;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/session/header/model/PushTaskHeaderObject;

    goto/16 :goto_4

    :cond_19
    move v1, v3

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 219
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->onCreate(Landroid/os/Bundle;)V

    .line 220
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 221
    .local v1, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v2, "session_load"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->startOffLineDurationStatistics(Ljava/lang/String;)V

    .line 3068
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "isFirstTimeSession"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 3069
    if-eqz v2, :cond_0

    .line 3070
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    const-string/jumbo v4, "isFirstTimeSession"

    invoke-static {v3, v4, v5}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 222
    :cond_0
    if-eqz v2, :cond_3

    .line 223
    const-string/jumbo v2, "DD"

    const-string/jumbo v3, "init_session_load"

    const-string/jumbo v4, "totalTime"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 229
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 230
    const-string/jumbo v2, "p_conversation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/Conversation;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->y:Lcom/alibaba/wukong/im/Conversation;

    .line 231
    const-string/jumbo v2, "intent_key_category_model"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    const-string/jumbo v2, "intent_key_category_model"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/im/category/CategoryObject;

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->F:Lcom/alibaba/wukong/im/category/CategoryObject;

    .line 234
    :cond_1
    const-string/jumbo v2, "is_home_session"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->z:Z

    .line 237
    :cond_2
    new-instance v2, Ldze;

    invoke-direct {v2}, Ldze;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    .line 238
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    .line 4069
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_4

    .line 4070
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Please add listener in main thread"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v2, "DD"

    const-string/jumbo v3, "session_load"

    const-string/jumbo v4, "totalTime"

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/statistics/Statistics;->startDurationStatistics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4072
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    if-eqz p0, :cond_5

    .line 4073
    iget-object v2, v2, Ldze;->e:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_5
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 286
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 6026
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->I:Landroid/view/View;

    sget v1, Lctk$f;->session_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    .line 6028
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->I:Landroid/view/View;

    sget v1, Lctk$f;->list_empty_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 6029
    iget v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->W:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 6030
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->q:Landroid/view/View;

    .line 6031
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->q:Landroid/view/View;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    if-eqz v0, :cond_0

    .line 6032
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->q:Landroid/view/View;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;

    .line 6033
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyImageResource(I)V

    .line 6034
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyTextContent(I)V

    .line 6035
    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->setEmptyDescription(I)V

    .line 6036
    sget v1, Lctk$f;->btn_empty_action:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/RimetListEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6038
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Y:Ldbz;

    if-eqz v0, :cond_1

    .line 6039
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Y:Ldbz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->q:Landroid/view/View;

    invoke-interface {v0, v1}, Ldbz;->a(Landroid/view/View;)V

    .line 6042
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d:Z

    if-eqz v0, :cond_3

    .line 6043
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;->setEmptyView(Landroid/view/View;)V

    .line 6044
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6047
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->I:Landroid/view/View;

    sget v1, Lctk$f;->loading_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->t:Landroid/widget/ProgressBar;

    .line 6049
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->I:Landroid/view/View;

    sget v1, Lctk$f;->swipe_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->S:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    .line 6050
    new-instance v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->T:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    .line 6051
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->T:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    sget v1, Lctk$i;->dt_im_effective_mode_release_to_close_read_conversation:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->c:Ljava/lang/String;

    .line 6052
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->T:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    sget v1, Lctk$i;->dt_im_effective_mode_release_to_close_read_conversation:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->b:Ljava/lang/String;

    .line 6053
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->T:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    sget v1, Lctk$i;->dt_im_effective_mode_pull_to_close_read_conversation:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->a:Ljava/lang/String;

    .line 6054
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->T:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;->d:Ljava/lang/String;

    .line 6055
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->S:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->T:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->setHeaderTextContent(Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout$a;)V

    .line 6056
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->S:Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;

    new-instance v1, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$20;-><init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/ptr/DtPullToRefreshLayout;->setPtrHandler(Lkex;)V

    .line 6077
    new-instance v0, Lcpo$a;

    invoke-direct {v0}, Lcpo$a;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->M:Lcpo$a;

    .line 6078
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->M:Lcpo$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->p:Lcom/alibaba/android/dingtalkbase/widgets/views/MotionTrackListView;

    invoke-virtual {v0, v1}, Lcpo$a;->a(Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2034
    invoke-static {}, Lcog;->a()V

    .line 2035
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->E:Ldyy$a;

    invoke-interface {v0}, Ldyy$a;->i()V

    .line 2038
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    if-eqz v0, :cond_2

    .line 2039
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->Q:Ldze;

    .line 18078
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 18079
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Please remove listener in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18081
    :cond_1
    if-eqz p0, :cond_2

    .line 18082
    iget-object v0, v0, Ldze;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2041
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->M:Lcpo$a;

    if-eqz v0, :cond_3

    .line 2042
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->M:Lcpo$a;

    invoke-virtual {v0}, Lcpo$a;->a()V

    .line 2045
    :cond_3
    invoke-static {}, Ldyx;->a()Ldyx;

    move-result-object v0

    .line 19048
    iget-object v0, v0, Ldyx;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2046
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->b:Z

    if-nez v0, :cond_4

    .line 2047
    invoke-static {}, Leal;->a()Leal;

    move-result-object v0

    .line 19494
    iget-object v1, v0, Leal;->b:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_4

    .line 19495
    iget-object v1, v0, Leal;->c:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, v0, Leal;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 19496
    const/4 v1, 0x0

    iput-object v1, v0, Leal;->b:Landroid/content/BroadcastReceiver;

    .line 2049
    :cond_4
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->onDestroy()V

    .line 2050
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2026
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->onDestroyView()V

    .line 2027
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->R:Z

    if-eqz v0, :cond_0

    .line 2028
    invoke-static {}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->getInterfaceImpl()Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;

    move-result-object v0

    sget-object v1, Lble;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/ads/base/AdsInterface;->unregister(Ljava/lang/String;)V

    .line 2030
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 2021
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->onDetach()V

    .line 2022
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/alibaba/android/dingtalkim/base/fragments/SessionFragment;->onResume()V

    .line 197
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->o:Lcxe;

    invoke-virtual {v0}, Lcxe;->notifyDataSetChanged()V

    .line 200
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 2054
    sget v0, Lctk$g;->fragment_im_list:I

    return v0
.end method

.class public Lcxk;
.super Lcxg;
.source "SessionTextItemHolder.java"


# static fields
.field static F:Landroid/text/style/ForegroundColorSpan;

.field static G:Landroid/text/style/ForegroundColorSpan;

.field private static ba:Landroid/text/style/ForegroundColorSpan;

.field private static bb:Landroid/text/style/ForegroundColorSpan;

.field private static bc:Landroid/text/style/ForegroundColorSpan;


# instance fields
.field private final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public final C:Ljava/lang/String;

.field final D:Ljava/lang/String;

.field final E:Ljava/lang/String;

.field H:Landroid/app/Activity;

.field protected I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected J:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final K:Ljava/lang/String;

.field private final L:Ljava/lang/String;

.field private final M:Ljava/lang/String;

.field private final N:Ljava/lang/String;

.field private final O:Ljava/lang/String;

.field private final P:Ljava/lang/String;

.field private final Q:Ljava/lang/String;

.field private final R:Ljava/lang/String;

.field private final S:Ljava/lang/String;

.field private final T:Ljava/lang/String;

.field private final U:Ljava/lang/String;

.field private final V:Ljava/lang/String;

.field private final W:Ljava/lang/String;

.field private final X:Ljava/lang/String;

.field private final Y:Ljava/lang/String;

.field private final Z:Ljava/lang/String;

.field private final aA:Ljava/lang/String;

.field private final aB:Ljava/lang/String;

.field private final aC:Ljava/lang/String;

.field private final aD:Ljava/lang/String;

.field private final aE:Ljava/lang/String;

.field private final aF:Ljava/lang/String;

.field private final aG:Ljava/lang/String;

.field private final aH:Ljava/lang/String;

.field private final aI:Ljava/lang/String;

.field private final aJ:Ljava/lang/String;

.field private final aK:Ljava/lang/String;

.field private final aL:Ljava/lang/String;

.field private final aM:Ljava/lang/String;

.field private final aN:Ljava/lang/String;

.field private final aO:Ljava/lang/String;

.field private final aP:Ljava/lang/String;

.field private final aQ:Ljava/lang/String;

.field private final aR:Ljava/lang/String;

.field private final aS:Ljava/lang/String;

.field private final aT:Ljava/lang/String;

.field private final aU:Ljava/lang/String;

.field private final aV:I

.field private final aW:I

.field private final aX:I

.field private final aY:I

.field private final aZ:I

.field private final aa:Ljava/lang/String;

.field private final ab:Ljava/lang/String;

.field private final ac:Ljava/lang/String;

.field private final ad:Ljava/lang/String;

.field private final ae:Ljava/lang/String;

.field private final af:Ljava/lang/String;

.field private final ag:Ljava/lang/String;

.field private final ah:Ljava/lang/String;

.field private final ai:Ljava/lang/String;

.field private final aj:Ljava/lang/String;

.field private final ak:Ljava/lang/String;

.field private final al:Ljava/lang/String;

.field private final am:Ljava/lang/String;

.field private final an:Ljava/lang/String;

.field private final ao:Ljava/lang/String;

.field private final ap:Ljava/lang/String;

.field private final aq:Ljava/lang/String;

.field private final ar:Ljava/lang/String;

.field private final as:Ljava/lang/String;

.field private final at:Ljava/lang/String;

.field private final au:Ljava/lang/String;

.field private final av:Ljava/lang/String;

.field private final aw:Ljava/lang/String;

.field private final ax:Ljava/lang/String;

.field private final ay:Ljava/lang/String;

.field private final az:Ljava/lang/String;

.field private bd:Ldht;

.field private be:Landroid/view/ViewStub;

.field private bf:Landroid/view/View;

.field private bg:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;Z)V
    .locals 7
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "parent"    # Landroid/widget/AbsListView;
    .param p3, "listener"    # Lcxi;
    .param p5, "showBottomLine"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/widget/AbsListView;",
            "Lcxi;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;>;"
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    invoke-direct/range {p0 .. p5}, Lcxg;-><init>(Landroid/app/Activity;Landroid/widget/AbsListView;Lcxi;Ljava/util/List;Z)V

    .line 89
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_draft:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->A:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_pic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->B:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_lst_msg_tip_emotion:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->C:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_voice:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->K:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_file:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->L:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_folder:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->M:Ljava/lang/String;

    .line 95
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_attachment_type_chat_record:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->N:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_at:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->O:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_conversation_at_all_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->P:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_special:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->Q:Ljava/lang/String;

    .line 99
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->unread_count_normal_tip_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->R:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->unread_count_max_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->S:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->unread_count_mail_normal_tip_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->T:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->unread_count_mail_max_tip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->U:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_share:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->V:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_mail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->W:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_pub:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->X:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_namecard:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->Y:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_gis:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->Z:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_oa:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aa:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_lst_msg_tip_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->ab:Ljava/lang/String;

    .line 111
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_burn_msg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->ac:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_group_announce:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->ad:Ljava/lang/String;

    .line 113
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_lucky_money:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->ae:Ljava/lang/String;

    .line 114
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->alipay_repackets_xpn_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->af:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_session_list_festival_red_packet_prefix:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->ag:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_enterprise_lucky_money:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->ah:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_redenvelop_enterprise_new_conversation_content_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->ai:Ljava/lang/String;

    .line 118
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_redenvelop_luckytime_conversation_content_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aj:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->ak:Ljava/lang/String;

    .line 120
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_lst_msg_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->al:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_lst_msg_voip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->am:Ljava/lang/String;

    .line 122
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_conference_bizcall_histovry_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->an:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_conference_syscall_histovry_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->ao:Ljava/lang/String;

    .line 124
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_lst_msg_tip_common_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->ap:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_pic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aq:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_voice:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->ar:Ljava/lang/String;

    .line 127
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->as:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_lst_msg_tip_common_video:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->at:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->lst_msg_tip_file:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->au:Ljava/lang/String;

    .line 131
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_session_msg_read:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->av:Ljava/lang/String;

    .line 132
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_session_msg_unread:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aw:Ljava/lang/String;

    .line 133
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_session_msg_space_read:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->ax:Ljava/lang/String;

    .line 134
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_session_msg_space_unread:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->ay:Ljava/lang/String;

    .line 135
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "["

    aput-object v1, v0, v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$i;->dt_ding_unconfirmed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "]"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->D:Ljava/lang/String;

    .line 136
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "["

    aput-object v1, v0, v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$i;->ding_txt_confirmed_already:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "]"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->E:Ljava/lang/String;

    .line 137
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "["

    aput-object v1, v0, v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$i;->dt_do_live:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "]"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->az:Ljava/lang/String;

    .line 138
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "["

    aput-object v1, v0, v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_msg_task:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "]"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aA:Ljava/lang/String;

    .line 140
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_linkcard_attachment_type_item:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aB:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_linkcard_attachment_type_coupon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aC:Ljava/lang/String;

    .line 142
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_linkcard_attachment_type_content:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aD:Ljava/lang/String;

    .line 143
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_linkcard_attachment_type_redenvelop:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aE:Ljava/lang/String;

    .line 146
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_message_shield_tip_message:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aF:Ljava/lang/String;

    .line 147
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_message_shield_tip_message_file:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aG:Ljava/lang/String;

    .line 148
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->dt_message_recall_message_file_default:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aH:Ljava/lang/String;

    .line 149
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lctk$i;->msg_recall_default:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aI:Ljava/lang/String;

    .line 150
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "["

    aput-object v1, v0, v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$i;->dt_im_miniapp_lastmsg_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "]"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aJ:Ljava/lang/String;

    .line 151
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_chat_biz_name_card_last_msg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aK:Ljava/lang/String;

    .line 152
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_lst_msg_live_card_record:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aL:Ljava/lang/String;

    .line 154
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_job_lst_msg_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aM:Ljava/lang/String;

    .line 155
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_resume_lst_msg_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aN:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_resume_auth_default_stu_lst_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aO:Ljava/lang/String;

    .line 158
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_resume_auth_default_hr_lst_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aP:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_resume_auth_allow_stu_lst_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aQ:Ljava/lang/String;

    .line 161
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_resume_auth_allow_hr_lst_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aR:Ljava/lang/String;

    .line 163
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_resume_auth_refuse_stu_lst_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aS:Ljava/lang/String;

    .line 164
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$i;->dt_im_resume_auth_refuse_hr_lst_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aT:Ljava/lang/String;

    .line 166
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "["

    aput-object v1, v0, v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$i;->dt_pay_group_bill_pay:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "]"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcxk;->aU:Ljava/lang/String;

    .line 189
    iput-object p1, p0, Lcxk;->H:Landroid/app/Activity;

    .line 190
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$c;->ui_common_warming_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcxk;->aV:I

    .line 191
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$c;->ui_common_warming_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcxk;->aW:I

    .line 192
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$c;->ui_common_level3_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcxk;->aX:I

    .line 193
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$c;->ui_common_level3_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcxk;->aY:I

    .line 194
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lctk$c;->ui_common_theme_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcxk;->aZ:I

    .line 195
    sget-object v0, Lcxk;->ba:Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcxk;->aV:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcxk;->ba:Landroid/text/style/ForegroundColorSpan;

    .line 198
    :cond_0
    sget-object v0, Lcxk;->bb:Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_1

    .line 199
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcxk;->aW:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcxk;->bb:Landroid/text/style/ForegroundColorSpan;

    .line 201
    :cond_1
    sget-object v0, Lcxk;->bc:Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_2

    .line 202
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcxk;->aX:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcxk;->bc:Landroid/text/style/ForegroundColorSpan;

    .line 204
    :cond_2
    sget-object v0, Lcxk;->F:Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_3

    .line 205
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcxk;->aY:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcxk;->F:Landroid/text/style/ForegroundColorSpan;

    .line 207
    :cond_3
    sget-object v0, Lcxk;->G:Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_4

    .line 208
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcxk;->aZ:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcxk;->G:Landroid/text/style/ForegroundColorSpan;

    .line 211
    :cond_4
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_im_session_emotion"

    invoke-virtual {v0, v1}, Lchx;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcxk;->bg:Z

    .line 212
    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;)V
    .locals 11
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "builder"    # Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0x21

    const/4 v8, 0x0

    .line 512
    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v1

    .line 513
    .local v1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v5

    invoke-virtual {v5}, Lccr;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "at_uid"

    .line 514
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 513
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 516
    iget-object v5, p0, Lcxk;->O:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 517
    sget-object v5, Lcxk;->ba:Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcxk;->O:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    invoke-static {p1}, Lcxk;->j(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 520
    iget-object v5, p0, Lcxk;->A:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 521
    sget-object v5, Lcxk;->ba:Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcxk;->A:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 523
    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo v5, "enterprise_redpackests_list"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 524
    iget-object v5, p0, Lcxk;->ah:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 525
    sget-object v5, Lcxk;->ba:Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcxk;->ah:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 527
    :cond_3
    if-eqz v1, :cond_4

    const-string/jumbo v5, "enterprise_b2c_redpackets_list"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 528
    iget-object v5, p0, Lcxk;->ai:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 529
    sget-object v5, Lcxk;->ba:Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcxk;->ai:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 531
    :cond_4
    if-eqz v1, :cond_5

    const-string/jumbo v5, "10"

    const-string/jumbo v6, "at_uid"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 532
    iget-object v5, p0, Lcxk;->P:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 533
    sget-object v5, Lcxk;->ba:Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcxk;->P:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 535
    :cond_5
    if-eqz v1, :cond_6

    const-string/jumbo v5, "announce"

    const-string/jumbo v6, "anchorType"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 536
    iget-object v5, p0, Lcxk;->ad:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 537
    sget-object v5, Lcxk;->ba:Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcxk;->ad:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 539
    :cond_6
    if-eqz v1, :cond_7

    const-string/jumbo v5, "special"

    const-string/jumbo v6, "anchorType"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 540
    iget-object v5, p0, Lcxk;->Q:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 541
    sget-object v5, Lcxk;->ba:Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcxk;->Q:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 542
    :cond_7
    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->isNotificationEnabled()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v5

    if-le v5, v10, :cond_c

    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, "isMail":Z
    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_8

    .line 545
    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v6, "scheme"

    invoke-interface {v5, v6}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 546
    .local v4, "url":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 547
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 550
    .end local v4    # "url":Ljava/lang/String;
    :cond_8
    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v5}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v5

    const/16 v6, 0x3e7

    if-gt v5, v6, :cond_a

    .line 551
    if-eqz v0, :cond_9

    iget-object v5, p0, Lcxk;->T:Ljava/lang/String;

    :goto_1
    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "unreadMessageCountNormalTip":Ljava/lang/String;
    invoke-virtual {p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 553
    sget-object v5, Lcxk;->bc:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 551
    .end local v3    # "unreadMessageCountNormalTip":Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcxk;->R:Ljava/lang/String;

    goto :goto_1

    .line 555
    :cond_a
    if-eqz v0, :cond_b

    iget-object v2, p0, Lcxk;->U:Ljava/lang/String;

    .line 556
    .local v2, "s":Ljava/lang/String;
    :goto_2
    invoke-virtual {p2, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 557
    sget-object v5, Lcxk;->bc:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 555
    .end local v2    # "s":Ljava/lang/String;
    :cond_b
    iget-object v2, p0, Lcxk;->S:Ljava/lang/String;

    goto :goto_2

    .line 559
    .end local v0    # "isMail":Z
    :cond_c
    iget-object v5, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v5}, Ldwa;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4411
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->p()Z

    move-result v5

    .line 559
    if-nez v5, :cond_0

    .line 560
    iget-object v5, p0, Lcxk;->az:Ljava/lang/String;

    invoke-virtual {p2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 561
    sget-object v5, Lcxk;->ba:Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcxk;->az:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v5, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0
.end method

.method private a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "showName"    # Z
    .param p5, "luckyMoneyMessageContentWithName"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 703
    invoke-direct {p0, p1, p2}, Lcxk;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;)Ljava/lang/String;

    move-result-object v7

    .line 704
    .local v7, "dingId":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    new-instance v0, Lcxk$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcxk$2;-><init>(Lcxk;Landroid/text/SpannableStringBuilder;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;ZZ)V

    .line 5731
    iget-object v1, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    .line 5732
    new-instance v1, Lcxk$3;

    invoke-direct {v1, p0, v2, p1, v0}, Lcxk$3;-><init>(Lcxk;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcma;)V

    .line 5764
    iget-object v0, p0, Lcxk;->H:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 5765
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v2, Lcma;

    iget-object v3, p0, Lcxk;->H:Landroid/app/Activity;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 5767
    :goto_0
    invoke-static {}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a()Lcom/alibaba/android/ding/base/interfaces/DingInterface;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Lcom/alibaba/android/ding/base/interfaces/DingInterface;->a(Ljava/lang/String;Lcma;)V

    .line 727
    :goto_1
    return-void

    .line 725
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcxk;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcxk;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 0
    .param p0, "x0"    # Lcxk;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcxk;->k(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    return-void
.end method

.method static synthetic a(Lcxk;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcxk;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "x2"    # Landroid/text/SpannableStringBuilder;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 87
    invoke-direct/range {p0 .. p5}, Lcxk;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z
    .locals 6
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1407
    invoke-static {p2}, Lcxk;->c(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 10477
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v2, v0

    .line 1407
    :goto_0
    if-nez v2, :cond_0

    .line 10487
    if-eqz p1, :cond_6

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_6

    .line 10488
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Libb;->c(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    .line 1407
    :goto_1
    if-eqz v2, :cond_7

    :cond_0
    :goto_2
    return v0

    :cond_1
    move v2, v1

    .line 10477
    goto :goto_0

    .line 10490
    :cond_2
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldzb;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    .line 10491
    goto :goto_1

    .line 10493
    :cond_3
    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldyq;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 10494
    invoke-static {v2}, Ldyq;->a(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10496
    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_1

    :cond_6
    move v2, v1

    .line 10500
    goto :goto_1

    :cond_7
    move v0, v1

    .line 1407
    goto :goto_2
.end method

.method public static a(Lcom/alibaba/wukong/im/Message;)Z
    .locals 2
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 469
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageType;->ENCRYPT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->isDecrypted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;)Ljava/lang/String;
    .locals 16
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "builder"    # Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 566
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v9, :cond_2

    .line 567
    :cond_0
    const/4 v5, 0x0

    .line 627
    :cond_1
    :goto_0
    return-object v5

    .line 569
    :cond_2
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v6

    .line 570
    .local v6, "lastMessage":Lcom/alibaba/wukong/im/Message;
    if-nez v6, :cond_3

    .line 571
    const/4 v5, 0x0

    goto :goto_0

    .line 575
    :cond_3
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v10

    const-wide/16 v12, 0x4

    cmp-long v9, v10, v12

    if-nez v9, :cond_e

    :cond_4
    invoke-static {v6}, Lcxk;->c(Lcom/alibaba/wukong/im/Message;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 577
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v10

    .line 5019
    sget-wide v12, Ldkb;->a:J

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_5

    .line 5021
    const-string/jumbo v9, "pref_key_show_msg_read_status_time"

    invoke-static {v9}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v12

    sput-wide v12, Ldkb;->a:J

    .line 5023
    :cond_5
    sget-wide v12, Ldkb;->a:J

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_7

    .line 5025
    invoke-static {}, Lcom/laiwang/protocol/android/LWP;->currentServerTime()J

    move-result-wide v12

    .line 5026
    sput-wide v12, Ldkb;->a:J

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-gtz v9, :cond_6

    .line 5027
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sput-wide v12, Ldkb;->a:J

    .line 5029
    :cond_6
    const-string/jumbo v9, "pref_key_show_msg_read_status_time"

    sget-wide v12, Ldkb;->a:J

    invoke-static {v9, v12, v13}, Lcpk;->b(Ljava/lang/String;J)V

    .line 5031
    :cond_7
    sget-wide v12, Ldkb;->a:J

    .line 577
    cmp-long v9, v10, v12

    if-gez v9, :cond_8

    .line 579
    const/4 v5, 0x0

    goto :goto_0

    .line 583
    :cond_8
    invoke-static {}, Ldjl;->a()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v10}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v9}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v10

    const-wide/16 v12, 0x5

    cmp-long v9, v10, v12

    if-eqz v9, :cond_9

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 584
    invoke-interface {v9}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ldjl;->a(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->b()Lchy;

    move-result-object v9

    invoke-virtual {v9}, Lchy;->getCurrentUid()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_a

    .line 585
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 589
    :cond_a
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v9

    sget-object v10, Lcom/alibaba/wukong/im/Message$MessageType;->SILENT:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v9, v10, :cond_b

    .line 590
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 593
    :cond_b
    const-string/jumbo v9, "dingId"

    invoke-interface {v6, v9}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 594
    .local v5, "dingId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 599
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v3

    .line 600
    .local v3, "content":Lcom/alibaba/wukong/im/MessageContent;
    if-eqz v3, :cond_c

    invoke-interface {v3}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v9

    const/16 v10, 0x640

    if-ne v9, v10, :cond_c

    instance-of v9, v3, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    if-eqz v9, :cond_c

    move-object v4, v3

    .line 601
    check-cast v4, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    .line 602
    .local v4, "dingCardContent":Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
    invoke-interface {v4}, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;->dingId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 605
    .end local v4    # "dingCardContent":Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 606
    .local v7, "startIndex":I
    if-gez v7, :cond_d

    .line 607
    const/4 v7, 0x0

    .line 610
    :cond_d
    invoke-interface {v6}, Lcom/alibaba/wukong/im/Message;->unReadCount()I

    move-result v9

    if-lez v9, :cond_f

    const/4 v8, 0x1

    .line 611
    .local v8, "unread":Z
    :goto_1
    invoke-static {v6}, Ldkc;->v(Lcom/alibaba/wukong/im/Message;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 612
    if-eqz v8, :cond_10

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->ay:Ljava/lang/String;

    .line 624
    .local v2, "appendTip":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 625
    if-eqz v8, :cond_13

    sget-object v9, Lcxk;->G:Landroid/text/style/ForegroundColorSpan;

    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v7

    const/16 v11, 0x21

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v7, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 627
    .end local v2    # "appendTip":Ljava/lang/String;
    .end local v3    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .end local v5    # "dingId":Ljava/lang/String;
    .end local v7    # "startIndex":I
    .end local v8    # "unread":Z
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 610
    .restart local v3    # "content":Lcom/alibaba/wukong/im/MessageContent;
    .restart local v5    # "dingId":Ljava/lang/String;
    .restart local v7    # "startIndex":I
    :cond_f
    const/4 v8, 0x0

    goto :goto_1

    .line 615
    .restart local v8    # "unread":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->ax:Ljava/lang/String;

    .restart local v2    # "appendTip":Ljava/lang/String;
    goto :goto_2

    .line 618
    .end local v2    # "appendTip":Ljava/lang/String;
    :cond_11
    if-eqz v8, :cond_12

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->aw:Ljava/lang/String;

    .restart local v2    # "appendTip":Ljava/lang/String;
    goto :goto_2

    .line 621
    .end local v2    # "appendTip":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->av:Ljava/lang/String;

    .restart local v2    # "appendTip":Ljava/lang/String;
    goto :goto_2

    .line 625
    :cond_13
    sget-object v9, Lcxk;->F:Landroid/text/style/ForegroundColorSpan;

    goto :goto_3
.end method

.method private b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V
    .locals 20
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    .param p2, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "showName"    # Z
    .param p5, "luckyMoneyMessageContentWithName"    # Z

    .prologue
    .line 772
    if-nez p5, :cond_0

    if-eqz p4, :cond_6

    .line 773
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    .line 774
    .local v3, "cid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 775
    .local v4, "orgId":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v16

    .line 776
    .local v16, "lastMessage":Lcom/alibaba/wukong/im/Message;
    if-nez v16, :cond_1

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    const-string/jumbo v9, ""

    invoke-virtual {v2, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    .end local v3    # "cid":Ljava/lang/String;
    .end local v4    # "orgId":J
    .end local v16    # "lastMessage":Lcom/alibaba/wukong/im/Message;
    :goto_0
    return-void

    .line 782
    .restart local v3    # "cid":Ljava/lang/String;
    .restart local v4    # "orgId":J
    .restart local v16    # "lastMessage":Lcom/alibaba/wukong/im/Message;
    :cond_1
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    .line 798
    .local v6, "uid":J
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    sget-object v9, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->SESSION:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {v2, v9}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v8

    .line 801
    .local v8, "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v2

    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;)Lckl;

    move-result-object v18

    .line 803
    .local v18, "nameWrapper":Lckl;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Lckl;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6039
    move-object/from16 v0, v18

    iget-object v12, v0, Lckl;->d:Ljava/lang/String;

    .line 809
    .local v12, "nameCache":Ljava/lang/String;
    :goto_1
    new-instance v17, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 811
    .local v17, "builderDefault":Landroid/text/SpannableStringBuilder;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 812
    if-eqz p5, :cond_3

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ldrp;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 828
    :goto_2
    new-instance v2, Ldht;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->H:Landroid/app/Activity;

    move-object/from16 v19, v0

    new-instance v9, Lcxk$4;

    move-object/from16 v10, p0

    move-object v11, v3

    move/from16 v13, p5

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v9 .. v16}, Lcxk$4;-><init>(Lcxk;Ljava/lang/String;Ljava/lang/String;ZLandroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    move-object/from16 v0, v19

    invoke-direct {v2, v0, v9}, Ldht;-><init>(Landroid/app/Activity;Ldht$a;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcxk;->bd:Ldht;

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->bd:Ldht;

    invoke-virtual/range {v2 .. v8}, Ldht;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;)V

    goto :goto_0

    .line 806
    .end local v12    # "nameCache":Ljava/lang/String;
    .end local v17    # "builderDefault":Landroid/text/SpannableStringBuilder;
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "nameCache":Ljava/lang/String;
    goto :goto_1

    .line 815
    .restart local v17    # "builderDefault":Landroid/text/SpannableStringBuilder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p3, v9, v10

    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 818
    :cond_4
    if-eqz p5, :cond_5

    .line 819
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p3, v2, v9

    const/4 v9, 0x1

    aput-object v12, v2, v9

    const/4 v9, 0x2

    const-string/jumbo v10, ": "

    aput-object v10, v2, v9

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Ldrp;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 822
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v12, v2, v9

    const/4 v9, 0x1

    const-string/jumbo v10, ": "

    aput-object v10, v2, v9

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 823
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 861
    .end local v3    # "cid":Ljava/lang/String;
    .end local v4    # "orgId":J
    .end local v6    # "uid":J
    .end local v8    # "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    .end local v12    # "nameCache":Ljava/lang/String;
    .end local v16    # "lastMessage":Lcom/alibaba/wukong/im/Message;
    .end local v17    # "builderDefault":Landroid/text/SpannableStringBuilder;
    .end local v18    # "nameWrapper":Lckl;
    :cond_6
    invoke-virtual/range {p2 .. p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public static b(Lcom/alibaba/wukong/im/Message;)Z
    .locals 2
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 473
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->messageType()Lcom/alibaba/wukong/im/Message$MessageType;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Message$MessageType;->UNKNOWN:Lcom/alibaba/wukong/im/Message$MessageType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/alibaba/wukong/im/Message;)Z
    .locals 4
    .param p0, "message"    # Lcom/alibaba/wukong/im/Message;

    .prologue
    .line 504
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v0

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z
    .locals 6
    .param p0, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    const/4 v0, 0x0

    .line 455
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v0

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0x7

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->isUserBanWords()Z

    move-result v1

    if-nez v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->draftMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private k(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 92
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    .prologue
    .line 938
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 940
    .local v14, "builder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;)V

    .line 942
    invoke-static/range {p1 .. p1}, Lcxk;->j(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6651
    invoke-static/range {p1 .. p1}, Lcxk;->j(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6652
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mAtUidMap:Ljava/util/HashMap;

    .line 6653
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->draftMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 6654
    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 945
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    invoke-virtual {v2, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6876
    :cond_1
    :goto_0
    return-void

    .line 948
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v13

    .line 949
    .local v13, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v13, :cond_3

    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-nez v2, :cond_4

    .line 951
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    invoke-virtual {v2, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 954
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v2

    const-wide/16 v6, 0x4

    cmp-long v2, v2, v6

    if-nez v2, :cond_5

    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    .line 956
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcxk;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;)Ljava/lang/String;

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->ac:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    invoke-virtual {v2, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 961
    :cond_5
    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->creatorType()Lcom/alibaba/wukong/im/Message$CreatorType;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    if-ne v2, v3, :cond_18

    .line 6659
    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    .line 6660
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    const/16 v3, 0xfc

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 6661
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->K:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 964
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    invoke-virtual {v2, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6662
    :cond_8
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0xfb

    if-ne v3, v4, :cond_a

    .line 6663
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->B:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 6664
    :cond_a
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    .line 6665
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v2

    .line 6666
    if-nez v2, :cond_b

    .line 6667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->ab:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 6669
    :cond_b
    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 6671
    :cond_c
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0x67

    if-eq v3, v4, :cond_d

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0xfd

    if-ne v3, v4, :cond_e

    .line 6672
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->ak:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 6673
    :cond_e
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0xca

    if-eq v3, v4, :cond_f

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0xfe

    if-ne v3, v4, :cond_10

    .line 6674
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->ap:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 6675
    :cond_10
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0xcb

    if-ne v3, v4, :cond_11

    .line 6676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->aq:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 6677
    :cond_11
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0xce

    if-ne v3, v4, :cond_12

    .line 6678
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->at:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 6679
    :cond_12
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0xcc

    if-ne v3, v4, :cond_13

    .line 6680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->ar:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 6681
    :cond_13
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0xcd

    if-ne v3, v4, :cond_14

    .line 6682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->as:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 6683
    :cond_14
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0x1f6

    if-ne v3, v4, :cond_15

    .line 6684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->au:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 6685
    :cond_15
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0x4b2

    if-ne v3, v4, :cond_16

    .line 6686
    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->isSupportedMarkdown(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 6687
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconContent;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconContent;->title()Ljava/lang/String;

    move-result-object v2

    .line 6688
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 6689
    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 6691
    :cond_16
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v3

    const/16 v4, 0x4b4

    if-ne v3, v4, :cond_17

    .line 6692
    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->isSupportedMarkdown(Lcom/alibaba/wukong/im/Message;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 6693
    check-cast v2, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownIconExContent;->title()Ljava/lang/String;

    move-result-object v2

    .line 6694
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 6695
    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 6698
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->ab:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 967
    :cond_18
    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 6868
    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    .line 6869
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->b()Lchy;

    move-result-object v2

    invoke-virtual {v2}, Lchy;->getCurrentUid()J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-nez v2, :cond_1a

    .line 6870
    invoke-static {v13}, Ldkc;->v(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 6871
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->dt_message_recall_message_file_format:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Lctk$i;->msg_recall_me:I

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6875
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    invoke-virtual {v2, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 6873
    :cond_19
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v3, Lctk$i;->msg_recall:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Lctk$i;->msg_recall_me:I

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 6879
    :cond_1a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_1b

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    .line 6880
    :goto_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 6881
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    sget-object v8, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;->SESSION:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;

    invoke-static {v2, v8}, Ldjl;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME_CATEGORY;)Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    move-result-object v8

    .line 6883
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v2

    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;)Lckl;

    move-result-object v2

    .line 6885
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lckl;->a()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 7039
    iget-object v12, v2, Lckl;->d:Ljava/lang/String;

    .line 6891
    :goto_4
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 6892
    invoke-static {v13}, Ldkc;->v(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 6893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->aH:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6897
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    invoke-virtual {v2, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6906
    :goto_6
    new-instance v2, Ldht;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcxk;->H:Landroid/app/Activity;

    new-instance v9, Lcxk$5;

    move-object/from16 v10, p0

    move-object v11, v3

    invoke-direct/range {v9 .. v14}, Lcxk$5;-><init>(Lcxk;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Landroid/text/SpannableStringBuilder;)V

    invoke-direct {v2, v15, v9}, Ldht;-><init>(Landroid/app/Activity;Ldht$a;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcxk;->bd:Ldht;

    .line 6934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->bd:Ldht;

    invoke-virtual/range {v2 .. v8}, Ldht;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;)V

    goto/16 :goto_0

    .line 6879
    :cond_1b
    const/4 v3, 0x0

    goto :goto_3

    .line 6888
    :cond_1c
    const/4 v12, 0x0

    goto :goto_4

    .line 6895
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->aI:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .line 6899
    :cond_1e
    invoke-static {v13}, Ldkc;->v(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 6900
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v10, Lctk$i;->dt_message_recall_message_file_format:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v11, v15

    invoke-virtual {v2, v10, v11}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6904
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    invoke-virtual {v2, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 6902
    :cond_1f
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    sget v10, Lctk$i;->msg_recall:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v12, v11, v15

    invoke-virtual {v2, v10, v11}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_7

    .line 972
    :cond_20
    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_22

    .line 974
    invoke-static {v13}, Ldkc;->v(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->aG:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 979
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    invoke-virtual {v2, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 977
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->aF:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_8

    .line 982
    :cond_22
    invoke-static {v13}, Lcxk;->a(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->ab:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    invoke-virtual {v2, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 986
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v13, v2, v3}, Ldhq;->a(Lcom/alibaba/wukong/im/Message;IZ)V

    goto/16 :goto_0

    .line 989
    :cond_23
    invoke-static {v13}, Lcxk;->b(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->ab:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    invoke-virtual {v2, v14}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 996
    :cond_24
    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v61

    .line 997
    .local v61, "content":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x384

    if-ne v2, v3, :cond_29

    .line 998
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v75

    .line 999
    .local v75, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, ""

    .line 1000
    .local v5, "redPacketPrefix":Ljava/lang/String;
    if-eqz v75, :cond_25

    const-string/jumbo v2, "enterprise_redpackests_list"

    move-object/from16 v0, v75

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1001
    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcxk;->ah:Ljava/lang/String;

    .line 1003
    :cond_26
    const/16 v83, 0x0

    .line 1004
    .local v83, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v77

    .line 1005
    .local v77, "messageTemp":Lcom/alibaba/wukong/im/Message;
    if-eqz v77, :cond_27

    .line 1006
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-interface/range {v77 .. v77}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v83

    .line 1008
    :cond_27
    if-eqz v83, :cond_28

    move-object/from16 v0, v83

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-eqz v2, :cond_28

    .line 1009
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v14

    invoke-direct/range {v2 .. v7}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1011
    :cond_28
    invoke-static {v5, v13}, Ldrp;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v8, v14

    invoke-direct/range {v6 .. v11}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1013
    .end local v5    # "redPacketPrefix":Ljava/lang/String;
    .end local v75    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v77    # "messageTemp":Lcom/alibaba/wukong/im/Message;
    .end local v83    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_29
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x38c

    if-ne v2, v3, :cond_30

    .line 1014
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v75

    .line 1015
    .restart local v75    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, ""

    .line 1016
    .restart local v5    # "redPacketPrefix":Ljava/lang/String;
    if-eqz v75, :cond_2a

    const-string/jumbo v2, "enterprise_b2c_redpackets_list"

    move-object/from16 v0, v75

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1017
    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcxk;->ai:Ljava/lang/String;

    .line 1019
    :cond_2b
    const/16 v83, 0x0

    .line 1020
    .restart local v83    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v77

    .line 1021
    .restart local v77    # "messageTemp":Lcom/alibaba/wukong/im/Message;
    if-eqz v77, :cond_2c

    .line 1022
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-interface/range {v77 .. v77}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v83

    .line 1024
    :cond_2c
    if-eqz v83, :cond_2d

    move-object/from16 v0, v83

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2d

    .line 1025
    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v14

    invoke-direct/range {v2 .. v7}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 7234
    :cond_2d
    if-nez v5, :cond_2e

    .line 7235
    const-string/jumbo v5, ""

    .line 7237
    .end local v5    # "redPacketPrefix":Ljava/lang/String;
    :cond_2e
    const-string/jumbo v9, ""

    .line 7238
    if-eqz v13, :cond_2f

    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 7240
    instance-of v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_a3

    move-object v2, v13

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    if-eqz v2, :cond_a3

    .line 7241
    check-cast v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local v13    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .line 7242
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    .line 1028
    :cond_2f
    :goto_9
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v8, v14

    .line 1027
    invoke-direct/range {v6 .. v11}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1030
    .end local v75    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v77    # "messageTemp":Lcom/alibaba/wukong/im/Message;
    .end local v83    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    .restart local v13    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_30
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x386

    if-eq v2, v3, :cond_31

    .line 1031
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x385

    if-ne v2, v3, :cond_34

    .line 1032
    :cond_31
    const/16 v83, 0x0

    .line 1033
    .restart local v83    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v77

    .line 1034
    .restart local v77    # "messageTemp":Lcom/alibaba/wukong/im/Message;
    if-eqz v77, :cond_32

    .line 1035
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-interface/range {v77 .. v77}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v83

    .line 1037
    :cond_32
    if-eqz v83, :cond_33

    move-object/from16 v0, v83

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-eqz v2, :cond_33

    .line 1038
    move-object/from16 v0, p0

    iget-object v9, v0, Lcxk;->ae:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v8, v14

    invoke-direct/range {v6 .. v11}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1040
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->ae:Ljava/lang/String;

    invoke-static {v2, v13}, Ldrp;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v8, v14

    invoke-direct/range {v6 .. v11}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1042
    .end local v77    # "messageTemp":Lcom/alibaba/wukong/im/Message;
    .end local v83    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_34
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x389

    if-ne v2, v3, :cond_38

    .line 1043
    move-object/from16 v0, p0

    iget-object v9, v0, Lcxk;->ag:Ljava/lang/String;

    .line 1044
    .local v9, "prefix":Ljava/lang/String;
    instance-of v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_35

    move-object v2, v13

    .line 1045
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v82, v0

    .line 1046
    .local v82, "obj":Ljava/lang/Object;
    if-eqz v82, :cond_35

    move-object/from16 v0, v82

    instance-of v2, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    if-eqz v2, :cond_35

    move-object/from16 v58, v82

    .line 1047
    check-cast v58, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    .line 1048
    .local v58, "bodyDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    move-object/from16 v0, v58

    iget-object v2, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 1049
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v58

    iget-object v3, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1053
    .end local v58    # "bodyDo":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    .end local v82    # "obj":Ljava/lang/Object;
    :cond_35
    const/16 v83, 0x0

    .line 1054
    .restart local v83    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v77

    .line 1055
    .restart local v77    # "messageTemp":Lcom/alibaba/wukong/im/Message;
    if-eqz v77, :cond_36

    .line 1056
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    invoke-interface/range {v77 .. v77}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v83

    .line 1058
    :cond_36
    if-eqz v83, :cond_37

    move-object/from16 v0, v83

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-eqz v2, :cond_37

    .line 1059
    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v8, v14

    invoke-direct/range {v6 .. v11}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1061
    :cond_37
    invoke-static {v9, v13}, Ldrp;->b(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v14

    invoke-direct/range {v15 .. v20}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1063
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v77    # "messageTemp":Lcom/alibaba/wukong/im/Message;
    .end local v83    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_38
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x38a

    if-ne v2, v3, :cond_3b

    .line 1064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->aj:Ljava/lang/String;

    .line 7264
    if-nez v2, :cond_a2

    .line 7265
    const-string/jumbo v2, ""

    move-object v3, v2

    .line 7267
    :goto_a
    const-string/jumbo v18, ""

    .line 7268
    if-eqz v13, :cond_39

    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 7270
    instance-of v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_a1

    move-object v2, v13

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    if-eqz v2, :cond_a1

    .line 7271
    check-cast v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local v13    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    .line 7272
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    iget-wide v6, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->senderId:J

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v4

    .line 7273
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    if-eqz v4, :cond_3a

    iget-object v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    :goto_b
    iget-wide v10, v2, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->timePlan:J

    invoke-static {v3, v10, v11}, Ldrp;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    .line 1064
    :cond_39
    :goto_c
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v14

    invoke-direct/range {v15 .. v20}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 7273
    :cond_3a
    const/4 v3, 0x0

    goto :goto_b

    .line 1066
    .restart local v13    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_3b
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x38b

    if-ne v2, v3, :cond_3d

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->aj:Ljava/lang/String;

    .line 7288
    if-nez v2, :cond_a0

    .line 7289
    const-string/jumbo v2, ""

    move-object v3, v2

    .line 7291
    :goto_d
    const-string/jumbo v18, ""

    .line 7292
    if-eqz v13, :cond_3c

    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 7294
    instance-of v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_9f

    move-object v2, v13

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;

    if-eqz v2, :cond_9f

    .line 7295
    check-cast v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local v13    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;

    .line 7296
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const/4 v3, 0x1

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/LuckyTimeRedPacketsRemindDo;->content:Ljava/lang/String;

    aput-object v2, v4, v3

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    .line 1067
    :cond_3c
    :goto_e
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v14

    invoke-direct/range {v15 .. v20}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1069
    .restart local v13    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_3d
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x388

    if-ne v2, v3, :cond_3f

    .line 1070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->af:Ljava/lang/String;

    .line 8249
    if-nez v2, :cond_9e

    .line 8250
    const-string/jumbo v2, ""

    move-object v3, v2

    .line 8252
    :goto_f
    const-string/jumbo v18, ""

    .line 8253
    if-eqz v13, :cond_3e

    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 8255
    instance-of v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_9d

    move-object v2, v13

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;

    if-eqz v2, :cond_9d

    .line 8256
    check-cast v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .end local v13    # "message":Lcom/alibaba/wukong/im/Message;
    iget-object v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;

    .line 8257
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const/4 v3, 0x1

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/AlipayRedPacketsMessageBodyDo;->title:Ljava/lang/String;

    aput-object v2, v4, v3

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    .line 1070
    :cond_3e
    :goto_10
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v14

    invoke-direct/range {v15 .. v20}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1071
    .restart local v13    # "message":Lcom/alibaba/wukong/im/Message;
    :cond_3f
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_40

    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_41

    .line 1072
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->K:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v14

    invoke-direct/range {v15 .. v20}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1073
    :cond_41
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_42

    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xfb

    if-ne v2, v3, :cond_44

    .line 1074
    :cond_42
    invoke-static/range {v61 .. v61}, Ldkc;->c(Lcom/alibaba/wukong/im/MessageContent;)Ljava/lang/String;

    move-result-object v18

    .line 1075
    .local v18, "name":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->B:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1078
    :cond_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, v14

    invoke-direct/range {v15 .. v20}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1079
    .end local v18    # "name":Ljava/lang/String;
    :cond_44
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x67

    if-eq v2, v3, :cond_45

    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xfd

    if-ne v2, v3, :cond_46

    .line 1080
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->ak:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v14

    invoke-direct/range {v19 .. v24}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1081
    :cond_46
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xca

    if-eq v2, v3, :cond_47

    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_48

    .line 1082
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->ap:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v14

    invoke-direct/range {v19 .. v24}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1083
    :cond_48
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_49

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->L:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v14

    invoke-direct/range {v19 .. v24}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1085
    :cond_49
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xcb

    if-ne v2, v3, :cond_4a

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aq:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v14

    invoke-direct/range {v19 .. v24}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1087
    :cond_4a
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_4b

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->ar:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v14

    invoke-direct/range {v19 .. v24}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1089
    :cond_4b
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xcd

    if-ne v2, v3, :cond_4c

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->as:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v14

    invoke-direct/range {v19 .. v24}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1091
    :cond_4c
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xce

    if-ne v2, v3, :cond_4d

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->at:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v14

    invoke-direct/range {v19 .. v24}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1093
    :cond_4d
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x1f6

    if-ne v2, v3, :cond_4e

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->au:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v14

    invoke-direct/range {v19 .. v24}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1095
    :cond_4e
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4f

    .line 1096
    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->atOpenIds()Ljava/util/Map;

    move-result-object v55

    .line 1097
    .local v55, "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    check-cast v61, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    .end local v61    # "content":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v55

    invoke-static {v2, v0}, Lcpt;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v22

    .line 1098
    .local v22, "displayContentString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v14

    invoke-direct/range {v19 .. v24}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1099
    .end local v22    # "displayContentString":Ljava/lang/String;
    .end local v55    # "atUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v61    # "content":Lcom/alibaba/wukong/im/MessageContent;
    :cond_4f
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x66

    if-eq v2, v3, :cond_50

    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x515

    if-ne v2, v3, :cond_51

    .line 1100
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->V:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v14

    invoke-direct/range {v23 .. v28}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1101
    :cond_51
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xc9

    if-eq v2, v3, :cond_52

    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x514

    if-ne v2, v3, :cond_57

    :cond_52
    move-object/from16 v80, v61

    .line 1102
    check-cast v80, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 1103
    .local v80, "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    const/16 v26, 0x0

    .line 1104
    .local v26, "str":Ljava/lang/String;
    if-eqz v80, :cond_55

    invoke-interface/range {v80 .. v80}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->size()I

    move-result v2

    if-lez v2, :cond_55

    .line 1105
    const/16 v73, 0x0

    .line 1106
    .local v73, "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    invoke-interface/range {v80 .. v80}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    if-eqz v2, :cond_53

    .line 1107
    invoke-interface/range {v80 .. v80}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v73

    .end local v73    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    check-cast v73, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 1109
    .restart local v73    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :cond_53
    if-eqz v73, :cond_55

    .line 1110
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x514

    if-ne v2, v3, :cond_54

    invoke-interface/range {v73 .. v73}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->extension()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_54

    .line 1112
    invoke-interface/range {v73 .. v73}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->extension()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "expTitle"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "str":Ljava/lang/String;
    check-cast v26, Ljava/lang/String;

    .line 1114
    .restart local v26    # "str":Ljava/lang/String;
    :cond_54
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 1115
    invoke-interface/range {v73 .. v73}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v26

    .line 1119
    .end local v73    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :cond_55
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->X:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1122
    :cond_56
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v14

    invoke-direct/range {v23 .. v28}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1123
    .end local v26    # "str":Ljava/lang/String;
    .end local v80    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    :cond_57
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_5a

    move-object/from16 v80, v61

    .line 1124
    check-cast v80, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;

    .line 1125
    .restart local v80    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->X:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1126
    .restart local v26    # "str":Ljava/lang/String;
    if-eqz v80, :cond_59

    invoke-interface/range {v80 .. v80}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->size()I

    move-result v2

    if-lez v2, :cond_59

    .line 1127
    const/16 v73, 0x0

    .line 1128
    .restart local v73    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    invoke-interface/range {v80 .. v80}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    if-eqz v2, :cond_58

    .line 1129
    invoke-interface/range {v80 .. v80}, Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;->contents()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v73

    .end local v73    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    check-cast v73, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;

    .line 1131
    .restart local v73    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :cond_58
    if-eqz v73, :cond_59

    invoke-interface/range {v73 .. v73}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    .line 1132
    invoke-interface/range {v73 .. v73}, Lcom/alibaba/wukong/im/MessageContent$LinkedContent;->title()Ljava/lang/String;

    move-result-object v26

    .line 1135
    .end local v73    # "linkedContent":Lcom/alibaba/wukong/im/MessageContent$LinkedContent;
    :cond_59
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v14

    invoke-direct/range {v23 .. v28}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1136
    .end local v26    # "str":Ljava/lang/String;
    .end local v80    # "multiMessageContent":Lcom/alibaba/wukong/im/MessageContent$MultiMessageContent;
    :cond_5a
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_5b

    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x12c

    if-ne v2, v3, :cond_5c

    .line 1137
    :cond_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->aa:Ljava/lang/String;

    invoke-static {v2, v13}, Ldrp;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v27, p0

    move-object/from16 v28, p1

    move-object/from16 v29, v14

    invoke-direct/range {v27 .. v32}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1139
    :cond_5c
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x190

    if-ne v2, v3, :cond_5f

    .line 1140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->W:Ljava/lang/String;

    .line 9190
    if-nez v2, :cond_9c

    .line 9191
    const-string/jumbo v2, ""

    move-object v3, v2

    .line 9193
    :goto_11
    const-string/jumbo v30, ""

    .line 9194
    if-eqz v13, :cond_5d

    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 9195
    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    .line 9196
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v4, 0x190

    if-ne v2, v4, :cond_5d

    .line 9198
    instance-of v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_5e

    move-object v2, v13

    .line 9199
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 9203
    :goto_12
    if-eqz v2, :cond_5d

    .line 9205
    iget-object v4, v2, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9b

    .line 9206
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const/4 v3, 0x1

    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailTitle:Ljava/lang/String;

    aput-object v2, v4, v3

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1141
    :cond_5d
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v31

    const/16 v32, 0x0

    move-object/from16 v27, p0

    move-object/from16 v28, p1

    move-object/from16 v29, v14

    .line 1140
    invoke-direct/range {v27 .. v32}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 9201
    :cond_5e
    invoke-static {v13}, Ldrp;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    goto :goto_12

    .line 1142
    :cond_5f
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_61

    .line 1143
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x1f5

    if-eq v2, v3, :cond_61

    .line 1144
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x1f7

    if-ne v2, v3, :cond_60

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v3, "cspace_folder_message_enalbe"

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_61

    .line 1145
    :cond_60
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x1f8

    if-ne v2, v3, :cond_68

    .line 1147
    :cond_61
    const/16 v79, 0x0

    .line 1148
    .local v79, "msgTypeTip":Ljava/lang/String;
    const/16 v67, 0x0

    .line 1149
    .local v67, "fileName":Ljava/lang/String;
    const/16 v68, 0x0

    .line 1150
    .local v68, "isFolder":Z
    instance-of v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_64

    move-object/from16 v66, v13

    .line 1151
    check-cast v66, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 1152
    .local v66, "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    move-object/from16 v0, v66

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    if-eqz v2, :cond_65

    move-object/from16 v0, v66

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v2, :cond_65

    .line 1153
    move-object/from16 v0, v66

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v86, v0

    check-cast v86, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 1154
    .local v86, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v60

    .line 1155
    .local v60, "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v87

    .line 1156
    .local v87, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    const-string/jumbo v2, "cspace_video_preview_online_enable"

    const/4 v3, 0x0

    move-object/from16 v0, v60

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_62

    const-string/jumbo v2, "space_bubble_video_enable"

    const/4 v3, 0x0

    .line 1157
    move-object/from16 v0, v60

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1158
    if-eqz v87, :cond_62

    move-object/from16 v0, v86

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    move-object/from16 v0, v87

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    move-object/from16 v0, v86

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->ap:Ljava/lang/String;

    move-object/from16 v79, v0

    .line 1162
    :cond_62
    const-string/jumbo v2, "space_bubble_image_enable"

    const/4 v3, 0x0

    move-object/from16 v0, v60

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 1163
    if-eqz v87, :cond_63

    move-object/from16 v0, v86

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    move-object/from16 v0, v87

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    move-object/from16 v0, v86

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->picAuthUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->B:Ljava/lang/String;

    move-object/from16 v79, v0

    .line 1167
    :cond_63
    move-object/from16 v0, v86

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->type:Ljava/lang/String;

    const-string/jumbo v3, "folder"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v68

    .line 1168
    move-object/from16 v0, v86

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    move-object/from16 v67, v0

    .line 1175
    .end local v60    # "contactInterface":Lcom/alibaba/android/dingtalk/userbase/ContactInterface;
    .end local v66    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    .end local v86    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v87    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    :cond_64
    :goto_14
    invoke-static/range {v79 .. v79}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 1178
    if-eqz v68, :cond_66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->M:Ljava/lang/String;

    move-object/from16 v79, v0

    .line 1179
    :goto_15
    invoke-static/range {v67 .. v67}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_67

    .line 1180
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v79, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, " "

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v67, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1185
    .local v30, "contentString":Ljava/lang/String;
    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v31

    const/16 v32, 0x0

    move-object/from16 v27, p0

    move-object/from16 v28, p1

    move-object/from16 v29, v14

    invoke-direct/range {v27 .. v32}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1169
    .end local v30    # "contentString":Ljava/lang/String;
    .restart local v66    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    :cond_65
    move-object/from16 v0, v66

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    if-eqz v2, :cond_64

    move-object/from16 v0, v66

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    if-eqz v2, :cond_64

    .line 1170
    move-object/from16 v0, v66

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v88, v0

    check-cast v88, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;

    .line 1171
    .local v88, "spaceLinkDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    move-object/from16 v0, v88

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileType:Ljava/lang/String;

    const-string/jumbo v3, "folder"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v68

    .line 1172
    move-object/from16 v0, v88

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;->fileName:Ljava/lang/String;

    move-object/from16 v67, v0

    goto :goto_14

    .line 1178
    .end local v66    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    .end local v88    # "spaceLinkDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceLinkDo;
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->L:Ljava/lang/String;

    move-object/from16 v79, v0

    goto :goto_15

    .line 1182
    :cond_67
    move-object/from16 v30, v79

    .restart local v30    # "contentString":Ljava/lang/String;
    goto :goto_16

    .line 1186
    .end local v30    # "contentString":Ljava/lang/String;
    .end local v67    # "fileName":Ljava/lang/String;
    .end local v68    # "isFolder":Z
    .end local v79    # "msgTypeTip":Ljava/lang/String;
    :cond_68
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x258

    if-ne v2, v3, :cond_69

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->Y:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v35

    const/16 v36, 0x0

    move-object/from16 v31, p0

    move-object/from16 v32, p1

    move-object/from16 v33, v14

    invoke-direct/range {v31 .. v36}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1188
    :cond_69
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_6a

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->Z:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v35

    const/16 v36, 0x0

    move-object/from16 v31, p0

    move-object/from16 v32, p1

    move-object/from16 v33, v14

    invoke-direct/range {v31 .. v36}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1190
    :cond_6a
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x2bc

    if-ne v2, v3, :cond_6c

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->ab:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1192
    .restart local v26    # "str":Ljava/lang/String;
    instance-of v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_6b

    move-object v2, v13

    .line 1193
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v82, v0

    .line 1194
    .restart local v82    # "obj":Ljava/lang/Object;
    if-eqz v82, :cond_6b

    move-object/from16 v0, v82

    instance-of v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    if-eqz v2, :cond_6b

    move-object/from16 v54, v82

    .line 1195
    check-cast v54, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;

    .line 1196
    .local v54, "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    move-object/from16 v0, v54

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 1197
    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;->text:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1201
    .end local v54    # "announce":Lcom/alibaba/android/dingtalkbase/models/dos/announce/AnnounceMessageDo;
    .end local v82    # "obj":Ljava/lang/Object;
    :cond_6b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v14

    invoke-direct/range {v23 .. v28}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1202
    .end local v26    # "str":Ljava/lang/String;
    :cond_6c
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x44d

    if-ne v2, v3, :cond_71

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->ab:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1204
    .restart local v26    # "str":Ljava/lang/String;
    instance-of v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_6d

    move-object v2, v13

    .line 1205
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v82, v0

    .line 1206
    .restart local v82    # "obj":Ljava/lang/Object;
    if-eqz v82, :cond_6d

    move-object/from16 v0, v82

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;

    if-eqz v2, :cond_6d

    move-object/from16 v59, v82

    .line 1207
    check-cast v59, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;

    .line 1208
    .local v59, "confStateDo":Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;
    move-object/from16 v0, v59

    iget v2, v0, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    if-nez v2, :cond_6e

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->am:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 1219
    .end local v59    # "confStateDo":Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;
    .end local v82    # "obj":Ljava/lang/Object;
    :cond_6d
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v23, p0

    move-object/from16 v24, p1

    move-object/from16 v25, v14

    invoke-direct/range {v23 .. v28}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1210
    .restart local v59    # "confStateDo":Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;
    .restart local v82    # "obj":Ljava/lang/Object;
    :cond_6e
    move-object/from16 v0, v59

    iget v2, v0, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6f

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->al:Ljava/lang/String;

    move-object/from16 v26, v0

    goto :goto_17

    .line 1212
    :cond_6f
    move-object/from16 v0, v59

    iget v2, v0, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_70

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->an:Ljava/lang/String;

    move-object/from16 v26, v0

    goto :goto_17

    .line 1214
    :cond_70
    move-object/from16 v0, v59

    iget v2, v0, Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6d

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->ao:Ljava/lang/String;

    move-object/from16 v26, v0

    goto :goto_17

    .line 1220
    .end local v26    # "str":Ljava/lang/String;
    .end local v59    # "confStateDo":Lcom/alibaba/android/dingtalkim/base/model/ConfStateDo;
    .end local v82    # "obj":Ljava/lang/Object;
    :cond_71
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x4b0

    if-eq v2, v3, :cond_72

    .line 1221
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x4b2

    if-eq v2, v3, :cond_72

    .line 1222
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x4b4

    if-eq v2, v3, :cond_72

    .line 1223
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x578

    if-ne v2, v3, :cond_75

    .line 1224
    :cond_72
    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->isSupportedMarkdown(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 1225
    const-string/jumbo v34, ""

    .line 1226
    .local v34, "markdownTitle":Ljava/lang/String;
    move-object/from16 v0, v61

    instance-of v2, v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    if-eqz v2, :cond_73

    .line 1227
    check-cast v61, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;

    .end local v61    # "content":Lcom/alibaba/wukong/im/MessageContent;
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownContent;->title()Ljava/lang/String;

    move-result-object v34

    .line 1229
    :cond_73
    move-object/from16 v0, v34

    invoke-static {v13, v0}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1230
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v35

    const/16 v36, 0x0

    move-object/from16 v31, p0

    move-object/from16 v32, p1

    move-object/from16 v33, v14

    invoke-direct/range {v31 .. v36}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1232
    .end local v34    # "markdownTitle":Ljava/lang/String;
    .restart local v61    # "content":Lcom/alibaba/wukong/im/MessageContent;
    :cond_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->ab:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move-object/from16 v37, v14

    invoke-direct/range {v35 .. v40}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1235
    :cond_75
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x4b1

    if-ne v2, v3, :cond_7c

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->ab:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 1237
    .restart local v34    # "markdownTitle":Ljava/lang/String;
    const/16 v85, 0x1

    .line 1238
    .local v85, "showName":Z
    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->isSupportedMarkdown(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 1239
    const-string/jumbo v34, ""

    .line 1241
    move-object/from16 v0, v61

    instance-of v2, v0, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    if-eqz v2, :cond_76

    move-object/from16 v76, v61

    .line 1242
    check-cast v76, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;

    .line 1243
    .local v76, "markdownExContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;
    invoke-interface/range {v76 .. v76}, Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;->title()Ljava/lang/String;

    move-result-object v34

    .line 1246
    .end local v76    # "markdownExContent":Lcom/alibaba/wukong/im/MessageContent$RobotMarkdownExContent;
    :cond_76
    move-object/from16 v0, v34

    invoke-static {v13, v0}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1247
    instance-of v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_77

    move-object/from16 v66, v13

    .line 1248
    check-cast v66, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 1249
    .restart local v66    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    move-object/from16 v0, v66

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    sget-object v3, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->RobotMarkdownNoAvatarExText:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    if-ne v2, v3, :cond_77

    .line 1250
    const/16 v85, 0x0

    .line 1255
    .end local v66    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    :cond_77
    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 1256
    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->extension()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "ding_biz_type"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v69

    .line 1257
    .local v69, "isGroupTask":Z
    if-eqz v69, :cond_79

    .line 1259
    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1262
    const-string/jumbo v2, "user_role"

    invoke-interface {v13, v2}, Lcom/alibaba/wukong/im/Message;->privateExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v70

    .line 1264
    .local v70, "isPrincipal":Z
    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->isRead()Z

    move-result v2

    if-nez v2, :cond_7a

    const/16 v72, 0x1

    .line 1265
    .local v72, "isUnRead":Z
    :goto_18
    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v89

    .line 1266
    .local v89, "startIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->aA:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1267
    if-eqz v70, :cond_78

    if-eqz v72, :cond_78

    .line 1268
    sget-object v2, Lcxk;->bb:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcxk;->aA:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v3, v3, v89

    const/16 v4, 0x21

    move/from16 v0, v89

    invoke-virtual {v14, v2, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1270
    :cond_78
    const/16 v85, 0x1

    .line 1275
    .end local v69    # "isGroupTask":Z
    .end local v70    # "isPrincipal":Z
    .end local v72    # "isUnRead":Z
    .end local v89    # "startIndex":I
    :cond_79
    if-eqz v85, :cond_7b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const/16 v35, 0x1

    :goto_19
    const/16 v36, 0x0

    move-object/from16 v31, p0

    move-object/from16 v32, p1

    move-object/from16 v33, v14

    invoke-direct/range {v31 .. v36}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1264
    .restart local v69    # "isGroupTask":Z
    .restart local v70    # "isPrincipal":Z
    :cond_7a
    const/16 v72, 0x0

    goto :goto_18

    .line 1275
    .end local v69    # "isGroupTask":Z
    .end local v70    # "isPrincipal":Z
    :cond_7b
    const/16 v35, 0x0

    goto :goto_19

    .line 1276
    .end local v34    # "markdownTitle":Ljava/lang/String;
    .end local v85    # "showName":Z
    :cond_7c
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x5dc

    if-ne v2, v3, :cond_7d

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->N:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move-object/from16 v37, v14

    invoke-direct/range {v35 .. v40}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1278
    :cond_7d
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x640

    if-ne v2, v3, :cond_7e

    .line 1279
    move-object/from16 v0, v61

    instance-of v2, v0, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    if-eqz v2, :cond_1

    move-object/from16 v63, v61

    .line 1280
    check-cast v63, Lcom/alibaba/wukong/im/MessageContent$DingCardContent;

    .line 1281
    .local v63, "dingCardContent":Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
    move-object/from16 v0, v63

    invoke-static {v13, v0}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/MessageContent$DingCardContent;)Ljava/lang/String;

    move-result-object v38

    .line 1282
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move-object/from16 v37, v14

    .line 1281
    invoke-direct/range {v35 .. v40}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1284
    .end local v63    # "dingCardContent":Lcom/alibaba/wukong/im/MessageContent$DingCardContent;
    :cond_7e
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_7f

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aB:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move-object/from16 v37, v14

    invoke-direct/range {v35 .. v40}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1286
    :cond_7f
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x7d1

    if-ne v2, v3, :cond_81

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aC:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 1288
    .local v38, "cardTip":Ljava/lang/String;
    instance-of v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_80

    move-object v2, v13

    .line 1289
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v82, v0

    .line 1290
    .restart local v82    # "obj":Ljava/lang/Object;
    if-eqz v82, :cond_80

    move-object/from16 v0, v82

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;

    if-eqz v2, :cond_80

    move-object/from16 v81, v82

    .line 1291
    check-cast v81, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;

    .line 1292
    .local v81, "newRetailCardDo":Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->msgSummary4B:Ljava/lang/String;

    move-object/from16 v91, v0

    .line 1293
    .local v91, "tip":Ljava/lang/String;
    invoke-static/range {v91 .. v91}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 1294
    move-object/from16 v38, v91

    .line 1298
    .end local v81    # "newRetailCardDo":Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;
    .end local v82    # "obj":Ljava/lang/Object;
    .end local v91    # "tip":Ljava/lang/String;
    :cond_80
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move-object/from16 v37, v14

    invoke-direct/range {v35 .. v40}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1299
    .end local v38    # "cardTip":Ljava/lang/String;
    :cond_81
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x7d3

    if-ne v2, v3, :cond_82

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aD:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v43

    const/16 v44, 0x0

    move-object/from16 v39, p0

    move-object/from16 v40, p1

    move-object/from16 v41, v14

    invoke-direct/range {v39 .. v44}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1301
    :cond_82
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x7d2

    if-ne v2, v3, :cond_84

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aE:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 1303
    .restart local v38    # "cardTip":Ljava/lang/String;
    instance-of v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_83

    move-object v2, v13

    .line 1304
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v82, v0

    .line 1305
    .restart local v82    # "obj":Ljava/lang/Object;
    if-eqz v82, :cond_83

    move-object/from16 v0, v82

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;

    if-eqz v2, :cond_83

    move-object/from16 v81, v82

    .line 1306
    check-cast v81, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;

    .line 1307
    .restart local v81    # "newRetailCardDo":Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;
    move-object/from16 v0, v81

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;->msgSummary4B:Ljava/lang/String;

    move-object/from16 v91, v0

    .line 1308
    .restart local v91    # "tip":Ljava/lang/String;
    invoke-static/range {v91 .. v91}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_83

    .line 1309
    move-object/from16 v38, v91

    .line 1313
    .end local v81    # "newRetailCardDo":Lcom/alibaba/android/dingtalkim/base/model/NewRetailCardDo;
    .end local v82    # "obj":Ljava/lang/Object;
    .end local v91    # "tip":Ljava/lang/String;
    :cond_83
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v39

    const/16 v40, 0x0

    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move-object/from16 v37, v14

    invoke-direct/range {v35 .. v40}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1314
    .end local v38    # "cardTip":Ljava/lang/String;
    :cond_84
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x4b3

    if-ne v2, v3, :cond_86

    .line 1315
    invoke-static {v13}, Ldkc;->K(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;

    move-result-object v78

    .line 1316
    .local v78, "miniAppDo":Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;
    invoke-static {v13}, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->isSupportedMarkdown(Lcom/alibaba/wukong/im/Message;)Z

    move-result v2

    if-eqz v2, :cond_85

    if-eqz v78, :cond_85

    move-object/from16 v0, v78

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 1317
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcxk;->aJ:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v78

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;->miniAppName:Ljava/lang/String;

    invoke-static {v13, v4}, Ldkc;->a(Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1318
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v43

    const/16 v44, 0x0

    move-object/from16 v39, p0

    move-object/from16 v40, p1

    move-object/from16 v41, v14

    .line 1317
    invoke-direct/range {v39 .. v44}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1320
    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aJ:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v43

    const/16 v44, 0x0

    move-object/from16 v39, p0

    move-object/from16 v40, p1

    move-object/from16 v41, v14

    invoke-direct/range {v39 .. v44}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1322
    .end local v78    # "miniAppDo":Lcom/alibaba/android/dingtalkim/base/model/MiniAppDo;
    :cond_86
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x708

    if-ne v2, v3, :cond_87

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aK:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v43

    const/16 v44, 0x0

    move-object/from16 v39, p0

    move-object/from16 v40, p1

    move-object/from16 v41, v14

    invoke-direct/range {v39 .. v44}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1324
    :cond_87
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x960

    if-ne v2, v3, :cond_89

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aL:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 1326
    .local v42, "tips":Ljava/lang/String;
    instance-of v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_88

    move-object v2, v13

    .line 1327
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v90, v0

    .line 1328
    .local v90, "thirdPartyDo":Ljava/lang/Object;
    move-object/from16 v0, v90

    instance-of v2, v0, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;

    if-eqz v2, :cond_88

    move-object/from16 v74, v90

    .line 1329
    check-cast v74, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;

    .line 1330
    .local v74, "liveRecordDo":Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;
    move-object/from16 v0, v74

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_88

    .line 1331
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v42, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, v74

    iget-object v4, v0, Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1335
    .end local v74    # "liveRecordDo":Lcom/alibaba/android/dingtalkim/base/model/LiveRecordDo;
    .end local v90    # "thirdPartyDo":Ljava/lang/Object;
    :cond_88
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v43

    const/16 v44, 0x0

    move-object/from16 v39, p0

    move-object/from16 v40, p1

    move-object/from16 v41, v14

    invoke-direct/range {v39 .. v44}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1336
    .end local v42    # "tips":Ljava/lang/String;
    :cond_89
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x9c4

    if-ne v2, v3, :cond_8a

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aM:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v47

    const/16 v48, 0x0

    move-object/from16 v43, p0

    move-object/from16 v44, p1

    move-object/from16 v45, v14

    invoke-direct/range {v43 .. v48}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1338
    :cond_8a
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x9c5

    if-ne v2, v3, :cond_8b

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aN:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v47

    const/16 v48, 0x0

    move-object/from16 v43, p0

    move-object/from16 v44, p1

    move-object/from16 v45, v14

    invoke-direct/range {v43 .. v48}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1340
    :cond_8b
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x9c6

    if-ne v2, v3, :cond_91

    .line 1341
    const-string/jumbo v2, "im_campus_resume_result"

    invoke-interface {v13, v2}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ligb;->a(Ljava/lang/String;I)I

    move-result v56

    .line 1343
    .local v56, "authStatus":I
    invoke-interface {v13}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-nez v2, :cond_8e

    .line 1344
    if-nez v56, :cond_8c

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aT:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 1360
    .restart local v42    # "tips":Ljava/lang/String;
    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v43

    const/16 v44, 0x0

    move-object/from16 v39, p0

    move-object/from16 v40, p1

    move-object/from16 v41, v14

    invoke-direct/range {v39 .. v44}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1346
    .end local v42    # "tips":Ljava/lang/String;
    :cond_8c
    const/4 v2, 0x1

    move/from16 v0, v56

    if-ne v0, v2, :cond_8d

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aR:Ljava/lang/String;

    move-object/from16 v42, v0

    .restart local v42    # "tips":Ljava/lang/String;
    goto :goto_1a

    .line 1349
    .end local v42    # "tips":Ljava/lang/String;
    :cond_8d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aP:Ljava/lang/String;

    move-object/from16 v42, v0

    .restart local v42    # "tips":Ljava/lang/String;
    goto :goto_1a

    .line 1352
    .end local v42    # "tips":Ljava/lang/String;
    :cond_8e
    if-nez v56, :cond_8f

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aS:Ljava/lang/String;

    move-object/from16 v42, v0

    .restart local v42    # "tips":Ljava/lang/String;
    goto :goto_1a

    .line 1354
    .end local v42    # "tips":Ljava/lang/String;
    :cond_8f
    const/4 v2, 0x1

    move/from16 v0, v56

    if-ne v0, v2, :cond_90

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aQ:Ljava/lang/String;

    move-object/from16 v42, v0

    .restart local v42    # "tips":Ljava/lang/String;
    goto :goto_1a

    .line 1357
    .end local v42    # "tips":Ljava/lang/String;
    :cond_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->aO:Ljava/lang/String;

    move-object/from16 v42, v0

    .restart local v42    # "tips":Ljava/lang/String;
    goto :goto_1a

    .line 1361
    .end local v42    # "tips":Ljava/lang/String;
    .end local v56    # "authStatus":I
    :cond_91
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0x76c

    if-ne v2, v3, :cond_99

    .line 1362
    invoke-static {v13}, Ldwo;->b(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v53

    .line 1363
    .local v53, "amount":Ljava/lang/String;
    invoke-static {v13}, Ldwo;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v57

    .line 10046
    .local v57, "billName":Ljava/lang/String;
    instance-of v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-nez v2, :cond_92

    .line 10047
    const-wide/16 v64, 0x0

    .line 1365
    .local v64, "creatorUid":J
    :goto_1b
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v2

    invoke-virtual {v2}, Lccr;->c()J

    move-result-wide v2

    cmp-long v2, v64, v2

    if-nez v2, :cond_94

    const/16 v71, 0x1

    .line 1366
    .local v71, "isSender":Z
    :goto_1c
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v62

    .line 1367
    .local v62, "context":Landroid/content/Context;
    const-string/jumbo v42, ""

    .line 1368
    .restart local v42    # "tips":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcxk;->aU:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1369
    if-eqz v71, :cond_95

    .line 1370
    sget v2, Lctk$i;->dt_pay_start_receipt_by_self:I

    move-object/from16 v0, v62

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 1388
    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v43

    const/16 v44, 0x0

    move-object/from16 v39, p0

    move-object/from16 v40, p1

    move-object/from16 v41, v14

    invoke-direct/range {v39 .. v44}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .end local v42    # "tips":Ljava/lang/String;
    .end local v62    # "context":Landroid/content/Context;
    .end local v64    # "creatorUid":J
    .end local v71    # "isSender":Z
    :cond_92
    move-object v2, v13

    .line 10049
    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 10050
    iget-object v3, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v3, v3, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    if-nez v3, :cond_93

    .line 10051
    const-wide/16 v64, 0x0

    goto :goto_1b

    .line 10053
    :cond_93
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    check-cast v2, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;

    .line 10054
    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/GroupBillDo;->creatorUid:Ljava/lang/String;

    .line 10109
    const-wide/16 v6, 0x0

    invoke-static {v2, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v64

    goto :goto_1b

    .line 1365
    .restart local v64    # "creatorUid":J
    :cond_94
    const/16 v71, 0x0

    goto :goto_1c

    .line 1373
    .restart local v42    # "tips":Ljava/lang/String;
    .restart local v62    # "context":Landroid/content/Context;
    .restart local v71    # "isSender":Z
    :cond_95
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v75

    .line 1374
    .restart local v75    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v75, :cond_96

    const-string/jumbo v2, "group_bill_pay_list"

    .line 1375
    move-object/from16 v0, v75

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_96

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 1376
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v2

    if-lez v2, :cond_96

    .line 1377
    sget-object v2, Lcxk;->ba:Landroid/text/style/ForegroundColorSpan;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcxk;->aU:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x21

    invoke-virtual {v14, v2, v3, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1379
    :cond_96
    invoke-static/range {v57 .. v57}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_97

    .line 1380
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "["

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v57, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "]"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1382
    :cond_97
    invoke-static/range {v53 .. v53}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 1383
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v42, v2, v3

    const/4 v3, 0x1

    sget v4, Lctk$i;->dt_pay_u_no_need_pay:I

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_1d

    .line 1385
    :cond_98
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v42, v2, v3

    const/4 v3, 0x1

    sget v4, Lctk$i;->dt_pay_u_need_pay_AT:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v53, v6, v7

    move-object/from16 v0, v62

    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    goto/16 :goto_1d

    .line 1389
    .end local v42    # "tips":Ljava/lang/String;
    .end local v53    # "amount":Ljava/lang/String;
    .end local v57    # "billName":Ljava/lang/String;
    .end local v62    # "context":Landroid/content/Context;
    .end local v64    # "creatorUid":J
    .end local v71    # "isSender":Z
    .end local v75    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_99
    invoke-interface/range {v61 .. v61}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    const/16 v3, 0xa2a

    if-ne v2, v3, :cond_9a

    .line 1390
    instance-of v2, v13, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v2, :cond_1

    move-object/from16 v66, v13

    .line 1391
    check-cast v66, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    .line 1392
    .restart local v66    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    move-object/from16 v0, v66

    iget-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;

    if-eqz v2, :cond_1

    .line 1393
    move-object/from16 v0, v66

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    move-object/from16 v84, v0

    check-cast v84, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;

    .line 1394
    .local v84, "remindInfoModel":Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;
    move-object/from16 v0, v84

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;->content:Ljava/lang/String;

    move-object/from16 v46, v0

    .line 1395
    .local v46, "remindContent":Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1396
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v47

    const/16 v48, 0x0

    move-object/from16 v43, p0

    move-object/from16 v44, p1

    move-object/from16 v45, v14

    invoke-direct/range {v43 .. v48}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1402
    .end local v46    # "remindContent":Ljava/lang/String;
    .end local v66    # "dingtalkMessage":Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;
    .end local v84    # "remindInfoModel":Lcom/alibaba/android/dingtalkim/base/model/RemindInfoModel;
    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcxk;->ab:Ljava/lang/String;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Lcom/alibaba/wukong/im/Message;)Z

    move-result v51

    const/16 v52, 0x0

    move-object/from16 v47, p0

    move-object/from16 v48, p1

    move-object/from16 v49, v14

    invoke-direct/range {v47 .. v52}, Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    :cond_9b
    move-object/from16 v30, v3

    goto/16 :goto_13

    :cond_9c
    move-object v3, v2

    goto/16 :goto_11

    :cond_9d
    move-object/from16 v18, v3

    goto/16 :goto_10

    :cond_9e
    move-object v3, v2

    goto/16 :goto_f

    :cond_9f
    move-object/from16 v18, v3

    goto/16 :goto_e

    :cond_a0
    move-object v3, v2

    goto/16 :goto_d

    :cond_a1
    move-object/from16 v18, v3

    goto/16 :goto_c

    :cond_a2
    move-object v3, v2

    goto/16 :goto_a

    .restart local v75    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v77    # "messageTemp":Lcom/alibaba/wukong/im/Message;
    .restart local v83    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_a3
    move-object v9, v5

    goto/16 :goto_9
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 276
    sget v0, Lctk$g;->session_item_layout:I

    return v0
.end method

.method protected a(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 220
    sget v0, Lctk$f;->session_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcxk;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 221
    sget v0, Lctk$f;->session_unread:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/views/DDTextView;

    iput-object v0, p0, Lcxk;->c:Lcom/alibaba/android/dingtalkim/views/DDTextView;

    .line 222
    sget v0, Lctk$f;->session_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxk;->d:Landroid/widget/TextView;

    .line 223
    sget v0, Lctk$f;->session_gmt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcxk;->f:Landroid/widget/TextView;

    .line 224
    sget v0, Lctk$f;->session_notice:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcxk;->g:Landroid/widget/ImageView;

    .line 225
    sget v0, Lctk$f;->session_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxk;->j:Landroid/view/View;

    .line 226
    sget v0, Lctk$f;->session_silence:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxk;->k:Landroid/view/View;

    .line 227
    sget v0, Lctk$f;->enterprise_session_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcxk;->h:Landroid/widget/ImageView;

    .line 228
    sget v0, Lctk$f;->dd_user_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    iput-object v0, p0, Lcxk;->i:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    .line 229
    sget v0, Lctk$f;->session_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxk;->l:Landroid/view/View;

    .line 230
    sget v0, Lctk$f;->layout_session_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxk;->o:Landroid/view/View;

    .line 231
    sget v0, Lctk$f;->bottom_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxk;->p:Landroid/view/View;

    .line 233
    sget v0, Lctk$f;->session_content_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    iput-object v0, p0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    .line 234
    sget v0, Lctk$f;->chatting_notsuccess_iv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcxk;->J:Landroid/widget/ImageView;

    .line 235
    sget v0, Lctk$f;->safe_chat_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcxk;->u:Landroid/widget/ImageView;

    .line 236
    sget v0, Lctk$f;->dt_signal:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcxk;->v:Landroid/widget/ImageView;

    .line 238
    sget v0, Lctk$f;->view_stub_live_logo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcxk;->be:Landroid/view/ViewStub;

    .line 240
    iget-object v0, p0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    iget-boolean v1, p0, Lcxk;->bg:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setEmotionEnabled(Z)V

    .line 241
    return-void
.end method

.method protected a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 2
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0, p1}, Lcxk;->d(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 250
    invoke-virtual {p0, p1}, Lcxk;->g(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 251
    invoke-virtual {p0, p1}, Lcxk;->h(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 252
    invoke-virtual {p0, p1}, Lcxk;->b(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 253
    invoke-virtual {p0, p1}, Lcxk;->e(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 254
    invoke-virtual {p0}, Lcxk;->c()V

    .line 1442
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldwa;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2411
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->p()Z

    move-result v0

    .line 1442
    if-eqz v0, :cond_3

    .line 1443
    iget-object v0, p0, Lcxk;->bf:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1444
    iget-object v0, p0, Lcxk;->be:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcxk;->bf:Landroid/view/View;

    .line 1446
    :cond_1
    iget-object v0, p0, Lcxk;->bf:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcxk;->c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto :goto_0

    .line 1448
    :cond_3
    iget-object v0, p0, Lcxk;->bf:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1449
    iget-object v0, p0, Lcxk;->bf:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 267
    iget-object v0, p0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcxk;->bd:Ldht;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcxk;->bd:Ldht;

    invoke-virtual {v0}, Ldht;->a()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcxk;->bd:Ldht;

    .line 272
    :cond_0
    return-void
.end method

.method public final c(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V
    .locals 8
    .param p1, "data"    # Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 262
    .line 3283
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 3433
    :cond_0
    :goto_0
    return-void

    .line 3288
    :cond_1
    invoke-static {p1}, Lcxk;->j(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3289
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v0

    .line 3290
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3291
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v2

    sget-object v3, Lcom/alibaba/wukong/im/Message$MessageStatus;->OFFLINE:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v2, v3, :cond_3

    .line 3292
    iget-object v0, p0, Lcxk;->J:Landroid/widget/ImageView;

    sget v2, Lctk$e;->session_status_failed:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3293
    iget-object v0, p0, Lcxk;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3308
    :goto_1
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v0

    iget-object v2, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3309
    iget-object v0, p0, Lcxk;->H:Landroid/app/Activity;

    sget v2, Lctk$i;->home_menu_item_conference:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3310
    iget-object v2, p0, Lcxk;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3312
    iget-object v0, p1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->latestMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v3

    .line 3313
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    if-nez v0, :cond_7

    .line 3315
    :cond_2
    invoke-direct {p0, p1}, Lcxk;->k(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto :goto_0

    .line 3294
    :cond_3
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v0

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENDING:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v0, v2, :cond_4

    .line 3295
    iget-object v0, p0, Lcxk;->J:Landroid/widget/ImageView;

    sget v2, Lctk$e;->session_status_sending:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3296
    iget-object v0, p0, Lcxk;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 3298
    :cond_4
    iget-object v0, p0, Lcxk;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 3301
    :cond_5
    iget-object v0, p0, Lcxk;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 3304
    :cond_6
    iget-object v0, p0, Lcxk;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 3319
    :cond_7
    invoke-static {}, Ldyx;->a()Ldyx;

    move-result-object v0

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    .line 4035
    iget-object v2, v0, Ldyx;->a:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4036
    iget-object v0, v0, Ldyx;->a:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3320
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 3321
    iget-object v1, p0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4038
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 3325
    :cond_9
    const-string/jumbo v0, "targetUids"

    invoke-interface {v3, v0}, Lcom/alibaba/wukong/im/Message;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 3331
    const-string/jumbo v2, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3332
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    .line 3333
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 3334
    :goto_3
    array-length v5, v2

    if-ge v0, v5, :cond_a

    .line 3335
    aget-object v5, v2, v0

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3334
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3338
    :cond_a
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$TextContent;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$TextContent;->text()Ljava/lang/String;

    move-result-object v5

    .line 3339
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3346
    invoke-direct {p0, p1}, Lcxk;->k(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    .line 3349
    const-string/jumbo v0, ":"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 3350
    const/4 v0, 0x1

    .line 3351
    const/4 v6, -0x1

    if-ne v2, v6, :cond_b

    .line 3353
    const-string/jumbo v0, "\uff1a"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    move v0, v1

    .line 3356
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 3357
    if-lez v2, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v2, v6, :cond_0

    .line 3361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_c

    const-string/jumbo v0, " "

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3363
    iget-object v0, p0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setTag(Ljava/lang/Object;)V

    .line 3364
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-string/jumbo v0, "EVENTBUTLER"

    .line 3365
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcxk$1;

    invoke-direct {v5, p0, p1, v1, v3}, Lcxk$1;-><init>(Lcxk;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V

    const-class v1, Lcma;

    iget-object v3, p0, Lcxk;->H:Landroid/app/Activity;

    invoke-interface {v0, v5, v1, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3364
    invoke-virtual {v2, v4, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0

    .line 3361
    :cond_c
    const-string/jumbo v0, ""

    goto :goto_4

    .line 3434
    :cond_d
    invoke-direct {p0, p1}, Lcxk;->k(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)V

    goto/16 :goto_0
.end method

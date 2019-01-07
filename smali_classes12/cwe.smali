.class public final Lcwe;
.super Landroid/widget/BaseAdapter;
.source "MemberAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcwe$a;,
        Lcwe$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldqw;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ldqw;

.field public c:Landroid/app/Activity;

.field public d:I

.field public e:Z

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

.field public k:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

.field public l:Lcif;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:I

.field public q:Z

.field public r:J

.field public s:Lcom/alibaba/wukong/im/Conversation;

.field public t:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public u:Lcwe$b;

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;ILjava/util/List;IILcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;Lcif;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "userList"    # Ljava/util/ArrayList;
    .param p3, "choosingMode"    # I
    .param p5, "chooseLimit"    # I
    .param p6, "chooseLimitTips"    # I
    .param p7, "memChooseListener"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;
    .param p8, "binder"    # Lcif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;II",
            "Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;",
            "Lcif;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    .local p4, "unCheckableList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcwe;->d:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcwe;->q:Z

    .line 107
    iput-object p1, p0, Lcwe;->c:Landroid/app/Activity;

    .line 108
    iput-object p2, p0, Lcwe;->a:Ljava/util/ArrayList;

    .line 109
    iput p3, p0, Lcwe;->d:I

    .line 110
    iput-object p7, p0, Lcwe;->k:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    .line 111
    iput-object p8, p0, Lcwe;->l:Lcif;

    .line 112
    iput-object p4, p0, Lcwe;->i:Ljava/util/List;

    .line 113
    iput p5, p0, Lcwe;->v:I

    .line 114
    iput p6, p0, Lcwe;->w:I

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcwe;->f:Ljava/util/HashMap;

    .line 116
    return-void
.end method

.method static synthetic a(Lcwe;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcwe;

    .prologue
    .line 49
    iget-object v0, p0, Lcwe;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcwe;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 6
    .param p0, "x0"    # Lcwe;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 49
    .line 1667
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcwe;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1668
    iget-object v1, p0, Lcwe;->c:Landroid/app/Activity;

    sget v2, Lctk$i;->conversation_transmit_tips:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->sure:I

    new-instance v2, Lcwe$8;

    invoke-direct {v2, p0, p1}, Lcwe$8;-><init>(Lcwe;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    .line 1669
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->cancel:I

    new-instance v2, Lcwe$7;

    invoke-direct {v2, p0}, Lcwe$7;-><init>(Lcwe;)V

    .line 1686
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1692
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 49
    return-void
.end method

.method static synthetic a(Lcwe;Ldqw;)V
    .locals 3
    .param p0, "x0"    # Lcwe;
    .param p1, "x1"    # Ldqw;

    .prologue
    .line 49
    .line 1628
    iget-boolean v0, p0, Lcwe;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcwe;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "ACTIVITY_IDENTIFY_AT"

    iget-object v1, p0, Lcwe;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "activity_identify_remove"

    iget-object v1, p0, Lcwe;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1629
    :cond_0
    :goto_0
    return-void

    .line 1631
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcwe;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1632
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$b;->member_long_click:I

    new-instance v2, Lcwe$4;

    invoke-direct {v2, p0, p1}, Lcwe$4;-><init>(Lcwe;Ldqw;)V

    .line 1633
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1642
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic b(Lcwe;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;
    .locals 1
    .param p0, "x0"    # Lcwe;

    .prologue
    .line 49
    iget-object v0, p0, Lcwe;->k:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    return-object v0
.end method

.method static synthetic b(Lcwe;Ldqw;)V
    .locals 7
    .param p0, "x0"    # Lcwe;
    .param p1, "x1"    # Ldqw;

    .prologue
    .line 49
    .line 2646
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v1, p0, Lcwe;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2647
    iget-object v1, p0, Lcwe;->c:Landroid/app/Activity;

    sget v2, Lctk$i;->remove_member:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v5

    iget-object v6, p1, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v5, v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->sure:I

    new-instance v2, Lcwe$6;

    invoke-direct {v2, p0, p1}, Lcwe$6;-><init>(Lcwe;Ldqw;)V

    .line 2648
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lctk$i;->cancel:I

    new-instance v2, Lcwe$5;

    invoke-direct {v2, p0}, Lcwe$5;-><init>(Lcwe;)V

    .line 2657
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 2663
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 49
    return-void
.end method

.method static synthetic c(Lcwe;)I
    .locals 1
    .param p0, "x0"    # Lcwe;

    .prologue
    .line 49
    iget v0, p0, Lcwe;->v:I

    return v0
.end method

.method static synthetic d(Lcwe;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcwe;

    .prologue
    .line 49
    iget-object v0, p0, Lcwe;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcwe;)I
    .locals 1
    .param p0, "x0"    # Lcwe;

    .prologue
    .line 49
    iget v0, p0, Lcwe;->w:I

    return v0
.end method

.method static synthetic f(Lcwe;)Lcif;
    .locals 1
    .param p0, "x0"    # Lcwe;

    .prologue
    .line 49
    iget-object v0, p0, Lcwe;->l:Lcif;

    return-object v0
.end method

.method static synthetic g(Lcwe;)Lcom/alibaba/android/dingtalk/userbase/IChooseControl;
    .locals 1
    .param p0, "x0"    # Lcwe;

    .prologue
    .line 49
    iget-object v0, p0, Lcwe;->j:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    return-object v0
.end method

.method static synthetic h(Lcwe;)I
    .locals 1
    .param p0, "x0"    # Lcwe;

    .prologue
    .line 49
    iget v0, p0, Lcwe;->d:I

    return v0
.end method

.method static synthetic i(Lcwe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcwe;

    .prologue
    .line 49
    iget-object v0, p0, Lcwe;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcwe;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcwe;

    .prologue
    .line 49
    iget-object v0, p0, Lcwe;->s:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic k(Lcwe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcwe;

    .prologue
    .line 49
    iget-object v0, p0, Lcwe;->o:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "maxNUmber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 616
    invoke-virtual {p0}, Lcwe;->getCount()I

    move-result v0

    .line 617
    .local v0, "count":I
    const/4 v3, 0x7

    if-le v0, v3, :cond_0

    .line 618
    const/4 v0, 0x7

    .line 620
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 621
    .local v2, "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 622
    iget-object v3, p0, Lcwe;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldqw;

    iget-object v3, v3, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    :cond_1
    return-object v2
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcwe;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcwe;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcwe;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcwe;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 243
    iget-object v0, p0, Lcwe;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 250
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 28
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 256
    if-nez p2, :cond_0

    .line 257
    new-instance v11, Lcwe$a;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcwe$a;-><init>(Lcwe;)V

    .line 258
    .local v11, "holder":Lcwe$a;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->c:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v23

    sget v24, Lctk$g;->item_member_conversation:I

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 259
    sget v23, Lctk$f;->tv_letter:I

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    iput-object v0, v11, Lcwe$a;->a:Landroid/widget/TextView;

    .line 260
    sget v23, Lctk$f;->tv_avatar:I

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-object/from16 v0, v23

    iput-object v0, v11, Lcwe$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 261
    sget v23, Lctk$f;->tv_contact_name:I

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    iput-object v0, v11, Lcwe$a;->e:Landroid/widget/TextView;

    .line 262
    sget v23, Lctk$f;->tv_contact_org:I

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    iput-object v0, v11, Lcwe$a;->f:Landroid/widget/TextView;

    .line 263
    sget v23, Lctk$f;->tv_contact_title:I

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    iput-object v0, v11, Lcwe$a;->g:Landroid/widget/TextView;

    .line 264
    sget v23, Lctk$f;->tv_contact_status:I

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    iput-object v0, v11, Lcwe$a;->h:Landroid/widget/TextView;

    .line 265
    sget v23, Lctk$f;->divider_line:I

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v11, Lcwe$a;->j:Landroid/view/View;

    .line 266
    sget v23, Lctk$f;->click_view:I

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v11, Lcwe$a;->k:Landroid/view/View;

    .line 267
    sget v23, Lctk$f;->checkbox:I

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/CheckBox;

    move-object/from16 v0, v23

    iput-object v0, v11, Lcwe$a;->i:Landroid/widget/CheckBox;

    .line 268
    sget v23, Lctk$f;->tv_conversation_owner:I

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    iput-object v0, v11, Lcwe$a;->b:Landroid/widget/TextView;

    .line 269
    sget v23, Lctk$f;->tv_contact_unregister:I

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    iput-object v0, v11, Lcwe$a;->c:Landroid/widget/TextView;

    .line 270
    sget v23, Lctk$f;->tv_contact_robot:I

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v23

    iput-object v0, v11, Lcwe$a;->l:Landroid/widget/TextView;

    .line 271
    sget v23, Lctk$f;->dd_user_status:I

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    move-object/from16 v0, v23

    iput-object v0, v11, Lcwe$a;->m:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    .line 272
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 276
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcwe;->d:I

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 277
    iget-object v0, v11, Lcwe$a;->i:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 281
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->a:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldqw;

    .line 282
    .local v9, "currentUserModel":Ldqw;
    if-nez v9, :cond_2

    .line 583
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :goto_2
    return-object p2

    .line 274
    .end local v9    # "currentUserModel":Ldqw;
    .end local v11    # "holder":Lcwe$a;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcwe$a;

    .restart local v11    # "holder":Lcwe$a;
    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, v11, Lcwe$a;->i:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 285
    .restart local v9    # "currentUserModel":Ldqw;
    :cond_2
    const/16 v7, 0x23

    .line 286
    .local v7, "currentPinyinChar":C
    iget-object v6, v9, Ldqw;->e:Ljava/lang/String;

    .line 287
    .local v6, "currentOrgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcwe;->p:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 288
    iget-object v0, v11, Lcwe$a;->a:Landroid/widget/TextView;

    move-object/from16 v24, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcid;->c()Landroid/app/Application;

    move-result-object v23

    sget v25, Lctk$i;->dt_im_grouo_member_others:I

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v23

    :goto_3
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    :goto_4
    iget-object v0, v9, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    iget-object v0, v9, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-nez v23, :cond_d

    .line 298
    :cond_3
    iget-object v0, v11, Lcwe$a;->c:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v0, v11, Lcwe$a;->c:Landroid/widget/TextView;

    move-object/from16 v23, v0

    sget v24, Lctk$i;->not_active:I

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 300
    iget-object v0, v9, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isMyLocalContact:Z

    move/from16 v23, v0

    if-eqz v23, :cond_c

    .line 301
    iget-object v0, v11, Lcwe$a;->g:Landroid/widget/TextView;

    move-object/from16 v23, v0

    sget v24, Lctk$i;->in_my_local_contact:I

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 302
    iget-object v0, v11, Lcwe$a;->g:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    :goto_5
    iget-object v0, v9, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    move/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 311
    iget-object v0, v11, Lcwe$a;->l:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    :goto_6
    iget-object v0, v11, Lcwe$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    move-object/from16 v23, v0

    iget-object v0, v9, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v9, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    move-object/from16 v25, v0

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 317
    iget-object v0, v9, Ldqw;->b:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 318
    .local v18, "name":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 319
    iget-object v0, v11, Lcwe$a;->e:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :goto_7
    iget-object v0, v11, Lcwe$a;->m:Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;

    move-object/from16 v23, v0

    iget-object v0, v9, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ldjl;->a(Lcom/alibaba/android/dingtalkbase/widgets/PersonStatusView;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcwe;->p:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcwe;->r:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-nez v23, :cond_10

    .line 327
    iget-object v0, v11, Lcwe$a;->f:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, v11, Lcwe$a;->f:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcwe;->q:Z

    move/from16 v23, v0

    if-eqz v23, :cond_12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcwe;->r:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-eqz v23, :cond_12

    .line 334
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcwe;->r:J

    move-wide/from16 v24, v0

    iget-object v0, v9, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v23 .. v27}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(JJ)Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;

    move-result-object v10

    .line 335
    .local v10, "groupMembersViewObject":Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;
    if-eqz v10, :cond_11

    iget-object v0, v10, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;->workStatus:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_11

    .line 336
    iget-object v0, v11, Lcwe$a;->h:Landroid/widget/TextView;

    move-object/from16 v23, v0

    iget-object v0, v10, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;->workStatus:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, v11, Lcwe$a;->h:Landroid/widget/TextView;

    move-object/from16 v23, v0

    iget-object v0, v10, Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;->color:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    iget-object v0, v11, Lcwe$a;->h:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    .end local v10    # "groupMembersViewObject":Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->b:Ldqw;

    move-object/from16 v23, v0

    if-eqz v23, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->b:Ldqw;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v24, v0

    iget-object v0, v9, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v26, v0

    cmp-long v23, v24, v26

    if-nez v23, :cond_13

    .line 348
    iget-object v0, v11, Lcwe$a;->b:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v0, v11, Lcwe$a;->b:Landroid/widget/TextView;

    move-object/from16 v23, v0

    sget v24, Lctk$i;->conversation_owner:I

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    .line 350
    const-string/jumbo v23, "ACTIVITY_IDENTIFY_AT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->m:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    const-string/jumbo v23, "activity_identify_remove"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->m:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 352
    iget-object v0, v11, Lcwe$a;->a:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    :cond_4
    :goto_a
    const/4 v13, 0x0

    .line 362
    .local v13, "isNextSameItem":Z
    add-int/lit8 v23, p1, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->a:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->a:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    add-int/lit8 v24, p1, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ldqw;

    .line 364
    .local v19, "nextModel":Ldqw;
    if-eqz v19, :cond_5

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lcwe;->p:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    .line 366
    move-object/from16 v0, v19

    iget-object v0, v0, Ldqw;->e:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    .line 373
    .end local v19    # "nextModel":Ldqw;
    :cond_5
    :goto_b
    if-eqz v13, :cond_17

    .line 374
    iget-object v0, v11, Lcwe$a;->j:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    .line 380
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->u:Lcwe$b;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->u:Lcwe$b;

    move-object/from16 v23, v0

    iget-object v0, v11, Lcwe$a;->j:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcwe$b;->a(Landroid/view/View;I)V

    .line 384
    :cond_6
    if-lez p1, :cond_1c

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->a:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    add-int/lit8 v24, p1, -0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ldqw;

    .line 386
    .local v22, "previousModel":Ldqw;
    const/4 v15, 0x0

    .line 387
    .local v15, "isPreviousSameItem":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcwe;->p:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 388
    move-object/from16 v0, v22

    iget-object v0, v0, Ldqw;->e:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    .line 401
    :cond_7
    :goto_d
    if-eqz v15, :cond_1b

    .line 402
    iget-object v0, v11, Lcwe$a;->a:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 415
    .end local v15    # "isPreviousSameItem":Z
    .end local v22    # "previousModel":Ldqw;
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->u:Lcwe$b;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->u:Lcwe$b;

    move-object/from16 v23, v0

    iget-object v0, v11, Lcwe$a;->a:Landroid/widget/TextView;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcwe$b;->a(Landroid/widget/TextView;I)V

    .line 419
    :cond_8
    iget-object v0, v9, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v8

    .line 422
    .local v8, "currentSelectModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->j:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-object/from16 v23, v0

    if-eqz v23, :cond_20

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->j:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v5

    .line 425
    .local v5, "checkDisabled":Z
    iget-object v0, v11, Lcwe$a;->i:Landroid/widget/CheckBox;

    move-object/from16 v24, v0

    if-nez v5, :cond_1f

    const/16 v23, 0x1

    :goto_f
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 426
    iget-object v0, v11, Lcwe$a;->i:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->j:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isHasSelected(Ljava/lang/Object;)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 454
    :goto_10
    iget-object v4, v11, Lcwe$a;->i:Landroid/widget/CheckBox;

    .line 455
    .local v4, "checkBox":Landroid/widget/CheckBox;
    new-instance v23, Lcwe$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v4, v9}, Lcwe$1;-><init>(Lcwe;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/widget/CheckBox;Ldqw;)V

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v0, v11, Lcwe$a;->k:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcwe$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcwe$2;-><init>(Lcwe;Ldqw;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 504
    iget-object v0, v11, Lcwe$a;->k:Landroid/view/View;

    move-object/from16 v23, v0

    new-instance v24, Lcwe$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v4, v9}, Lcwe$3;-><init>(Lcwe;ZLandroid/widget/CheckBox;Ldqw;)V

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .end local v4    # "checkBox":Landroid/widget/CheckBox;
    .end local v5    # "checkDisabled":Z
    .end local v8    # "currentSelectModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .end local v13    # "isNextSameItem":Z
    .end local v18    # "name":Ljava/lang/String;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_9
    move-object/from16 v23, v6

    .line 288
    goto/16 :goto_3

    .line 290
    :cond_a
    iget-object v0, v9, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->userType:I

    move/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 291
    iget-object v0, v11, Lcwe$a;->a:Landroid/widget/TextView;

    move-object/from16 v23, v0

    sget v24, Lctk$i;->dt_im_robot_robotmark:I

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 293
    :cond_b
    iget-object v0, v9, Ldqw;->c:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x23

    invoke-static/range {v23 .. v24}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v7

    .line 294
    iget-object v0, v11, Lcwe$a;->a:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 304
    :cond_c
    iget-object v0, v11, Lcwe$a;->g:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 307
    :cond_d
    iget-object v0, v11, Lcwe$a;->g:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, v11, Lcwe$a;->c:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 313
    :cond_e
    iget-object v0, v11, Lcwe$a;->l:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 321
    .end local p3    # "parent":Landroid/view/ViewGroup;
    .restart local v18    # "name":Ljava/lang/String;
    :cond_f
    iget-object v0, v11, Lcwe$a;->e:Landroid/widget/TextView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 330
    :cond_10
    iget-object v0, v11, Lcwe$a;->f:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 340
    .restart local v10    # "groupMembersViewObject":Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;
    :cond_11
    iget-object v0, v11, Lcwe$a;->h:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 344
    .end local v10    # "groupMembersViewObject":Lcom/alibaba/android/dingtalk/userbase/model/GroupMembersViewObject;
    :cond_12
    iget-object v0, v11, Lcwe$a;->h:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 354
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->t:Ljava/util/HashSet;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->t:Ljava/util/HashSet;

    move-object/from16 v23, v0

    iget-object v0, v9, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 355
    iget-object v0, v11, Lcwe$a;->b:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 356
    iget-object v0, v11, Lcwe$a;->b:Landroid/widget/TextView;

    move-object/from16 v23, v0

    sget v24, Lctk$i;->dt_im_conversation_setting_admin_title:I

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a

    .line 358
    :cond_14
    iget-object v0, v11, Lcwe$a;->b:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 368
    .restart local v13    # "isNextSameItem":Z
    .restart local v19    # "nextModel":Ldqw;
    :cond_15
    move-object/from16 v0, v19

    iget-object v0, v0, Ldqw;->c:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x23

    invoke-static/range {v23 .. v24}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v20

    .line 369
    .local v20, "nextPinyinChar":C
    move/from16 v0, v20

    if-ne v0, v7, :cond_16

    const/4 v13, 0x1

    goto/16 :goto_b

    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_b

    .line 376
    .end local v19    # "nextModel":Ldqw;
    .end local v20    # "nextPinyinChar":C
    :cond_17
    iget-object v0, v11, Lcwe$a;->j:Landroid/view/View;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_c

    .line 389
    .restart local v15    # "isPreviousSameItem":Z
    .restart local v22    # "previousModel":Ldqw;
    :cond_18
    add-int/lit8 v23, p1, -0x1

    if-lez v23, :cond_7

    .line 390
    iget-object v0, v9, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lddq;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z

    move-result v12

    .line 391
    .local v12, "isCurrentRobot":Z
    move-object/from16 v0, v22

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lddq;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Z

    move-result v14

    .line 392
    .local v14, "isPreviousRobot":Z
    if-eqz v12, :cond_19

    if-eqz v14, :cond_19

    .line 394
    const/4 v15, 0x1

    goto/16 :goto_d

    .line 395
    :cond_19
    if-nez v12, :cond_7

    if-nez v14, :cond_7

    .line 396
    move-object/from16 v0, v22

    iget-object v0, v0, Ldqw;->c:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x23

    invoke-static/range {v23 .. v24}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v21

    .line 397
    .local v21, "prePinyinChar":C
    move/from16 v0, v21

    if-ne v0, v7, :cond_1a

    const/4 v15, 0x1

    goto/16 :goto_d

    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_d

    .line 404
    .end local v12    # "isCurrentRobot":Z
    .end local v14    # "isPreviousRobot":Z
    .end local v21    # "prePinyinChar":C
    :cond_1b
    iget-object v0, v11, Lcwe$a;->a:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e

    .line 407
    .end local v15    # "isPreviousSameItem":Z
    .end local v22    # "previousModel":Ldqw;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->b:Ldqw;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->b:Ldqw;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v24, v0

    iget-object v0, v9, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v26, v0

    cmp-long v23, v24, v26

    if-nez v23, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcwe;->p:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1d

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 408
    :cond_1d
    iget-object v0, v11, Lcwe$a;->a:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e

    .line 410
    :cond_1e
    iget-object v0, v11, Lcwe$a;->a:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e

    .line 425
    .restart local v5    # "checkDisabled":Z
    .restart local v8    # "currentSelectModel":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1f
    const/16 v23, 0x0

    goto/16 :goto_f

    .line 430
    .end local v5    # "checkDisabled":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->h:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->h:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_21

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->f:Ljava/util/HashMap;

    move-object/from16 v23, v0

    iget-wide v0, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->g:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->g:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_22

    const/16 v16, 0x1

    .line 436
    .local v16, "isRequest":Z
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->i:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->i:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_23

    const/4 v5, 0x1

    .line 437
    .restart local v5    # "checkDisabled":Z
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->f:Ljava/util/HashMap;

    move-object/from16 v23, v0

    iget-wide v0, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcwe;->f:Ljava/util/HashMap;

    move-object/from16 v23, v0

    iget-wide v0, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Boolean;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_24

    const/16 v17, 0x1

    .line 439
    .local v17, "isSelect":Z
    :goto_13
    if-eqz v5, :cond_25

    .line 440
    iget-object v0, v11, Lcwe$a;->i:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 441
    iget-object v0, v11, Lcwe$a;->i:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_10

    .line 434
    .end local v5    # "checkDisabled":Z
    .end local v16    # "isRequest":Z
    .end local v17    # "isSelect":Z
    :cond_22
    const/16 v16, 0x0

    goto :goto_11

    .line 436
    .restart local v16    # "isRequest":Z
    :cond_23
    const/4 v5, 0x0

    goto :goto_12

    .line 437
    .restart local v5    # "checkDisabled":Z
    :cond_24
    const/16 v17, 0x0

    goto :goto_13

    .line 442
    .restart local v17    # "isSelect":Z
    :cond_25
    if-eqz v16, :cond_26

    .line 443
    iget-object v0, v11, Lcwe$a;->i:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 444
    iget-object v0, v11, Lcwe$a;->i:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_10

    .line 445
    :cond_26
    if-eqz v17, :cond_27

    .line 446
    iget-object v0, v11, Lcwe$a;->i:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 447
    iget-object v0, v11, Lcwe$a;->i:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_10

    .line 449
    :cond_27
    iget-object v0, v11, Lcwe$a;->i:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 450
    iget-object v0, v11, Lcwe$a;->i:Landroid/widget/CheckBox;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_10
.end method

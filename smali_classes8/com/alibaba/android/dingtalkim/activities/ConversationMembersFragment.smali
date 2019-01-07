.class public Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
.super Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;
.source "ConversationMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$b;,
        Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$c;,
        Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;
    }
.end annotation


# static fields
.field private static final ab:Ljava/util/regex/Pattern;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private B:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

.field private C:I

.field private D:I

.field private E:Ljava/lang/String;

.field private F:Landroid/widget/LinearLayout;

.field private M:Landroid/view/View;

.field private N:Landroid/view/View;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/CheckBox;

.field private Q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private R:J

.field private S:J

.field private T:Z

.field private U:Z

.field private V:Lcom/alibaba/wukong/im/Conversation;

.field private W:Z

.field private X:Lcjo$a;

.field private Y:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

.field private Z:I

.field private aa:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldqw;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/String;

.field d:Z

.field e:Z

.field public f:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

.field protected g:Lcwe;

.field protected h:Ldqw;

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected j:I

.field private k:I

.field private l:I

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ListView;

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

.field private s:Landroid/os/Handler;

.field private t:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$c;

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:[Ljava/lang/String;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldqw;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldqw;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1039
    const-string/jumbo v0, "[a-zA-z]+[\\^]+[a-zA-z\\^]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->ab:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;-><init>()V

    .line 88
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k:I

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->l:I

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->u:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->z:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->A:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->i:Ljava/util/List;

    .line 128
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->W:Z

    .line 130
    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j:I

    .line 578
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Z:I

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->aa:Ljava/util/ArrayList;

    .line 858
    return-void
.end method

.method static synthetic A(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->z:Ljava/util/List;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Z
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    .line 18536
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->V:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v0}, Ldjl;->x(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->S:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 83
    goto :goto_0
.end method

.method static synthetic C(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->l:I

    return v0
.end method

.method static synthetic D(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j()V

    return-void
.end method

.method static synthetic E(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->l()V

    return-void
.end method

.method static synthetic F(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->i()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Z:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    .param p1, "x1"    # J

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->R:J

    return-wide p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->V:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->z:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Ljava/lang/String;Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 83
    .line 16556
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 16557
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 16558
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k:I

    if-le v2, v0, :cond_2

    .line 16559
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k:I

    rem-int v0, v2, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k:I

    div-int v0, v2, v0

    .line 16560
    :goto_0
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_3

    .line 16561
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k:I

    mul-int v5, v3, v1

    .line 16562
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k:I

    add-int/2addr v1, v5

    if-le v1, v2, :cond_1

    move v1, v2

    .line 16563
    :goto_2
    invoke-virtual {p1, v5, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 16564
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16560
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 16559
    :cond_0
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k:I

    div-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16562
    :cond_1
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k:I

    add-int/2addr v1, v5

    goto :goto_2

    .line 16567
    :cond_2
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16570
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->T:Z

    if-eqz v0, :cond_4

    .line 16571
    invoke-direct {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->d(Ljava/util/List;)V

    :goto_3
    return-void

    .line 16573
    :cond_4
    invoke-direct {p0, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c(Ljava/util/List;)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 83
    .line 19385
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->l()V

    .line 19386
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19387
    :cond_0
    :goto_0
    return-void

    .line 19389
    :cond_1
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    .line 19390
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$7;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$7;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    .line 19405
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 19391
    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c:Ljava/lang/String;

    .line 19389
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 19407
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$8;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$8;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 19413
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "cid"    # Ljava/lang/String;
    .param p3, "totalNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1229
    .local p2, "lastMembers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->W:Z

    if-eqz v1, :cond_0

    .line 1238
    :goto_0
    return-void

    .line 1233
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.workapp.conversation.member.CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1234
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "cid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    const-string/jumbo v1, "conversation_members"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1236
    const-string/jumbo v1, "conversation_total_members_count"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1237
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->W:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->B:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y:Ljava/util/List;

    return-object p1
.end method

.method private b(I)V
    .locals 2
    .param p1, "desc"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 1487
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1488
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 1489
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1490
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setCancelable(Z)V

    .line 1491
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 1493
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->P:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pinyin"    # Ljava/lang/String;

    .prologue
    .line 1042
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 1043
    .local v1, "result":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    if-eqz p0, :cond_1

    sget-object v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->ab:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1044
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\\^"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1046
    .local v3, "stringArraySplits":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 1047
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 1048
    aget-object v2, v3, v0

    .line 1049
    .local v2, "stringArraySplit":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1050
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1047
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1055
    .end local v0    # "i":I
    .end local v2    # "stringArraySplit":Ljava/lang/String;
    .end local v3    # "stringArraySplits":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c(Ljava/util/List;)V

    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 583
    .local p1, "uidLists":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Long;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 584
    .local v2, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 585
    .local v3, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/HashSet;

    iget v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Z:I

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 586
    .local v1, "hashSet":Ljava/util/HashSet;
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 587
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 588
    const-string/jumbo v4, "EVENTBUTLER"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$18;

    invoke-direct {v5, p0, v3, v2, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$18;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;ILjava/util/List;)V

    const-class v6, Lcma;

    .line 658
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 588
    invoke-interface {v4, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 659
    .local v0, "apiEventListener":Lcma;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(ZLjava/util/List;Lcma;)V

    .line 661
    .end local v0    # "apiEventListener":Lcma;
    :cond_0
    return-void
.end method

.method protected static d()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 856
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->h()V

    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->d(Ljava/util/List;)V

    return-void
.end method

.method private d(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "uidLists":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Long;>;>;"
    const/4 v4, 0x1

    .line 664
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    .line 665
    .local v9, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/HashSet;

    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Z:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 667
    .local v8, "hashSet":Ljava/util/HashSet;
    invoke-interface {v1, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 668
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    new-instance v7, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$19;

    invoke-direct {v7, p0, v9, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$19;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;ILjava/util/List;)V

    .line 713
    .local v7, "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->S:J

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;JZZZLcma;)V

    .line 715
    .end local v7    # "apiEventListener":Lcma;, "Lcma<Ljava/util/List<Lcgc;>;>;"
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 83
    .line 19241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19243
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqw;

    .line 19244
    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_0
    return-object v1
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    const/4 v0, 0x0

    .line 83
    .line 15351
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->B:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    if-eqz v1, :cond_1

    .line 15352
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->B:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;->a()V

    .line 15374
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 16166
    iget-object v0, v0, Lcwe;->f:Ljava/util/HashMap;

    .line 15374
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 15375
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    invoke-virtual {v0}, Lcwe;->notifyDataSetChanged()V

    .line 83
    return-void

    .line 15353
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->K:Lcif;

    if-eqz v1, :cond_4

    move v1, v0

    .line 15354
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 15355
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqw;

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 15356
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 15360
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->K:Lcif;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3, v0}, Lcif;->a(ILjava/lang/Object;)V

    .line 15354
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 15362
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->f:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v1, :cond_0

    move v1, v0

    .line 15364
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 15365
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqw;

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    .line 15366
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->f:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isDisable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->f:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->isRequestSelect(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 15371
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->f:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v2, v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->removeChooseObject(Ljava/lang/Object;)Z

    .line 15364
    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcif;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->K:Lcif;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcif;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->K:Lcif;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->o:Landroid/widget/ListView;

    return-object v0
.end method

.method private h()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 289
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->C:I

    if-le v5, v6, :cond_2

    .line 290
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->P:Landroid/widget/CheckBox;

    invoke-virtual {v5, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 291
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->D:I

    if-nez v5, :cond_1

    sget v5, Lctk$i;->choose_limit:I

    :goto_0
    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->C:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v5, v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 292
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Y:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    if-eqz v5, :cond_0

    .line 293
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Y:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    iget v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->C:I

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;->onSelectedCountExceedsLimit(II)V

    .line 347
    :cond_0
    :goto_1
    return-void

    .line 291
    :cond_1
    iget v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->D:I

    goto :goto_0

    .line 296
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 297
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldqw;

    iget-object v5, v5, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    .line 298
    .local v4, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4

    .line 299
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 6166
    iget-object v5, v5, Lcwe;->f:Ljava/util/HashMap;

    .line 299
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 301
    :cond_4
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->e:Z

    if-eqz v5, :cond_3

    .line 302
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 7166
    iget-object v5, v5, Lcwe;->f:Ljava/util/HashMap;

    .line 302
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 306
    .end local v4    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->B:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    if-eqz v5, :cond_9

    .line 307
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v2, "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldqw;>;"
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 309
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->e:Z

    if-nez v5, :cond_7

    .line 311
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ldqw;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 313
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldqw;

    .line 314
    .local v3, "tmp":Ldqw;
    if-eqz v3, :cond_6

    iget-object v5, v3, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->b()Lchy;

    move-result-object v5

    invoke-virtual {v5}, Lchy;->getCurrentUid()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_6

    .line 315
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 321
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ldqw;>;"
    .end local v3    # "tmp":Ldqw;
    :cond_7
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->B:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    invoke-virtual {v5, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;->a(Ljava/util/List;)V

    .line 343
    .end local v2    # "selected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldqw;>;"
    :cond_8
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->z:Ljava/util/List;

    .line 8185
    iput-object v6, v5, Lcwe;->h:Ljava/util/List;

    .line 344
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    invoke-virtual {v5}, Lcwe;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 323
    :cond_9
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->K:Lcif;

    if-eqz v5, :cond_d

    .line 324
    const/4 v0, 0x0

    :goto_4
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 325
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldqw;

    iget-object v5, v5, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    .line 326
    .restart local v4    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y:Ljava/util/List;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 330
    :cond_a
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 8166
    iget-object v5, v5, Lcwe;->f:Ljava/util/HashMap;

    .line 330
    iget-wide v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->z:Ljava/util/List;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->z:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 335
    :cond_b
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->K:Lcif;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6, v4}, Lcif;->a(ILjava/lang/Object;)V

    .line 324
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 337
    .end local v4    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_d
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->f:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v5, :cond_8

    .line 338
    const/4 v0, 0x0

    :goto_5
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 339
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldqw;

    iget-object v5, v5, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    .line 340
    .restart local v4    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->f:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v5, v4}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->addChooseObject(Ljava/lang/Object;)Z

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->u:Ljava/util/HashMap;

    return-object v0
.end method

.method private i()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 479
    .line 11455
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11456
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->n:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$9;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11462
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->n:Landroid/view/View;

    sget v1, Lctk$f;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11463
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->n:Landroid/view/View;

    sget v1, Lctk$f;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lctk$i;->loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 480
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$17;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    .line 548
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 480
    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method private j()V
    .locals 18

    .prologue
    .line 907
    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    .line 11958
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 11959
    new-array v11, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->v:[Ljava/lang/String;

    .line 11960
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 11961
    const/4 v11, 0x0

    move v13, v11

    :goto_0
    if-ge v13, v14, :cond_1

    .line 11962
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldqw;

    .line 11963
    if-eqz v11, :cond_0

    .line 11966
    iget-object v0, v11, Ldqw;->e:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 11969
    const/4 v12, 0x0

    .line 11970
    add-int/lit8 v11, v13, -0x2

    if-ltz v11, :cond_c

    .line 11971
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    add-int/lit8 v17, v13, -0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldqw;

    .line 11972
    if-eqz v11, :cond_c

    .line 11973
    iget-object v11, v11, Ldqw;->e:Ljava/lang/String;

    .line 11977
    :goto_1
    move-object/from16 v0, v16

    if-eq v11, v0, :cond_0

    .line 11978
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11979
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->u:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11980
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->v:[Ljava/lang/String;

    aput-object v16, v11, v13

    .line 11961
    :cond_0
    add-int/lit8 v11, v13, 0x1

    move v13, v11

    goto :goto_0

    .line 11983
    :cond_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 11984
    const/4 v11, 0x0

    invoke-interface {v15, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11986
    :cond_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    .line 11987
    invoke-interface {v15, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11988
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v12, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLetters([Ljava/lang/String;)V

    .line 11989
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 11993
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v13

    invoke-virtual {v13}, Lcid;->c()Landroid/app/Application;

    move-result-object v13

    array-length v11, v11

    mul-int/lit8 v11, v11, 0x14

    int-to-float v11, v11

    invoke-static {v13, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    iput v11, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11994
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11995
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_3

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v12, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    .line 950
    :goto_3
    return-void

    .line 11995
    :cond_3
    const/16 v11, 0x8

    goto :goto_2

    .line 911
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 912
    .local v10, "size":I
    new-array v11, v10, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->v:[Ljava/lang/String;

    .line 913
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v1, "alphaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Ljava/util/ArrayList;)I

    move-result v4

    .local v4, "i":I
    :goto_4
    if-ge v4, v10, :cond_a

    .line 916
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldqw;

    iget-object v11, v11, Ldqw;->c:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 917
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldqw;

    iget-object v11, v11, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v12, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v2

    .line 922
    .local v2, "currentPinyin":Ljava/lang/String;
    :goto_5
    const/4 v8, 0x0

    .line 923
    .local v8, "prePinyin":Ljava/lang/String;
    add-int/lit8 v11, v4, -0x2

    if-ltz v11, :cond_5

    .line 924
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    add-int/lit8 v12, v4, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldqw;

    iget-object v11, v11, Ldqw;->c:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 925
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldqw;

    iget-object v11, v11, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-virtual {v12, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v8

    .line 931
    :cond_5
    :goto_6
    const/16 v11, 0x23

    invoke-static {v2, v11}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v3

    .line 932
    .local v3, "currentStr":C
    if-eqz v8, :cond_9

    const/16 v11, 0x23

    invoke-static {v8, v11}, Lcpt;->a(Ljava/lang/String;C)C

    move-result v9

    .line 933
    .local v9, "previewStr":C
    :goto_7
    if-eq v9, v3, :cond_6

    .line 934
    move v7, v3

    .line 935
    .local v7, "name":C
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->u:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->v:[Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v4

    .line 914
    .end local v7    # "name":C
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 919
    .end local v2    # "currentPinyin":Ljava/lang/String;
    .end local v3    # "currentStr":C
    .end local v8    # "prePinyin":Ljava/lang/String;
    .end local v9    # "previewStr":C
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldqw;

    iget-object v2, v11, Ldqw;->c:Ljava/lang/String;

    .restart local v2    # "currentPinyin":Ljava/lang/String;
    goto :goto_5

    .line 927
    .restart local v8    # "prePinyin":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    add-int/lit8 v12, v4, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldqw;

    iget-object v8, v11, Ldqw;->c:Ljava/lang/String;

    goto :goto_6

    .line 932
    .restart local v3    # "currentStr":C
    :cond_9
    const/16 v9, 0x20

    goto :goto_7

    .line 940
    .end local v2    # "currentPinyin":Ljava/lang/String;
    .end local v3    # "currentStr":C
    .end local v8    # "prePinyin":Ljava/lang/String;
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    new-array v5, v11, [Ljava/lang/String;

    .line 941
    .local v5, "letters":[Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 942
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v11, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLetters([Ljava/lang/String;)V

    .line 943
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 947
    .local v6, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v11

    invoke-virtual {v11}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    array-length v12, v5

    mul-int/lit8 v12, v12, 0x14

    int-to-float v12, v12

    invoke-static {v11, v12}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    iput v11, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 948
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v11, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_b

    const/4 v11, 0x0

    :goto_8
    invoke-virtual {v12, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_b
    const/16 v11, 0x8

    goto :goto_8

    .end local v1    # "alphaList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "i":I
    .end local v5    # "letters":[Ljava/lang/String;
    .end local v6    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v10    # "size":I
    :cond_c
    move-object v11, v12

    goto/16 :goto_1
.end method

.method static synthetic j(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->v:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method private k()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1017
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->P:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    invoke-virtual {v0}, Lcwe;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->U:Z

    if-eqz v0, :cond_1

    .line 1019
    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->U:Z

    .line 1020
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->P:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1021
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->h()V

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->P:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 12207
    iget-object v0, v5, Lcwe;->j:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    if-eqz v0, :cond_3

    .line 12208
    iget-object v0, v5, Lcwe;->j:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    invoke-interface {v0}, Lcom/alibaba/android/dingtalk/userbase/IChooseControl;->getChooseResult()Ljava/util/ArrayList;

    move-result-object v0

    .line 12209
    if-eqz v0, :cond_b

    .line 12210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1023
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    invoke-virtual {v2}, Lcwe;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 12212
    :cond_3
    invoke-virtual {v5}, Lcwe;->getCount()I

    move-result v0

    if-lez v0, :cond_b

    .line 12213
    iget-object v0, v5, Lcwe;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqw;

    .line 12214
    if-eqz v0, :cond_9

    .line 12215
    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v7

    .line 12217
    iget-object v0, v5, Lcwe;->h:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, v5, Lcwe;->h:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12218
    iget-object v0, v5, Lcwe;->f:Ljava/util/HashMap;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12220
    :cond_4
    iget-object v0, v5, Lcwe;->f:Ljava/util/HashMap;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v5, Lcwe;->f:Ljava/util/HashMap;

    iget-wide v8, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12221
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 12222
    goto :goto_2

    .line 12225
    :cond_5
    iget-object v0, v5, Lcwe;->i:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, v5, Lcwe;->i:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    .line 12226
    :goto_3
    if-eqz v0, :cond_6

    .line 12227
    add-int/lit8 v2, v2, 0x1

    .line 12230
    :cond_6
    iget-object v0, v5, Lcwe;->g:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, v5, Lcwe;->g:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    .line 12231
    :goto_4
    if-eqz v0, :cond_9

    .line 12232
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_5
    move v2, v0

    .line 12235
    goto :goto_2

    :cond_7
    move v0, v1

    .line 12225
    goto :goto_3

    :cond_8
    move v0, v1

    .line 12230
    goto :goto_4

    :cond_9
    move v0, v2

    goto :goto_5

    :cond_a
    move v0, v2

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto/16 :goto_1
.end method

.method static synthetic l(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->t:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$c;

    return-object v0
.end method

.method private l()V
    .locals 1

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Q:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 1499
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Lcom/alibaba/wukong/im/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->V:Lcom/alibaba/wukong/im/Conversation;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    .line 17467
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17468
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->n:Landroid/view/View;

    sget v1, Lctk$f;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17469
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->n:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$10;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$10;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17475
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->n:Landroid/view/View;

    sget v1, Lctk$f;->tv_empty:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lctk$i;->load_error_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    return-void
.end method

.method static synthetic q(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->aa:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Z:I

    return v0
.end method

.method static synthetic s(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    .line 17770
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->aa:Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17771
    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->R:J

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;

    invoke-direct {v6, p0, v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$2;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;)V

    .line 17863
    const-class v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$3;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;JLcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$b;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method static synthetic t(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->S:J

    return-wide v0
.end method

.method static synthetic u(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->W:Z

    return v0
.end method

.method static synthetic v(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic w(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->p:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    .line 18479
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->o:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 18480
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    return-void
.end method

.method static synthetic y(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final H()V
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    if-eqz v0, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    invoke-virtual {v0}, Lcwe;->notifyDataSetChanged()V

    .line 1548
    :cond_0
    return-void
.end method

.method protected a(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldqw;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 954
    .local p1, "displayResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldqw;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)V
    .locals 2
    .param p1, "chooseMode"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 416
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->l:I

    .line 417
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->l:I

    .line 9178
    iput v1, v0, Lcwe;->d:I

    .line 419
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    invoke-virtual {v0}, Lcwe;->notifyDataSetChanged()V

    .line 421
    :cond_0
    return-void
.end method

.method public final a(JZ)V
    .locals 1
    .param p1, "orgId"    # J
    .param p3, "isEnterpriseConv"    # Z

    .prologue
    .line 424
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 10127
    iput-boolean p3, v0, Lcwe;->q:Z

    .line 426
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 10147
    iput-wide p1, v0, Lcwe;->r:J

    .line 427
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    invoke-virtual {v0}, Lcwe;->notifyDataSetChanged()V

    .line 430
    :cond_0
    iput-boolean p3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->T:Z

    .line 431
    iput-wide p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->S:J

    .line 432
    return-void
.end method

.method public final a(Lcif;)V
    .locals 2
    .param p1, "binder"    # Lcif;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1006
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->a(Lcif;)V

    .line 1007
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->K:Lcif;

    .line 12174
    iput-object v1, v0, Lcwe;->l:Lcif;

    .line 1010
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V
    .locals 5
    .param p1, "userIdentityObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1029
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 13166
    iget-object v0, v0, Lcwe;->f:Ljava/util/HashMap;

    .line 1029
    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 14166
    iget-object v0, v0, Lcwe;->f:Ljava/util/HashMap;

    .line 1030
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    invoke-virtual {v0}, Lcwe;->notifyDataSetChanged()V

    .line 1034
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->P:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->P:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1037
    :cond_1
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 4
    .param p1, "userProfileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1127
    sget v1, Lctk$i;->removing:I

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(I)V

    .line 1128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    .local v0, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    .line 1208
    return-void
.end method

.method public final a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;)V
    .locals 2
    .param p1, "changeListener"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 999
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->B:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    .line 1000
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->B:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    .line 12170
    iput-object v1, v0, Lcwe;->k:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    .line 1003
    :cond_0
    return-void
.end method

.method protected a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;II)V
    .locals 1
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "i1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Member;",
            ">;>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p1, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lcom/alibaba/wukong/im/Member;>;>;"
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/wukong/im/ConversationService;->listMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;II)V

    .line 553
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 1060
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(Ljava/lang/String;)V

    .line 1061
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldqw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "userProfileObjectList":Ljava/util/List;, "Ljava/util/List<Ldqw;>;"
    const/4 v6, 0x1

    .line 1445
    :try_start_0
    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j:I

    if-ne v1, v6, :cond_0

    new-instance v1, Lcto;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->h:Ldqw;

    invoke-direct {v1, v2}, Lcto;-><init>(Ldqw;)V

    :goto_0
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1452
    :goto_1
    return-void

    .line 1445
    :cond_0
    new-instance v1, Lctp;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->h:Ldqw;

    invoke-direct {v1, v2}, Lctp;-><init>(Ldqw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1446
    :catch_0
    move-exception v0

    .line 1448
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1449
    const-string/jumbo v1, "im"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "member sort error:"

    aput-object v5, v3, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string/jumbo v5, " cid:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 7
    .param p2, "hasAlreadyAdded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v4, 0x1

    .line 1252
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->T:Z

    if-eqz v0, :cond_2

    .line 14320
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 14323
    :cond_1
    sget v0, Lctk$i;->adding:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(I)V

    .line 14324
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->S:J

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;

    invoke-direct {v6, p0, p2, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;ZLjava/util/List;)V

    move-object v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;JZZLcma;)V

    goto :goto_0

    .line 15260
    :cond_2
    sget v0, Lctk$i;->adding:I

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(I)V

    .line 15261
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;ZLjava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method protected b(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ldqw;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 763
    .local p1, "displayResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ldqw;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    :cond_0
    const/4 v0, 0x0

    .line 766
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 24
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 1064
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->isAdded()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1123
    :goto_0
    return-void

    .line 1067
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 1068
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 1069
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1071
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->w:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1116
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Ljava/util/List;)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcwe;->notifyDataSetChanged()V

    .line 1121
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c()V

    .line 1122
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k()V

    goto :goto_0

    .line 1075
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->w:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_5
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ldqw;

    .line 1076
    .local v17, "userProfileObject":Ldqw;
    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1080
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->S:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JJ)Ljava/lang/String;

    move-result-object v13

    .line 1081
    .local v13, "orgName":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->S:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(JJ)Ljava/lang/String;

    move-result-object v14

    .line 1082
    .local v14, "orgNamePinyin":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v15, v0, Ldqw;->g:Ljava/lang/String;

    .line 1083
    .local v15, "orgNick":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Ldqw;->h:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1084
    .local v16, "orgNickPinyin":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    .line 1085
    .local v6, "alias":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->aliasPinyin:Ljava/lang/String;

    .line 1086
    .local v7, "aliasPinyin":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v11, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    .line 1087
    .local v11, "nick":Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nickPinyin:Ljava/lang/String;

    .line 1088
    .local v12, "nickPinyin":Ljava/lang/String;
    const-class v18, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/alibaba/wukong/im/GroupNickService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    move-wide/from16 v22, v0

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNickSync(Ljava/lang/String;JZ)Lcom/alibaba/wukong/im/GroupNickObject;

    move-result-object v9

    .line 1089
    .local v9, "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    if-eqz v9, :cond_16

    invoke-virtual {v9}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v8

    .line 1090
    .local v8, "groupNick":Ljava/lang/String;
    :goto_2
    if-eqz v9, :cond_17

    invoke-virtual {v9}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNickPinyin()Ljava/lang/String;

    move-result-object v10

    .line 1091
    .local v10, "groupNickPinyin":Ljava/lang/String;
    :goto_3
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_15

    :cond_6
    if-eqz v15, :cond_7

    .line 1092
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_15

    :cond_7
    if-eqz v16, :cond_8

    .line 1093
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    :cond_8
    if-eqz v16, :cond_9

    .line 1094
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v20, "^"

    const-string/jumbo v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    .line 1095
    :cond_9
    invoke-static/range {v16 .. v16}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    if-eqz v14, :cond_a

    .line 1096
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    :cond_a
    if-eqz v14, :cond_b

    .line 1097
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v20, "^"

    const-string/jumbo v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    .line 1098
    :cond_b
    invoke-static {v14}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    if-eqz v6, :cond_c

    .line 1099
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_15

    :cond_c
    if-eqz v7, :cond_d

    .line 1100
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    :cond_d
    if-eqz v7, :cond_e

    .line 1101
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v20, "^"

    const-string/jumbo v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    .line 1102
    :cond_e
    invoke-static {v7}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    if-eqz v11, :cond_f

    .line 1103
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_15

    :cond_f
    if-eqz v12, :cond_10

    .line 1104
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    :cond_10
    if-eqz v12, :cond_11

    .line 1105
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v20, "^"

    const-string/jumbo v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    .line 1106
    :cond_11
    invoke-static {v12}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    if-eqz v8, :cond_12

    .line 1107
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_15

    :cond_12
    if-eqz v10, :cond_13

    .line 1108
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    :cond_13
    if-eqz v10, :cond_14

    .line 1109
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v20, "^"

    const-string/jumbo v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    .line 1110
    :cond_14
    invoke-static {v10}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_15

    move-object/from16 v0, v17

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, v17

    iget-object v0, v0, Ldqw;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1111
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1112
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1089
    .end local v8    # "groupNick":Ljava/lang/String;
    .end local v10    # "groupNickPinyin":Ljava/lang/String;
    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 1090
    .restart local v8    # "groupNick":Ljava/lang/String;
    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_3
.end method

.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldqw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 439
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ldqw;>;"
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    return-void

    .line 10417
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 443
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcwe;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    invoke-virtual {v2}, Lcwe;->getCount()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 446
    :cond_3
    iget v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .line 11088
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    if-eqz v1, :cond_0

    .line 11089
    iget-object p0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    goto :goto_0

    .line 10420
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10421
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10422
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10423
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Ljava/util/List;)V

    .line 10424
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j()V

    .line 10425
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    invoke-virtual {v0}, Lcwe;->notifyDataSetChanged()V

    .line 10426
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lctk$i;->add_member_success:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 10427
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->l()V

    .line 10428
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->B:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    if-eqz v0, :cond_5

    .line 10429
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->B:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;->a(I)V

    .line 10431
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c()V

    .line 10432
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k()V

    goto :goto_1
.end method

.method public final c()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 718
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->F:Landroid/widget/LinearLayout;

    if-nez v4, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    const-string/jumbo v4, "ACTIVITY_IDENTIFY_AT"

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->E:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 722
    iget v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->l:I

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_7

    .line 723
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 724
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->O:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lctk$i;->at_all_format:I

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {p0, v8}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->b(Ljava/util/ArrayList;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 726
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->M:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->F:Landroid/widget/LinearLayout;

    if-ne v4, v5, :cond_3

    .line 727
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->F:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->M:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 729
    :cond_3
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->N:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->F:Landroid/widget/LinearLayout;

    if-eq v4, v5, :cond_0

    .line 731
    const/4 v0, 0x0

    .line 732
    .local v0, "isAtAllRestricted":Z
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 733
    .local v1, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->V:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v4, :cond_5

    .line 735
    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->V:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->getAtAllType()I

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->V:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->i:Ljava/util/List;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->i:Ljava/util/List;

    iget-wide v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_4
    move v0, v2

    .line 738
    :cond_5
    :goto_1
    if-nez v0, :cond_0

    .line 740
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->F:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->N:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    move v0, v3

    .line 735
    goto :goto_1

    .line 744
    .end local v0    # "isAtAllRestricted":Z
    .end local v1    # "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    :cond_7
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_0

    .line 746
    :cond_8
    const-string/jumbo v2, "activity_identify_remove"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 749
    iget v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->l:I

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 750
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->N:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->F:Landroid/widget/LinearLayout;

    if-ne v2, v3, :cond_9

    .line 751
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->F:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->N:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 753
    :cond_9
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->M:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->F:Landroid/widget/LinearLayout;

    if-eq v2, v3, :cond_0

    .line 754
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->F:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->M:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 757
    :cond_a
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_0
.end method

.method public final g()V
    .locals 0

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k()V

    .line 1014
    return-void
.end method

.method public final n_()Lcif$a;
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$16;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 223
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 224
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->F:Landroid/widget/LinearLayout;

    .line 225
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->F:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 226
    new-instance v9, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 227
    .local v9, "headerContainerLayoutParams":Landroid/widget/AbsListView$LayoutParams;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->header_check:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->M:Landroid/view/View;

    .line 229
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lctk$g;->header_at_all:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->N:Landroid/view/View;

    .line 230
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->N:Landroid/view/View;

    sget v1, Lctk$f;->tv_at_all:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->O:Landroid/widget/TextView;

    .line 231
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->M:Landroid/view/View;

    sget v1, Lctk$f;->checkbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->P:Landroid/widget/CheckBox;

    .line 232
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->P:Landroid/widget/CheckBox;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$13;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$13;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->M:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$14;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$14;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->N:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$15;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$15;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->o:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 274
    new-instance v0, Lcwe;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    iget v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->l:I

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->y:Ljava/util/List;

    iget v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->C:I

    iget v6, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->D:I

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->B:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;

    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->K:Lcif;

    invoke-direct/range {v0 .. v8}, Lcwe;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;ILjava/util/List;IILcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$a;Lcif;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    .line 275
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    iget v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j:I

    .line 3119
    iput v1, v0, Lcwe;->p:I

    .line 276
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->f:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 3123
    iput-object v1, v0, Lcwe;->j:Lcom/alibaba/android/dingtalk/userbase/IChooseControl;

    .line 277
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->E:Ljava/lang/String;

    .line 3151
    iput-object v0, v1, Lcwe;->m:Ljava/lang/String;

    .line 3587
    const/4 v0, 0x2

    iget v2, v1, Lcwe;->d:I

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "activity_identify_remove"

    iget-object v2, v1, Lcwe;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3588
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "com.workapp.member.change.choose.mode"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3590
    const-string/jumbo v3, "seleced_members"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3591
    iget-object v0, v1, Lcwe;->c:Landroid/app/Activity;

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->A:Ljava/util/List;

    .line 4189
    iput-object v1, v0, Lcwe;->g:Ljava/util/List;

    .line 279
    iget-wide v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->S:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    iget-wide v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->S:J

    .line 5147
    iput-wide v2, v0, Lcwe;->r:J

    .line 281
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->T:Z

    .line 6127
    iput-boolean v1, v0, Lcwe;->q:Z

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->o:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 285
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->i()V

    .line 286
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "conversation_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "choose_mode"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->l:I

    .line 145
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "filter_myself"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->d:Z

    .line 146
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "filter_list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->m:Ljava/util/ArrayList;

    .line 147
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "can_choose_current_user"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->e:Z

    .line 148
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "activity_identify"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->E:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "intent_key_sort_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->j:I

    .line 150
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "need_check_all"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->U:Z

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->w:Ljava/util/ArrayList;

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->x:Ljava/util/ArrayList;

    .line 155
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "count_limit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->C:I

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "count_limit_tips"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->D:I

    .line 158
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "key_request_select_user_list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->A:Ljava/util/List;

    .line 160
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "intent_key_contact_choose_request"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 161
    .local v0, "contactChooseRequest":Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;->getContactChooseCallback()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->Y:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    .line 165
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->s:Landroid/os/Handler;

    .line 166
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$c;

    invoke-direct {v1, p0, v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$c;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;B)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->t:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$c;

    .line 168
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    const-class v3, Lcjo$a;

    .line 178
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 168
    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcjo$a;

    iput-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->X:Lcjo$a;

    .line 179
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->X:Lcjo$a;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcjo$a;)V

    .line 181
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "userEmployeeInfos_page_count"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    const/16 v1, 0x12c

    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k:I

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_1
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->k:I

    goto :goto_0
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

    .line 199
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->I:Landroid/view/View;

    sget v1, Lctk$f;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->o:Landroid/widget/ListView;

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->o:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$12;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$12;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->I:Landroid/view/View;

    sget v1, Lctk$f;->letter_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$a;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;B)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setOnTouchingLetterChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;)V

    .line 212
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->r:Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->I:Landroid/view/View;

    sget v1, Lctk$f;->tv_overlay:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->q:Landroid/widget/TextView;

    .line 214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->I:Landroid/view/View;

    sget v1, Lctk$f;->rl_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->n:Landroid/view/View;

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->I:Landroid/view/View;

    sget v1, Lctk$f;->rl_no_sort_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->p:Landroid/widget/RelativeLayout;

    .line 2510
    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$11;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    .line 2530
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2531
    const-string/jumbo v0, "com.workapp.alias_change"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2532
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->registerLocalReceiver(Landroid/content/BroadcastReceiver;Landroid/app/Activity;Landroid/content/IntentFilter;)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->X:Lcjo$a;

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->X:Lcjo$a;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Lcjo$a;)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->X:Lcjo$a;

    .line 194
    :cond_0
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->onDestroy()V

    .line 195
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 1503
    invoke-super {p0}, Lcom/alibaba/android/dingtalk/search/base/AbsSearchFragment;->onDetach()V

    .line 1504
    return-void
.end method

.method public final r_()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lctk$g;->fragment_group_chat_member:I

    return v0
.end method

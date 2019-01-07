.class public Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;
.super Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;
.source "RedPacketsInterfaceImpl.java"


# static fields
.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/aliaba/android/dingtalk/redpackets/base/RedPacketInterface;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 101
    .line 3126
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3129
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$9;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$9;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Lcom/alibaba/wukong/Callback;)V

    .line 3158
    const-class v1, Lcma;

    invoke-static {v0, v1, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 3159
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcbs;->b(Lcma;)V

    .line 101
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Ljava/util/List;)[J
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 101
    .line 2814
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2815
    new-array v2, v1, [Ljava/lang/Long;

    .line 2816
    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2817
    new-array v3, v1, [J

    .line 2818
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2819
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 2818
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-object v3
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 578
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "festivalType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 583
    move-object v0, p1

    .line 584
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 585
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcaj$f;->redpackets_enterprise_hint:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 597
    :cond_0
    :goto_0
    return-object v0

    .line 589
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    const-string/jumbo v1, "red_packet_bomb"

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 591
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcaj$f;->dt_dingtalk_for_happy_new_year:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 593
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcaj$f;->redpackets_random_hint:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3
    .param p1, "uid"    # J

    .prologue
    .line 716
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "binded_alipay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcpk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public final a(JLjava/lang/String;ZLcma;)V
    .locals 5
    .param p1, "sender"    # J
    .param p3, "clusterId"    # Ljava/lang/String;
    .param p4, "open"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 870
    .local p5, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    const-string/jumbo v0, "001"

    const-string/jumbo v1, "param clusterId is empty!"

    invoke-interface {p5, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v0

    .line 2303
    new-instance v1, Lcbs$2;

    invoke-direct {v1, v0, p5}, Lcbs$2;-><init>(Lcbs;Lcma;)V

    .line 2310
    const-class v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopPickIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopPickIService;

    .line 2311
    if-eqz v0, :cond_0

    .line 2312
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, p3, v3, v1}, Lcom/alibaba/android/dingtalk/redpackets/idl/service/RedEnvelopPickIService;->subscribePlan(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Liyv;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 132
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/red_packets/balance.html"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public final a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uid"    # J
    .param p4, "cong"    # Ljava/lang/String;
    .param p5, "thirdPartId"    # Ljava/lang/String;
    .param p6, "thirdPartSource"    # Ljava/lang/String;
    .param p7, "extras"    # Ljava/lang/String;

    .prologue
    .line 731
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$2;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/Long;

    const/4 v1, 0x0

    .line 759
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    move-object v1, v8

    move-object v2, v0

    .line 731
    invoke-interface/range {v1 .. v7}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    .line 760
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1169
    if-nez p1, :cond_0

    .line 1170
    const-string/jumbo v0, "redpackets"

    const/4 v1, 0x0

    const-string/jumbo v2, "nav2WalletActivity activity is null"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :goto_0
    return-void

    .line 1173
    :cond_0
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/wallet.html"

    invoke-interface {v0, v1, p2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 926
    if-nez p2, :cond_1

    .line 995
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 932
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcaj$e;->redpackets_pwd_verify:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 934
    .local v2, "dialogView":Landroid/view/View;
    sget v4, Lcaj$d;->edt_old_pwd:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 936
    .local v3, "editText":Landroid/widget/EditText;
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v1, p1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 937
    .local v1, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v4, Lcaj$f;->redpackets_verify_pwd:I

    invoke-virtual {v1, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 938
    invoke-virtual {v4, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 939
    invoke-virtual {v4, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcaj$f;->cancel:I

    .line 940
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcaj$f;->sure:I

    new-instance v6, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;

    invoke-direct {v6, p0, v3, p2, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$5;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Landroid/widget/EditText;Lcom/alibaba/wukong/Callback;Landroid/app/Activity;)V

    .line 941
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 975
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 976
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 977
    .local v0, "btnPositive":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 978
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 979
    new-instance v4, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$6;

    invoke-direct {v4, p0, v3, v0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$6;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Landroid/widget/EditText;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;[J)V

    .line 138
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "senderId"    # J
    .param p5, "clusterId"    # Ljava/lang/String;

    .prologue
    .line 272
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;I)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "senderId"    # J
    .param p5, "clusterId"    # Ljava/lang/String;
    .param p6, "type"    # I

    .prologue
    .line 114
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    .line 115
    :cond_0
    const-string/jumbo v0, "red_packets"

    const-string/jumbo v1, "RedPacketsInterfaceImpl"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "RedPacketsInterfaceImpl nav2RedPacketsDetailActivity to detail param invalid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_1
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v8, "https://qr.dingtalk.com/page/red_packets/detail.html"

    new-instance v1, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$1;

    move-object v2, p0

    move-object v3, p5

    move-wide v4, p3

    move-object v6, p2

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$1;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Ljava/lang/String;JLcom/alibaba/wukong/im/Conversation;I)V

    invoke-interface {v0, v8, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 128
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "senderId"    # J
    .param p5, "clusterId"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;

    .prologue
    .line 277
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v5, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    .line 278
    .local v5, "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    sget v3, Lcaj$f;->repackets_querying:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 280
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;

    move-object v4, p0

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object v9, p1

    move-object v10, p2

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$12;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;JLjava/lang/String;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    const-class v4, Lcma;

    invoke-interface {v12, v3, v4, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 333
    .local v2, "listener":Lcma;
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v3

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v0, v2}, Lcbs;->a(Ljava/lang/Long;Ljava/lang/String;Lcma;)V

    .line 334
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 179
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/festival_red_packets/send.html"

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$10;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$10;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 190
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "planDo"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 194
    if-eqz p3, :cond_0

    if-nez p2, :cond_3

    .line 195
    :cond_0
    const-string/jumbo v1, "redpackets"

    const-string/jumbo v3, "check"

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "pickRedPackets: planDo is "

    aput-object v5, v4, v0

    const/4 v5, 0x1

    if-nez p3, :cond_1

    const-string/jumbo v0, " null "

    :goto_0
    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string/jumbo v5, " conversation is "

    aput-object v5, v4, v0

    const/4 v5, 0x3

    if-nez p2, :cond_2

    const-string/jumbo v0, " null "

    :goto_1
    aput-object v0, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_2
    return-void

    .line 195
    :cond_1
    const-string/jumbo v0, " not null"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, " not null"

    goto :goto_1

    .line 198
    :cond_3
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v2, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    .line 199
    .local v2, "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    sget v0, Lcaj$f;->repackets_querying:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 201
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$11;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$11;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    const-class v1, Lcma;

    invoke-interface {v7, v0, v1, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcma;

    .line 266
    .local v6, "listener":Lcma;
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v0

    iget-wide v4, p3, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->senderId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v3, p3, Lcom/aliaba/android/dingtalk/redpackets/base/models/LuckyTimeRedPacketsPlanDo;->clusterid:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v6}, Lcbs;->a(Ljava/lang/Long;Ljava/lang/String;Lcma;)V

    goto :goto_2
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "messageBodyDo"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 422
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 423
    :cond_0
    const-string/jumbo v1, "params invalidate"

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 452
    :cond_1
    :goto_0
    return-void

    .line 426
    :cond_2
    if-eqz p3, :cond_1

    .line 428
    invoke-static {}, Lcbw;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 429
    const-string/jumbo v0, "https://qr.dingtalk.com/page/festival_red_packets/pick.html"

    .line 433
    .local v0, "toUrl":Ljava/lang/String;
    :goto_1
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v1, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$14;

    invoke-direct {v2, p0, p2, p3}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$14;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;)V

    invoke-interface {v1, v0, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 431
    .end local v0    # "toUrl":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "https://qr.dingtalk.com/page/red_packets/pick.html"

    .restart local v0    # "toUrl":Ljava/lang/String;
    goto :goto_1
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;JLjava/lang/String;)V
    .locals 14
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "messageBodyDo"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    .param p4, "senderId"    # J
    .param p6, "clusterId"    # Ljava/lang/String;

    .prologue
    .line 493
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 494
    :cond_0
    const-string/jumbo v3, "params invalidate"

    invoke-static {v3}, Lcms;->a(Ljava/lang/String;)V

    .line 564
    :goto_0
    return-void

    .line 497
    :cond_1
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v5, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    .line 498
    .local v5, "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    sget v3, Lcaj$f;->repackets_querying:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 499
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 500
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16;

    move-object v4, p0

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$16;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;JLjava/lang/String;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;)V

    const-class v4, Lcma;

    invoke-interface {v12, v3, v4, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 563
    .local v2, "listener":Lcma;
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v3

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v3, v4, v0, v2}, Lcbs;->a(Ljava/lang/Long;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "messageBodyDo"    # Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;
    .param p4, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 459
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 460
    :cond_0
    const-string/jumbo v0, "params invalidate"

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 489
    :cond_1
    :goto_0
    return-void

    .line 463
    :cond_2
    if-eqz p3, :cond_1

    .line 464
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/page/festival_red_packets/pick.html"

    new-instance v2, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, p3, v3}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$15;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;Lcom/aliaba/android/dingtalk/redpackets/base/models/RedPacketsMessageBodyDo;Landroid/os/Bundle;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;[J)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "receivers"    # [J

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 142
    .line 2148
    const-wide/16 v4, 0x0

    .line 2154
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;[JDLjava/lang/String;ILcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 143
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;[JDLjava/lang/String;ILcom/alibaba/doraemon/navigator/IntentRewriter;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "receivers"    # [J
    .param p4, "moneyDefault"    # D
    .param p6, "cong"    # Ljava/lang/String;
    .param p7, "pageIndex"    # I
    .param p8, "intentRewriter"    # Lcom/alibaba/doraemon/navigator/IntentRewriter;

    .prologue
    .line 161
    invoke-static {p1}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v9

    const-string/jumbo v10, "https://qr.dingtalk.com/page/red_packets/send.html"

    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$8;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$8;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Lcom/alibaba/wukong/im/Conversation;[JDLjava/lang/String;ILcom/alibaba/doraemon/navigator/IntentRewriter;)V

    invoke-interface {v9, v10, v0}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 175
    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversationId"    # Ljava/lang/String;
    .param p4, "cong"    # Ljava/lang/String;
    .param p5, "thirdPartId"    # Ljava/lang/String;
    .param p6, "thirdPartSource"    # Ljava/lang/String;
    .param p7, "extras"    # Ljava/lang/String;
    .param p8, "callbackId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 776
    .local p3, "receivers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object v6, p4

    move-object/from16 v7, p8

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$3;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v9, v0, p2}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;->a:Ljava/lang/String;

    .line 569
    return-void
.end method

.method public final a(Lcma;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 840
    .local p1, "listener":Lcma;, "Lcma<Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;>;"
    invoke-static {}, Lcbg;->a()Lcbg;

    invoke-static {}, Lcbg;->b()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    move-result-object v0

    .line 841
    .local v0, "birthdayRedPacketsEntrance":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->festivalPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 842
    :cond_0
    if-eqz p1, :cond_1

    .line 843
    const-string/jumbo v1, "001"

    const-string/jumbo v2, "unknown error"

    invoke-interface {p1, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_1
    const/4 v1, 0x0

    .line 847
    :goto_0
    return v1

    :cond_2
    invoke-static {}, Lcbg;->a()Lcbg;

    move-result-object v1

    iget-object v2, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->festivalPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcbg;->a(Ljava/lang/String;Lcma;)Z

    move-result v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcma;)Z
    .locals 1
    .param p1, "packageMediaId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcma",
            "<",
            "Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 835
    .local p2, "listener":Lcma;, "Lcma<Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;>;"
    invoke-static {}, Lcbg;->a()Lcbg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcbg;->a(Ljava/lang/String;Lcma;)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    .locals 1

    .prologue
    .line 830
    invoke-static {}, Lcbg;->a()Lcbg;

    invoke-static {}, Lcbg;->c()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 1185
    invoke-static {p1}, Lcbx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 895
    if-nez p1, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;->b:Ljava/util/List;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    sget-object v0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;->b:Ljava/util/List;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->getCurrentUid()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 905
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$4;

    invoke-direct {v5, p0, p1}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$4;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Landroid/app/Activity;)V

    const-class v6, Lcma;

    invoke-interface {v0, v5, v6, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcbs;->a(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcma;)V

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1096
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1122
    :goto_0
    return-void

    .line 1099
    :cond_0
    invoke-static {p1}, Lcbw;->a(Landroid/app/Activity;)V

    .line 1100
    new-instance v0, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$7;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Landroid/app/Activity;Lcom/alibaba/wukong/Callback;)V

    .line 1120
    .local v0, "listener":Lcma;
    const-class v1, Lcma;

    invoke-static {v0, v1, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcma;
    check-cast v0, Lcma;

    .line 1121
    .restart local v0    # "listener":Lcma;
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcbs;->a(Lcma;)V

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;JLjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "senderId"    # J
    .param p5, "clusterId"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;

    .prologue
    .line 338
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {v5, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;-><init>(Landroid/content/Context;)V

    .line 339
    .local v5, "progressDialog":Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;
    sget v3, Lcaj$f;->repackets_querying:I

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 340
    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 341
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$13;

    move-object v4, p0

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object v9, p1

    move-object v10, p2

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl$13;-><init>(Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;JLjava/lang/String;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    const-class v4, Lcma;

    invoke-interface {v12, v3, v4, p1}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 417
    .local v2, "listener":Lcma;
    invoke-static {}, Lcbs;->a()Lcbs;

    move-result-object v3

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v0, v2}, Lcbs;->a(Ljava/lang/Long;Ljava/lang/String;Lcma;)V

    .line 418
    return-void
.end method

.method public final b(Lcma;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 853
    .local p1, "listener":Lcma;, "Lcma<Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;>;"
    invoke-static {}, Lcbg;->a()Lcbg;

    invoke-static {}, Lcbg;->c()Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;

    move-result-object v0

    .line 854
    .local v0, "festivalRedPacketsEntrance":Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->festivalPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 855
    :cond_0
    if-eqz p1, :cond_1

    .line 856
    const-string/jumbo v1, "001"

    const-string/jumbo v2, "unknown error"

    invoke-interface {p1, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    :cond_1
    const/4 v1, 0x0

    .line 860
    :goto_0
    return v1

    :cond_2
    invoke-static {}, Lcbg;->a()Lcbg;

    move-result-object v1

    iget-object v2, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsEntrance;->festivalPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcbg;->a(Ljava/lang/String;Lcma;)Z

    move-result v1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "encryptedCid"    # Ljava/lang/String;

    .prologue
    .line 1190
    invoke-static {p1}, Lcbx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/dingtalk/redpackets/RedPacketsInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1165
    return-void
.end method

.method public final c()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1178
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v0, v1, :cond_0

    .line 1179
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    const-string/jumbo v1, "im_ding_pay_enable"

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1180
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->P()Z

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

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "dingtalk://dingtalkclient/action/open_mini_app?miniAppId=2018092561515364&page=pages%2Fhome%2Fhome%3Fcid%3D"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&mainTask=true&keepAlive=false&ddMode=push"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 1203
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v2

    const-string/jumbo v3, "f_wallet_name_downgrade_enable"

    invoke-virtual {v2, v3, v1}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 1204
    .local v0, "isWalletFeatureEnable":Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const-string/jumbo v3, "im"

    const-string/jumbo v4, "pay_wallet_name_downgrade"

    invoke-virtual {v2, v3, v4, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public init(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 826
    return-void
.end method

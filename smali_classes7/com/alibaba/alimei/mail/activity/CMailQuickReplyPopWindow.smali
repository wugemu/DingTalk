.class public Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;
.super Landroid/support/v4/app/DialogFragment;
.source "CMailQuickReplyPopWindow.java"

# interfaces
.implements Laee;
.implements Laef;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$b;,
        Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;,
        Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$a;,
        Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$d;
    }
.end annotation


# static fields
.field private static F:I

.field private static G:I


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Lrz;

.field a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$a;

.field b:Lcom/alibaba/wukong/im/Conversation;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/ListView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/EditText;

.field private m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private n:Landroid/widget/Button;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;

.field private s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

.field private t:Laej;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

.field private x:Z

.field private y:Z

.field private z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const/16 v0, 0x64

    sput v0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->F:I

    .line 122
    const/16 v0, 0xc8

    sput v0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->G:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 101
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->x:Z

    .line 102
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->y:Z

    .line 104
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$d;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->z:Landroid/os/Handler;

    .line 106
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$a;

    .line 108
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 110
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->A:I

    .line 113
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->B:Z

    .line 115
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->C:Z

    .line 117
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->D:Z

    .line 119
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->E:Lrz;

    .line 809
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->F:I

    return v0
.end method

.method public static a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/MailDetailModel;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;
    .locals 3
    .param p0, "mailId"    # Ljava/lang/String;
    .param p1, "mail"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "initText"    # Ljava/lang/String;
    .param p4, "replyMode"    # I
    .param p5, "keyboardShow"    # Z

    .prologue
    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "mailId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v2, "mail"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    const-string/jumbo v2, "accountName"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v2, "initText"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string/jumbo v2, "replyMode"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const-string/jumbo v2, "keyboardShow"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    invoke-direct {v1}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;-><init>()V

    .line 138
    .local v1, "fragment":Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->setArguments(Landroid/os/Bundle;)V

    .line 139
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    return-object v0
.end method

.method private a(I)V
    .locals 6
    .param p1, "mode"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 11274
    const-string/jumbo v0, "mail_quickreply_switch"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 484
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->C:Z

    .line 486
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a()V

    .line 488
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    .line 12072
    iget-object v2, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a:Ljava/lang/String;

    .line 489
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->b:Lcom/alibaba/wukong/im/Conversation;

    const/4 v5, 0x0

    move v3, p1

    .line 488
    invoke-static/range {v0 .. v5}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/alibaba/wukong/im/Conversation;Lcma;)V

    .line 491
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->dismiss()V

    .line 492
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;
    .param p1, "x1"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 68
    .line 15602
    const/16 v0, 0xc8

    if-le p1, v0, :cond_3

    .line 15603
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->x:Z

    .line 15605
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxo$i;->icon_watchpost:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 15607
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setFocusable(Z)V

    .line 15608
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setFocusableInTouchMode(Z)V

    .line 15610
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->q:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 15611
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->q:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15614
    :cond_0
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->A:I

    if-ge p1, v0, :cond_1

    .line 15615
    iget p1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->A:I

    .line 15618
    .end local p1    # "x1":I
    :cond_1
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->A:I

    if-eq v0, p1, :cond_2

    .line 15619
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->A:I

    .line 15621
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "quick_reply_keyboard_height"

    iget v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->A:I

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 15623
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->A:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 15626
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->d:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15627
    :cond_2
    :goto_0
    return-void

    .line 15628
    .restart local p1    # "x1":I
    :cond_3
    if-nez p1, :cond_2

    .line 15629
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->x:Z

    .line 15631
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setFocusable(Z)V

    .line 15632
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setFocusableInTouchMode(Z)V

    .line 15634
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxo$i;->icon_chat_switch_to_keyboard:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 792
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 793
    .local v0, "nameField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 794
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 795
    return-void
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->G:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;I)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;
    .param p1, "x1"    # I

    .prologue
    .line 68
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 584
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->E:Lrz;

    invoke-virtual {v0}, Lrz;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->E:Lrz;

    .line 13041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lrz;->a:J

    .line 589
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->x:Z

    if-nez v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 594
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->l:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 597
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->x:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->x:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 690
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->n:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 699
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->n:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 13262
    const-string/jumbo v1, "mail_quickreply_send"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 675
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 13266
    const-string/jumbo v1, "mail_quickreply_custom"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "currentText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 682
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    .line 13398
    iget-object v1, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v1, :cond_6

    .line 13402
    iget-object v1, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 14185
    new-instance v3, Lagz;

    invoke-direct {v3}, Lagz;-><init>()V

    .line 14186
    iput-boolean v8, v3, Lagz;->y:Z

    .line 14187
    iput-boolean v8, v3, Lagz;->n:Z

    .line 14188
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getId()J

    move-result-wide v4

    iput-wide v4, v3, Lagz;->k:J

    .line 14190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->j:Landroid/content/Context;

    sget v6, Laxo$i;->message_re:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->subject:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lagz;->g:Ljava/lang/String;

    .line 14199
    iget-object v4, v3, Lagz;->d:Ljava/util/List;

    if-nez v4, :cond_1

    .line 14200
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lagz;->d:Ljava/util/List;

    .line 14202
    :cond_1
    iget-object v4, v3, Lagz;->e:Ljava/util/List;

    if-nez v4, :cond_2

    .line 14203
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lagz;->e:Ljava/util/List;

    .line 14205
    :cond_2
    iget-object v4, v3, Lagz;->f:Ljava/util/List;

    if-nez v4, :cond_3

    .line 14206
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lagz;->f:Ljava/util/List;

    .line 14209
    :cond_3
    if-eqz v1, :cond_a

    .line 14210
    iget-object v4, v3, Lagz;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 14211
    iget-object v4, v3, Lagz;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 14213
    iget v4, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->f:I

    if-ne v4, v8, :cond_8

    .line 14214
    iget-object v4, v3, Lagz;->d:Ljava/util/List;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getFrom()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13404
    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    .line 13406
    invoke-virtual {v3}, Lagz;->a()Z

    move-result v1

    if-nez v1, :cond_b

    .line 13407
    :cond_5
    iget-object v1, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->j:Landroid/content/Context;

    sget v2, Laxo$i;->message_compose_error_no_recipients:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 13408
    const-string/jumbo v1, "MailQuickReplyImpl"

    const-string/jumbo v2, "message_compose_error_no_recipients"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->dismiss()V

    .line 686
    :cond_7
    return-void

    .line 14215
    :cond_8
    iget v4, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->f:I

    if-ne v4, v9, :cond_4

    .line 14216
    iget-object v4, v3, Lagz;->d:Ljava/util/List;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getFrom()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14217
    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getTo()Ljava/util/List;

    move-result-object v4

    .line 14218
    if-eqz v4, :cond_9

    .line 14219
    iget-object v5, v3, Lagz;->d:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14221
    :cond_9
    iget-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 14222
    iget-object v4, v3, Lagz;->e:Ljava/util/List;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 14226
    :cond_a
    const-string/jumbo v1, "MailQuickReplyImpl"

    const-string/jumbo v4, "sourceMail is null, error!!!"

    invoke-static {v1, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13413
    :cond_b
    iget-object v1, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    .line 13414
    :goto_2
    invoke-static {v1, v3}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a(Ljava/util/List;Lagz;)V

    .line 14439
    invoke-static {}, Lacq;->a()Z

    move-result v1

    if-nez v1, :cond_d

    .line 14440
    iget-object v1, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->c:Ljava/lang/String;

    invoke-static {v1}, Laca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14442
    new-array v4, v11, [Ljava/lang/String;

    iget-object v5, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a:Ljava/lang/String;

    aput-object v5, v4, v10

    const-string/jumbo v5, "\n\n\n\n"

    aput-object v5, v4, v8

    aput-object v1, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lagz;->h:Ljava/lang/String;

    .line 14443
    new-array v4, v12, [Ljava/lang/String;

    const-string/jumbo v5, "<p>"

    aput-object v5, v4, v10

    iget-object v5, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string/jumbo v5, "</p><br /><br /><br /><br />"

    aput-object v5, v4, v9

    aput-object v1, v4, v11

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lagz;->i:Ljava/lang/String;

    .line 13418
    :goto_3
    iget-object v1, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->c:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/alibaba/alimei/sdk/api/MailApi;->sendMail(Lagz;)V

    goto :goto_1

    .line 13413
    :cond_c
    iget-object v1, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->attachments:Ljava/util/List;

    goto :goto_2

    .line 14447
    :cond_d
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v1

    iget-object v4, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lacr;->b(Ljava/lang/String;)Laca;

    move-result-object v1

    .line 14448
    if-nez v1, :cond_e

    .line 14449
    const-string/jumbo v1, "MailQuickReplyImpl"

    const-string/jumbo v4, "signature == null"

    invoke-static {v1, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 14453
    :cond_e
    invoke-virtual {v1}, Laca;->b()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 14454
    iget-object v4, v1, Laca;->t:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 14455
    const-string/jumbo v1, "MailQuickReplyImpl"

    const-string/jumbo v4, "signature.content isEmpty"

    invoke-static {v1, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 14459
    :cond_f
    invoke-virtual {v1}, Laca;->d()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 14460
    iget-object v4, v1, Laca;->v:Ljava/lang/String;

    .line 14461
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 14462
    iget-object v1, v1, Laca;->t:Ljava/lang/String;

    .line 14480
    :goto_4
    const-string/jumbo v4, "\n"

    const-string/jumbo v5, "<br>"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 14481
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "<div class="

    aput-object v6, v5, v10

    iget-object v6, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->c:Ljava/lang/String;

    invoke-static {v6}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, " >"

    aput-object v6, v5, v9

    aput-object v4, v5, v11

    const-string/jumbo v4, "</div>"

    aput-object v4, v5, v12

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 14483
    new-array v5, v11, [Ljava/lang/String;

    iget-object v6, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a:Ljava/lang/String;

    aput-object v6, v5, v10

    const-string/jumbo v6, "\n\n\n\n"

    aput-object v6, v5, v8

    aput-object v1, v5, v9

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lagz;->h:Ljava/lang/String;

    .line 14484
    new-array v1, v12, [Ljava/lang/String;

    const-string/jumbo v5, "<p>"

    aput-object v5, v1, v10

    iget-object v5, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a:Ljava/lang/String;

    const-string/jumbo v6, "\n"

    const-string/jumbo v7, "<br/>"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    const-string/jumbo v5, "</p><br /><br /><br /><br />"

    aput-object v5, v1, v9

    aput-object v4, v1, v11

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lagz;->i:Ljava/lang/String;

    goto/16 :goto_3

    .line 14464
    :cond_10
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 14465
    iget-object v6, v1, Laca;->t:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 14466
    iget-object v1, v1, Laca;->t:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 14467
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    .line 14468
    if-ltz v1, :cond_11

    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v6

    if-ge v1, v6, :cond_11

    if-lt v4, v1, :cond_11

    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v6

    if-ge v4, v6, :cond_11

    .line 14469
    iget-object v6, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->j:Landroid/content/Context;

    sget v7, Laxo$i;->dt_mail_sign_disclaimer_content:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v4, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->replace(IILjava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 14471
    :cond_11
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 14474
    :cond_12
    iget-object v1, v1, Laca;->t:Ljava/lang/String;

    goto/16 :goto_4

    .line 14477
    :cond_13
    iget-object v1, v1, Laca;->j:Ljava/lang/String;

    goto/16 :goto_4
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->n:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)Laej;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->t:Laej;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    .prologue
    .line 68
    .line 15712
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->d()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "recipientText"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, "expressions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->r:Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->r:Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;->a(Ljava/util/List;)V

    .line 441
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 424
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->l:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->l:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 428
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->c(Ljava/lang/String;)V

    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->n:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 434
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lacg;->a(Landroid/app/Activity;)V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->n:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getId()I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Laxo$f;->sendBtn_layout:I

    if-ne v2, v3, :cond_3

    .line 453
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->B:Z

    if-nez v1, :cond_0

    .line 454
    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->B:Z

    .line 455
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->d()V

    goto :goto_0

    .line 460
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 461
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->c()V

    goto :goto_0

    .line 462
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->g:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getId()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 8258
    :cond_5
    const-string/jumbo v2, "mail_quickreply_choose"

    invoke-static {v2}, Lafe;->a(Ljava/lang/String;)V

    .line 7498
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7502
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7504
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    .line 8433
    iget-boolean v4, v4, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->g:Z

    .line 7504
    if-eqz v4, :cond_6

    .line 7505
    new-instance v4, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Laxo$i;->reply_all_action:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    .line 9082
    iget-object v6, v6, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->i:Ljava/lang/String;

    .line 7505
    invoke-direct {v4, p0, v5, v6, v1}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7507
    :cond_6
    new-instance v4, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Laxo$i;->reply_action:I

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    .line 10077
    iget-object v6, v6, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->h:Ljava/lang/String;

    .line 7507
    invoke-direct {v4, p0, v5, v6, v1}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7508
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget v5, Laxo$i;->forward_action:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, p0, v4, v5, v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$c;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7510
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 7512
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$4;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, p0, v4, v3, v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$4;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;Landroid/content/Context;Ljava/util/List;Landroid/view/LayoutInflater;)V

    .line 7548
    new-instance v0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$5;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)V

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 7578
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    goto/16 :goto_0

    .line 466
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getId()I

    move-result v3

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->k:Landroid/view/View;

    if-ne p1, v2, :cond_b

    .line 468
    :cond_8
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    .line 10428
    iget v2, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->f:I

    if-eq v2, v0, :cond_9

    move v1, v0

    .line 468
    :cond_9
    if-eqz v1, :cond_a

    const/4 v0, 0x2

    :cond_a
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a(I)V

    goto/16 :goto_0

    .line 469
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxo$f;->expressionWrapView:I

    if-eq v0, v1, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->dismiss()V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 211
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 212
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 213
    sget v1, Laxo$g;->quick_reply_layout:I

    invoke-virtual {p1, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 218
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 379
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->l:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "currentText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, "pref_key_quick_reply_keyboard_status"

    iget-boolean v4, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->x:Z

    invoke-static {v2, v3, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 386
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->B:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->C:Z

    if-nez v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    if-eqz v2, :cond_0

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 389
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a()V

    .line 396
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    if-eqz v2, :cond_1

    .line 397
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    .line 7063
    iput-object v5, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->b:Laef;

    .line 400
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->t:Laej;

    invoke-virtual {v2}, Laej;->d()V

    .line 402
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->t:Laej;

    .line 7066
    iput-object v5, v2, Laej;->b:Laee;

    .line 403
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->t:Laej;

    .line 7070
    iput-object v5, v2, Laej;->d:Landroid/content/Context;

    .line 405
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    if-nez v2, :cond_5

    const/4 v1, 0x1

    .line 406
    .local v1, "replyMode":I
    :goto_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$a;

    if-eqz v2, :cond_3

    .line 407
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->B:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->C:Z

    if-eqz v2, :cond_6

    .line 408
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$a;

    invoke-interface {v2, v5, v1}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$a;->a(Ljava/lang/String;I)V

    .line 414
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 415
    return-void

    .line 391
    .end local v1    # "replyMode":I
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_5
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    .line 7423
    iget v1, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->f:I

    goto :goto_1

    .line 410
    .restart local v1    # "replyMode":I
    :cond_6
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a:Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$a;

    invoke-interface {v2, v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$a;->a(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
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
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 717
    add-int/lit8 v0, p3, 0x1

    .line 15278
    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v2, "mail_quickreply_"

    aput-object v2, v1, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15279
    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 719
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->c()V

    .line 721
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    .line 15357
    iget-object v0, v1, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->e:Laek;

    if-eqz v0, :cond_0

    .line 15358
    iget-object v0, v1, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->e:Laek;

    invoke-interface {v0}, Laek;->c()Ljava/util/List;

    move-result-object v0

    .line 15360
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_0

    if-ltz p3, :cond_0

    .line 15361
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15363
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->b()Z

    move-result v2

    .line 15365
    if-eqz v2, :cond_1

    .line 15366
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 15368
    :cond_1
    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, v1, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 728
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;

    .line 729
    .local v1, "tag":Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;
    if-nez v1, :cond_0

    .line 730
    const/4 v2, 0x0

    .line 753
    :goto_0
    return v2

    .line 733
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 734
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v2, v1, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 736
    sget v2, Laxo$b;->alm_cmail_long_click0:I

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$8;

    invoke-direct {v3, p0, v1, v0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$8;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter$a;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 751
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 753
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onStart()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 144
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 146
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 147
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 148
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 149
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 150
    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 151
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 152
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->v:Ljava/lang/String;

    invoke-static {v2}, Laej;->a(Ljava/lang/String;)Laej;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->t:Laej;

    .line 155
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->t:Laej;

    .line 2066
    iput-object p0, v2, Laej;->b:Laee;

    .line 156
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->t:Laej;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 2070
    iput-object v3, v2, Laej;->d:Landroid/content/Context;

    .line 158
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->t:Laej;

    .line 3067
    iput-object v3, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->e:Laek;

    .line 161
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->w:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->v:Ljava/lang/String;

    .line 3092
    iput-object v5, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->c:Ljava/lang/String;

    .line 3094
    if-eqz v4, :cond_4

    .line 3095
    iput-object v4, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->d:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 3097
    invoke-virtual {v2, v4, v7}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a(Lcom/alibaba/alimei/sdk/model/MailDetailModel;Z)V

    .line 164
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->r:Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->r:Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->t:Laej;

    .line 4036
    iput-object v3, v2, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;->a:Laek;

    .line 4038
    iget-object v3, v2, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;->a:Laek;

    if-eqz v3, :cond_1

    .line 4039
    iget-object v2, v2, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;->a:Laek;

    invoke-interface {v2}, Laek;->a()V

    .line 4640
    :cond_1
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->y:Z

    if-nez v2, :cond_2

    .line 4644
    const-string/jumbo v2, "pref_key_mail_has_show_expression_guide"

    invoke-static {v2, v6}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 4645
    iput-boolean v7, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->y:Z

    .line 4646
    if-nez v2, :cond_2

    .line 4647
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->q:Landroid/view/View;

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$6;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$6;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4655
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->q:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4656
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->q:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$7;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$7;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->l:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 172
    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->D:Z

    if-eqz v2, :cond_3

    .line 173
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->l:Landroid/widget/EditText;

    .line 5034
    if-eqz v2, :cond_3

    .line 5036
    new-instance v3, Lsr$1;

    invoke-direct {v3, v2}, Lsr$1;-><init>(Landroid/view/View;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    :cond_3
    return-void

    .line 3099
    :cond_4
    iget-object v4, v2, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->c:Ljava/lang/String;

    invoke-static {v4}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v4

    new-instance v5, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl$1;

    invoke-direct {v5, v2}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl$1;-><init>(Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;)V

    invoke-interface {v4, v3, v6, v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetail(Ljava/lang/String;ZLxv;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 179
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 181
    sget v3, Laxo$f;->expressionWrapView:I

    invoke-static {p1, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->c:Landroid/widget/LinearLayout;

    .line 182
    sget v3, Laxo$f;->expressionListView:I

    invoke-static {p1, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->d:Landroid/widget/ListView;

    .line 184
    sget v3, Laxo$f;->recipientsView:I

    invoke-static {p1, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->i:Landroid/widget/TextView;

    .line 185
    sget v3, Laxo$f;->zoomOutIcon:I

    invoke-static {p1, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 186
    sget v3, Laxo$f;->zoom_out_layout:I

    invoke-static {p1, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->k:Landroid/view/View;

    .line 187
    sget v3, Laxo$f;->messageView:I

    invoke-static {p1, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->l:Landroid/widget/EditText;

    .line 188
    sget v3, Laxo$f;->toggleIcon:I

    invoke-static {p1, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 189
    sget v3, Laxo$f;->sendBtn:I

    invoke-static {p1, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->n:Landroid/widget/Button;

    .line 190
    sget v3, Laxo$f;->sendBtn_layout:I

    invoke-static {p1, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->o:Landroid/view/View;

    .line 191
    sget v3, Laxo$f;->replyIcon:I

    invoke-static {p1, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->g:Landroid/widget/TextView;

    .line 192
    sget v3, Laxo$f;->reply_icon_btn:I

    invoke-static {p1, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 194
    sget v3, Laxo$f;->delete_expression_guide:I

    invoke-static {p1, v3}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->q:Landroid/view/View;

    .line 198
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget v4, Laxo$g;->common_expression_footer_layout:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->e:Landroid/widget/LinearLayout;

    .line 199
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->e:Landroid/widget/LinearLayout;

    sget v4, Laxo$f;->addExpressionIcon:I

    invoke-static {v3, v4}, Lss;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->f:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 5222
    new-instance v3, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    .line 5223
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 5224
    const-string/jumbo v3, "mailId"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->u:Ljava/lang/String;

    .line 5225
    const-string/jumbo v3, "mail"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->w:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 5226
    const-string/jumbo v3, "accountName"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->v:Ljava/lang/String;

    .line 5228
    const-string/jumbo v3, "initText"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5246
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 5247
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->l:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5249
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->D:Z

    .line 5231
    :goto_0
    const-string/jumbo v3, "replyMode"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 5256
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    if-eqz v5, :cond_0

    .line 5257
    iget-object v5, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    invoke-virtual {v5, v3}, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->a(I)V

    .line 5260
    :cond_0
    if-ne v3, v1, :cond_4

    .line 5261
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->i:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 5262
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->g:Landroid/widget/TextView;

    sget v5, Laxo$i;->reply_action:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 5263
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->n:Landroid/widget/Button;

    sget v5, Laxo$i;->reply_action:I

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 5234
    :cond_1
    :goto_1
    const-string/jumbo v3, "keyboardShow"

    invoke-virtual {v4, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->D:Z

    .line 5281
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->s:Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;

    .line 6063
    iput-object p0, v3, Lcom/alibaba/alimei/mail/present/MailQuickReplyImpl;->b:Laef;

    .line 5283
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setRotation(F)V

    .line 5285
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->d:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 5287
    new-instance v3, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->r:Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;

    .line 5288
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->d:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->r:Lcom/alibaba/alimei/mail/adapter/ReplyExpressionsAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5290
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->d:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setLongClickable(Z)V

    .line 5291
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->d:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 5292
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->d:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 5294
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5295
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->n:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5296
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->o:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5297
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5298
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->g:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5299
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5300
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5301
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->k:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5302
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5304
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string/jumbo v4, "quick_reply_keyboard_height"

    invoke-static {v3, v4}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 5305
    const/16 v4, 0x64

    if-le v3, v4, :cond_2

    .line 5306
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5309
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->d:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5312
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->l:Landroid/widget/EditText;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$1;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5335
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->l:Landroid/widget/EditText;

    new-instance v4, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$2;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$2;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 5345
    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$3;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow$3;-><init>(Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;)V

    .line 5363
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->p:Landroid/view/View;

    .line 5364
    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->p:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6368
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 6370
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 6371
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 6372
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 205
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 206
    return-void

    .line 5251
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_3
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->n:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 5264
    :cond_4
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 5265
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->i:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 5266
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->g:Landroid/widget/TextView;

    sget v5, Laxo$i;->reply_all_action:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 5267
    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->n:Landroid/widget/Button;

    sget v5, Laxo$i;->reply_all_action:I

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1
.end method

.method public show(Lcn;Ljava/lang/String;)V
    .locals 3
    .param p1, "manager"    # Lcn;
    .param p2, "tag"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 781
    :try_start_0
    const-string/jumbo v1, "mDismissed"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a(Ljava/lang/String;Z)V

    .line 782
    const-string/jumbo v1, "mShownByMe"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/alibaba/alimei/mail/activity/CMailQuickReplyPopWindow;->a(Ljava/lang/String;Z)V

    .line 783
    invoke-virtual {p1}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 784
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 785
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    return-void

    .line 787
    :catch_0
    move-exception v1

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->show(Lcn;Ljava/lang/String;)V

    goto :goto_0
.end method

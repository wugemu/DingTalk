.class public Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
.super Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
.source "MailComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/activity/MailComposeActivity$a;
    }
.end annotation


# static fields
.field private static final B:[Ljava/lang/String;

.field private static final C:[Ljava/lang/String;

.field protected static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;


# instance fields
.field private A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private D:Landroid/net/Uri;

.field private E:Landroid/net/Uri;

.field f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

.field g:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

.field private h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private j:Landroid/view/View;

.field private k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lrz;

.field private w:Lajo;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    const-class v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "from_album_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "from_video_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->c:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "from_space"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->d:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "from_filepicker"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->e:Ljava/lang/String;

    .line 670
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->B:[Ljava/lang/String;

    .line 671
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;-><init>()V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->u:Ljava/util/List;

    .line 138
    new-instance v0, Lrz;

    invoke-direct {v0}, Lrz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->v:Lrz;

    .line 402
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$12;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->g:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    .line 743
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->x:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 689
    packed-switch p1, :pswitch_data_0

    .line 695
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->C:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a(I[Ljava/lang/String;)V

    .line 699
    :goto_0
    return-void

    .line 691
    :pswitch_0
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->B:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a(I[Ljava/lang/String;)V

    goto :goto_0

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private a(I[Ljava/lang/String;)V
    .locals 4
    .param p1, "which"    # I
    .param p2, "permission"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 702
    invoke-static {p0, p2}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 703
    if-nez p1, :cond_0

    .line 704
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->h()V

    .line 741
    :goto_0
    return-void

    .line 705
    :cond_0
    if-ne v3, p1, :cond_1

    .line 706
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->i()V

    goto :goto_0

    .line 708
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->j()V

    goto :goto_0

    .line 710
    :cond_2
    invoke-static {p0, p2}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 712
    if-nez p1, :cond_3

    .line 713
    const/16 v0, 0x2710

    .line 719
    .local v0, "reqCode":I
    :goto_1
    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;[Ljava/lang/String;IB)V

    invoke-static {p0, p2, v1}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;Lbyx;)V

    goto :goto_0

    .line 714
    .end local v0    # "reqCode":I
    :cond_3
    if-ne v3, p1, :cond_4

    .line 715
    const/16 v0, 0x2711

    .restart local v0    # "reqCode":I
    goto :goto_1

    .line 717
    .end local v0    # "reqCode":I
    :cond_4
    const/16 v0, 0x2712

    .restart local v0    # "reqCode":I
    goto :goto_1

    .line 721
    .end local v0    # "reqCode":I
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_8

    .line 723
    if-nez p1, :cond_6

    .line 724
    const/16 v0, 0x2710

    .line 730
    .restart local v0    # "reqCode":I
    :goto_2
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 725
    .end local v0    # "reqCode":I
    :cond_6
    if-ne v3, p1, :cond_7

    .line 726
    const/16 v0, 0x2711

    .restart local v0    # "reqCode":I
    goto :goto_2

    .line 728
    .end local v0    # "reqCode":I
    :cond_7
    const/16 v0, 0x2712

    .restart local v0    # "reqCode":I
    goto :goto_2

    .line 732
    .end local v0    # "reqCode":I
    :cond_8
    if-nez p1, :cond_9

    .line 733
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->h()V

    goto :goto_0

    .line 734
    :cond_9
    if-ne v3, p1, :cond_a

    .line 735
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->i()V

    goto :goto_0

    .line 737
    :cond_a
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->j()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Landroid/view/View;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 106
    .line 22507
    const-string/jumbo v0, "mail_index_unfold_cick"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 22197
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-nez v0, :cond_0

    .line 22198
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a:Ljava/lang/String;

    const-string/jumbo v1, "showFilterDropdownMenu fail for mFragment is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22199
    :goto_0
    return-void

    .line 22202
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    sget v1, Laxo$i;->icon_act_close:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 22203
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 22205
    new-instance v6, Lsm;

    invoke-direct {v6, p0}, Lsm;-><init>(Landroid/app/Activity;)V

    .line 23236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23238
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 23239
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    .line 23240
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 23243
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23244
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    .line 23246
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 23247
    const/4 v0, -0x1

    invoke-static {v5, v0, v4, v8, v4}, Lafn;->a(IILjava/lang/String;ZLjava/lang/Object;)Lafn;

    move-result-object v3

    .line 23248
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23249
    invoke-static {v4}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 23250
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$7;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Ljava/util/ArrayList;Lafn;Ljava/lang/String;ILsm;)V

    invoke-static {v4, v8, v0}, Lafh;->a(Ljava/lang/String;ZLxv;)V

    .line 23270
    :cond_1
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v8, v1}, Lacr;->a(Ljava/lang/String;ZLcma;)V

    .line 23244
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 23272
    :cond_2
    invoke-virtual {v6, v2}, Lsm;->a(Ljava/util/List;)V

    .line 23273
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lsm;->a(Ljava/lang/String;)V

    .line 22207
    :cond_3
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$5;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V

    .line 24085
    iput-object v0, v6, Lsm;->a:Lafo;

    .line 22220
    sget v0, Laxo$f;->root_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v6, p1, v0}, Lsm;->a(Landroid/view/View;I)V

    .line 22221
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$6;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V

    .line 24485
    iput-object v0, v6, Lso;->j:Lso$a;

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    .line 26241
    invoke-static {p1}, Lacn;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26242
    const/4 v0, 0x1

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$10;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V

    invoke-static {p1, v0, v1}, Lafh;->a(Ljava/lang/String;ZLxv;)V

    .line 106
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 106
    .line 27232
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .line 28209
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28210
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28211
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28212
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28213
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Ljava/lang/String;)V

    .line 29120
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29137
    :cond_0
    :goto_0
    return-void

    .line 29123
    :cond_1
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    invoke-interface {v1}, Lafk;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 29124
    invoke-static {}, Lacq;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 29125
    invoke-static {p1}, Laca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29126
    invoke-static {p2}, Laca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29127
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 29128
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 29129
    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lafk;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 29134
    :cond_2
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29135
    invoke-virtual {v0, p2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29136
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 29142
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 29143
    iget-object v0, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lafk;->setContent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Ljava/util/List;I)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 106
    .line 25151
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 25219
    :cond_0
    :goto_0
    return-void

    .line 25155
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->showLoadingDialog()V

    .line 25156
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$4;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Ljava/util/List;)V

    .line 25173
    invoke-static {}, Laew;->a()Laew;

    move-result-object v1

    .line 25211
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 25215
    invoke-static {p1}, Laew;->b(Ljava/util/List;)Labi;

    move-result-object v2

    .line 25217
    if-nez v2, :cond_2

    .line 25218
    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Laew$a;->a(Ljava/util/List;I)V

    goto :goto_0

    .line 25222
    :cond_2
    new-instance v3, Laew$2;

    invoke-direct {v3, v1, p0, v0, p2}, Laew$2;-><init>(Laew;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Laew$a;I)V

    .line 25246
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v1, Lcma;

    invoke-interface {v0, v3, v1, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 25247
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lro;->a(Labi;Lcma;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->r:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 673
    invoke-static {}, Lacq;->k()Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a(I)V

    .line 686
    :goto_0
    return-void

    .line 676
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 677
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Laxo$b;->mail_camera:I

    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$13;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$13;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 684
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method private b(I)V
    .locals 3
    .param p1, "requestCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1085
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/im/forward.html"

    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$15;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$15;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;I)V

    .line 1086
    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1097
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 106
    .line 26277
    invoke-static {p0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27017
    const-string/jumbo v0, "yyyy/MM/dd HH:mm:ss Z"

    invoke-static {p1, v0}, Lajm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 26283
    if-eqz v0, :cond_0

    .line 26284
    sget v1, Laxo$i;->dt_mail_send_time_format_full:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26285
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->s:Landroid/widget/TextView;

    sget v2, Laxo$i;->dt_mail_send_at:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26286
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->z:Landroid/widget/TextView;

    sget v1, Laxo$i;->dt_mail_timing_send:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 26288
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->s:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$8;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26301
    :cond_0
    :goto_0
    return-void

    .line 26302
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->z:Landroid/widget/TextView;

    sget v1, Laxo$i;->mail_compose_send:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 26303
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->s:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->y:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->l()V

    return-void
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b()V

    return-void
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->m()V

    return-void
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->k()V

    return-void
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->q:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 813
    invoke-static {}, Lacq;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->j()V

    .line 818
    :goto_0
    return-void

    .line 816
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->n()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 821
    invoke-static {}, Lacq;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->j()V

    .line 826
    :goto_0
    return-void

    .line 824
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->o()V

    goto :goto_0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    return-object v0
.end method

.method private j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 829
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 830
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "duration"

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 831
    const-string/jumbo v1, "quality"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 832
    const-string/jumbo v1, "/mail/camera.html"

    const/16 v2, 0x2712

    invoke-virtual {p0, v1, v0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->a(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 833
    return-void
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method private k()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 17779
    const-string/jumbo v1, "mail_space_click"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 869
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v0

    .line 871
    .local v0, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v1

    invoke-virtual {v1}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    sget-object v3, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->d:Ljava/lang/String;

    const-wide/16 v4, 0x0

    move-object v1, p0

    .line 870
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;Ljava/lang/String;J)V

    .line 873
    return-void
.end method

.method private l()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 18775
    const-string/jumbo v2, "mail_photo_click"

    invoke-static {v2}, Lafe;->a(Ljava/lang/String;)V

    .line 878
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 879
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "completed_back_to_target_action"

    sget-object v3, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string/jumbo v2, "send_origin_picture"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 882
    const-string/jumbo v2, "album_choose_num"

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 884
    const-string/jumbo v2, "album_show_video"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 886
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    .line 888
    .local v1, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 889
    return-void
.end method

.method private m()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 18783
    const-string/jumbo v1, "mail_document_click"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 910
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    .line 911
    .local v0, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->e:Ljava/lang/String;

    const/16 v3, 0x1e

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 912
    return-void
.end method

.method private n()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 921
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 922
    .local v1, "i":Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-static {v3}, Lajp;->a(I)Ljava/io/File;

    move-result-object v0

    .line 923
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->D:Landroid/net/Uri;

    .line 924
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->D:Landroid/net/Uri;

    .line 925
    .local v2, "outputUrl":Landroid/net/Uri;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 926
    invoke-static {p0}, Lhcs;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 928
    :cond_0
    const-string/jumbo v3, "output"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 929
    const/high16 v3, 0x80000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 930
    const/16 v3, 0x2710

    invoke-virtual {p0, v1, v3}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 934
    return-void
.end method

.method private o()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1029
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v1, "intent":Landroid/content/Intent;
    const/4 v3, 0x2

    invoke-static {v3}, Lajp;->a(I)Ljava/io/File;

    move-result-object v0

    .line 1032
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->E:Landroid/net/Uri;

    .line 1033
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->E:Landroid/net/Uri;

    .line 1034
    .local v2, "outputUrl":Landroid/net/Uri;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 1035
    invoke-static {p0}, Lhcs;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 1037
    :cond_0
    const-string/jumbo v3, "output"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1038
    const-string/jumbo v3, "android.intent.extra.videoQuality"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1039
    const-string/jumbo v3, "android.intent.extra.durationLimit"

    const/16 v4, 0x1e

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1040
    const/high16 v3, 0x80000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1041
    const/16 v3, 0x2711

    invoke-virtual {p0, v1, v3}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1045
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 1071
    packed-switch p1, :pswitch_data_0

    .line 1081
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1082
    return-void

    .line 18962
    :pswitch_0
    if-ne v0, p2, :cond_1

    .line 18967
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->D:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v0, :cond_1

    .line 18968
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->D:Landroid/net/Uri;

    .line 18969
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    new-array v2, v2, [Landroid/net/Uri;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 19118
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;)V

    .line 18971
    :cond_1
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->D:Landroid/net/Uri;

    goto :goto_0

    .line 20004
    :pswitch_1
    if-ne v0, p2, :cond_2

    .line 20009
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->E:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v0, :cond_2

    .line 20010
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->E:Landroid/net/Uri;

    .line 20011
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    new-array v2, v2, [Landroid/net/Uri;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 20118
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;)V

    .line 20013
    :cond_2
    iput-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->E:Landroid/net/Uri;

    goto :goto_0

    .line 21017
    :pswitch_2
    if-ne v0, p2, :cond_0

    if-eqz p3, :cond_0

    .line 21021
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 21022
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v1, :cond_0

    .line 21023
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    new-array v2, v2, [Landroid/net/Uri;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Ljava/util/List;)V

    goto :goto_0

    .line 1071
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1188
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onAttachedToWindow()V

    .line 1189
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .line 21776
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Z)V

    .line 1192
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 576
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v0, :cond_7

    .line 577
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .line 6920
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i()V

    .line 6922
    iget-object v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueFeedback:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v0, v2, :cond_1

    .line 6923
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l()V

    .line 6924
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 6925
    if-eqz v0, :cond_0

    .line 6926
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 6931
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f()V

    .line 7901
    iget-boolean v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->t:Z

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d:Ljava/util/ArrayList;

    .line 7902
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 6933
    :goto_1
    if-eqz v0, :cond_6

    .line 8721
    iget-object v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    if-eqz v0, :cond_3

    .line 8722
    iget-object v2, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    iget-object v0, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueEditDraft:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v0, v3, :cond_5

    sget v0, Laxo$i;->message_draft_give_out_action:I

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {v2, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->b(Ljava/lang/String;)V

    .line 6935
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l()V

    goto :goto_0

    .line 7902
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 8722
    :cond_5
    sget v0, Laxo$i;->message_draft_delete_action:I

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 6939
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 579
    :cond_7
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 627
    if-nez p1, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->v:Lrz;

    invoke-virtual {v1}, Lrz;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->v:Lrz;

    .line 11041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lrz;->a:J

    .line 637
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 638
    .local v0, "id":I
    sget v1, Laxo$f;->img_attach:I

    if-ne v1, v0, :cond_2

    .line 11836
    new-instance v1, Lsl;

    invoke-direct {v1, p0, v8}, Lsl;-><init>(Landroid/app/Activity;Z)V

    .line 11837
    const/16 v2, 0x1b

    sget v3, Laxo$i;->icon_photo:I

    sget v4, Laxo$i;->dt_cmail_picture_picker:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v2

    .line 11838
    const/16 v3, 0x1e

    sget v4, Laxo$i;->icon_file:I

    sget v5, Laxo$i;->dt_cmail_mobile_local_file:I

    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v3

    .line 11839
    const/16 v4, 0x1c

    sget v5, Laxo$i;->icon_camera:I

    sget v6, Laxo$i;->dt_cmail_take_photo:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v4

    .line 11840
    const/16 v5, 0x3b

    sget v6, Laxo$i;->icon_cspace:I

    sget v7, Laxo$i;->dt_cmail_ding_space:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lafn;->a(IILjava/lang/String;)Lafn;

    move-result-object v5

    .line 11841
    const/4 v6, 0x4

    new-array v6, v6, [Lafn;

    aput-object v4, v6, v9

    aput-object v2, v6, v8

    const/4 v2, 0x2

    aput-object v3, v6, v2

    const/4 v2, 0x3

    aput-object v5, v6, v2

    invoke-virtual {v1, v9, v6}, Lsl;->a(I[Lafn;)V

    .line 11842
    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$14;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$14;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;Lsl;)V

    .line 12109
    iput-object v2, v1, Lsl;->d:Lafo;

    .line 11863
    invoke-virtual {v1}, Lsl;->f()V

    .line 640
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {p0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 641
    :cond_2
    sget v1, Laxo$f;->img_camera:I

    if-ne v1, v0, :cond_3

    .line 642
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b()V

    goto :goto_0

    .line 643
    :cond_3
    sget v1, Laxo$f;->img_file:I

    if-ne v1, v0, :cond_4

    .line 644
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->m()V

    goto/16 :goto_0

    .line 645
    :cond_4
    sget v1, Laxo$f;->img_picture:I

    if-ne v1, v0, :cond_5

    .line 646
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->l()V

    goto/16 :goto_0

    .line 647
    :cond_5
    sget v1, Laxo$f;->img_cspace:I

    if-ne v1, v0, :cond_6

    .line 648
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->k()V

    goto/16 :goto_0

    .line 649
    :cond_6
    sget v1, Laxo$f;->quoted_text_bar:I

    if-ne v1, v0, :cond_7

    .line 12787
    const-string/jumbo v1, "mail_content_spread_click"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 652
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v1, v8}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Z)V

    .line 653
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {p0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    .line 654
    :cond_7
    sget v1, Laxo$f;->img_at:I

    if-ne v1, v0, :cond_8

    .line 13001
    const-string/jumbo v1, "mail_mailcompose_atlist"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 656
    const/16 v1, 0x2714

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b(I)V

    .line 657
    const-string/jumbo v1, "pref_key_mail_has_show_at_gtoup"

    invoke-static {v1, v8}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 658
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->q:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 659
    :cond_8
    sget v1, Laxo$f;->im_top:I

    if-ne v1, v0, :cond_a

    .line 13004
    const-string/jumbo v1, "mail_newmail_backtochat"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .line 13801
    iput-boolean v8, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->E:Z

    .line 13803
    iput-boolean v8, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F:Z

    .line 13804
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f()V

    .line 13805
    iget-object v2, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v2, v2, Lagz;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 13806
    iget-object v2, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    sget v3, Laxo$i;->alm_cmail_mail_no_subject:I

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lagz;->g:Ljava/lang/String;

    .line 13808
    :cond_9
    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j()V

    goto/16 :goto_0

    .line 662
    :cond_a
    sget v1, Laxo$f;->img_setting:I

    if-ne v1, v0, :cond_0

    .line 663
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .line 13814
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 13815
    const-string/jumbo v2, "mail_separated_send"

    iget-object v3, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v3, v3, Lagz;->z:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13816
    const-string/jumbo v2, "mail_emergency"

    iget-object v3, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    invoke-virtual {v3}, Lagz;->e()Z

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13818
    const-wide/16 v2, 0x0

    .line 13819
    iget-object v5, v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v5, v5, Lagz;->A:Ljava/lang/String;

    .line 14017
    const-string/jumbo v6, "yyyy/MM/dd HH:mm:ss Z"

    invoke-static {v5, v6}, Lajm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 13821
    if-eqz v5, :cond_b

    .line 13822
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 13825
    :cond_b
    const-string/jumbo v5, "mail_timing_send"

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 13826
    const-string/jumbo v2, "/page/mail_compose_setting.html"

    .line 14030
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dingtalk://qr.dingtalk.com"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x271a

    .line 14050
    invoke-static {v2, v4, v9}, Lafu;->a(Ljava/lang/String;Landroid/os/Bundle;I)Landroid/content/Intent;

    move-result-object v2

    .line 14051
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 147
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    sget v2, Laxo$g;->activity_mail_compose:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->setContentView(I)V

    .line 150
    sget v2, Laxo$f;->img_camera:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 151
    sget v2, Laxo$f;->img_attach:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 152
    sget v2, Laxo$f;->img_attach_layout:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->j:Landroid/view/View;

    .line 153
    sget v2, Laxo$f;->img_file:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 154
    sget v2, Laxo$f;->img_picture:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 155
    sget v2, Laxo$f;->img_cspace:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 157
    sget v2, Laxo$f;->img_at:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 158
    sget v2, Laxo$f;->im_top:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 159
    sget v2, Laxo$f;->img_setting:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 160
    sget v2, Laxo$f;->ll_at_guide:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->q:Landroid/view/View;

    .line 161
    sget v2, Laxo$f;->quoted_text_bar:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->r:Landroid/view/View;

    .line 162
    sget v2, Laxo$f;->title:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->x:Landroid/widget/TextView;

    .line 163
    sget v2, Laxo$f;->sender:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->y:Landroid/widget/TextView;

    .line 164
    sget v2, Laxo$f;->sender_selecter_icon:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->A:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 165
    sget v2, Laxo$f;->timing_send_tip_tv:I

    invoke-static {p0, v2}, Lss;->a(Landroid/app/Activity;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->s:Landroid/widget/TextView;

    .line 166
    sget v2, Laxo$f;->menu_back:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    sget v2, Laxo$f;->send_mail_button:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->z:Landroid/widget/TextView;

    .line 173
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->z:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$9;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$9;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->h:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->r:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->p:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-static {}, Lacq;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 195
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    invoke-static {}, Lacg;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5119
    const-string/jumbo v2, "pref_key_mail_has_show_at_gtoup"

    invoke-static {v2, v5}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 5120
    if-eqz v2, :cond_2

    .line 5121
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->q:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 201
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 202
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    invoke-static {}, Lacq;->n()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 209
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 210
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->j:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :goto_2
    invoke-static {}, Lacg;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lacq;->l()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 217
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 229
    :goto_3
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 230
    .local v1, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->d()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->m:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 5274
    invoke-static {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Landroid/content/Intent;)Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .line 5275
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->g:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    .line 5562
    iput-object v3, v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    .line 5276
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .line 5566
    iput-object p0, v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    .line 5277
    new-instance v2, Lajo;

    invoke-direct {v2}, Lajo;-><init>()V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->w:Lajo;

    .line 5278
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->w:Lajo;

    iput-object v3, v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->u:Lajo;

    .line 5279
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->getSupportFragmentManager()Lcn;

    move-result-object v2

    invoke-virtual {v2}, Lcn;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 5280
    sget v3, Laxo$f;->content_frame:I

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 5281
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 6285
    new-instance v2, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$11;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->t:Landroid/content/BroadcastReceiver;

    .line 6366
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 6367
    sget-object v3, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6368
    sget-object v3, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6369
    sget-object v3, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6370
    sget-object v3, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6371
    const-string/jumbo v3, "com.workapp.choose.people.from.contact"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6373
    const-string/jumbo v3, "intent_action_forward_pick_data"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6374
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 238
    return-void

    .line 5125
    .end local v1    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->q:Landroid/view/View;

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$2;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5133
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->q:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5134
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->q:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$3;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$3;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto/16 :goto_0

    .line 204
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->o:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 205
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->q:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 212
    :cond_4
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->j:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->i:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 219
    :cond_5
    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->n:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 585
    const/4 v1, 0x1

    sget v2, Laxo$i;->mail_compose_send:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 586
    .local v0, "menuItemSendCancel":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 587
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 611
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->t:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 612
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 614
    :cond_0
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onDestroy()V

    .line 615
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->g:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    .line 616
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .line 617
    .local v0, "fragment":Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    if-eqz v0, :cond_2

    .line 618
    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lajo;)V

    .line 9139
    iget-object v1, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->D:Lyb;

    if-eqz v1, :cond_1

    .line 10085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    .line 9140
    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->D:Lyb;

    invoke-interface {v1, v2}, Lya;->a(Lyb;)V

    .line 9141
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->D:Lyb;

    .line 9143
    :cond_1
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->o:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;

    .line 9144
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->p:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 9145
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->A:Landroid/view/View$OnFocusChangeListener;

    .line 9146
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->z:Landroid/text/TextWatcher;

    .line 9147
    iput-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->y:Landroid/text/TextWatcher;

    .line 621
    :cond_2
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .line 622
    iput-object v3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->w:Lajo;

    .line 623
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 592
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 606
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 594
    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->onBackPressed()V

    .line 595
    const/4 v1, 0x1

    goto :goto_1

    .line 598
    :sswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->f:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 592
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 570
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onPause()V

    .line 571
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {p0, v0}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 572
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 775
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 14780
    packed-switch p1, :pswitch_data_0

    .line 14803
    :goto_0
    return-void

    .line 14782
    :pswitch_0
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->B:[Ljava/lang/String;

    invoke-static {p0, v0, p3}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14783
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->n()V

    goto :goto_0

    .line 14784
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->B:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14785
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->B:[Ljava/lang/String;

    .line 15180
    invoke-static {p0, v0}, Lbzw;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    goto :goto_0

    .line 14787
    :cond_1
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->B:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    goto :goto_0

    .line 14791
    :pswitch_1
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->C:[Ljava/lang/String;

    invoke-static {p0, v0, p3}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14792
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->o()V

    goto :goto_0

    .line 14793
    :cond_2
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->C:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14794
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->C:[Ljava/lang/String;

    .line 16180
    invoke-static {p0, v0}, Lbzw;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    goto :goto_0

    .line 14796
    :cond_3
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->C:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    goto :goto_0

    .line 14800
    :pswitch_2
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->C:[Ljava/lang/String;

    invoke-static {p0, v0, p3}, Lbyy;->a(Landroid/content/Context;[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14801
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->j()V

    goto :goto_0

    .line 14802
    :cond_4
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->C:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->a(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 14803
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->C:[Ljava/lang/String;

    .line 17180
    invoke-static {p0, v0}, Lbzw;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    goto :goto_0

    .line 14805
    :cond_5
    sget-object v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->C:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    goto :goto_0

    .line 14780
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 1178
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onResume()V

    .line 1179
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1183
    invoke-super {p0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->onStop()V

    .line 1184
    return-void
.end method

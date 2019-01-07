.class public Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
.super Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;
.source "MailDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alibaba/alimei/calendar/widget/EventCardView$a;
.implements Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;,
        Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;
    }
.end annotation


# instance fields
.field public A:Lyb;

.field public B:Lxm;

.field public C:Landroid/os/Handler;

.field D:Lafh$a;

.field public E:Lyb;

.field private F:Landroid/view/View;

.field private M:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

.field private N:Landroid/view/View;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Lcom/alibaba/alimei/mail/widget/TagView;

.field private R:Landroid/view/View;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/view/View;

.field private V:Landroid/widget/TextView;

.field private W:Z

.field private X:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private final Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Z

.field public a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

.field private aa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Laes;

.field private ac:Laep;

.field private ad:Z

.field private ae:J

.field private af:Z

.field public b:Landroid/net/Uri;

.field public c:Ljava/lang/String;

.field public d:Landroid/app/Activity;

.field public e:Lsh;

.field public f:Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;

.field public g:Landroid/view/View;

.field public h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

.field public i:Landroid/widget/TextView;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/RelativeLayout;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Landroid/view/ViewStub;

.field public r:Lcom/alibaba/alimei/calendar/widget/EventCardView;

.field public s:Landroid/widget/TextView;

.field public t:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

.field public u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

.field public v:Landroid/view/View;

.field public w:Landroid/widget/Button;

.field public x:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;-><init>()V

    .line 194
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->s:Landroid/widget/TextView;

    .line 195
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->W:Z

    .line 213
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->X:Lfk;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Y:Ljava/util/List;

    .line 218
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Z:Z

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->aa:Ljava/util/Map;

    .line 327
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$12;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$12;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->A:Lyb;

    .line 338
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$19;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$19;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->B:Lxm;

    .line 842
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ad:Z

    .line 1004
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$24;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$24;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    .line 1798
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->E:Lyb;

    .line 2162
    return-void
.end method

.method static synthetic A(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic D(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    const/4 v4, 0x1

    .line 138
    .line 28473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ae:J

    sub-long/2addr v0, v2

    .line 28474
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 28475
    const-string/jumbo v3, "totalTime"

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28476
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 28477
    const-string/jumbo v1, "file_size"

    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Lais;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28479
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v3, "CMail"

    const-string/jumbo v4, "mailDetailRender"

    invoke-static {v1, v3, v4, v0, v2}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 138
    return-void
.end method

.method static synthetic E(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Laes;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ab:Laes;

    return-object v0
.end method

.method static synthetic F(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Laep;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ac:Laep;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/net/Uri;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "fileUri"    # Landroid/net/Uri;

    .prologue
    .line 487
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-direct {v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;-><init>()V

    .line 488
    .local v1, "mailDetailFragment":Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 489
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "mail_eml_url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 490
    const-string/jumbo v2, "account_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 493
    return-object v1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .locals 3
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 477
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-direct {v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;-><init>()V

    .line 478
    .local v1, "mailDetailFragment":Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 479
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "mail_server_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string/jumbo v2, "account_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 483
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    return-object p1
.end method

.method private static a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .locals 4
    .param p0, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 317
    new-instance v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;-><init>()V

    .line 318
    .local v0, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->path:Ljava/lang/String;

    .line 319
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    .line 320
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 321
    .local v1, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->orgId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 322
    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    .line 323
    iget-wide v2, p0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    .line 324
    return-object v0
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visible"    # Z

    .prologue
    .line 2002
    if-nez p0, :cond_0

    .line 2006
    :goto_0
    return-void

    .line 2005
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 138
    .line 28247
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 28248
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iget-object v1, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 138
    .line 27616
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 27618
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->R:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27619
    :goto_0
    return-void

    .line 27622
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d:Landroid/app/Activity;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$8;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/wukong/im/Conversation;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 138
    .line 26637
    invoke-static {p1}, Lajl;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 26638
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 26640
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->R:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26641
    :goto_0
    return-void

    .line 26643
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    .line 26644
    const-string/jumbo v0, "EVENTBUTLER"

    .line 26645
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$9;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/android/dingtalk/userbase/ContactInterface;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d:Landroid/app/Activity;

    .line 26646
    invoke-interface {v0, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 26644
    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->i()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Ljava/lang/String;ZZ)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 138
    .line 29389
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 29392
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 29393
    const-string/jumbo v0, "6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29394
    if-eqz p3, :cond_1

    const/4 v0, 0x4

    :goto_0
    iput v0, v1, Landroid/os/Message;->what:I

    .line 29395
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29396
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    :cond_0
    return-void

    .line 29394
    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 138
    .line 20370
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_1

    .line 20374
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 20375
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 20376
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 20378
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    if-eqz v1, :cond_1

    .line 20379
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iput-object v0, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    .line 20380
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/sdk/model/MailCalendarModel;)V

    .line 21325
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-boolean v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasMailHtmlBodyLoaded:Z

    if-nez v0, :cond_1

    .line 21327
    const-string/jumbo v0, "MailDetailFragment"

    const-string/jumbo v1, "load body after calendar load"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21330
    const-string/jumbo v0, "EVENTBUTLER"

    .line 21331
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$5;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$5;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    const-class v2, Lxv;

    .line 21364
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 21331
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 21365
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetail(Ljava/lang/String;ZLxv;)V

    .line 20382
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Z)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    .line 138
    .line 24930
    sget v0, Laxo$i;->alm_cmail_mail_image_holder:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 24931
    if-eqz p1, :cond_4

    .line 24932
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->X:Lfk;

    invoke-virtual {v0}, Lfk;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 24934
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->X:Lfk;

    invoke-virtual {v0}, Lfk;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v4

    .line 24935
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24936
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 24938
    iget-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 24939
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 24940
    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    add-long/2addr v2, v0

    move-wide v0, v2

    :goto_1
    move-wide v2, v0

    .line 24942
    goto :goto_0

    .line 24944
    :cond_0
    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 24945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25043
    invoke-static {v2, v3}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 24945
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24946
    const/4 v1, 0x1

    .line 24957
    :goto_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$14;

    invoke-direct {v3, p0, v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$14;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;ZLjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void

    :cond_1
    move-object v0, v6

    move v1, v7

    .line 24950
    goto :goto_2

    :cond_2
    move-object v0, v6

    move v1, v7

    .line 24951
    goto :goto_2

    :cond_3
    move-wide v0, v2

    goto :goto_1

    :cond_4
    move-object v0, v6

    move v1, v7

    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(ZZ)V

    return-void
.end method

.method private a(Lcom/alibaba/alimei/sdk/model/MailCalendarModel;)V
    .locals 12
    .param p1, "calendarModel"    # Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v11, 0x16

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1507
    if-eqz p1, :cond_a

    .line 15706
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->r:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->q:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 15707
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->q:Landroid/view/ViewStub;

    sget v3, Laxo$f;->alm_event_panel:I

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 15708
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->q:Landroid/view/ViewStub;

    sget v3, Laxo$g;->cmail_message_detail_head_eventpanel:I

    invoke-virtual {v0, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 15709
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->q:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/calendar/widget/EventCardView;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->r:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    .line 1509
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->r:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->setVisibility(I)V

    .line 1510
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1511
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->r:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    invoke-virtual {v0, p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1512
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->r:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    .line 16150
    if-nez p1, :cond_2

    .line 16152
    const-string/jumbo v0, "EventCardView"

    const-string/jumbo v1, "setMailCalendarModel error for model is null!!!"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16153
    invoke-virtual {v3, v5}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->setVisibility(I)V

    .line 1513
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->r:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    invoke-virtual {v0, p0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->setOnActionListener(Lcom/alibaba/alimei/calendar/widget/EventCardView$a;)V

    .line 1519
    :cond_1
    :goto_1
    return-void

    .line 16157
    :cond_2
    iput-object p1, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->a:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    .line 16158
    iget-wide v6, p1, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->startTime:J

    .line 16159
    iget-wide v8, p1, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->endTime:J

    .line 16161
    invoke-virtual {v3}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 17065
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 17066
    invoke-static {v0, v6, v7, v11}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17067
    invoke-static {v6, v7, v8, v9}, Laiq;->a(JJ)Z

    move-result v10

    if-nez v10, :cond_3

    .line 17068
    const-string/jumbo v10, "-"

    invoke-virtual {v5, v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17069
    invoke-static {v0, v8, v9, v11}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17070
    const-string/jumbo v0, " "

    invoke-virtual {v5, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17072
    :cond_3
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16162
    invoke-virtual {v3}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 17085
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    .line 17086
    invoke-static {v5, v6, v7, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17087
    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17088
    invoke-static {v5, v8, v9, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17089
    const-string/jumbo v5, " "

    invoke-virtual {v10, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17090
    invoke-virtual {v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 16163
    iget-object v10, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->d:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16164
    iget-object v0, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16166
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 16167
    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 16168
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 16169
    invoke-virtual {v3}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Laxo$b;->cmail_months:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 16170
    iget-object v6, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->b:Landroid/widget/TextView;

    iget v7, v0, Landroid/text/format/Time;->month:I

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16171
    iget-object v5, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->c:Landroid/widget/TextView;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16173
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->location:Ljava/lang/String;

    .line 16174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 16175
    invoke-virtual {v3}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v5, Laxo$i;->no_location_label:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 16177
    :cond_4
    iget-object v5, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->g:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16179
    const-string/jumbo v0, "cancel"

    iget-object v5, p1, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->method:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16180
    iget-object v0, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16183
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 16184
    cmp-long v0, v6, v8

    if-lez v0, :cond_8

    move v0, v1

    .line 16186
    :goto_2
    if-nez v0, :cond_6

    invoke-static {v4}, Lafh;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16187
    :cond_6
    iget-object v0, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 16188
    iget-object v0, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 16189
    iget-object v0, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 16191
    :cond_7
    iget-object v0, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->a:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget v0, v0, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->eventStatus:I

    .line 17242
    packed-switch v0, :pswitch_data_0

    .line 16193
    :goto_3
    :pswitch_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16194
    const-string/jumbo v0, "EventCardView"

    const-string/jumbo v1, "setMailCalendarModel fail for accountName is empty"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 16184
    goto :goto_2

    .line 17244
    :pswitch_1
    iget-object v0, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$e;->cmail_event_accept_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17245
    iget-object v0, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->cmail_white_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 17248
    :pswitch_2
    iget-object v0, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$e;->cmail_event_tentative_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17249
    iget-object v0, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->cmail_white_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 17252
    :pswitch_3
    iget-object v0, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->j:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$e;->cmail_event_decline_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17253
    iget-object v0, v3, Lcom/alibaba/alimei/calendar/widget/EventCardView;->j:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->cmail_white_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 16198
    :cond_9
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->organizerEmail:Ljava/lang/String;

    .line 16200
    new-instance v1, Lcom/alibaba/alimei/calendar/widget/EventCardView$1;

    invoke-direct {v1, v3, v0}, Lcom/alibaba/alimei/calendar/widget/EventCardView$1;-><init>(Lcom/alibaba/alimei/calendar/widget/EventCardView;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lafh;->a(Ljava/lang/String;Lxv;)V

    goto/16 :goto_0

    .line 1515
    :cond_a
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->r:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    if-eqz v0, :cond_1

    .line 1516
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->r:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    invoke-virtual {v0, v5}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->setVisibility(I)V

    goto/16 :goto_1

    .line 17242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;)V
    .locals 4
    .param p1, "data"    # Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1744
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1745
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1746
    if-eqz p1, :cond_1

    .line 1747
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lrx;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;)Ljava/lang/String;

    move-result-object v1

    .line 1748
    .local v1, "unreadText":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1753
    .end local v1    # "unreadText":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1750
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->n:Landroid/widget/TextView;

    sget v3, Laxo$i;->and_mail_detail_recipient_status:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 1
    .param p1, "showProgressWhenHidden"    # Z
    .param p2, "showErrorView"    # Z

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->v:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;Z)V

    .line 1986
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->w:Landroid/widget/Button;

    invoke-static {v0, p2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;Z)V

    .line 1987
    if-eqz p2, :cond_0

    .line 1989
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->i()V

    .line 1991
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Z
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 138
    .line 25247
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->isRpcBusinessError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getRpcResultCode()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    .line 25248
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 25250
    :cond_0
    const/4 v0, 0x0

    .line 138
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->k()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->W:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->w:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->v:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v9, 0x0

    .line 797
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getFrom()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v6

    if-nez v6, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "accountName":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getFrom()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v5

    .line 804
    .local v5, "sender":Lcom/alibaba/alimei/sdk/model/AddressModel;
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->M:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    iget-object v7, v5, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iget-object v8, v5, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 806
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v6

    iget-object v7, v5, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lafc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 808
    .local v4, "isSameOrg":Z
    if-eqz v4, :cond_7

    .line 809
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v2, "allReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 811
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 814
    :cond_2
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    if-eqz v6, :cond_3

    .line 815
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 818
    :cond_3
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->bcc:Ljava/util/List;

    if-eqz v6, :cond_4

    .line 819
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->bcc:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 821
    :cond_4
    const/4 v3, 0x1

    .line 822
    .local v3, "isReceiversSameOrg":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 823
    .local v1, "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v1, :cond_5

    .line 827
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v7

    iget-object v8, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v7, v8, v0}, Lafc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 828
    const/4 v3, 0x0

    .line 832
    .end local v1    # "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    :cond_6
    if-nez v3, :cond_0

    .line 833
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->V:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 834
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->V:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Laxo$i;->dt_mail_recepient_different_org_tips:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 837
    .end local v2    # "allReceivers":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .end local v3    # "isReceiversSameOrg":Z
    :cond_7
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->V:Landroid/widget/TextView;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 838
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->V:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Laxo$i;->dt_mail_to_different_org_tips:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private g()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->af:Z

    .line 1257
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v2, "CMail"

    const-string/jumbo v3, "mail.maildetail.appear"

    const-string/jumbo v4, "loadBodyFromServer"

    invoke-static {v1, v2, v3, v4}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$4;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    const-class v3, Lxv;

    .line 1320
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 1261
    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 1321
    .local v0, "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->loadMailHtmlBodyFromServer(Ljava/lang/String;Lxv;)V

    .line 1322
    return-void
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Z
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 138
    .line 22337
    invoke-static {}, Lajj;->b()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    .line 21500
    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcms;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 22341
    invoke-static {}, Lajj;->b()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v1, v0

    .line 21500
    :cond_0
    if-eqz v1, :cond_3

    .line 21501
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v1

    .line 22337
    goto :goto_0

    .line 21503
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->W:Z

    goto :goto_1
.end method

.method private h()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v9, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1395
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v1, :cond_2

    .line 1397
    invoke-static {}, Lpp;->a()Lpq;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-interface {v1, v2}, Lpq;->isCommonAccount(Ljava/lang/String;)Z

    move-result v0

    .line 1399
    .local v0, "isCommonAccount":Z
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-boolean v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasCalendarPart:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1400
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-wide v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->accountId:J

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-wide v4, v4, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->uid:J

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-wide v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->folderId:J

    invoke-static/range {v1 .. v7}, Lpp;->b(Ljava/lang/String;JJJ)V

    .line 1403
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    if-eqz v1, :cond_1

    .line 1404
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;->b(Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V

    .line 1407
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-boolean v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->isRead:Z

    if-nez v1, :cond_2

    .line 1408
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iput-boolean v10, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->isRead:Z

    .line 1409
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-interface {v1, v10, v11, v2}, Lcom/alibaba/alimei/sdk/api/MailApi;->changeMailReadStatus(ZLxv;[Ljava/lang/String;)V

    .line 11526
    .end local v0    # "isCommonAccount":Z
    :cond_2
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ad:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-nez v1, :cond_5

    .line 12759
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v1, :cond_14

    .line 12763
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->attachments:Ljava/util/List;

    .line 12765
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->X:Lfk;

    invoke-virtual {v2}, Lfk;->clear()V

    .line 12766
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 12768
    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 12769
    const-string/jumbo v2, "MailDetailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initAttachment count = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 12771
    new-instance v2, Lfk;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lfk;-><init>(I)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->X:Lfk;

    .line 12772
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 12774
    const-string/jumbo v3, "MailDetailFragment"

    const-string/jumbo v4, "attachment %s type: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    aput-object v6, v5, v8

    iget v6, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lyx;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 12776
    iget v3, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    if-nez v3, :cond_11

    .line 12777
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Y:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11529
    :cond_5
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v2, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 11530
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->j:Landroid/widget/TextView;

    if-nez v2, :cond_8

    const-string/jumbo v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11532
    if-eqz v2, :cond_6

    .line 11533
    new-instance v1, Laes;

    iget-object v3, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-direct {v1, v3}, Laes;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ab:Laes;

    .line 11534
    new-instance v1, Laep;

    iget-object v3, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-direct {v1, v3}, Laep;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ac:Laep;

    .line 11537
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->b()V

    .line 11539
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11540
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->o:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 11542
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V

    .line 11543
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-static {v1}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Z)V

    .line 11545
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    const-string/jumbo v3, "1"

    invoke-static {v1, v3}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 11546
    const-string/jumbo v1, "1"

    sget v3, Laxo$i;->icon_task_fill:I

    invoke-virtual {p0, v1, v3, v10}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Ljava/lang/String;IZ)V

    .line 11554
    :goto_3
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 11556
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    if-eqz v1, :cond_7

    .line 11557
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;->b(Z)V

    .line 11560
    :cond_7
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->k()V

    .line 11569
    :goto_4
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-static {v1}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-wide v4, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->folderId:J

    const-string/jumbo v1, "EVENTBUTLER"

    .line 11570
    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$7;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$7;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    const-class v6, Lxv;

    .line 11586
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 11571
    invoke-interface {v1, v3, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxv;

    .line 11569
    invoke-interface {v2, v4, v5, v1}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryFolderById(JLxv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11594
    :goto_5
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->subject:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Laxo$i;->message_no_subject:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11596
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F:Landroid/view/View;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->priority:I

    if-ne v1, v10, :cond_f

    move v1, v8

    :goto_7
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11598
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-wide v2, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->timeStamp:J

    invoke-static {v2, v3}, Lsc;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 11599
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11601
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/sdk/model/MailCalendarModel;)V

    .line 11603
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->tags:Ljava/util/List;

    invoke-static {v1}, Lafh;->b(Ljava/util/List;)Lafh$a;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->D:Lafh$a;

    .line 11604
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->D:Lafh$a;

    if-nez v1, :cond_10

    .line 11605
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->R:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 11530
    :cond_8
    iget-object v1, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    iget-object v1, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    goto/16 :goto_2

    .line 11547
    :cond_a
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    const-string/jumbo v3, "2"

    invoke-static {v1, v3}, Lrx;->a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 11548
    const-string/jumbo v1, "2"

    sget v3, Laxo$i;->icon_right_fill:I

    invoke-virtual {p0, v1, v3, v10}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Ljava/lang/String;IZ)V

    goto/16 :goto_3

    .line 11550
    :cond_b
    sget v1, Laxo$i;->icon_roundclose:I

    invoke-virtual {p0, v11, v1, v8}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Ljava/lang/String;IZ)V

    goto/16 :goto_3

    .line 11562
    :cond_c
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    if-eqz v1, :cond_d

    .line 11563
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;->b(Z)V

    .line 11566
    :cond_d
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/sdk/model/MailReadStatusModel;)V

    .line 12085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    .line 11567
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->A:Lyb;

    invoke-interface {v1, v2}, Lya;->a(Lyb;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 11588
    :catch_0
    move-exception v1

    .line 11589
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 11594
    :cond_e
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->subject:Ljava/lang/String;

    goto/16 :goto_6

    :cond_f
    move v1, v9

    .line 11596
    goto/16 :goto_7

    .line 11607
    :cond_10
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->R:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 11608
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->T:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11609
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->D:Lafh$a;

    iget-object v3, v1, Lafh$a;->a:Ljava/lang/String;

    .line 12684
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v2, "EVENTBUTLER"

    .line 12685
    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$10;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$10;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    const-class v5, Lcom/alibaba/wukong/Callback;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d:Landroid/app/Activity;

    .line 12686
    invoke-interface {v2, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/wukong/Callback;

    .line 12684
    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 12778
    :cond_11
    iget v3, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    if-ne v3, v10, :cond_4

    .line 12780
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->X:Lfk;

    iget-wide v4, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 12785
    :cond_12
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    .line 12786
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->U:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_13

    .line 12787
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->U:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 12789
    :cond_13
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->U:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12790
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Y:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12791
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->t:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    invoke-virtual {v1, v8}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->setVisibility(I)V

    .line 12792
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Y:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 12793
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    invoke-virtual {v1, v8}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setVisibility(I)V

    .line 1414
    :cond_14
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->f()V

    .line 1415
    return-void
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    .line 22908
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->X:Lfk;

    invoke-virtual {v0}, Lfk;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 22909
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->X:Lfk;

    invoke-virtual {v0}, Lfk;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 22910
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22911
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 22913
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    .line 23228
    invoke-static {v2, v0}, Lafv;->c(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;

    move-result-object v2

    .line 22913
    if-nez v2, :cond_0

    .line 22918
    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 22919
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23801
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->E:Lyb;

    if-nez v2, :cond_1

    .line 23802
    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$13;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$13;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->E:Lyb;

    .line 24085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v2

    .line 23824
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->E:Lyb;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "basic_AttachmentDownload"

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 22921
    :cond_1
    const-string/jumbo v2, "attachmentdownload"

    const-string/jumbo v3, "attachmentdownload mail detail resource"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22922
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-static {v2, v0}, Lafw;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto :goto_0

    .line 138
    :cond_2
    return-void
.end method

.method private i()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1421
    .line 13445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ae:J

    sub-long/2addr v2, v4

    .line 13447
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$6;

    invoke-direct {v1, p0, v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$6;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;J)V

    .line 13465
    sget-object v2, Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;->NORMAL:Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;

    invoke-static {v2}, Laif;->a(Lcom/alibaba/alimei/sdk/threadpool/ThreadPriority;)Laie;

    move-result-object v2

    .line 13466
    const-string/jumbo v3, "monitorMailBody"

    invoke-interface {v2, v3, v1}, Laie;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1422
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->l()Z

    .line 1423
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e:Lsh;

    if-nez v1, :cond_0

    .line 1424
    new-instance v1, Lsh;

    invoke-direct {v1}, Lsh;-><init>()V

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e:Lsh;

    .line 1425
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1426
    .local v0, "localDisplayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1427
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e:Lsh;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v2, v3

    iput v2, v1, Lsh;->b:F

    .line 1428
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e:Lsh;

    const/high16 v2, 0x41900000    # 18.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    iput v2, v1, Lsh;->c:F

    .line 1430
    .end local v0    # "localDisplayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v1, :cond_3

    .line 1431
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ab:Laes;

    if-eqz v1, :cond_2

    .line 1432
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ab:Laes;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 14122
    iget-boolean v4, v1, Laes;->a:Z

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    if-nez v3, :cond_4

    .line 1433
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ac:Laep;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 15040
    iget-boolean v1, v1, Laep;->a:Z

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-nez v3, :cond_5

    .line 1435
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ae:J

    .line 1436
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->textContent:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->e:Lsh;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Ljava/lang/String;Ljava/lang/String;Lsh;)Z

    .line 1442
    :cond_3
    return-void

    .line 14125
    :cond_4
    const-string/jumbo v4, "other/template/content_daily.html"

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setTemplateFile(Ljava/lang/String;)V

    .line 14127
    iget-object v4, v1, Laes;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eq v4, v2, :cond_1

    .line 14129
    iput-object v2, v1, Laes;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 14130
    iput-object v3, v1, Laes;->c:Landroid/app/Activity;

    .line 14131
    new-instance v2, Laes$b;

    iget-object v3, v1, Laes;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-direct {v2, v1, v3}, Laes$b;-><init>(Laes;Landroid/webkit/WebView;)V

    iput-object v2, v1, Laes;->j:Laes$b;

    .line 14132
    iget-object v2, v1, Laes;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    new-instance v3, Laes$a;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Laes$a;-><init>(Laes;B)V

    const-string/jumbo v1, "cmailBridge"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 15044
    :cond_5
    const-string/jumbo v1, "other/template/content_daily.html"

    invoke-virtual {v2, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setTemplateFile(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->W:Z

    return v0
.end method

.method private j()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1487
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v1, :cond_2

    .line 1488
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v0, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->textContent:Ljava/lang/String;

    .line 1489
    .local v0, "body":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1490
    const-string/jumbo v0, ""

    .line 1492
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v2, v1

    .line 1495
    .end local v0    # "body":Ljava/lang/String;
    :goto_1
    return-wide v2

    .line 1488
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v0, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    goto :goto_0

    .line 1495
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->z:Z

    return v0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lfk;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->X:Lfk;

    return-object v0
.end method

.method private k()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1714
    invoke-static {}, Lacg;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1740
    :goto_0
    return-void

    .line 1718
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-static {v0}, Lafw;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->c:Ljava/lang/String;

    const-wide/16 v4, -0x1

    const-string/jumbo v0, "EVENTBUTLER"

    .line 1719
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$11;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$11;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    const-class v6, Lxv;

    .line 1739
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 1720
    invoke-interface {v0, v3, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 1718
    invoke-interface {v1, v2, v4, v5, v0}, Lcom/alibaba/alimei/sdk/api/MailAdditionalApi;->queryMailReadStatus(Ljava/lang/String;JLxv;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->c:Ljava/lang/String;

    return-object v0
.end method

.method private l()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2259
    const/4 v2, 0x0

    .line 2261
    .local v2, "htmlChanged":Z
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->X:Lfk;

    invoke-virtual {v5}, Lfk;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 2262
    const/4 v5, 0x0

    .line 2293
    :goto_0
    return v5

    .line 2266
    :cond_0
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->X:Lfk;

    invoke-virtual {v5}, Lfk;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2267
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    invoke-static {v6}, Lair;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    .line 2268
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2269
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 2270
    .local v0, "attachment":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 2271
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2274
    :cond_2
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 2278
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\\E\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2280
    .local v1, "contentIdRe":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " src=\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2282
    .local v4, "srcContentUri":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    invoke-virtual {v6, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    .line 2284
    const/4 v2, 0x1

    goto :goto_1

    .line 2289
    .end local v0    # "attachment":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v1    # "contentIdRe":Ljava/lang/String;
    .end local v4    # "srcContentUri":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    invoke-static {v6}, Lair;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    :goto_2
    move v5, v2

    .line 2293
    goto/16 :goto_0

    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->t:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Y:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->f:Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    .line 25185
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.maildetail.appear"

    const-string/jumbo v3, "loadSearchMailDetailFromServer"

    invoke-static {v0, v1, v2, v3}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->af:Z

    .line 25189
    const-string/jumbo v0, "EVENTBUTLER"

    .line 25190
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$3;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    const-class v2, Lxv;

    .line 25237
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 25191
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 25238
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->loadSearchMailFromServer(Ljava/lang/String;Lxv;)V

    .line 138
    return-void
.end method

.method static synthetic q(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h()V

    return-void
.end method

.method static synthetic r(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->g()V

    return-void
.end method

.method static synthetic s(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    .line 25994
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;Z)V

    .line 25995
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->w:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;Z)V

    .line 25996
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->i()V

    .line 25997
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->w:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25998
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->w:Landroid/widget/Button;

    sget v1, Laxo$i;->alm_cmail_mail_not_exist:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 138
    return-void
.end method

.method static synthetic t(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->m:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic u(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->af:Z

    return v0
.end method

.method static synthetic v(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic w(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->S:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic x(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->T:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic z(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->R:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 6
    .param p1, "action"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 358
    const/4 v4, 0x0

    .line 359
    .local v4, "attendeeStatus":I
    packed-switch p1, :pswitch_data_0

    .line 4375
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-static {v0}, Lafv;->e(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    .line 4376
    if-nez v0, :cond_1

    .line 4377
    const-string/jumbo v0, "MailDetailFragment"

    const-string/jumbo v1, "updateCalendarEventStatus fail for mailApi is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4388
    :cond_0
    :goto_1
    return-void

    .line 361
    :pswitch_0
    const/4 v4, 0x1

    .line 362
    goto :goto_0

    .line 364
    :pswitch_1
    const/4 v4, 0x4

    .line 365
    goto :goto_0

    .line 367
    :pswitch_2
    const/4 v4, 0x2

    goto :goto_0

    .line 4381
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-nez v1, :cond_2

    .line 4382
    const-string/jumbo v0, "MailDetailFragment"

    const-string/jumbo v1, "updateCalendarEventStatus fail for mailModel is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4386
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    if-nez v1, :cond_3

    .line 4387
    const-string/jumbo v0, "MailDetailFragment"

    const-string/jumbo v1, "updateCalendarEventStatus fail for calendar is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4391
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendarServerId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->calendar:Lcom/alibaba/alimei/sdk/model/MailCalendarModel;

    iget v3, v3, Lcom/alibaba/alimei/sdk/model/MailCalendarModel;->eventStatus:I

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/alimei/sdk/api/MailApi;->changeCalendarStatus(Ljava/lang/String;Ljava/lang/String;IILxv;)V

    .line 4392
    const/4 v0, 0x0

    .line 4393
    packed-switch v4, :pswitch_data_1

    .line 4406
    :goto_2
    :pswitch_3
    invoke-static {v0}, Lcms;->a(I)V

    .line 4407
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->r:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    if-eqz v0, :cond_0

    .line 4408
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->r:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->setAttendeeStatus(I)V

    goto :goto_1

    .line 4395
    :pswitch_4
    sget v0, Laxo$i;->dt_cmail_has_accept_event:I

    goto :goto_2

    .line 4398
    :pswitch_5
    sget v0, Laxo$i;->dt_cmail_has_decline_event:I

    goto :goto_2

    .line 4401
    :pswitch_6
    sget v0, Laxo$i;->dt_cmail_has_tentative_event:I

    goto :goto_2

    .line 359
    .line 4393
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public final a(ILcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 354
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;ILjava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 23
    .param p1, "attachmentPanel"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;
    .param p2, "position"    # I
    .param p3, "mailServerId"    # Ljava/lang/String;
    .param p4, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->aa:Ljava/util/Map;

    .line 2955
    const-string/jumbo v5, "mail_attachment_view_click"

    invoke-static {v5, v3}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 240
    invoke-static/range {p4 .. p4}, Lse;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    const/4 v3, 0x1

    new-array v7, v3, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 244
    .local v7, "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v22, "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    invoke-static/range {p4 .. p4}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v21

    .line 246
    .local v21, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    invoke-static/range {v21 .. v21}, Ltm;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v8

    .line 247
    .local v8, "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    const-string/jumbo v3, "mail"

    invoke-static {v8, v3}, Ltm;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v19

    .line 249
    .local v19, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const-wide/16 v10, 0x0

    move-object/from16 v0, v19

    iput-wide v10, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 250
    const/4 v3, 0x0

    aput-object v19, v7, v3

    .line 251
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "dentry_list"

    move-object/from16 v0, v22

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 253
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    .line 254
    .local v2, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 283
    .end local v2    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v7    # "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v8    # "dentryModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v19    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v21    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v22    # "spaceDos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    :goto_0
    return-void

    .line 256
    :cond_0
    const/4 v3, 0x1

    new-array v7, v3, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 257
    .restart local v7    # "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lafh;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v19

    .line 258
    .restart local v19    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const/4 v3, 0x0

    aput-object v19, v7, v3

    .line 260
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 261
    .restart local v4    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "hide_list_button"

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v18, v0

    .line 263
    .local v18, "mailAttachUrls":[Z
    const/4 v3, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v18, v3

    .line 264
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 265
    .local v17, "mailAttachFileNames":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    aput-object v5, v17, v3

    .line 266
    const-string/jumbo v3, "mail_attach_urls"

    move-object/from16 v0, v18

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 267
    const-string/jumbo v3, "mail_attach_names"

    move-object/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    .line 269
    .restart local v2    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto :goto_0

    .line 272
    .end local v2    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v7    # "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v17    # "mailAttachFileNames":[Ljava/lang/String;
    .end local v18    # "mailAttachUrls":[Z
    .end local v19    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_1
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 273
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v9

    .line 274
    .local v9, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    invoke-static/range {p4 .. p4}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v20

    .line 275
    .local v20, "spDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 276
    .restart local v4    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "data"

    move-object/from16 v0, v20

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v11, v4

    invoke-virtual/range {v9 .. v14}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    goto/16 :goto_0

    .line 280
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v9    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    .end local v20    # "spDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Z:Z

    move/from16 v16, v0

    move-object/from16 v11, p4

    move-object/from16 v12, p3

    invoke-static/range {v10 .. v16}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Ljava/lang/String;Lcma;ZZ)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;ILjava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/util/List;)V
    .locals 1
    .param p1, "attachmentPanel"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;
    .param p2, "position"    # I
    .param p3, "mailServerId"    # Ljava/lang/String;
    .param p4, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;",
            "I",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p5, "allImageAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    const/4 v0, 0x1

    invoke-static {p1, p3, p4, p5, v0}, Lajn;->a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/util/List;Z)V

    .line 233
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 5
    .param p1, "attachmentPanel"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;
    .param p2, "mailServerId"    # Ljava/lang/String;
    .param p3, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 288
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->aa:Ljava/util/Map;

    .line 3955
    const-string/jumbo v3, "mail_attachment_view_click"

    invoke-static {v3, v2}, Lafe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 290
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 291
    .local v1, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v2, p3, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 294
    sget v2, Laxo$b;->alm_cmail_save_space:I

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$1;

    invoke-direct {v3, p0, p3, p2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 311
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 312
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 314
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)V
    .locals 3
    .param p1, "model"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 928
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Q:Lcom/alibaba/alimei/mail/widget/TagView;

    if-nez v1, :cond_0

    .line 929
    const-string/jumbo v1, "MailDetailFragment"

    const-string/jumbo v2, "tag view is null"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :goto_0
    return-void

    .line 933
    :cond_0
    if-nez p1, :cond_1

    .line 934
    const-string/jumbo v1, "MailDetailFragment"

    const-string/jumbo v2, "setMailTags mail model is null"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 938
    :cond_1
    invoke-static {p1}, Lrx;->e(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 939
    invoke-static {p1}, Lrx;->d(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;)Ljava/util/List;

    move-result-object v0

    .line 940
    .local v0, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 941
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Q:Lcom/alibaba/alimei/mail/widget/TagView;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/TagView;->setVisibility(I)V

    goto :goto_0

    .line 945
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Q:Lcom/alibaba/alimei/mail/widget/TagView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/TagView;->setVisibility(I)V

    .line 946
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Q:Lcom/alibaba/alimei/mail/widget/TagView;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/widget/TagView;->setColors(Ljava/util/List;)V

    goto :goto_0

    .line 948
    .end local v0    # "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Q:Lcom/alibaba/alimei/mail/widget/TagView;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/TagView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "tagId"    # Ljava/lang/String;
    .param p2, "icon"    # I
    .param p3, "isAdd"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 885
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->P:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 886
    const-string/jumbo v0, "MailDetailFragment"

    const-string/jumbo v1, "flag view is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :goto_0
    return-void

    .line 890
    :cond_0
    const-string/jumbo v0, "1"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->P:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->ui_common_alert_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 895
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->P:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 896
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->P:Landroid/widget/TextView;

    if-eqz p3, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 892
    :cond_2
    const-string/jumbo v0, "2"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->P:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laxo$c;->ui_common_green_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 896
    :cond_3
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "hasImportant"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 872
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->O:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 873
    const-string/jumbo v0, "MailDetailFragment"

    const-string/jumbo v1, "important view is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->O:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 903
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-nez v1, :cond_0

    .line 904
    const-string/jumbo v1, "MailDetailFragment"

    const-string/jumbo v2, "setMailReadStatus fail for mail is empty"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    :goto_0
    return-void

    .line 908
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->N:Landroid/view/View;

    if-nez v1, :cond_2

    .line 909
    :cond_1
    const-string/jumbo v1, "MailDetailFragment"

    const-string/jumbo v2, "setMailReadStatus fail for view is empty"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 913
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 914
    .local v0, "tp":Landroid/text/TextPaint;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-boolean v1, v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->isRead:Z

    if-eqz v1, :cond_3

    .line 915
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->N:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 916
    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 918
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->N:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 919
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2011
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 2012
    .local v2, "webView":Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;
    if-eqz v2, :cond_2

    .line 2014
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2015
    .local v0, "parentView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2016
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2018
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->stopLoading()V

    .line 2019
    invoke-virtual {v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->removeAllViews()V

    .line 2020
    const/4 v3, 0x7

    invoke-static {v3}, Lcms;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2021
    invoke-virtual {v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->freeMemory()V

    .line 2023
    :cond_1
    invoke-virtual {v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2030
    .end local v0    # "parentView":Landroid/view/ViewGroup;
    :cond_2
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 2031
    return-void

    .line 2024
    :catch_0
    move-exception v1

    .line 2026
    .local v1, "tr":Ljava/lang/Throwable;
    const-string/jumbo v3, "MailDetailFragment destroy webview fail"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    if-eqz v0, :cond_0

    .line 2132
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->b:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 2133
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;->b(Ljava/lang/String;)V

    .line 2139
    :cond_0
    :goto_0
    return-void

    .line 2136
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-interface {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$a;->a(Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v8, 0x13

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 846
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 847
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ad:Z

    .line 9035
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 9036
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v4, "android.hardware.touchscreen.multitouch"

    .line 9037
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 9038
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 9039
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_0

    .line 9041
    const-class v4, Landroid/webkit/WebSettings;

    const-string/jumbo v5, "setDisplayZoomControls"

    new-array v6, v1, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    new-array v7, v1, [Ljava/lang/Object;

    if-nez v0, :cond_7

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v4, v3, v5, v6, v7}, Laiy;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9044
    :cond_0
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 9045
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 9047
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setDrawingCacheEnabled(Z)V

    .line 9048
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setAnimationCacheEnabled(Z)V

    .line 9049
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/high16 v4, 0x80000

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setDrawingCacheQuality(I)V

    .line 9051
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    new-instance v4, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$CustomWebViewClient;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;B)V

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 9052
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 9053
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const-string/jumbo v4, "searchBoxJavaBridge_"

    invoke-virtual {v0, v4}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 9055
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const-string/jumbo v5, "App"

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9056
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 9058
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_8

    .line 9060
    :try_start_0
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 9065
    :goto_1
    sget v0, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 9066
    invoke-static {v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 9074
    :cond_1
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_2

    invoke-static {}, Lacq;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 9075
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 9077
    :cond_3
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 9078
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 9079
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 9080
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 9082
    invoke-static {}, Laip;->a()I

    move-result v0

    .line 9083
    const/16 v3, 0x9

    if-le v0, v3, :cond_4

    .line 9084
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setOverScrollMode(I)V

    .line 850
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 851
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->C:Landroid/os/Handler;

    const/16 v3, 0x66

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 854
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->b:Landroid/net/Uri;

    if-eqz v0, :cond_9

    :goto_3
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Z:Z

    .line 10050
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ae:J

    .line 10051
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->b:Landroid/net/Uri;

    if-eqz v0, :cond_a

    .line 10121
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->b:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 10122
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.maildetail.appear"

    const-string/jumbo v3, "loadFromEmlFile"

    invoke-static {v0, v1, v2, v3}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10125
    const-string/jumbo v0, "EVENTBUTLER"

    .line 10126
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$2;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    const-class v2, Lxv;

    .line 10176
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 10127
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 10177
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->b:Landroid/net/Uri;

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetail(Landroid/content/Context;Landroid/net/Uri;Lxv;)V

    .line 10052
    :cond_6
    :goto_4
    return-void

    :cond_7
    move v0, v2

    .line 9041
    goto/16 :goto_0

    .line 9062
    :catch_0
    move-exception v0

    const-string/jumbo v0, "MailDetailFragment"

    const-string/jumbo v4, "webview not support text_autosizing"

    invoke-static {v0, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9063
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto/16 :goto_1

    .line 9069
    :cond_8
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    goto/16 :goto_2

    :cond_9
    move v1, v2

    .line 854
    goto :goto_3

    .line 10054
    :cond_a
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_b

    .line 10055
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h()V

    .line 10057
    :cond_b
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v3, "mail.maildetail.appear"

    const-string/jumbo v4, "loadMailDetailFromLocal"

    invoke-static {v0, v1, v3, v4}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10060
    const-string/jumbo v0, "EVENTBUTLER"

    .line 10061
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$25;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$25;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    const-class v3, Lxv;

    .line 10112
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 10061
    invoke-interface {v0, v1, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 10113
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->c:Ljava/lang/String;

    invoke-interface {v1, v3, v2, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetail(Ljava/lang/String;ZLxv;)V

    goto :goto_4
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 506
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 507
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d:Landroid/app/Activity;

    .line 508
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2091
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 2093
    .local v0, "id":I
    sget v1, Laxo$f;->loading_error_container:I

    if-ne v0, v1, :cond_1

    .line 2094
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->w:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2095
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(ZZ)V

    .line 2096
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->g()V

    .line 19151
    :cond_0
    :goto_0
    return-void

    .line 2098
    :cond_1
    sget v1, Laxo$f;->rl_recipient:I

    if-ne v0, v1, :cond_2

    .line 17405
    const-string/jumbo v1, "mail_read_participant_click"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d()V

    goto :goto_0

    .line 2101
    :cond_2
    sget v1, Laxo$f;->alm_event_panel:I

    if-ne v0, v1, :cond_3

    .line 2102
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lacg;->a(Landroid/content/Context;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 2103
    :cond_3
    sget v1, Laxo$f;->has_attach_layout:I

    if-ne v0, v1, :cond_5

    .line 2105
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v1, :cond_0

    .line 2106
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 17716
    invoke-virtual {v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 17720
    invoke-virtual {v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 17721
    invoke-virtual {v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getFooterBarParddingTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    sub-int/2addr v4, v1

    iget-object v1, v3, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    add-int/2addr v1, v4

    .line 17722
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 17723
    invoke-virtual {v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getScrollX()I

    move-result v2

    invoke-virtual {v3, v2, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(II)V

    goto :goto_0

    .line 17721
    :cond_4
    iget-object v1, v3, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    .line 2108
    :cond_5
    sget v1, Laxo$f;->tv_from_chat_desc:I

    if-ne v0, v1, :cond_6

    .line 18014
    const-string/jumbo v1, "mail_fromchat_back"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 2110
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->D:Lafh$a;

    if-eqz v1, :cond_0

    .line 2111
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d:Landroid/app/Activity;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->D:Lafh$a;

    iget-object v3, v3, Lafh$a;->a:Ljava/lang/String;

    new-instance v4, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$15;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$15;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto/16 :goto_0

    .line 2121
    :cond_6
    sget v1, Laxo$f;->avatar_view:I

    if-ne v1, v0, :cond_0

    .line 18401
    const-string/jumbo v1, "mail_read_senderprofile_click"

    invoke-static {v1}, Lafe;->a(Ljava/lang/String;)V

    .line 19150
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v1, :cond_0

    .line 19154
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getFrom()Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-result-object v2

    .line 19155
    iget-object v3, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 19156
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v1, v4, v3, v2}, Lrx;->a(Lcom/alibaba/alimei/mail/activity/MailBaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 512
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 514
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 516
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 518
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    .line 519
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 520
    invoke-interface {v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    .line 527
    :cond_0
    :goto_0
    const-string/jumbo v1, "intent_key_detail_model"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 528
    const-string/jumbo v1, "mail_server_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->c:Ljava/lang/String;

    .line 529
    const-string/jumbo v1, "mail_eml_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->b:Landroid/net/Uri;

    .line 533
    :cond_1
    invoke-static {}, Lacg;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 534
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->aa:Ljava/util/Map;

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "alimail"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8085
    :goto_1
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v1

    .line 539
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->A:Lyb;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "ptcpUnreadCountChanged"

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 541
    const-class v1, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->B:Lxm;

    invoke-static {v1, v2}, Lafv;->a(Ljava/lang/Class;Lxm;)V

    .line 542
    return-void

    .line 522
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    .line 6246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 522
    invoke-interface {v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 523
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->y:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->setDefaultAccount(Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 536
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->aa:Ljava/util/Map;

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "other"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 546
    sget-object v2, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v3, "CMail"

    const-string/jumbo v4, "mail.maildetail.appear"

    invoke-static {v2, v3, v4}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->c()V

    .line 549
    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$20;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$20;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 558
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 561
    .local v1, "rootView":Landroid/view/View;
    sget v2, Laxo$g;->cmail_msg_view_fragment_title:I

    invoke-virtual {p1, v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->f:Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;

    .line 563
    sget v2, Laxo$g;->cmail_msg_view_fragment_footer:I

    invoke-virtual {p1, v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->g:Landroid/view/View;

    .line 568
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->f:Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setEmbeddedTitleBarCompat(Landroid/view/View;)V

    .line 569
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->g:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setEmbeddedFooterBar(Landroid/view/View;)V

    .line 570
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const-string/jumbo v3, "searchBoxJavaBridge_"

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 571
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const-string/jumbo v3, "accessibilityTraversal"

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 573
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$21;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setOnTitleBarWebView(Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView$b;)V

    .line 715
    sget v2, Laxo$f;->urgent_icon:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->F:Landroid/view/View;

    .line 716
    sget v2, Laxo$f;->subject:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->i:Landroid/widget/TextView;

    .line 717
    sget v2, Laxo$f;->tips_title:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->V:Landroid/widget/TextView;

    .line 718
    sget v2, Laxo$f;->avatar_view:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->M:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    .line 719
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->M:Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;

    invoke-virtual {v2, p0}, Lcom/alibaba/alimei/mail/widget/CMailAvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    sget v2, Laxo$f;->rl_recipient:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->m:Landroid/widget/RelativeLayout;

    .line 722
    sget v2, Laxo$f;->tv_recipient:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->n:Landroid/widget/TextView;

    .line 723
    sget v2, Laxo$f;->unread_view:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->N:Landroid/view/View;

    .line 724
    sget v2, Laxo$f;->tv_sender:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->j:Landroid/widget/TextView;

    .line 725
    sget v2, Laxo$f;->tv_time:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->k:Landroid/widget/TextView;

    .line 726
    sget v2, Laxo$f;->tv_important:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->O:Landroid/widget/TextView;

    .line 727
    sget v2, Laxo$f;->tv_flag:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->P:Landroid/widget/TextView;

    .line 728
    sget v2, Laxo$f;->tv_tag:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/mail/widget/TagView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->Q:Lcom/alibaba/alimei/mail/widget/TagView;

    .line 729
    sget v2, Laxo$f;->has_attach_layout:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->U:Landroid/view/View;

    .line 730
    sget v2, Laxo$f;->img_has_attach:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->l:Landroid/widget/TextView;

    .line 731
    sget v2, Laxo$f;->top_line_2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->o:Landroid/view/View;

    .line 732
    sget v2, Laxo$f;->top_line_3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->p:Landroid/view/View;

    .line 733
    sget v2, Laxo$f;->alm_event_panel:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->q:Landroid/view/ViewStub;

    .line 735
    sget v2, Laxo$f;->mail_from_chat:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->R:Landroid/view/View;

    .line 736
    sget v2, Laxo$f;->tv_from_chat_title:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->S:Landroid/widget/TextView;

    .line 737
    sget v2, Laxo$f;->tv_from_chat_desc:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->T:Landroid/widget/TextView;

    .line 739
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->f:Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;

    if-eqz v2, :cond_0

    .line 740
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->f:Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;

    sget v3, Laxo$f;->alm_mail_image_holder:I

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->s:Landroid/widget/TextView;

    .line 741
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->s:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 742
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->s:Landroid/widget/TextView;

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$22;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$22;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 756
    sget v2, Laxo$f;->attachments_scroll_container:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->t:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    .line 757
    sget v2, Laxo$f;->attachment_panel:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    .line 759
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$23;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$23;-><init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V

    .line 778
    .local v0, "layoutChangedListener":Lsg;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->t:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebViewFooterView;->setOnLayoutChangedListener(Lsg;)V

    .line 779
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->f:Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;

    invoke-virtual {v2, v0}, Lcom/alibaba/alimei/cmail/widget/RigidWebViewTopView;->setOnLayoutChangedListener(Lsg;)V

    .line 782
    sget v2, Laxo$f;->loading_progress_container:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->v:Landroid/view/View;

    .line 785
    sget v2, Laxo$f;->loading_error_container:I

    invoke-static {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->w:Landroid/widget/Button;

    .line 788
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->w:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->u:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    invoke-virtual {v2, p0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setOnAttachmentLoadListener(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;)V

    .line 793
    return-object v1
.end method

.method public onDestroy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 954
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onDestroy()V

    .line 955
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ad:Z

    .line 956
    iput-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->d:Landroid/app/Activity;

    .line 957
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ab:Laes;

    if-eqz v1, :cond_2

    .line 958
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ab:Laes;

    .line 11152
    iput-boolean v2, v1, Laes;->a:Z

    .line 11153
    iget-object v2, v1, Laes;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v2, :cond_0

    .line 11154
    iget-object v2, v1, Laes;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const-string/jumbo v3, "cmailBridge"

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 11155
    iput-object v4, v1, Laes;->b:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 11158
    :cond_0
    iget-object v2, v1, Laes;->g:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 11159
    iget-object v1, v1, Laes;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 959
    :cond_1
    iput-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ab:Laes;

    .line 962
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ac:Laep;

    if-eqz v1, :cond_3

    .line 963
    iput-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->ac:Laep;

    .line 966
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v1, :cond_5

    .line 967
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 968
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_4

    .line 969
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 971
    :cond_4
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->removeAllViews()V

    .line 972
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->destroy()V

    .line 973
    iput-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 975
    :cond_5
    return-void
.end method

.method public onDestroyView()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2449
    .line 19458
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v0, :cond_3

    .line 19459
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19460
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 19461
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19463
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 19464
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19465
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 19466
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 19467
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19468
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setEmbeddedTitleBarCompat(Landroid/view/View;)V

    .line 19469
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setEmbeddedFooterBar(Landroid/view/View;)V

    .line 19470
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 19472
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19473
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 19474
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 19475
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->removeAllViews()V

    .line 19476
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->destroy()V

    .line 19486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2450
    :cond_3
    :goto_0
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onDestroyView()V

    .line 2451
    return-void

    .line 19488
    :catch_0
    move-exception v0

    .line 19489
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->onPause()V

    .line 990
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->pauseTimers()V

    .line 992
    :cond_0
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onPause()V

    .line 993
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 979
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onResume()V

    .line 980
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->onResume()V

    .line 982
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->h:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->resumeTimers()V

    .line 984
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 997
    const/4 v0, 0x0

    return v0
.end method

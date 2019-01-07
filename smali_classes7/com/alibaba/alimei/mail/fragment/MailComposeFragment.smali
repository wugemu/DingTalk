.class public Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
.super Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;
.source "MailComposeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams",
        "ViewHolder"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;,
        Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CustomWebViewClient;,
        Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$c;,
        Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CompressType;,
        Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;,
        Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;
    }
.end annotation


# static fields
.field private static final S:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Landroid/view/View$OnFocusChangeListener;

.field B:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;

.field C:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;

.field public D:Lyb;

.field public E:Z

.field public F:Z

.field private M:Z

.field private N:Landroid/view/View;

.field private O:Landroid/widget/TextView;

.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:Ljava/util/regex/Pattern;

.field private T:I

.field private final U:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private final V:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private final W:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;"
        }
    .end annotation
.end field

.field private X:Ljava/lang/Object;

.field private Y:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Ljava/io/File;

.field public a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

.field private aA:Landroid/view/View;

.field private aB:Landroid/widget/TextView;

.field private aC:Landroid/widget/TextView;

.field private aD:Z

.field private aE:Landroid/widget/LinearLayout;

.field private aF:Landroid/view/View;

.field private aG:Landroid/view/View;

.field private aH:Landroid/widget/LinearLayout;

.field private aI:Landroid/view/View;

.field private aJ:Landroid/view/View;

.field private aK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private aL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private aM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

.field private aO:Ljava/lang/String;

.field private aP:Ljava/lang/String;

.field private aQ:Z

.field private aR:Z

.field private aS:Z

.field private aT:Z

.field private final aU:I

.field private final aV:I

.field private final aW:I

.field private final aX:I

.field private aY:Ljava/lang/String;

.field private aZ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private aa:I

.field private ab:Z

.field private ac:Landroid/os/Handler;

.field private ad:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CompressType;

.field private final ae:I

.field private final af:I

.field private final ag:I

.field private final ah:I

.field private ai:Landroid/view/View;

.field private aj:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

.field private ak:Landroid/view/ViewStub;

.field private al:Landroid/view/View;

.field private am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

.field private an:Landroid/view/View;

.field private ao:Landroid/view/View;

.field private ap:Landroid/view/View;

.field private aq:Landroid/view/View;

.field private ar:Landroid/view/View;

.field private as:Lcom/alibaba/alimei/mail/widget/ComposeScrollView;

.field private at:Landroid/widget/LinearLayout;

.field private au:Landroid/view/View;

.field private av:Landroid/view/View;

.field private aw:Landroid/widget/RelativeLayout;

.field private ax:Landroid/widget/TextView;

.field private ay:Landroid/widget/TextView;

.field private az:Landroid/view/View;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private ba:Lyb;

.field private bb:Lcom/alibaba/wukong/im/Conversation;

.field private bc:Laeq;

.field private bd:Z

.field private be:Laca;

.field private bf:Ljava/lang/String;

.field private bg:Ljava/lang/String;

.field private bh:Lcom/alibaba/alimei/sdk/model/AddressModel;

.field private bi:Lcom/alibaba/wukong/im/Conversation;

.field private bj:Lcom/alibaba/wukong/im/Message;

.field private bk:Lcom/alibaba/alimei/cmail/richeditor/RichEditor$c;

.field private bl:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

.field private bm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private bn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bo:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile bp:Z

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Boolean;

.field public i:Landroid/widget/EditText;

.field public j:Lafk;

.field public k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

.field public l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

.field public m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

.field public n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

.field public o:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;

.field public p:Lcom/alibaba/doraemon/threadpool/Thread;

.field public final q:Lagz;

.field public r:Lagz;

.field s:Landroid/content/Intent;

.field public t:Z

.field public u:Lajo;

.field public v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

.field public w:Ljava/lang/String;

.field public x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

.field public y:Landroid/text/TextWatcher;

.field public z:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 327
    sput-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->S:Ljava/util/HashMap;

    const-string/jumbo v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueShareEmail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->S:Ljava/util/HashMap;

    const-string/jumbo v1, "android.intent.action.SEND"

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueShareEmail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->S:Ljava/util/HashMap;

    const-string/jumbo v1, "android.intent.action.SENDTO"

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueShareEmail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->S:Ljava/util/HashMap;

    const-string/jumbo v1, "android.intent.action.SEND_VIA_EMAIL"

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueShareEmail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->S:Ljava/util/HashMap;

    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE_VIA_EMAIL"

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueShareEmail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->S:Ljava/util/HashMap;

    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueShareEmail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->S:Ljava/util/HashMap;

    const-string/jumbo v1, "com.alibaba.alimei.intent.action.standard.MAIL"

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueShareEmail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->S:Ljava/util/HashMap;

    const-string/jumbo v1, "com.alibaba.alimei.intent.action.NEW_MAIL"

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->NewMail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->S:Ljava/util/HashMap;

    const-string/jumbo v1, "com.alibaba.alimei.intent.action.FEEDBACK"

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueFeedback:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->S:Ljava/util/HashMap;

    const-string/jumbo v1, "com.alibaba.alimei.intent.action.EDIT_DRAFT"

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueEditDraft:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->S:Ljava/util/HashMap;

    const-string/jumbo v1, "com.alibaba.alimei.intent.action.REPLY"

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReply:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->S:Ljava/util/HashMap;

    const-string/jumbo v1, "com.alibaba.alimei.intent.action.REPLY_ALL"

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReplyAll:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->S:Ljava/util/HashMap;

    const-string/jumbo v1, "com.alibaba.alimei.intent.action.FORWARD"

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueForward:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 550
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;-><init>()V

    .line 195
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->M:Z

    .line 309
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->R:Ljava/util/regex/Pattern;

    .line 371
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->T:I

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b:Ljava/util/ArrayList;

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->U:Ljava/util/HashMap;

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->V:Ljava/util/ArrayList;

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c:Ljava/util/ArrayList;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d:Ljava/util/ArrayList;

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->W:Ljava/util/ArrayList;

    .line 393
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e:Ljava/util/HashMap;

    .line 397
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f:Ljava/util/HashMap;

    .line 398
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g:Lfp;

    .line 400
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->X:Ljava/lang/Object;

    .line 401
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->Y:Lfp;

    .line 405
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aa:I

    .line 418
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ab:Z

    .line 424
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CompressType;->BIG:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CompressType;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ad:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CompressType;

    .line 426
    iput v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ae:I

    .line 427
    iput v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->af:I

    .line 428
    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ag:I

    .line 429
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ah:I

    .line 436
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->h:Ljava/lang/Boolean;

    .line 444
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ak:Landroid/view/ViewStub;

    .line 471
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aD:Z

    .line 485
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aK:Ljava/util/HashMap;

    .line 486
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aL:Ljava/util/HashMap;

    .line 487
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aM:Ljava/util/HashMap;

    .line 489
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .line 492
    new-instance v0, Lagz;

    invoke-direct {v0}, Lagz;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    .line 494
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    .line 504
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->s:Landroid/content/Intent;

    .line 506
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->t:Z

    .line 510
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aQ:Z

    .line 511
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aR:Z

    .line 516
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aS:Z

    .line 517
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aT:Z

    .line 519
    iput v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aU:I

    .line 520
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aV:I

    .line 521
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aW:I

    .line 522
    iput v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aX:I

    .line 523
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aY:Ljava/lang/String;

    .line 524
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aZ:Ljava/util/HashMap;

    .line 539
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bd:Z

    .line 647
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    .line 648
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bg:Ljava/lang/String;

    .line 649
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->NewMail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    .line 1759
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$3;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$3;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->y:Landroid/text/TextWatcher;

    .line 1776
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$4;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$4;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->z:Landroid/text/TextWatcher;

    .line 1793
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$5;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$5;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bk:Lcom/alibaba/alimei/cmail/richeditor/RichEditor$c;

    .line 1803
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$6;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$6;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->A:Landroid/view/View$OnFocusChangeListener;

    .line 2514
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$19;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$19;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->B:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;

    .line 2527
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$20;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$20;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->C:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;

    .line 2573
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$21;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bl:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    .line 3097
    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->D:Lyb;

    .line 3626
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bm:Ljava/util/HashMap;

    .line 4007
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bn:Ljava/util/List;

    .line 4008
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bo:Ljava/util/HashSet;

    .line 4009
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bp:Z

    .line 4798
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->E:Z

    .line 4799
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F:Z

    .line 551
    return-void
.end method

.method static synthetic A(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aK:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic B(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aL:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic C(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aM:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic D(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d()V

    return-void
.end method

.method static synthetic E(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ac:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic F(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->s()V

    return-void
.end method

.method static synthetic G(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    return-object v0
.end method

.method static synthetic H(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic I(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->an:Landroid/view/View;

    return-object v0
.end method

.method static synthetic J(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ap:Landroid/view/View;

    return-object v0
.end method

.method static synthetic K(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    return-object v0
.end method

.method static synthetic L(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ao:Landroid/view/View;

    return-object v0
.end method

.method static synthetic M(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aq:Landroid/view/View;

    return-object v0
.end method

.method static synthetic N(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    const/4 v1, 0x4

    .line 186
    .line 50383
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->an:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50384
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ao:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50385
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ap:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50386
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aq:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    return-void
.end method

.method static synthetic O(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q()V

    return-void
.end method

.method static synthetic P(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->U:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic Q(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->V:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic R(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k()V

    return-void
.end method

.method static synthetic S(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r()V

    return-void
.end method

.method static synthetic T(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->W:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic U(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bo:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic V(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->u()V

    return-void
.end method

.method static synthetic W(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aB:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic X(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    return-object v0
.end method

.method static synthetic Y(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w()V

    return-void
.end method

.method static synthetic Z(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aC:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CompressType;)J
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attachemnt"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .param p3, "type"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CompressType;

    .prologue
    .line 3453
    .line 35427
    const/4 v7, 0x4

    .line 35428
    sget-object v16, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$47;->b:[I

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CompressType;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 3454
    .local v7, "compressSampelSize":I
    :goto_0
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_1

    .line 3455
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    .line 3537
    :cond_0
    :goto_1
    return-wide v14

    .line 35430
    .end local v7    # "compressSampelSize":I
    :pswitch_0
    const/4 v7, 0x1

    .line 35431
    goto :goto_0

    .line 35433
    :pswitch_1
    const/4 v7, 0x4

    .line 35434
    goto :goto_0

    .line 35436
    :pswitch_2
    const/16 v7, 0x8

    .line 35437
    goto :goto_0

    .line 35440
    :pswitch_3
    const/16 v7, 0x10

    goto :goto_0

    .line 3457
    .restart local v7    # "compressSampelSize":I
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 3458
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 3459
    :cond_2
    const-wide/16 v14, 0x0

    goto :goto_1

    .line 3462
    :cond_3
    const-wide/16 v14, 0x0

    .line 3463
    .local v14, "size":J
    const/4 v11, 0x0

    .line 3464
    .local v11, "is":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 3465
    .local v6, "bp":Landroid/graphics/Bitmap;
    new-instance v4, Lrt;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lrt;-><init>(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 3466
    .local v4, "ai":Lrt;
    iget-boolean v0, v4, Lrt;->h:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 3468
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 3469
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 3468
    invoke-virtual/range {v16 .. v17}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    .line 3470
    .local v10, "inputStream":Ljava/io/InputStream;
    new-instance v12, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$29;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v12, v0, v10, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$29;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/io/InputStream;Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3501
    .end local v11    # "is":Ljava/io/BufferedInputStream;
    .local v12, "is":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v12}, Lhcx;->a(Ljava/io/InputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v16

    if-nez v16, :cond_4

    .line 3530
    :try_start_2
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3533
    :goto_2
    const-wide/16 v14, 0x0

    goto :goto_1

    .line 3531
    :catch_0
    move-exception v8

    .line 3532
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 3504
    .end local v8    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_3
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3505
    .local v13, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3506
    iput v7, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3507
    sget-object v16, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v16

    iput-object v0, v13, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 3508
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v12, v0, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 3509
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 3511
    if-nez v6, :cond_6

    .line 3512
    iget-wide v14, v4, Lrt;->b:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3525
    :goto_3
    if-eqz v6, :cond_5

    .line 3526
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 3530
    :cond_5
    :try_start_4
    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v11, v12

    .line 3533
    .end local v12    # "is":Ljava/io/BufferedInputStream;
    .restart local v11    # "is":Ljava/io/BufferedInputStream;
    goto/16 :goto_1

    .line 3514
    .end local v11    # "is":Ljava/io/BufferedInputStream;
    .restart local v12    # "is":Ljava/io/BufferedInputStream;
    :cond_6
    :try_start_5
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3515
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v0, v4, Lrt;->d:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, "image/png"

    .line 3516
    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 3518
    .local v9, "formatType":Landroid/graphics/Bitmap$CompressFormat;
    :goto_4
    const/16 v16, 0x64

    move/from16 v0, v16

    invoke-virtual {v6, v9, v0, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3519
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v16

    move/from16 v0, v16

    int-to-long v14, v0

    .line 3520
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 3522
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "formatType":Landroid/graphics/Bitmap$CompressFormat;
    .end local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v8

    move-object v11, v12

    .line 3523
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "is":Ljava/io/BufferedInputStream;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v11    # "is":Ljava/io/BufferedInputStream;
    :goto_5
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3525
    if-eqz v6, :cond_7

    .line 3526
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 3528
    :cond_7
    if-eqz v11, :cond_0

    .line 3530
    :try_start_7
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    .line 3531
    :catch_2
    move-exception v8

    .line 3532
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 3516
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "is":Ljava/io/BufferedInputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/BufferedInputStream;
    .restart local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_8
    :try_start_8
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 3531
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v8

    .line 3532
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    move-object v11, v12

    .line 3533
    .end local v12    # "is":Ljava/io/BufferedInputStream;
    .restart local v11    # "is":Ljava/io/BufferedInputStream;
    goto/16 :goto_1

    .line 3525
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .end local v13    # "options":Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v16

    :goto_6
    if-eqz v6, :cond_9

    .line 3526
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 3528
    :cond_9
    if-eqz v11, :cond_a

    .line 3530
    :try_start_9
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 3533
    :cond_a
    :goto_7
    throw v16

    .line 3531
    :catch_4
    move-exception v8

    .line 3532
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 3525
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "is":Ljava/io/BufferedInputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v16

    move-object v11, v12

    .end local v12    # "is":Ljava/io/BufferedInputStream;
    .restart local v11    # "is":Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 3522
    .end local v10    # "inputStream":Ljava/io/InputStream;
    :catch_5
    move-exception v8

    goto :goto_5

    .line 35428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CompressType;)J
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .param p3, "x3"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CompressType;

    .prologue
    .line 186
    .line 50364
    const-wide/16 v0, 0x0

    .line 50365
    new-instance v2, Lrt;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lrt;-><init>(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 50366
    iget-boolean v2, v2, Lrt;->h:Z

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50367
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CompressType;)J

    move-result-wide v0

    .line 186
    :cond_0
    return-wide v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lagz;)Lagz;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Lagz;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;II)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "a"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .param p3, "preViewHeight"    # I
    .param p4, "preViewWidth"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 5145
    const/4 v5, 0x0

    .line 5146
    .local v5, "is":Ljava/io/BufferedInputStream;
    const/4 v1, 0x0

    .line 5147
    .local v1, "bp":Landroid/graphics/Bitmap;
    new-instance v0, Lrt;

    invoke-direct {v0, p1, p2}, Lrt;-><init>(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 5148
    .local v0, "ai":Lrt;
    iget-boolean v9, v0, Lrt;->h:Z

    if-eqz v9, :cond_1

    iget-object v9, p2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 5150
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 5151
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 5150
    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 5152
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v6, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;

    invoke-direct {v6, p0, v4, p1, p2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$44;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/io/InputStream;Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5183
    .end local v5    # "is":Ljava/io/BufferedInputStream;
    .local v6, "is":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {v6}, Lhcx;->a(Ljava/io/InputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v9

    if-nez v9, :cond_0

    .line 5209
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5213
    :goto_0
    const/4 v9, 0x0

    move-object v5, v6

    .line 5216
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "is":Ljava/io/BufferedInputStream;
    .restart local v5    # "is":Ljava/io/BufferedInputStream;
    :goto_1
    return-object v9

    .line 5211
    .end local v5    # "is":Ljava/io/BufferedInputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v2

    .line 5212
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 5187
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_3
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5188
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5189
    const/4 v9, 0x0

    invoke-static {v6, v9, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5190
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->reset()V

    .line 5191
    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 5192
    .local v8, "w":I
    iget v3, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 5194
    .local v3, "h":I
    mul-int v9, v8, p3

    mul-int v10, v3, p4

    if-le v9, v10, :cond_2

    .line 5195
    div-int v9, v8, p4

    iput v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 5199
    :goto_2
    const/4 v9, 0x0

    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5200
    const/4 v9, 0x0

    invoke-static {v6, v9, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 5209
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v5, v6

    .end local v3    # "h":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "is":Ljava/io/BufferedInputStream;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "w":I
    .restart local v5    # "is":Ljava/io/BufferedInputStream;
    :cond_1
    :goto_3
    move-object v9, v1

    .line 5216
    goto :goto_1

    .line 5197
    .end local v5    # "is":Ljava/io/BufferedInputStream;
    .restart local v3    # "h":I
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/BufferedInputStream;
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "w":I
    :cond_2
    :try_start_5
    div-int v9, v3, p3

    iput v9, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 5201
    .end local v3    # "h":I
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "w":I
    :catch_1
    move-exception v2

    move-object v5, v6

    .line 5202
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "is":Ljava/io/BufferedInputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "is":Ljava/io/BufferedInputStream;
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5203
    const/4 v1, 0x0

    .line 5208
    if-eqz v5, :cond_1

    .line 5209
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 5211
    :catch_2
    move-exception v2

    .line 5212
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 5211
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/BufferedInputStream;
    .restart local v3    # "h":I
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/BufferedInputStream;
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v8    # "w":I
    :catch_3
    move-exception v2

    .line 5212
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 5214
    .end local v6    # "is":Ljava/io/BufferedInputStream;
    .restart local v5    # "is":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 5204
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "h":I
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v8    # "w":I
    :catch_4
    move-exception v2

    .line 5205
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 5208
    if-eqz v5, :cond_1

    .line 5209
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    .line 5211
    :catch_5
    move-exception v2

    .line 5212
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 5207
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 5208
    :goto_6
    if-eqz v5, :cond_3

    .line 5209
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 5213
    :cond_3
    :goto_7
    throw v9

    .line 5211
    :catch_6
    move-exception v2

    .line 5212
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 5207
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/BufferedInputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "is":Ljava/io/BufferedInputStream;
    .restart local v5    # "is":Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 5204
    .end local v5    # "is":Ljava/io/BufferedInputStream;
    .restart local v6    # "is":Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v2

    move-object v5, v6

    .end local v6    # "is":Ljava/io/BufferedInputStream;
    .restart local v5    # "is":Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 5201
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :catch_8
    move-exception v2

    goto :goto_4
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 186
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 554
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    invoke-direct {v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;-><init>()V

    .line 555
    .local v1, "mailComposeFragment":Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 556
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "key_intent"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 557
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 558
    return-object v1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/sdk/model/AddressModel;)Lcom/alibaba/alimei/sdk/model/AddressModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/AddressModel;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bh:Lcom/alibaba/alimei/sdk/model/AddressModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 186
    invoke-static {p1, p2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 186
    .line 50311
    if-eqz p1, :cond_0

    .line 50312
    const-string/jumbo v0, "<br>------------------------------------<br>"

    :goto_0
    return-object v0

    .line 50314
    :cond_0
    const-string/jumbo v0, "/r/n------------------------------------/r/n"

    goto :goto_0
.end method

.method private static a(Lcom/alibaba/alimei/sdk/model/AddressModel;)Ljava/lang/String;
    .locals 3
    .param p0, "add"    # Lcom/alibaba/alimei/sdk/model/AddressModel;

    .prologue
    .line 5114
    if-nez p0, :cond_0

    .line 5115
    const-string/jumbo v1, ""

    .line 5122
    :goto_0
    return-object v1

    .line 5117
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 5118
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5119
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5121
    :cond_1
    const-string/jumbo v1, "&lt;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "&gt;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5122
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .param p0, "html"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2348
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_1

    .line 2377
    :cond_0
    :goto_0
    return-object p0

    .line 2353
    :cond_1
    invoke-static {p0}, Lair;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2354
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 2356
    .local v0, "attachment":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 2357
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2360
    :cond_3
    if-eqz p0, :cond_2

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 2364
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "\\s+(?i)src=\"cid(?-i):\\Q"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "\\E\""

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2366
    .local v1, "contentIdRe":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, " src=\""

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "\""

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2368
    .local v2, "srcContentUri":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 2373
    .end local v0    # "attachment":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v1    # "contentIdRe":Ljava/lang/String;
    .end local v2    # "srcContentUri":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Lair;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private declared-synchronized a(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    .line 4516
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aa:I

    .line 4518
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    if-eqz v0, :cond_0

    .line 4519
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    invoke-interface {v0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4522
    :cond_0
    monitor-exit p0

    return-void

    .line 4516
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lagz;)V
    .locals 9
    .param p1, "newMailModel"    # Lagz;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1652
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1703
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1655
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    if-eqz v1, :cond_0

    .line 1658
    iget-object v1, p1, Lagz;->d:Ljava/util/List;

    const/4 v2, 0x0

    .line 21721
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;ZZ)V

    .line 1659
    iget-object v1, p1, Lagz;->e:Ljava/util/List;

    const/4 v2, 0x0

    .line 21763
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Ljava/util/List;ZZ)V

    .line 1660
    iget-object v1, p1, Lagz;->f:Ljava/util/List;

    const/4 v2, 0x0

    .line 21812
    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Ljava/util/List;ZZ)V

    .line 1661
    iget-object v1, p1, Lagz;->g:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e(Ljava/lang/String;)V

    .line 1671
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v2, p1, Lagz;->z:Ljava/lang/Boolean;

    iput-object v2, v1, Lagz;->z:Ljava/lang/Boolean;

    .line 1672
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v2, p1, Lagz;->A:Ljava/lang/String;

    iput-object v2, v1, Lagz;->A:Ljava/lang/String;

    .line 1673
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget v2, p1, Lagz;->a:I

    iput v2, v1, Lagz;->a:I

    .line 1674
    iget-object v1, p1, Lagz;->z:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1675
    iget-object v1, p1, Lagz;->z:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Z)V

    .line 1677
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->p()V

    .line 1680
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    if-eqz v1, :cond_3

    .line 1681
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    iget-object v2, p1, Lagz;->A:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->d(Ljava/lang/String;)V

    .line 1684
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->t()V

    .line 1686
    iget-object v1, p1, Lagz;->p:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lagz;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1687
    iget-object v1, p1, Lagz;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 1688
    .local v0, "a":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1652
    .end local v0    # "a":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1693
    :cond_4
    :try_start_2
    iget-object v1, p1, Lagz;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1694
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    iget-object v2, p1, Lagz;->h:Ljava/lang/String;

    invoke-interface {v1, v2}, Lafk;->setContent(Ljava/lang/String;)V

    .line 1701
    :goto_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Z)V

    .line 22069
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->U:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 22070
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->U:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 22246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v1

    .line 22071
    invoke-interface {v1}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v3

    .line 22072
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 22073
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 23228
    invoke-static {v3, v1}, Lafv;->c(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Lcom/alibaba/alimei/sdk/attachment/DownloadingInfo;

    move-result-object v4

    .line 22075
    if-nez v4, :cond_5

    .line 22080
    iget-object v4, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 22081
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 24100
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->D:Lyb;

    if-nez v4, :cond_6

    .line 24101
    new-instance v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$22;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$22;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    iput-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->D:Lyb;

    .line 25085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v4

    .line 24134
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->D:Lyb;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "basic_AttachmentDownload"

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 22083
    :cond_6
    const-string/jumbo v4, "attachmentdownload"

    const-string/jumbo v5, "attachmentdownload mail compose"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22084
    invoke-static {v3, v1}, Lafw;->a(Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto :goto_3

    .line 1696
    :cond_7
    iget-object v1, p1, Lagz;->i:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g(Ljava/lang/String;)V

    .line 1697
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q()V

    goto :goto_2

    .line 22086
    :cond_8
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->V:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 22089
    :cond_9
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->U:Ljava/util/HashMap;

    .line 22090
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->V:Ljava/util/ArrayList;

    .line 22091
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->U:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 22092
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Intent;Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "typeValue"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 1260
    const-string/jumbo v1, "server_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->P:Ljava/lang/String;

    .line 1261
    const-string/jumbo v1, "MailComposeFragment"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "reply or forward serverId: "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->P:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->P:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1263
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$49;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/content/Intent;Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;)V

    const-class v3, Lxv;

    .line 1290
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 1263
    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 1291
    .local v0, "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->P:Ljava/lang/String;

    invoke-interface {v1, v2, v5, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetail(Ljava/lang/String;ZLxv;)V

    .line 1293
    .end local v0    # "listener":Lxv;, "Lxv<Lcom/alibaba/alimei/sdk/model/MailDetailModel;>;"
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;ILjava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 186
    .line 50522
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 50523
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50524
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labw;

    .line 50525
    if-eqz v0, :cond_0

    .line 50538
    iget-object v1, v0, Labw;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50539
    iget-object v1, v0, Labw;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50544
    :goto_1
    invoke-static {v1}, Lafh;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50545
    new-instance v2, Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v0, v0, Labw;->a:Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 50530
    :goto_2
    if-eqz v0, :cond_0

    .line 50531
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50541
    :cond_1
    iget-object v1, v0, Labw;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->staticDataDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 50547
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 50535
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(ILjava/util/List;)V

    .line 186
    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;J)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # J

    .prologue
    .line 186
    .line 50548
    sget v0, Laxo$i;->dt_mail_mailcompose_sticker_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 50549
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    .line 50552
    sget v0, Laxo$i;->dt_mail_sticker_conv_success:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 50553
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v6, 0x4

    move-wide v4, p1

    invoke-static/range {v1 .. v6}, Lacg;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/view/View;II)V
    .locals 8
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 186
    .line 50356
    const-string/jumbo v0, "scrollX"

    new-array v1, v7, [I

    aput p2, v1, v6

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 50357
    const-string/jumbo v1, "scrollY"

    new-array v2, v7, [I

    aput p3, v2, v6

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 50358
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 50359
    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 50360
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 50361
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;
    .param p2, "x2"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    .line 50244
    if-eqz p2, :cond_4

    .line 50248
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueForward:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bb:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_0

    .line 50249
    iget-object v0, p2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v0, :cond_0

    .line 50250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 50251
    iget-object v4, p2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50252
    invoke-direct {p0, v0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;Z)V

    .line 50258
    :cond_0
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReplyAll:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne p1, v0, :cond_2

    .line 50259
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bb:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 50260
    iget-object v0, p2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    invoke-direct {p0, v0, v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;ZZ)V

    .line 50262
    :cond_1
    iget-object v0, p2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->cc:Ljava/util/List;

    invoke-direct {p0, v0, v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Ljava/util/List;ZZ)V

    .line 50263
    iget-object v0, p2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->bcc:Ljava/util/List;

    invoke-direct {p0, v0, v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Ljava/util/List;ZZ)V

    .line 50267
    :cond_2
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReplyAll:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReply:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne p1, v0, :cond_5

    .line 50268
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iput-boolean v2, v0, Lagz;->m:Z

    move v0, v3

    .line 50274
    :goto_0
    iget-object v4, p2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->subject:Ljava/lang/String;

    invoke-static {v4, v0}, Lafh;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 50275
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e(Ljava/lang/String;)V

    .line 50277
    const-string/jumbo v0, "MailComposeFragment"

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v4, "mail is foward: "

    aput-object v4, v1, v2

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-boolean v4, v4, Lagz;->m:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50278
    iget-boolean v0, p2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasMailHtmlBodyLoaded:Z

    if-eqz v0, :cond_6

    .line 50279
    const-string/jumbo v0, "MailComposeFragment"

    const-string/jumbo v1, "reply or forward mail load, show refer mail detail"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50280
    iget-object v0, p2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->textContent:Ljava/lang/String;

    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50281
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Z)V

    :cond_4
    :goto_1
    return-void

    .line 50270
    :cond_5
    sget-object v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueForward:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne p1, v0, :cond_7

    .line 50272
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iput-boolean v3, v0, Lagz;->m:Z

    move v0, v1

    goto :goto_0

    .line 50283
    :cond_6
    const-string/jumbo v0, "MailComposeFragment"

    const-string/jumbo v1, "reply or forward mail body not load"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    .param p2, "x2"    # Z

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Ljava/util/List;

    .prologue
    .line 186
    .line 50396
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$38;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$38;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Ljava/util/List;Ljava/util/List;)V

    const-class v1, Lxv;

    .line 50437
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 50396
    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 50440
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/alimei/contact/api/ContactApi;->getUserSelfContactFromServer(Lxv;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50445
    :goto_0
    return-void

    .line 50441
    :catch_0
    move-exception v0

    .line 50443
    const-string/jumbo v1, "getUserFromServer.getUserSelfContactFromServer"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 186
    .line 50370
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bm:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50371
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bm:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-direct {p0, p1, p2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Ljava/util/List;

    .prologue
    .line 186
    .line 50197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50198
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50201
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50202
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    invoke-interface {v0, p2}, Lafk;->setContent(Ljava/lang/String;)V

    .line 50205
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 50216
    invoke-virtual {p0, p3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;)V

    .line 50209
    :cond_2
    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 50210
    invoke-virtual {p0, p4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Ljava/util/List;)V

    .line 50212
    :cond_3
    invoke-direct {p0, p5}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f(Ljava/util/List;)V

    .line 50214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bd:Z

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V
    .locals 2
    .param p1, "panel"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 2505
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    if-ne p1, v0, :cond_1

    .line 2506
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->av:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2512
    :cond_0
    :goto_0
    return-void

    .line 2507
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    if-ne p1, v0, :cond_2

    .line 2508
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aG:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2509
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    if-ne p1, v0, :cond_0

    .line 2510
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aJ:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 4
    .param p1, "attachment"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3576
    .line 35594
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    if-nez v0, :cond_3

    .line 35595
    iget-wide v0, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 35596
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g:Lfp;

    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    .line 36096
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 35596
    if-nez v0, :cond_0

    .line 35597
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35598
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g:Lfp;

    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3, v1}, Lfp;->b(JLjava/lang/Object;)V

    .line 35608
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r()V

    .line 35610
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->o:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;

    if-nez v0, :cond_1

    .line 35611
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->o:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;

    .line 35612
    const-string/jumbo v0, "THREAD"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/threadpool/Thread;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->p:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 35613
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->p:Lcom/alibaba/doraemon/threadpool/Thread;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->o:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 35615
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->o:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;->a(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 35616
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->X:Ljava/lang/Object;

    monitor-enter v1

    .line 35617
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->X:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 35618
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 35601
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35603
    :cond_3
    iget v0, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 35604
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->U:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 35618
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "textBody"    # Ljava/lang/String;
    .param p2, "htmlBody"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4956
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 4957
    .local v2, "plainTextFlag":Z
    if-eqz v2, :cond_6

    move-object v3, p1

    .line 4958
    .local v3, "text":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_5

    .line 4959
    if-eqz v2, :cond_0

    invoke-static {v3}, Lair;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4960
    :cond_0
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->al:Landroid/view/View;

    if-nez v4, :cond_2

    .line 4961
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ak:Landroid/view/ViewStub;

    sget v7, Laxo$f;->quoted_text_area:I

    invoke-virtual {v4, v7}, Landroid/view/ViewStub;->setInflatedId(I)V

    .line 4962
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ak:Landroid/view/ViewStub;

    sget v7, Laxo$g;->alm_cmail_quoted_text:I

    invoke-virtual {v4, v7}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 4963
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ak:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->al:Landroid/view/View;

    .line 4964
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->al:Landroid/view/View;

    sget v7, Laxo$f;->quoted_text:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iput-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 4965
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v4, p0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4966
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n()V

    .line 50157
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v4, :cond_2

    .line 50161
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 50162
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v8, "android.hardware.touchscreen.multitouch"

    .line 50163
    invoke-virtual {v4, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 50164
    invoke-virtual {v7, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 50165
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xa

    if-le v8, v9, :cond_1

    .line 50167
    const-class v8, Landroid/webkit/WebSettings;

    const-string/jumbo v9, "setDisplayZoomControls"

    new-array v10, v5, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v6

    new-array v11, v5, [Ljava/lang/Object;

    if-nez v4, :cond_7

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v11, v6

    invoke-static {v8, v7, v9, v10, v11}, Laiy;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50170
    :cond_1
    invoke-virtual {v7, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 50171
    invoke-virtual {v7, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 50172
    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v7, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 50173
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    new-instance v8, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CustomWebViewClient;

    invoke-direct {v8, v6}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$CustomWebViewClient;-><init>(B)V

    invoke-virtual {v4, v8}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 50174
    invoke-virtual {v7, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 50176
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const-string/jumbo v9, "App"

    invoke-virtual {v4, v8, v9}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50177
    invoke-virtual {v7, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 50178
    invoke-virtual {v7, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 50179
    invoke-virtual {v7, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 50181
    invoke-static {}, Laip;->a()I

    move-result v4

    .line 50182
    const/16 v5, 0x9

    if-le v4, v5, :cond_2

    .line 50183
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setOverScrollMode(I)V

    .line 4970
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->al:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 4971
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->al:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4973
    :cond_3
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v4, :cond_5

    .line 4974
    new-instance v0, Lsh;

    invoke-direct {v0}, Lsh;-><init>()V

    .line 4975
    .local v0, "config":Lsh;
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 4976
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4977
    .local v1, "localDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4978
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iget v5, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v4, v5

    iput v4, v0, Lsh;->b:F

    .line 4979
    const/high16 v4, 0x41900000    # 18.0f

    iget v5, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v4, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    iput v4, v0, Lsh;->c:F

    .line 4981
    .end local v1    # "localDisplayMetrics":Landroid/util/DisplayMetrics;
    :cond_4
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v4, v3, v3, v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->a(Ljava/lang/String;Ljava/lang/String;Lsh;)Z

    .line 4984
    .end local v0    # "config":Lsh;
    :cond_5
    return-void

    .end local v3    # "text":Ljava/lang/String;
    :cond_6
    move-object v3, p2

    .line 4957
    goto/16 :goto_0

    .restart local v3    # "text":Ljava/lang/String;
    :cond_7
    move v4, v6

    .line 50167
    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "isAppendSignature"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2679
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    invoke-interface {v1, p1}, Lafk;->setContent(Ljava/lang/String;)V

    .line 2685
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    instance-of v1, v1, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;

    if-eqz v1, :cond_0

    .line 2686
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 2687
    .local v0, "textLength":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    check-cast v1, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;

    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->setSelection(I)V

    .line 2689
    .end local v0    # "textLength":I
    :cond_0
    return-void

    .line 2686
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V
    .locals 8
    .param p1, "p"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;",
            "Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3792
    .local p0, "separateAddress":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 3822
    :cond_0
    return-void

    .line 3795
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getAllRecipient()Ljava/util/List;

    move-result-object v1

    .line 3796
    .local v1, "addrs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-eqz v1, :cond_0

    .line 3800
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_0

    .line 3801
    const/4 v5, 0x0

    .line 3802
    .local v5, "isContains":Z
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 3803
    .local v2, "ami":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v2, :cond_3

    iget-object v7, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3806
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .local v6, "j":I
    :goto_1
    if-ltz v6, :cond_2

    .line 3807
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 3808
    .local v3, "amj":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v3, :cond_4

    iget-object v7, v3, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 3811
    iget-object v0, v3, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 3813
    .local v0, "addr":Ljava/lang/String;
    if-eqz v0, :cond_4

    iget-object v7, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3814
    const/4 v5, 0x1

    .line 3818
    .end local v0    # "addr":Ljava/lang/String;
    .end local v3    # "amj":Lcom/alibaba/alimei/sdk/model/AddressModel;
    :cond_2
    if-nez v5, :cond_3

    .line 3819
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-virtual {p1, v7}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;)V

    .line 3800
    .end local v6    # "j":I
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 3806
    .restart local v3    # "amj":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .restart local v6    # "j":I
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1
.end method

.method private a(Ljava/util/List;Z)V
    .locals 1
    .param p2, "isNotifyReciepientChanged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2721
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;ZZ)V

    .line 2722
    return-void
.end method

.method private a(Ljava/util/List;ZZ)V
    .locals 2
    .param p2, "isNotifyReciepientChanged"    # Z
    .param p3, "isRemoveYourself"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2725
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2727
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0, p1, p3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/util/List;Z)V

    .line 2728
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 2730
    :cond_0
    return-void
.end method

.method private a([Ljava/lang/String;Z)V
    .locals 8
    .param p1, "address"    # [Ljava/lang/String;
    .param p2, "isNotifyReciepientChanged"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 2695
    if-eqz p1, :cond_3

    array-length v4, p1

    if-lez v4, :cond_3

    .line 2700
    array-length v6, p1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v0, p1, v4

    .line 2701
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2704
    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2705
    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2706
    .local v3, "index":I
    if-ltz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 2709
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2710
    .local v1, "alias":Ljava/lang/String;
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2711
    .local v2, "email":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v7, v2, v1, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2700
    .end local v1    # "alias":Ljava/lang/String;
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2713
    :cond_1
    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v7, v0, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2716
    .end local v0    # "addr":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 2718
    :cond_3
    return-void
.end method

.method static synthetic aa(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 10
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    const/16 v2, 0x8

    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 186
    .line 50447
    const-string/jumbo v0, "MailComposeFragment"

    const-string/jumbo v1, "begin edit quote"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50448
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_2

    .line 50449
    iput-boolean v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aS:Z

    .line 50450
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->al:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 50451
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->al:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50453
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v0, :cond_1

    .line 50454
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0, v2}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setVisibility(I)V

    .line 50456
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 50457
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->textContent:Ljava/lang/String;

    move-object v1, v0

    .line 50458
    :goto_0
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Z)Ljava/lang/String;

    move-result-object v0

    .line 50460
    const-string/jumbo v4, "MailComposeFragment"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v6, "trigger edit quote, plainTextFlag: "

    aput-object v6, v5, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string/jumbo v6, ", referItemId: "

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50461
    if-eqz v2, :cond_4

    .line 50462
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    new-array v4, v7, [Ljava/lang/String;

    aput-object v0, v4, v3

    const-string/jumbo v0, "\n\n\n"

    aput-object v0, v4, v8

    aput-object v1, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lafk;->setContent(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .line 50457
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 50466
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 50467
    invoke-static {v0}, Lair;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50468
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v4, "<div class=\"userinput\">"

    aput-object v4, v2, v3

    aput-object v0, v2, v8

    const-string/jumbo v0, "</div>)"

    aput-object v0, v2, v9

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50481
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 50482
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_7

    .line 50484
    const-string/jumbo v0, "<br>--------------------------<br>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50485
    const-string/jumbo v0, "<div class=\"quoteHeader\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50488
    const-string/jumbo v0, "<strong>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Laxo$i;->mail_sender:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "</strong>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50489
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->from:Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50490
    const-string/jumbo v0, "<br>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50493
    const-string/jumbo v0, "<b>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget v2, Laxo$i;->message_view_date_label:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "</b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50494
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-wide v6, v2, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->timeStamp:J

    invoke-static {v0, v6, v7}, Lsc;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50495
    const-string/jumbo v0, "<br>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50498
    const-string/jumbo v0, "<b>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget v2, Laxo$i;->message_view_to_label:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "</b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50499
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    .line 50500
    if-eqz v6, :cond_6

    move v2, v3

    .line 50501
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 50502
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50503
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_5

    .line 50504
    const-string/jumbo v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50501
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 50508
    :cond_6
    const-string/jumbo v0, "<br>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50510
    const-string/jumbo v0, "<b>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget v2, Laxo$i;->message_view_subject_label:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "</b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50511
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->subject:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50512
    const-string/jumbo v0, "<br>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50515
    const-string/jumbo v0, "</div>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50516
    const-string/jumbo v0, "<br><br>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50518
    const-string/jumbo v0, "MailComposeFragment"

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v6, "buildQuoteHeader: "

    aput-object v6, v2, v3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50521
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g(Ljava/lang/String;)V

    .line 50474
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 50475
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 50476
    const-string/jumbo v1, "MailComposeFragment"

    const-string/jumbo v2, "quote has been append to user body"

    const-string/jumbo v3, "call stack"

    invoke-static {v1, v2, v3, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method static synthetic ab(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->E:Z

    return v0
.end method

.method static synthetic ac(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    .line 50570
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v0

    .line 50555
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$43;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$43;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->removeAccount(Ljava/lang/String;Lxv;)V

    .line 186
    return-void
.end method

.method static synthetic ad(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    .line 50571
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_mail_account_logout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50572
    const-string/jumbo v1, "mail_account_logout"

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50573
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->G:Landroid/app/Application;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 50574
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 50575
    if-eqz v0, :cond_0

    .line 50576
    invoke-static {v0}, Lacg;->a(Landroid/content/Context;)V

    .line 50577
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 186
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .param p2, "isRemoveYourself"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2836
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_0
    move-object v1, p1

    .line 2850
    :cond_1
    return-object v1

    .line 2840
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2842
    .local v1, "tempAddresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 2843
    .local v0, "addressModel":Lcom/alibaba/alimei/sdk/model/AddressModel;
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 2844
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2847
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v5, 0x2715

    .line 984
    const-string/jumbo v0, "conversation"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "conversation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bb:Lcom/alibaba/wukong/im/Conversation;

    .line 17991
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bb:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 18776
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Z)V

    .line 17993
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$34;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$34;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    .line 18008
    invoke-static {}, Laew;->a()Laew;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bb:Lcom/alibaba/wukong/im/Conversation;

    .line 18009
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    .line 19171
    if-eqz v2, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 18012
    :cond_0
    :goto_0
    return-void

    .line 19175
    :cond_1
    invoke-static {v3}, Laew;->a(Ljava/lang/String;)Labi;

    move-result-object v3

    .line 19178
    new-instance v4, Laew$1;

    invoke-direct {v4, v1, v2, v0, v5}, Laew$1;-><init>(Laew;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Laew$a;I)V

    .line 19202
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    const-class v1, Lcma;

    invoke-interface {v0, v4, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 19203
    invoke-static {}, Lro;->a()Lro;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lro;->a(Labi;Lcma;)V

    goto :goto_0

    .line 18012
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bb:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 18013
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bb:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lajl;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 18014
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 18015
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18016
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 18017
    iput-wide v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 18018
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18019
    invoke-virtual {p0, v5, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(ILjava/util/List;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lagz;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Lagz;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lagz;)V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/view/View;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 186
    .line 50374
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->an:Landroid/view/View;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->an:Landroid/view/View;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50376
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ao:Landroid/view/View;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ao:Landroid/view/View;

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50378
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ap:Landroid/view/View;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ap:Landroid/view/View;

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50380
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aq:Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aq:Landroid/view/View;

    if-ne p1, v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    return-void

    :cond_0
    move v0, v2

    .line 50374
    goto :goto_0

    :cond_1
    move v0, v2

    .line 50376
    goto :goto_1

    :cond_2
    move v0, v2

    .line 50378
    goto :goto_2

    :cond_3
    move v1, v2

    .line 50380
    goto :goto_3
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .prologue
    .line 186
    .line 50218
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueForward:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v0, v1, :cond_2

    .line 50219
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 50220
    :goto_0
    if-eqz v0, :cond_2

    .line 50221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 50222
    if-nez v0, :cond_1

    .line 50223
    const-string/jumbo v0, "MailComposeFragment"

    const-string/jumbo v2, "addFrowardSourceAttachment fail for attachmentModel is null!!!"

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 50219
    :cond_0
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->attachments:Ljava/util/List;

    goto :goto_0

    .line 50226
    :cond_1
    const-string/jumbo v2, "MailComposeFragment"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "addFrowardSourceAttachment: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50227
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    goto :goto_1

    .line 186
    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/util/List;ZZ)V
    .locals 2
    .param p2, "isNotifyReciepientChanged"    # Z
    .param p3, "isRemoveYourself"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2767
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2769
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0, p1, p3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/util/List;Z)V

    .line 2770
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v()V

    .line 2771
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 2773
    :cond_0
    return-void
.end method

.method private b([Ljava/lang/String;Z)V
    .locals 8
    .param p1, "address"    # [Ljava/lang/String;
    .param p2, "isNotifyReciepientChanged"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 2736
    if-eqz p1, :cond_3

    array-length v4, p1

    if-lez v4, :cond_3

    .line 2741
    array-length v6, p1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v0, p1, v4

    .line 2742
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2745
    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2746
    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2747
    .local v3, "index":I
    if-ltz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 2750
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2751
    .local v1, "alias":Ljava/lang/String;
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2752
    .local v2, "email":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v7, v2, v1, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2741
    .end local v1    # "alias":Ljava/lang/String;
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2754
    :cond_1
    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v7, v0, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2757
    .end local v0    # "addr":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v()V

    .line 2758
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 2760
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->t:Z

    return v0
.end method

.method private static b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Z
    .locals 2
    .param p0, "recipientsPanel"    # Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .prologue
    const/4 v0, 0x0

    .line 2640
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getAllRecipient()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2641
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getAllRecipient()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 2643
    :cond_0
    return v0
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aO:Ljava/lang/String;

    return-object p1
.end method

.method private c(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1188
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 1189
    .local v4, "dataUri":Landroid/net/Uri;
    if-eqz v4, :cond_1

    .line 1190
    const-string/jumbo v14, "mailto"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1191
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1192
    .local v8, "mailToString":Ljava/lang/String;
    const-string/jumbo v14, "?"

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1193
    .local v6, "index":I
    const/4 v14, 0x6

    add-int/lit8 v7, v14, 0x1

    .line 1197
    .local v7, "length":I
    const/4 v14, -0x1

    if-ne v6, v14, :cond_3

    .line 1198
    :try_start_0
    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 19948
    const-string/jumbo v15, "UTF-8"

    invoke-static {v14, v15}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1202
    .local v11, "to":Ljava/lang/String;
    :goto_0
    const-string/jumbo v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a([Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    .end local v11    # "to":Ljava/lang/String;
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "foo://"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1212
    .local v12, "uri":Landroid/net/Uri;
    const-string/jumbo v14, "cc"

    invoke-virtual {v12, v14}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1213
    .local v2, "cc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-interface {v2, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 1214
    .local v3, "ccs":[Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a([Ljava/lang/String;Z)V

    .line 1215
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b([Ljava/lang/String;Z)V

    .line 1216
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c([Ljava/lang/String;Z)V

    .line 1218
    const-string/jumbo v14, "subject"

    invoke-virtual {v12, v14}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 1219
    .local v10, "subject":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_0

    .line 1220
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i:Landroid/widget/EditText;

    const/4 v14, 0x0

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    const/4 v14, 0x0

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e(Ljava/lang/String;)V

    .line 1224
    :cond_0
    const-string/jumbo v14, "body"

    invoke-virtual {v12, v14}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1225
    .local v1, "body":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_1

    .line 1226
    const/4 v14, 0x0

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/lang/String;Z)V

    .line 1239
    .end local v1    # "body":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "cc":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "ccs":[Ljava/lang/String;
    .end local v6    # "index":I
    .end local v7    # "length":I
    .end local v8    # "mailToString":Ljava/lang/String;
    .end local v10    # "subject":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v14, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1241
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 1242
    .local v9, "mimeType":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 1243
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1244
    .local v13, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string/jumbo v14, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 1245
    .restart local v12    # "uri":Landroid/net/Uri;
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    .end local v12    # "uri":Landroid/net/Uri;
    :goto_2
    if-eqz v13, :cond_2

    .line 1251
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;)V

    .line 1254
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v13    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    return-void

    .line 1200
    .restart local v6    # "index":I
    .restart local v7    # "length":I
    .restart local v8    # "mailToString":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {v8, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 20948
    const-string/jumbo v15, "UTF-8"

    invoke-static {v14, v15}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 1200
    .restart local v11    # "to":Ljava/lang/String;
    goto/16 :goto_0

    .line 1203
    .end local v11    # "to":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1204
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v14, "MailComposeFragment"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " while decoding \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1247
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "index":I
    .end local v7    # "length":I
    .end local v8    # "mailToString":Ljava/lang/String;
    .restart local v9    # "mimeType":Ljava/lang/String;
    :cond_4
    const-string/jumbo v14, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .restart local v13    # "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    goto :goto_2
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .prologue
    .line 186
    .line 50232
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReply:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReplyAll:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v0, v1, :cond_1

    .line 50235
    :cond_0
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 50236
    :goto_0
    if-nez v0, :cond_3

    .line 50237
    const-string/jumbo v1, "MailComposeFragment"

    const-string/jumbo v2, "addReplyResourceAttachment fail for attachments is null!!!"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50241
    :goto_1
    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f(Ljava/util/List;)V

    .line 186
    :cond_1
    return-void

    .line 50235
    :cond_2
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->attachments:Ljava/util/List;

    goto :goto_0

    .line 50239
    :cond_3
    const-string/jumbo v1, "MailComposeFragment"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "addReplyResourceAttachment: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 186
    .line 50315
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50318
    if-eqz p1, :cond_0

    .line 50319
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aj:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setVisibility(I)V

    .line 50321
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->N:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aj:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    if-eqz v0, :cond_1

    .line 50322
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ac:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$14;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$14;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    :cond_1
    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .locals 5
    .param p1, "serverId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1611
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "MailComposeFragment"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "loadEditDraftFromServer serverId: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lair;->c(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1649
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1615
    :cond_1
    :try_start_1
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$2;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    const-class v3, Lxv;

    .line 1647
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 1615
    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 1648
    .local v0, "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->loadMailHtmlBodyFromServer(Ljava/lang/String;Lxv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1611
    .end local v0    # "listener":Lxv;, "Lxv<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private c(Ljava/util/List;ZZ)V
    .locals 2
    .param p2, "isNotifyReciepientChanged"    # Z
    .param p3, "isRemoveYourself"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2816
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2818
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0, p1, p3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/util/List;Z)V

    .line 2819
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v()V

    .line 2820
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 2821
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v0, v0, Lagz;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2822
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v()V

    .line 2823
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 2828
    :cond_0
    :goto_0
    return-void

    .line 2825
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0, p1, p3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method private c(Z)V
    .locals 5
    .param p1, "separatedSend"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 3778
    if-eqz p1, :cond_1

    .line 3779
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 36849
    iget-object v1, v3, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 36852
    iget-object v1, v3, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    .line 36853
    iget-object v1, v3, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-virtual {v3, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lcom/alibaba/alimei/sdk/model/AddressModel;)V

    .line 36852
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0

    .line 3780
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getAllRecipient()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/util/List;Z)V

    .line 3781
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getAllRecipient()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/util/List;Z)V

    .line 3782
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getAllRecipient()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/util/List;Z)V

    .line 3789
    :goto_1
    return-void

    .line 3784
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getAllRecipient()Ljava/util/List;

    move-result-object v0

    .line 3785
    .local v0, "separateAddress":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 3786
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 3787
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    goto :goto_1
.end method

.method private c([Ljava/lang/String;Z)V
    .locals 8
    .param p1, "addresses"    # [Ljava/lang/String;
    .param p2, "isNotifyReciepientChanged"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 2779
    if-eqz p1, :cond_3

    array-length v5, p1

    if-lez v5, :cond_3

    .line 2784
    array-length v6, p1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, p1, v5

    .line 2785
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2788
    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2789
    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2790
    .local v3, "index":I
    if-ltz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 2793
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2794
    .local v1, "alias":Ljava/lang/String;
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2795
    .local v2, "email":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v7, v2, v1, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2784
    .end local v1    # "alias":Ljava/lang/String;
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2797
    :cond_1
    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v7, v0, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 2800
    .end local v0    # "addr":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v5, v5, Lagz;->z:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2801
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v()V

    .line 2802
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-direct {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 2809
    :cond_3
    return-void

    .line 2804
    :cond_4
    array-length v5, p1

    :goto_2
    if-ge v4, v5, :cond_3

    aget-object v0, p1, v4

    .line 2805
    .restart local v0    # "addr":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v6, v0, p2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Ljava/lang/String;Z)V

    .line 2804
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aP:Ljava/lang/String;

    return-object p1
.end method

.method private d(Z)Ljava/lang/String;
    .locals 2
    .param p1, "toHtml"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 5272
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    if-nez v1, :cond_0

    .line 5273
    const-string/jumbo v1, ""

    .line 5285
    :goto_0
    return-object v1

    .line 5275
    :cond_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    instance-of v1, v1, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    if-eqz v1, :cond_1

    .line 5276
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    invoke-interface {v1}, Lafk;->getContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5277
    :cond_1
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    instance-of v1, v1, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;

    if-eqz v1, :cond_3

    .line 5278
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    check-cast v0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;

    .line 5279
    .local v0, "editText":Lcom/alibaba/alimei/mail/widget/GuardAtEditText;
    if-eqz p1, :cond_2

    .line 5280
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lcly;->a(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5282
    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5285
    .end local v0    # "editText":Lcom/alibaba/alimei/mail/widget/GuardAtEditText;
    :cond_3
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/sdk/model/MailDetailModel;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    .prologue
    .line 186
    .line 50287
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueEditDraft:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v0, v1, :cond_1

    .line 50288
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 50303
    :cond_0
    :goto_0
    return-void

    .line 50289
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueForward:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v0, v1, :cond_2

    .line 50290
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a()V

    goto :goto_0

    .line 50291
    :cond_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReplyAll:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReply:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v0, v1, :cond_4

    .line 50293
    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 50295
    :cond_4
    if-eqz p1, :cond_0

    .line 50296
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->to:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 50298
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a()V

    goto :goto_0

    .line 50301
    :cond_6
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->subject:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 50303
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 50305
    :cond_7
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 8
    .param p1, "draftMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2168
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2197
    :cond_0
    :goto_0
    return-void

    .line 2173
    :cond_1
    invoke-static {}, Lacq;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2174
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v2}, Laca;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2175
    .local v1, "signText":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2176
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "\n\n\n\n\n\n\n\n"

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lafk;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 2178
    :cond_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    new-array v3, v4, [Ljava/lang/String;

    aput-object p1, v3, v5

    const-string/jumbo v4, "\n\n\n\n"

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lafk;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 2183
    .end local v1    # "signText":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2184
    .restart local v1    # "signText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2189
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2190
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "<br/><br/><br/><br/><br/><br/><br/><br/>"

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lafk;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 2193
    :cond_4
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "<p>"

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    const-string/jumbo v3, "</p>"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2194
    .local v0, "htmlMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    new-array v3, v4, [Ljava/lang/String;

    aput-object v0, v3, v5

    const-string/jumbo v4, "<br/><br/><br/><br/>"

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lafk;->setContent(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aR:Z

    return v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aw:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 2668
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2669
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2671
    :cond_0
    return-void
.end method

.method private e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1026
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$45;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$45;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aQ:Z

    return v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->at:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 5029
    if-nez p0, :cond_0

    .line 5030
    const-string/jumbo p0, ""

    .line 5040
    :goto_0
    return-object p0

    .line 5033
    :cond_0
    const-string/jumbo v0, "<style[^>]*?>[\\s\\S]*?</style>"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5035
    const-string/jumbo v0, "<head[^>]*?>[\\s\\S]*?</head>"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5037
    const-string/jumbo v0, "<script[^>]*?>[\\s\\S]*?</script>"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5039
    const-string/jumbo v0, "<html[^>]*>"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "</html>"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5040
    goto :goto_0
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g(Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4122
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 4124
    .local v0, "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->attachmentType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 43580
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->U:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4129
    .end local v0    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->M:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/sdk/model/MailDetailModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 7
    .param p1, "html"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 5045
    invoke-static {p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5046
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    instance-of v4, v4, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;

    if-eqz v4, :cond_1

    .line 5047
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    check-cast v0, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;

    .line 50188
    .local v0, "editText":Lcom/alibaba/alimei/mail/widget/GuardAtEditText;
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcms;->a(Landroid/content/Context;)I

    move-result v5

    .line 50189
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcms;->b(Landroid/content/Context;)I

    move-result v4

    .line 50190
    if-le v5, v4, :cond_0

    .line 50194
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/high16 v6, 0x41500000    # 13.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    .line 50195
    sub-int v2, v4, v5

    .line 5049
    .local v2, "maxImageWidth":I
    new-instance v3, Laem;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, v0, p1, v2}, Laem;-><init>(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 5050
    .local v3, "p":Laem;
    const/4 v4, 0x0

    invoke-static {p1, v3, v4, v2}, Lcly;->a(Ljava/lang/String;Lcly$b;Lcly$c;I)Landroid/text/Spanned;

    move-result-object v1

    .line 5051
    .local v1, "htmlSpan":Landroid/text/Spanned;
    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->setText(Ljava/lang/CharSequence;)V

    .line 5055
    .end local v0    # "editText":Lcom/alibaba/alimei/mail/widget/GuardAtEditText;
    .end local v1    # "htmlSpan":Landroid/text/Spanned;
    .end local v2    # "maxImageWidth":I
    .end local v3    # "p":Laem;
    :goto_1
    return-void

    .restart local v0    # "editText":Lcom/alibaba/alimei/mail/widget/GuardAtEditText;
    :cond_0
    move v4, v5

    .line 50190
    goto :goto_0

    .line 5053
    .end local v0    # "editText":Lcom/alibaba/alimei/mail/widget/GuardAtEditText;
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    invoke-interface {v4, p1}, Lafk;->setContent(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 186
    .line 50388
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50389
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$33;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$33;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bp:Z

    return v0
.end method

.method static synthetic i(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lagz;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aQ:Z

    return v0
.end method

.method static synthetic l(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aR:Z

    return v0
.end method

.method private m()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 759
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 760
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bg:Ljava/lang/String;

    .line 761
    .local v0, "accountName":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bg:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 762
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    new-instance v2, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v2, v0}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 765
    .end local v0    # "accountName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w()V

    .line 768
    return-void
.end method

.method static synthetic m(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    const/4 v2, 0x0

    .line 186
    .line 50337
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v0, v0, Lagz;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50341
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50344
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50349
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50352
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50353
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->az:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50354
    iput-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aD:Z

    .line 186
    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lafk;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    return-object v0
.end method

.method private n()V
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->onResume()V

    .line 812
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->resumeTimers()V

    .line 814
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method private o()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 1371
    const/4 v3, 0x0

    .line 1373
    .local v3, "htmlChanged":Z
    :try_start_0
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->attachments:Ljava/util/List;

    if-nez v6, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return v5

    .line 1376
    :cond_1
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->U:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1377
    .local v0, "attachList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1382
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    invoke-static {v6}, Lair;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    .line 1383
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 1385
    .local v1, "attachment":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-object v6, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 1386
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1389
    :cond_3
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1393
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\\s+(?i)src=\"cid(?-i):\\Q"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\\E\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1395
    .local v2, "contentIdRe":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " src=\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1397
    .local v4, "srcContentUri":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v7, v7, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    .line 1399
    const/4 v3, 0x1

    goto :goto_1

    .line 1404
    .end local v1    # "attachment":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v2    # "contentIdRe":Ljava/lang/String;
    .end local v4    # "srcContentUri":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v6, v6, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    invoke-static {v6}, Lair;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "attachList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    :goto_2
    move v5, v3

    .line 1408
    goto/16 :goto_0

    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method static synthetic p(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    return-object v0
.end method

.method private p()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ai:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1707
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ai:Landroid/view/View;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    invoke-virtual {v0}, Lagz;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1709
    :cond_0
    return-void

    .line 1707
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic q(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/ComposeScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->as:Lcom/alibaba/alimei/mail/widget/ComposeScrollView;

    return-object v0
.end method

.method private declared-synchronized q()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2316
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-object v2, v2, Lagz;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 2344
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 28246
    :cond_1
    :try_start_1
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 2320
    invoke-interface {v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v0

    .line 2321
    .local v0, "defaultAccount":Ljava/lang/String;
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$17;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$17;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    const-class v4, Lxv;

    .line 2339
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 2321
    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxv;

    .line 2341
    .local v1, "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2342
    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-object v3, v3, Lagz;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailAttachments(Ljava/lang/String;Lxv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2316
    .end local v0    # "defaultAccount":Ljava/lang/String;
    .end local v1    # "listener":Lxv;, "Lxv<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private r()V
    .locals 0

    .prologue
    .line 3622
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->s()V

    .line 3623
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d()V

    .line 3624
    return-void
.end method

.method static synthetic r(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i()V

    return-void
.end method

.method static synthetic s(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ar:Landroid/view/View;

    return-object v0
.end method

.method private s()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 3654
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aj:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setVisibility(I)V

    .line 3655
    return-void

    .line 3654
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic t(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->N:Landroid/view/View;

    return-object v0
.end method

.method private t()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 3719
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v0, v0, Lagz;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3720
    invoke-static {}, Lafj;->c()V

    .line 3721
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aD:Z

    if-eqz v0, :cond_0

    .line 3722
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->az:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3723
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aI:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3724
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3730
    :goto_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aA:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3731
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->at:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3743
    :goto_1
    return-void

    .line 3726
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->az:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3727
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aI:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3728
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3735
    :cond_1
    invoke-static {}, Lafj;->b()V

    .line 3736
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3737
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->az:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3738
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aI:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3739
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aA:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3740
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->at:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic u(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->O:Landroid/widget/TextView;

    return-object v0
.end method

.method private u()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4041
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bp:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4042
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    instance-of v0, v0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    if-eqz v0, :cond_0

    .line 4043
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    sget v2, Laxo$i;->dt_mail_video_encoding:I

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->a(IZ)V

    .line 4045
    :cond_0
    iput-boolean v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bp:Z

    .line 4046
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bn:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4047
    .local v1, "path":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;

    invoke-direct {v5, p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$32;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/lang/String;)V

    .line 43023
    .local v5, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez v5, :cond_2

    .line 43039
    .end local v1    # "path":Ljava/lang/String;
    .end local v5    # "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 43027
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v5    # "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43029
    const-string/jumbo v0, "0"

    const-string/jumbo v2, "file path is empty"

    invoke-interface {v5, v0, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43034
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43035
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 43037
    const-string/jumbo v0, "1"

    const-string/jumbo v2, "file not exist"

    invoke-interface {v5, v0, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43042
    :cond_4
    new-instance v0, Lzq;

    const-wide v2, 0x3fd999999999999aL    # 0.4

    invoke-direct/range {v0 .. v5}, Lzq;-><init>(Ljava/lang/String;DILcma;)V

    .line 43072
    iget-object v2, v0, Lzq;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 43073
    invoke-static {}, Lcjn;->a()Lcjn;

    move-result-object v2

    const-string/jumbo v3, "tpffmpeg"

    new-instance v4, Lzq$1;

    invoke-direct {v4, v0}, Lzq$1;-><init>(Lzq;)V

    invoke-virtual {v2, v3, v4}, Lcjn;->a(Ljava/lang/String;Lcjn$a;)V

    goto :goto_0
.end method

.method static synthetic v(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aj:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    return-object v0
.end method

.method private v()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4374
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4384
    :cond_0
    :goto_0
    return-void

    .line 4377
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v0, v0, Lagz;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4380
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ay:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4381
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->az:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aD:Z

    .line 4383
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w()V

    goto :goto_0
.end method

.method static synthetic w(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    return-object v0
.end method

.method private w()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4403
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    if-eqz v0, :cond_0

    .line 4404
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v0, v0, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v0, :cond_1

    .line 4405
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v0, v0, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 4409
    :goto_0
    invoke-interface {v1, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->c(Ljava/lang/String;)V

    .line 4412
    :cond_0
    return-void

    .line 4406
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-object v0, v0, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v0, :cond_2

    .line 4407
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-object v0, v0, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    goto :goto_0

    .line 4409
    :cond_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bg:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic x(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Lcom/alibaba/alimei/mail/activity/MailBaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    return-object v0
.end method

.method static synthetic y(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v()V

    return-void
.end method

.method static synthetic z(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->X:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "account"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v12, 0x3

    const/4 v3, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2200
    invoke-static {}, Lacr;->a()Lacr;

    move-result-object v6

    invoke-virtual {v6, p1}, Lacr;->b(Ljava/lang/String;)Laca;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->be:Laca;

    .line 2202
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->be:Laca;

    if-nez v6, :cond_1

    .line 2203
    const-string/jumbo v6, "MailComposeFragment"

    const-string/jumbo v7, "mMailSignatureDo == null"

    invoke-static {v6, v7}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2241
    :cond_0
    :goto_0
    return-object v3

    .line 2207
    :cond_1
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->be:Laca;

    invoke-virtual {v6}, Laca;->b()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2208
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->be:Laca;

    iget-object v6, v6, Laca;->t:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2209
    const-string/jumbo v6, "MailComposeFragment"

    const-string/jumbo v7, "mMailSignatureDo.content isEmpty"

    invoke-static {v6, v7}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2213
    :cond_2
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->be:Laca;

    invoke-virtual {v6}, Laca;->d()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2214
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->be:Laca;

    iget-object v2, v6, Laca;->v:Ljava/lang/String;

    .line 2215
    .local v2, "preview":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2216
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->be:Laca;

    iget-object v3, v6, Laca;->t:Ljava/lang/String;

    .line 27249
    .end local v2    # "preview":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    :goto_1
    sget v6, Laxo$i;->dt_mail_default_signature:I

    invoke-virtual {p0, v6}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 27250
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 27251
    new-array v6, v12, [Ljava/lang/String;

    const-string/jumbo v7, "<a href=\"https://www.dingtalk.com\">"

    aput-object v7, v6, v9

    aput-object v3, v6, v10

    const-string/jumbo v7, "</a>"

    aput-object v7, v6, v11

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2238
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    const-string/jumbo v6, "\n"

    const-string/jumbo v7, "<br>"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2240
    .restart local v3    # "result":Ljava/lang/String;
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "<div class="

    aput-object v7, v6, v9

    .line 28245
    new-array v7, v11, [Ljava/lang/String;

    const-string/jumbo v8, "signature_"

    aput-object v8, v7, v9

    aput-object p1, v7, v10

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2240
    aput-object v7, v6, v10

    const-string/jumbo v7, " >"

    aput-object v7, v6, v11

    aput-object v3, v6, v12

    const/4 v7, 0x4

    const-string/jumbo v8, "</div>"

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2241
    goto/16 :goto_0

    .line 2218
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "preview":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->be:Laca;

    iget-object v6, v6, Laca;->t:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2219
    .local v4, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->be:Laca;

    iget-object v6, v6, Laca;->t:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 2220
    .local v5, "start":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int v1, v5, v6

    .line 2221
    .local v1, "end":I
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    .line 2222
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_5

    .line 2223
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2225
    :cond_5
    if-eqz v0, :cond_0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2228
    sget v6, Laxo$i;->dt_mail_sign_disclaimer_content:I

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2231
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 2232
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "end":I
    .end local v2    # "preview":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "start":I
    :cond_6
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->be:Laca;

    iget-object v3, v6, Laca;->t:Ljava/lang/String;

    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_1

    .line 2235
    .end local v3    # "result":Ljava/lang/String;
    :cond_7
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->be:Laca;

    iget-object v3, v6, Laca;->j:Ljava/lang/String;

    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public final a(ILcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 4001
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    if-eqz v0, :cond_0

    .line 4002
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    invoke-interface {v0, p2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V

    .line 4005
    :cond_0
    return-void
.end method

.method public final a(ILjava/util/List;)V
    .locals 8
    .param p1, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4537
    .local p2, "userIdentityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 4538
    new-instance v0, Labi;

    invoke-direct {v0}, Labi;-><init>()V

    .line 4539
    .local v0, "reqModel":Labi;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Labi;->a:Ljava/util/List;

    .line 4540
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 4541
    .local v2, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v1, Labj;

    invoke-direct {v1}, Labj;-><init>()V

    .line 4542
    .local v1, "singleModel":Labj;
    if-eqz v2, :cond_0

    .line 4543
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Labj;->a:Ljava/lang/Long;

    .line 4544
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 4545
    iget-wide v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Labj;->b:Ljava/lang/Long;

    .line 4547
    :cond_1
    iget-object v4, v0, Labi;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47619
    .end local v1    # "singleModel":Labj;
    .end local v2    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Z)V

    .line 47620
    const-class v3, Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/idl/service/CMailIService;

    .line 47621
    if-eqz v3, :cond_3

    .line 47622
    new-instance v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$40;

    invoke-direct {v4, p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$40;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;I)V

    invoke-interface {v3, v0, v4}, Lcom/alibaba/alimei/idl/service/CMailIService;->getReceivers(Labi;Liyv;)V

    .line 4552
    .end local v0    # "reqModel":Labi;
    :cond_3
    return-void
.end method

.method public final a(Lajo;)V
    .locals 3
    .param p1, "seacher"    # Lajo;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 2257
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->u:Lajo;

    .line 2258
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->u:Lajo;

    if-nez v0, :cond_0

    .line 2259
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v0, v1, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lajo;Landroid/app/Activity;)V

    .line 2260
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v0, v1, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lajo;Landroid/app/Activity;)V

    .line 2261
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v0, v1, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lajo;Landroid/app/Activity;)V

    .line 2262
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v0, v1, v1}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lajo;Landroid/app/Activity;)V

    .line 2269
    :goto_0
    return-void

    .line 2264
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->u:Lajo;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lajo;Landroid/app/Activity;)V

    .line 2265
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->u:Lajo;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lajo;Landroid/app/Activity;)V

    .line 2266
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->u:Lajo;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lajo;Landroid/app/Activity;)V

    .line 2267
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->u:Lajo;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Lajo;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2499
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2500
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2502
    :cond_0
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;ILjava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 18
    .param p1, "attachmentPanel"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;
    .param p2, "position"    # I
    .param p3, "mailServerId"    # Ljava/lang/String;
    .param p4, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .prologue
    .line 3892
    invoke-static/range {p4 .. p4}, Lse;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3893
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3896
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->W:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 3897
    .local v17, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lacj;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3898
    const/4 v3, 0x1

    new-array v7, v3, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 3899
    .local v7, "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    invoke-static/range {v17 .. v17}, Ltm;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v3

    const-string/jumbo v5, "mail"

    invoke-static {v3, v5}, Ltm;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v16

    .line 3900
    .local v16, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const-wide/16 v10, 0x0

    move-object/from16 v0, v16

    iput-wide v10, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->id:J

    .line 3901
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 3902
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v16

    iput-object v3, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 3904
    :cond_1
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v5, "favorite_enter_hide"

    const-string/jumbo v6, "true"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3905
    const/4 v3, 0x0

    aput-object v16, v7, v3

    .line 3906
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3907
    .local v4, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "hide_list_button"

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3908
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    .line 3909
    .local v2, "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    .line 3954
    .end local v2    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v7    # "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v16    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v17    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_2
    :goto_0
    return-void

    .line 3916
    :cond_3
    const/4 v3, 0x1

    new-array v7, v3, [Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    .line 3917
    .restart local v7    # "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lafh;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v16

    .line 3918
    .restart local v16    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    const/4 v3, 0x0

    aput-object v16, v7, v3

    .line 3919
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3920
    .restart local v4    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "hide_list_button"

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3921
    const/4 v3, 0x1

    new-array v15, v3, [Z

    .line 3922
    .local v15, "mailAttachUrls":[Z
    const/4 v3, 0x0

    const/4 v5, 0x1

    aput-boolean v5, v15, v3

    .line 3923
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    .line 3924
    .local v8, "mailAttachFileNames":[Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    aput-object v5, v8, v3

    .line 3925
    const-string/jumbo v3, "mail_attach_urls"

    invoke-virtual {v4, v3, v15}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 3926
    const-string/jumbo v3, "mail_attach_names"

    invoke-virtual {v4, v3, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3928
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    .line 3929
    .restart local v2    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;ZZ[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;)V

    goto :goto_0

    .line 3933
    .end local v2    # "mainModuleInterface":Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v7    # "photoList":[Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .end local v8    # "mailAttachFileNames":[Ljava/lang/String;
    .end local v15    # "mailAttachUrls":[Z
    .end local v16    # "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :cond_4
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3935
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v9

    .line 3936
    .local v9, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3937
    .restart local v4    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->W:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 3938
    .restart local v17    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lacj;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3939
    const-string/jumbo v3, "data"

    move-object/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3940
    const-string/jumbo v3, "show_mail_menu"

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3941
    const-string/jumbo v3, "show_space_menu"

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3942
    const-string/jumbo v3, "is_auto_preview"

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3943
    const-string/jumbo v3, "intent_key_from_compse"

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3944
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v11, v4

    invoke-virtual/range {v9 .. v14}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->a(Landroid/content/Context;Landroid/os/Bundle;JLcma;)V

    goto/16 :goto_0

    .line 3950
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v9    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    .end local v17    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v3, v0, v1, v5, v6}, Lacg;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Ljava/lang/String;Lcma;)V

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
    .line 3885
    .local p5, "allImageAttachments":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    const/4 v0, 0x0

    invoke-static {p1, p3, p4, p5, v0}, Lajn;->a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/util/List;Z)V

    .line 3887
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AttachmentModel;)V
    .locals 6
    .param p1, "attachmentPanel"    # Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;
    .param p2, "mailServerId"    # Ljava/lang/String;
    .param p3, "attachmentModel"    # Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 3958
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v1

    .line 3959
    .local v1, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3960
    const/4 v3, 0x0

    invoke-static {p3, p2, v3}, Lafh;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 3961
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3962
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    iget-object v3, p3, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3963
    invoke-static {v2}, Lhcs;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Laxo$b;->alm_cmail_local_save:I

    :goto_0
    new-instance v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;

    invoke-direct {v4, p0, p3, p2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$31;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/sdk/model/AttachmentModel;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 3994
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 3995
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3997
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    return-void

    .line 3963
    .restart local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_1
    sget v3, Laxo$b;->alm_cmail_save_space:I

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const-wide/16 v12, 0x0

    const-wide/16 v8, -0x1

    .line 3658
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 3659
    const/4 v0, 0x0

    .line 3660
    .local v0, "attachChange":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 3661
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 3662
    .local v2, "path":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3663
    const/4 v0, 0x1

    .line 36542
    const-string/jumbo v4, ""

    .line 36545
    cmp-long v6, v8, v12

    if-gez v6, :cond_5

    .line 36547
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 36548
    if-eqz v6, :cond_4

    .line 36549
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36550
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 36551
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 36554
    :goto_1
    cmp-long v10, v6, v12

    if-gtz v10, :cond_1

    .line 36559
    const-wide/32 v6, 0x3200001

    .line 36563
    :cond_1
    :goto_2
    new-instance v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/model/AttachmentModel;-><init>()V

    .line 36564
    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    .line 36565
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    .line 36566
    iput-wide v6, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    .line 36567
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/doraemon/utils/UrlUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentType:Ljava/lang/String;

    .line 36568
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->h:Ljava/lang/Boolean;

    .line 3665
    .local v1, "attachment":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3666
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3669
    .end local v1    # "attachment":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d()V

    .line 3670
    if-eqz v0, :cond_3

    .line 3671
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aj:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setSelection(I)V

    .line 3674
    .end local v0    # "attachChange":Z
    :cond_3
    return-void

    .restart local v0    # "attachChange":Z
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_4
    move-wide v6, v8

    goto :goto_1

    :cond_5
    move-wide v6, v8

    goto :goto_2
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "force"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 780
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bd:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 782
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v1, :cond_1

    .line 783
    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 786
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b(ILjava/util/List;)V
    .locals 3
    .param p1, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p2, "addressesModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4562
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4563
    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->t:Z

    .line 4564
    packed-switch p1, :pswitch_data_0

    .line 4582
    :cond_0
    :goto_0
    return-void

    .line 47721
    :pswitch_0
    invoke-direct {p0, p2, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;ZZ)V

    goto :goto_0

    .line 47763
    :pswitch_1
    invoke-direct {p0, p2, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Ljava/util/List;ZZ)V

    goto :goto_0

    .line 47812
    :pswitch_2
    invoke-direct {p0, p2, v1, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Ljava/util/List;ZZ)V

    goto :goto_0

    .line 48526
    :pswitch_3
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 48530
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    invoke-interface {v0, p2}, Lafk;->a(Ljava/util/List;)V

    goto :goto_0

    .line 4578
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e(Ljava/util/List;)V

    goto :goto_0

    .line 4564
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public b(Ljava/lang/String;)V
    .locals 7
    .param p1, "fromAddress"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2538
    .line 28563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28564
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    if-eqz v4, :cond_0

    .line 28565
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getAllRecipient()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28566
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getAllRecipient()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28567
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getAllRecipient()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2539
    .local v0, "allReceiver":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    :cond_0
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v3

    .line 2540
    .local v3, "user":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-eqz p1, :cond_2

    iget-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmail:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2541
    iget-boolean v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->M:Z

    if-eqz v4, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Lafh;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2542
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 2543
    .local v1, "am":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v1, :cond_1

    .line 2546
    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v5}, Lafh;->d(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2550
    invoke-static {}, Lafc;->a()Lafc;

    move-result-object v5

    iget-object v6, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Lafc;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 2552
    .local v2, "isSameOrg":Z
    if-nez v2, :cond_1

    .line 2553
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ar:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2560
    .end local v1    # "am":Lcom/alibaba/alimei/sdk/model/AddressModel;
    .end local v2    # "isSameOrg":Z
    :goto_0
    return-void

    .line 2559
    :cond_2
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ar:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4011
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4038
    :cond_0
    :goto_0
    return-void

    .line 4015
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4016
    .local v0, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 4017
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 4020
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 4021
    .local v1, "path":Ljava/lang/String;
    invoke-static {v1}, Luh;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4022
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bo:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4023
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 42024
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v5

    .line 42025
    if-nez v5, :cond_3

    .line 42026
    const/4 v3, 0x0

    .line 4023
    :goto_2
    const v5, 0x493e0

    if-le v3, v5, :cond_4

    .line 4024
    sget v3, Laxo$i;->dt_cmail_video_duration_limit:I

    invoke-static {v3}, Lcms;->a(I)V

    goto :goto_1

    .line 42029
    :cond_3
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    .line 42030
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    goto :goto_2

    .line 4027
    :cond_4
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bo:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4028
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bn:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4033
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4036
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_6
    invoke-virtual {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Ljava/util/List;)V

    .line 4037
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->u()V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 5
    .param p1, "include"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4431
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-boolean v0, v0, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->hasMailHtmlBodyLoaded:Z

    if-eqz v0, :cond_3

    .line 4432
    iput-boolean p1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->Q:Z

    .line 4434
    const-string/jumbo v0, "MailComposeFragment"

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "setIncludeQuotedText includeText: "

    aput-object v4, v3, v1

    iget-boolean v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->Q:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4435
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v0, :cond_0

    .line 4436
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->Q:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->setVisibility(I)V

    .line 4437
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    if-eqz v0, :cond_0

    .line 4438
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    iget-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->Q:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-interface {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->b(I)V

    .line 47469
    :cond_0
    :goto_2
    return-void

    .line 4436
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move v1, v2

    .line 4438
    goto :goto_1

    .line 4442
    :cond_3
    const-string/jumbo v0, "MailComposeFragment"

    const-string/jumbo v1, "load quote mail body from server"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47463
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->P:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47467
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-nez v0, :cond_4

    .line 47468
    const-string/jumbo v0, "MailComposeFragment"

    const-string/jumbo v1, "loadBodyFromServer fail for mReplyOrForwardObject is null"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 47472
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    if-eqz v0, :cond_5

    .line 47473
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    invoke-interface {v0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->b(I)V

    .line 47475
    :cond_5
    sget-object v0, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v1, "CMail"

    const-string/jumbo v2, "mail.maildetail.appear"

    const-string/jumbo v3, "loadBodyFromServer"

    invoke-static {v0, v1, v2, v3}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47478
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$50;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    const-class v2, Lxv;

    .line 47550
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 47479
    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 47551
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v1}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->P:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->loadMailHtmlBodyFromServer(Ljava/lang/String;Lxv;)V

    goto :goto_2
.end method

.method public final c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4118
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;)V

    .line 4119
    return-void
.end method

.method public final c()Z
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 789
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 790
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 791
    check-cast v1, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    .line 792
    .local v1, "baseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 800
    .end local v1    # "baseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_0
    :goto_0
    return v2

    .line 796
    .restart local v1    # "baseActivity":Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 797
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 2466
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 2467
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 2495
    :goto_0
    return-void

    .line 2470
    :cond_0
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$18;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final d(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4135
    .local p1, "spaceDos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    if-eqz p1, :cond_0

    .line 4136
    invoke-static {}, Lacg;->f()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4137
    sget v7, Laxo$i;->dt_cmail_send_space_file_alert:I

    invoke-virtual {p0, v7}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcms;->a(Ljava/lang/String;)V

    .line 4186
    :cond_0
    :goto_0
    return-void

    .line 4140
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v6

    .line 4141
    .local v6, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 4142
    .local v5, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lacj;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4143
    .local v1, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 4144
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4145
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->W:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4146
    new-instance v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    invoke-direct {v0}, Lcom/alibaba/alimei/sdk/model/AttachmentModel;-><init>()V

    .line 4147
    .local v0, "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-object v8, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originSpaceId:Ljava/lang/String;

    .line 4148
    invoke-static {v5}, Lacj;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originId:Ljava/lang/String;

    .line 4149
    iget-object v8, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    .line 4150
    iget-object v8, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileType:Ljava/lang/String;

    iput-object v8, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentType:Ljava/lang/String;

    .line 4151
    iget-wide v8, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileSize:J

    iput-wide v8, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    .line 4153
    iget-object v2, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    .line 4156
    .local v2, "orgId":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 4157
    :try_start_0
    iget-object v8, v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4165
    :cond_3
    :goto_2
    invoke-virtual {v6}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b()Ljava/lang/String;

    move-result-object v3

    .line 4167
    .local v3, "orgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4168
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4175
    .local v4, "orgToken":Ljava/lang/String;
    :cond_4
    :goto_3
    iput-object v4, v0, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->originToken:Ljava/lang/String;

    .line 4177
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4178
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->h:Ljava/lang/Boolean;

    goto :goto_1

    .line 44246
    .end local v4    # "orgToken":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v8

    .line 4170
    invoke-interface {v8, v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4171
    .restart local v4    # "orgToken":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 4172
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e:Ljava/util/HashMap;

    invoke-virtual {v8, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 4181
    .end local v0    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "orgId":Ljava/lang/String;
    .end local v3    # "orgName":Ljava/lang/String;
    .end local v4    # "orgToken":Ljava/lang/String;
    .end local v5    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_6
    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->h:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4182
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d()V

    .line 4183
    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aj:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setSelection(I)V

    goto/16 :goto_0

    .restart local v0    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "orgId":Ljava/lang/String;
    .restart local v5    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public f()V
    .locals 28

    .prologue
    .line 2893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v2, v2, Lagz;->z:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getAllRecipient()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lagz;->d:Ljava/util/List;

    .line 2895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    const/4 v3, 0x0

    iput-object v3, v2, Lagz;->e:Ljava/util/List;

    .line 2896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    const/4 v3, 0x0

    iput-object v3, v2, Lagz;->f:Ljava/util/List;

    .line 2905
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bi:Lcom/alibaba/wukong/im/Conversation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bj:Lcom/alibaba/wukong/im/Message;

    invoke-static {v3, v4}, Lafh;->a(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/Message;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lagz;->s:Ljava/util/List;

    .line 2907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lagz;->g:Ljava/lang/String;

    .line 2910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    invoke-interface {v3}, Lafk;->getContent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lagz;->h:Ljava/lang/String;

    .line 2912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v2, v2, Lagz;->d:Ljava/util/List;

    .line 29044
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 29045
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bh:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 29854
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    invoke-interface {v2}, Lafk;->getAtList()Ljava/util/List;

    move-result-object v10

    .line 29855
    if-nez v10, :cond_2

    .line 29856
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 29859
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bh:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v2, :cond_3

    .line 29860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bh:Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2914
    .local v10, "atList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    invoke-static {}, Laew;->a()Laew;

    invoke-static {v10}, Laew;->a(Ljava/util/List;)Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    move-result-object v3

    iput-object v3, v2, Lagz;->x:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    .line 2915
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 2916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v2, v2, Lagz;->d:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2920
    :cond_4
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2921
    .local v20, "originalAttachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->U:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2924
    invoke-static {}, Lacq;->a()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    if-nez v2, :cond_a

    const/16 v18, 0x1

    .line 2925
    .local v18, "needHtmlSign":Z
    :goto_2
    const-string/jumbo v2, "MailComposeFragment"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "patchNewMailModel: needHtmlSign: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", isTriggledEditQuote: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aS:Z

    .line 2926
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, ", mCurrentCompostType: "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2925
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aS:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueEditDraft:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v2, v3, :cond_d

    .line 2929
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v0, v2, Lagz;->h:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 2930
    .local v24, "userInput":Ljava/lang/String;
    if-eqz v18, :cond_b

    .line 2931
    move-object/from16 v16, v24

    .line 2937
    .local v16, "html":Ljava/lang/String;
    :goto_3
    if-eqz v16, :cond_c

    .line 2938
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 2939
    .local v11, "attachment":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "src=\""

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v11, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "\""

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "src=\"cid:"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-object v7, v11, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentId:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v7, "\""

    aput-object v7, v4, v5

    .line 2940
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2939
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 2941
    goto :goto_4

    .line 2898
    .end local v10    # "atList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .end local v11    # "attachment":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v16    # "html":Ljava/lang/String;
    .end local v18    # "needHtmlSign":Z
    .end local v20    # "originalAttachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    .end local v24    # "userInput":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getAllRecipient()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lagz;->d:Ljava/util/List;

    .line 2899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getAllRecipient()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lagz;->e:Ljava/util/List;

    .line 2900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getAllRecipient()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lagz;->f:Ljava/util/List;

    goto/16 :goto_0

    .line 29049
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 29051
    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bh:Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-virtual {v2, v4}, Lcom/alibaba/alimei/sdk/model/AddressModel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_5

    .line 29057
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bh:Lcom/alibaba/alimei/sdk/model/AddressModel;

    goto/16 :goto_1

    .line 2924
    .restart local v10    # "atList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .restart local v20    # "originalAttachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/sdk/model/AttachmentModel;>;"
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 2934
    .restart local v18    # "needHtmlSign":Z
    .restart local v24    # "userInput":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Z)Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "html":Ljava/lang/String;
    goto/16 :goto_3

    .line 2944
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, v16

    iput-object v0, v2, Lagz;->i:Ljava/lang/String;

    .line 2947
    .end local v16    # "html":Ljava/lang/String;
    .end local v24    # "userInput":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v2, v2, Lagz;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 2948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v2, v2, Lagz;->i:Ljava/lang/String;

    invoke-static {v2}, Lsa;->a(Ljava/lang/String;)Z

    move-result v15

    .line 2949
    .local v15, "hasBase64":Z
    if-eqz v15, :cond_e

    .line 2950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lagz;->o:Z

    .line 2954
    .end local v15    # "hasBase64":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-object v2, v2, Lagz;->c:Ljava/lang/String;

    invoke-static {v2}, Lair;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2955
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aS:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-boolean v2, v2, Lagz;->n:Z

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, v3, Lagz;->n:Z

    .line 2956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-boolean v3, v3, Lagz;->m:Z

    iput-boolean v3, v2, Lagz;->m:Z

    .line 2957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-boolean v3, v3, Lagz;->t:Z

    iput-boolean v3, v2, Lagz;->t:Z

    .line 2958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-wide v4, v3, Lagz;->k:J

    iput-wide v4, v2, Lagz;->k:J

    .line 2962
    :goto_7
    const-string/jumbo v2, "MailComposeFragment"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "patchNewMailModel includeQuotedText: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-boolean v5, v5, Lagz;->n:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, ", isTriggledEditQuote: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aS:Z

    .line 2963
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, ", mCurrentCompostType: "

    aput-object v5, v3, v4

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2962
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, v20

    iput-object v0, v2, Lagz;->p:Ljava/util/List;

    .line 2966
    const/4 v12, 0x0

    .line 2967
    .local v12, "attachmentCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lagz;->q:Ljava/util/List;

    .line 2970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 2971
    .local v9, "a":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    iget-object v3, v9, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 2972
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v3, v3, Lagz;->q:Ljava/util/List;

    iget-object v4, v9, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2973
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 2955
    .end local v9    # "a":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v12    # "attachmentCount":I
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 2960
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aS:Z

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueEditDraft:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-eq v2, v4, :cond_12

    const/4 v2, 0x1

    :goto_9
    iput-boolean v2, v3, Lagz;->n:Z

    goto/16 :goto_7

    :cond_12
    const/4 v2, 0x0

    goto :goto_9

    .line 2979
    .restart local v12    # "attachmentCount":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->W:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_19

    .line 2980
    invoke-static {}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->n()Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;

    move-result-object v23

    .line 2981
    .local v23, "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->W:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_14
    :goto_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 2982
    .local v22, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Lacj;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 2983
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2984
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2987
    .local v19, "orgId":Ljava/lang/String;
    if-eqz v19, :cond_15

    .line 2988
    :try_start_0
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2995
    :cond_15
    :goto_b
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;->b()Ljava/lang/String;

    move-result-object v8

    .line 2997
    .local v8, "accountName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3007
    .local v6, "orgToken":Ljava/lang/String;
    :cond_16
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Lacj;->a(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->orgId:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lagz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    move-result-object v13

    .line 3008
    .local v13, "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    if-eqz v13, :cond_18

    .line 3009
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 30246
    .end local v6    # "orgToken":Ljava/lang/String;
    .end local v13    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :cond_17
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 3000
    invoke-interface {v2, v8}, Lcom/alibaba/alimei/framework/account/AccountApi;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3001
    .restart local v6    # "orgToken":Ljava/lang/String;
    if-eqz v6, :cond_16

    .line 3002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 3011
    .restart local v13    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v2

    if-nez v2, :cond_14

    .line 3012
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 3013
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laxo$i;->dt_cmail_add_space_attachment_fail:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 3022
    .end local v6    # "orgToken":Ljava/lang/String;
    .end local v8    # "accountName":Ljava/lang/String;
    .end local v13    # "attachmentModel":Lcom/alibaba/alimei/sdk/model/AttachmentModel;
    .end local v17    # "key":Ljava/lang/String;
    .end local v19    # "orgId":Ljava/lang/String;
    .end local v22    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v23    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    :cond_19
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v2}, Lafh;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3023
    if-lez v12, :cond_1e

    .line 3024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, ":"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 3025
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lagz;->w:Ljava/lang/String;

    .line 3031
    :cond_1a
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bf:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 3033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lagz;->t:Z

    .line 3034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bf:Ljava/lang/String;

    iput-object v3, v2, Lagz;->u:Ljava/lang/String;

    .line 3038
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueEditDraft:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v2, v3, :cond_1c

    .line 3039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-wide v4, v3, Lagz;->b:J

    iput-wide v4, v2, Lagz;->b:J

    .line 3040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-wide v4, v3, Lagz;->k:J

    iput-wide v4, v2, Lagz;->k:J

    .line 3041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-object v3, v3, Lagz;->r:Ljava/lang/String;

    iput-object v3, v2, Lagz;->r:Ljava/lang/String;

    .line 3042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-object v3, v3, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iput-object v3, v2, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 3043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget v3, v3, Lagz;->a:I

    iput v3, v2, Lagz;->a:I

    .line 3044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v2, v2, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    if-eqz v2, :cond_1c

    .line 3045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v2, v2, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v0, v2, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 31246
    .local v21, "proxySendMail":Ljava/lang/String;
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v2

    .line 3046
    invoke-interface {v2}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v14

    .line 3047
    .local v14, "defaultAccount":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    const/4 v3, 0x0

    iput-object v3, v2, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 3055
    .end local v14    # "defaultAccount":Ljava/lang/String;
    .end local v21    # "proxySendMail":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v2, :cond_1d

    .line 3056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->htmlContent:Ljava/lang/String;

    iput-object v3, v2, Lagz;->r:Ljava/lang/String;

    .line 3057
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->getId()J

    move-result-wide v4

    iput-wide v4, v2, Lagz;->k:J

    .line 3058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    iput-object v3, v2, Lagz;->l:Ljava/lang/String;

    .line 3059
    const-string/jumbo v2, "MailComposeFragment"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "patchNewModel referItemId: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v5, v5, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3062
    :cond_1d
    const-string/jumbo v2, "MailComposeFragment"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "NewMailModel brief info: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    .line 31357
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v25, "NewMailModel [id="

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, v5, Lagz;->b:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, ", serverId="

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v5, Lagz;->c:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, ", timeStamp="

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v0, v5, Lagz;->j:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, ", sourceId="

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v0, v5, Lagz;->k:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, ", isForward="

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v0, v5, Lagz;->m:Z

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, ", includeQuotedText="

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v0, v5, Lagz;->n:Z

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, ", tags="

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v5, Lagz;->s:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, ", conversationExtension="

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v5, Lagz;->w:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, ", calItemId: "

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v5, Lagz;->u:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, ", isForwardCalendar: "

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v0, v5, Lagz;->t:Z

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, ", extData="

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v5, Lagz;->x:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, ", proxySender="

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v5, Lagz;->v:Lcom/alibaba/alimei/sdk/model/AddressModel;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, ", priority="

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v0, v5, Lagz;->a:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, ", localExtension="

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v5, Lagz;->B:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, ", isCovertToInlineImg="

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v0, v5, Lagz;->o:Z

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v25, ", extendHeader="

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v5, Lagz;->C:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3062
    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3063
    return-void

    .line 3027
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    const/4 v3, 0x0

    iput-object v3, v2, Lagz;->w:Ljava/lang/String;

    goto/16 :goto_d

    .restart local v17    # "key":Ljava/lang/String;
    .restart local v19    # "orgId":Ljava/lang/String;
    .restart local v22    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .restart local v23    # "spaceInterface":Lcom/alibaba/dingtalk/cspacebase/space/SpaceInterface;
    :catch_0
    move-exception v2

    goto/16 :goto_b
.end method

.method public g()Z
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 3264
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v5

    .line 3315
    :goto_0
    return v3

    .line 3268
    :cond_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    instance-of v3, v3, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;

    if-eqz v3, :cond_6

    .line 3269
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    check-cast v3, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;

    invoke-direct {p0, v5}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Z)Ljava/lang/String;

    move-result-object v6

    .line 32106
    iget-boolean v4, v3, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->d:Z

    if-eqz v4, :cond_6

    .line 32110
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v4, v5

    .line 32111
    :goto_1
    if-ltz v4, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 32112
    iget-char v8, v3, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->b:C

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 32113
    iget-char v8, v3, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->c:C

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 32114
    if-ltz v4, :cond_3

    if-ltz v8, :cond_3

    .line 32115
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v6, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 32116
    iget-object v9, v3, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 32117
    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_2

    .line 32118
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32121
    :cond_2
    add-int/lit8 v4, v8, 0x1

    .line 32125
    goto :goto_1

    .line 32127
    :cond_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 32128
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 32129
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 32132
    iget-object v8, v3, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 32135
    :cond_5
    iget-object v4, v3, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 32136
    iget-object v3, v3, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->a:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3272
    :cond_6
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->getAllRecipient()Ljava/util/List;

    move-result-object v2

    .line 3273
    .local v2, "toList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    invoke-interface {v3}, Lafk;->getAtList()Ljava/util/List;

    move-result-object v0

    .line 3275
    .local v0, "atList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    invoke-static {v0, v2}, Laew;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3276
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    move v3, v5

    .line 3277
    goto/16 :goto_0

    .line 3280
    :cond_8
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    const/4 v4, 0x3

    invoke-static {v3, v0, v4}, Laew;->a(Landroid/app/Activity;Ljava/util/List;I)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    move-result-object v1

    .line 3281
    .local v1, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    if-nez v1, :cond_9

    move v3, v5

    .line 3282
    goto/16 :goto_0

    .line 3285
    :cond_9
    sget v3, Laxo$i;->dt_mail_send_addAndSend:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 32259
    iput-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 3286
    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$24;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$24;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 32271
    iput-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->a:Landroid/view/View$OnClickListener;

    .line 3294
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3295
    sget v3, Laxo$i;->cancel:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 33263
    iput-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->g:Ljava/lang/String;

    .line 3296
    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$25;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$25;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 33267
    iput-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->b:Landroid/view/View$OnClickListener;

    .line 3314
    :goto_3
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 3315
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 3303
    :cond_a
    sget v3, Laxo$i;->dt_mail_send_ignoreAndSend:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 34263
    iput-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->g:Ljava/lang/String;

    .line 3304
    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$26;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$26;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;)V

    .line 34267
    iput-object v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->b:Landroid/view/View$OnClickListener;

    goto :goto_3
.end method

.method public final h()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 34839
    const-string/jumbo v2, "mail_send_mail_click"

    invoke-static {v2}, Lafe;->a(Ljava/lang/String;)V

    .line 3320
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i()V

    .line 3321
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 3322
    invoke-virtual {v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->b()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    .line 3323
    invoke-interface {v2}, Lafk;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3325
    sget v2, Laxo$i;->message_compose_error_no_recipients:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 3326
    const-string/jumbo v2, "MailComposeFragment"

    const-string/jumbo v3, "message_compose_error_no_recipients"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3380
    :goto_0
    return-void

    .line 35151
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35152
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0xff

    if-le v2, v5, :cond_1

    move v2, v3

    .line 3327
    :goto_1
    if-eqz v2, :cond_2

    .line 3328
    sget v2, Laxo$i;->alm_message_compose_subject_too_long:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 3329
    const-string/jumbo v2, "MailComposeFragment"

    const-string/jumbo v3, "alm_message_compose_subject_too_long"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 35155
    goto :goto_1

    .line 35200
    :cond_2
    invoke-direct {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Z)Ljava/lang/String;

    move-result-object v2

    .line 35202
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 35203
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v8, v2

    add-long/2addr v8, v6

    .line 35206
    :goto_2
    const-wide/32 v10, 0x100000

    cmp-long v2, v8, v10

    if-lez v2, :cond_4

    .line 35207
    const/4 v0, 0x4

    .line 3332
    .local v0, "checkResult":I
    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 3354
    const-string/jumbo v2, "MailComposeFragment"

    const-string/jumbo v3, "checkResult default break"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3359
    :cond_3
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3360
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    if-eqz v2, :cond_c

    .line 3361
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 3362
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    invoke-interface {v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->a()V

    .line 3363
    const-string/jumbo v2, "MailComposeFragment"

    const-string/jumbo v3, "mFragmentListener.emptyTitleSend()"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35210
    .end local v0    # "checkResult":I
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aY:Ljava/lang/String;

    .line 35212
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 35213
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aZ:Ljava/util/HashMap;

    if-nez v2, :cond_5

    .line 35214
    new-instance v2, Ljava/util/HashMap;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aZ:Ljava/util/HashMap;

    .line 35215
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aZ:Ljava/util/HashMap;

    const-string/jumbo v5, "exe"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35216
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aZ:Ljava/util/HashMap;

    const-string/jumbo v5, "com"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35217
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aZ:Ljava/util/HashMap;

    const-string/jumbo v5, "msi"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35218
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aZ:Ljava/util/HashMap;

    const-string/jumbo v5, "bat"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35219
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aZ:Ljava/util/HashMap;

    const-string/jumbo v5, "scr"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35220
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aZ:Ljava/util/HashMap;

    const-string/jumbo v5, "cmd"

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35223
    :cond_5
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v4

    .line 35224
    :goto_4
    if-ge v5, v8, :cond_8

    .line 35225
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 35226
    iget-wide v10, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->size:J

    add-long/2addr v6, v10

    .line 35227
    const-wide/32 v10, 0x3200000

    cmp-long v9, v6, v10

    if-lez v9, :cond_6

    move v0, v3

    .line 35228
    goto/16 :goto_3

    .line 35231
    :cond_6
    iget-object v9, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    invoke-static {v9}, Luh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 35232
    if-eqz v9, :cond_7

    .line 35233
    iget-object v10, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aZ:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 35234
    iget-object v2, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aY:Ljava/lang/String;

    .line 35235
    const/4 v0, 0x2

    goto/16 :goto_3

    .line 35224
    :cond_7
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_4

    .line 35241
    :cond_8
    invoke-static {}, Lacg;->f()Z

    move-result v2

    if-nez v2, :cond_b

    .line 35242
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;

    .line 35243
    iget-object v6, v2, Lcom/alibaba/alimei/sdk/model/AttachmentModel;->contentUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v2}, Luf;->a(Lcom/alibaba/alimei/sdk/model/AttachmentModel;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 35244
    :cond_a
    const/4 v0, 0x3

    goto/16 :goto_3

    :cond_b
    move v0, v4

    .line 35249
    goto/16 :goto_3

    .line 3334
    .restart local v0    # "checkResult":I
    :pswitch_0
    sget v2, Laxo$i;->alm_cmail_mail_maxsize_holdthred:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 3335
    const-string/jumbo v2, "MailComposeFragment"

    const-string/jumbo v3, "alm_cmail_mail_maxsize_holdthred"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3338
    :pswitch_1
    sget v2, Laxo$i;->dt_cmail_body_max_size_threadholde:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 3339
    const-string/jumbo v2, "MailComposeFragment"

    const-string/jumbo v3, "alm_cmail_mail_content_maxsize_holdthred"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3342
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aY:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3343
    sget v2, Laxo$i;->alm_cmail_mail_not_support_file:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aY:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3344
    .local v1, "fileContent":Ljava/lang/String;
    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V

    .line 3345
    const-string/jumbo v2, "MailComposeFragment"

    const-string/jumbo v3, "alm_cmail_mail_not_support_file"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 35386
    .end local v1    # "fileContent":Ljava/lang/String;
    :pswitch_3
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35387
    sget v4, Laxo$i;->dt_cmail_compose_attachment_forward:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 35388
    sget v4, Laxo$i;->dt_cmail_compose_attachment_forward_msg:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 35389
    sget v4, Laxo$i;->dt_cmail_compose_without_attachment:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$27;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$27;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 35404
    sget v4, Laxo$i;->cancel:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$28;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$28;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 35410
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 35411
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3351
    const-string/jumbo v2, "MailComposeFragment"

    const-string/jumbo v3, "showAttachmentErrorDialog"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3368
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Laip;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueShareEmail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v2, v3, :cond_d

    .line 3369
    sget v2, Laxo$i;->connectivity_error:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    .line 3370
    const-string/jumbo v2, "MailComposeFragment"

    const-string/jumbo v3, "connectivity_error"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3374
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g()Z

    move-result v2

    if-nez v2, :cond_e

    .line 3375
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k()V

    goto/16 :goto_0

    .line 3377
    :cond_e
    const-string/jumbo v2, "doSendMail"

    const-string/jumbo v3, "not execute send"

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "checkResult":I
    :cond_f
    move-wide v8, v6

    goto/16 :goto_2

    .line 3332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public i()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 4416
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 4417
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 4428
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 4420
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    const-string/jumbo v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 4421
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    .line 4422
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 4423
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4428
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "view":Landroid/view/View;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public final j()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4676
    .line 48874
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-boolean v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aS:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v6, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueEditDraft:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-eq v2, v6, :cond_0

    move v2, v4

    :goto_0
    iput-boolean v2, v5, Lagz;->n:Z

    .line 4677
    const-string/jumbo v2, "EVENTBUTLER"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$41;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$41;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    const-class v6, Lxv;

    .line 4708
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 4677
    invoke-interface {v2, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxv;

    .line 4710
    .local v1, "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    .line 48909
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lagz;->a()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lagz;->c()Z

    move-result v5

    if-nez v5, :cond_1

    .line 48910
    invoke-virtual {v2}, Lagz;->b()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lagz;->d()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 4710
    :goto_1
    if-eqz v2, :cond_2

    .line 4711
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v2}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-boolean v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F:Z

    invoke-interface {v2, v3, v4, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->saveMailDraft(Lagz;ZLxv;)V

    .line 4718
    .end local v1    # "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    :goto_2
    return-void

    :cond_0
    move v2, v3

    .line 48874
    goto :goto_0

    .restart local v1    # "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    :cond_1
    move v2, v4

    .line 48913
    goto :goto_1

    .line 4713
    :cond_2
    sget v2, Laxo$i;->cmail_draft_invalidate:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 4715
    .end local v1    # "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    :catch_0
    move-exception v0

    .line 4716
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MailComposeFragment"

    invoke-static {v2, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public declared-synchronized k()V
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4730
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/alibaba/alimei/framework/perf/MonitorPriority;->High:Lcom/alibaba/alimei/framework/perf/MonitorPriority;

    const-string/jumbo v5, "CMail"

    const-string/jumbo v6, "mail.sendMail"

    invoke-static {v1, v5, v6}, Lyn;->a(Lcom/alibaba/alimei/framework/perf/MonitorPriority;Ljava/lang/String;Ljava/lang/String;)V

    .line 4733
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f()V

    .line 49873
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49875
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v5, v5, Lagz;->d:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 49876
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v5, v5, Lagz;->d:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49878
    :cond_0
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v5, v5, Lagz;->f:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 49879
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v5, v5, Lagz;->f:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49881
    :cond_1
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v5, v5, Lagz;->e:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 49882
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v5, v5, Lagz;->e:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49885
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 49886
    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v1}, Lair;->o(Ljava/lang/String;)Z

    move-result v1

    .line 49887
    if-nez v1, :cond_3

    move v1, v3

    .line 4735
    :goto_0
    if-eqz v1, :cond_6

    .line 4736
    sget v1, Laxo$i;->cmail_compse_email_invalidate:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50153
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :cond_5
    move v1, v4

    .line 49893
    goto :goto_0

    .line 4741
    :cond_6
    :try_start_1
    iget-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aT:Z

    if-eqz v1, :cond_7

    .line 4744
    sget v1, Laxo$i;->cmail_compose_sending:I

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4730
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 4747
    :cond_7
    :try_start_2
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    if-eqz v1, :cond_8

    .line 4748
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-wide v6, v5, Lagz;->b:J

    invoke-static {v1, v6, v7}, Lacg;->a(Ljava/lang/String;J)V

    .line 4751
    :cond_8
    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$42;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$42;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    const-class v6, Lxv;

    .line 4792
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 4751
    invoke-interface {v1, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 4793
    .local v0, "listener":Lxv;, "Lxv<Ljava/lang/Long;>;"
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aT:Z

    .line 4795
    invoke-static {}, Lafd;->a()Lafd;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bb:Lcom/alibaba/wukong/im/Conversation;

    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bh:Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v9, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    .line 50060
    if-nez v9, :cond_9

    .line 50061
    const-string/jumbo v1, "MailSendController"

    const-string/jumbo v2, "[ERROR] add a null mail to send"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 50065
    :cond_9
    iget-object v1, v9, Lagz;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 50066
    invoke-static {}, Lair;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lagz;->c:Ljava/lang/String;

    .line 50069
    :cond_a
    invoke-static {}, Lacq;->m()Z

    move-result v1

    .line 50073
    if-eqz v1, :cond_10

    .line 50074
    iget-object v1, v9, Lagz;->A:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 50075
    invoke-static {v6}, Lafh;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    move v1, v3

    .line 50076
    :goto_2
    if-eqz v1, :cond_b

    if-eqz v7, :cond_b

    if-eqz v8, :cond_b

    move v4, v3

    .line 50078
    :cond_b
    iget-object v1, v9, Lagz;->B:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_10

    .line 50080
    :try_start_3
    iget-object v1, v5, Lafd;->c:Lcom/google/gson/JsonParser;

    iget-object v10, v9, Lagz;->B:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 50081
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 50082
    const-class v10, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;

    invoke-static {v1, v10}, Lcor;->a(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50083
    if-eqz v1, :cond_f

    :try_start_4
    iget-wide v10, v1, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;->imMessageId:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_f

    iget-object v10, v1, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;->conversationId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v10

    if-nez v10, :cond_f

    move-object v2, v1

    move v1, v3

    .line 50097
    :goto_3
    if-eqz v1, :cond_13

    .line 50098
    :try_start_5
    const-string/jumbo v1, "MailSendController"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v10, "process im mail, uuid = "

    aput-object v10, v3, v4

    const/4 v4, 0x1

    iget-object v10, v9, Lagz;->c:Ljava/lang/String;

    aput-object v10, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50100
    iget-object v1, v9, Lagz;->x:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    if-nez v1, :cond_c

    .line 50101
    new-instance v1, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    invoke-direct {v1}, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;-><init>()V

    iput-object v1, v9, Lagz;->x:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    .line 50103
    :cond_c
    iget-object v1, v9, Lagz;->x:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    iget-object v3, v8, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iput-object v3, v1, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->imThrough:Ljava/lang/String;

    .line 50105
    iget-object v1, v8, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    iput-object v1, v9, Lagz;->C:Ljava/lang/String;

    .line 50107
    iget-object v3, v5, Lafd;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 50108
    :try_start_6
    iget-object v1, v5, Lafd;->b:Ljava/util/Map;

    iget-object v4, v9, Lagz;->c:Ljava/lang/String;

    invoke-interface {v1, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50109
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 50111
    :try_start_7
    invoke-static {}, Lafh;->a()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v1

    .line 50113
    new-instance v3, Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-direct {v3}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>()V

    .line 50114
    iput-object v6, v3, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    .line 50115
    if-eqz v1, :cond_d

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 50116
    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->nick:Ljava/lang/String;

    iput-object v1, v3, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    .line 50119
    :cond_d
    if-eqz v2, :cond_12

    .line 50121
    const-string/jumbo v1, "MailSendController"

    const-string/jumbo v3, "this is a outbox mail original send by IM"

    invoke-static {v1, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50122
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    .line 50123
    if-eqz v1, :cond_11

    .line 50124
    iget-object v3, v2, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;->conversationId:Ljava/lang/String;

    .line 50125
    iget-wide v6, v2, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;->imMessageId:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 50126
    iget-object v6, v2, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;->conversationId:Ljava/lang/String;

    iget-wide v8, v2, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;->imMessageId:J

    new-instance v2, Lafd$1;

    invoke-direct {v2, v5, v1, v4, v3}, Lafd$1;-><init>(Lafd;Lcom/alibaba/android/dingtalkim/base/IMInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v8, v9, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Ljava/lang/String;JLcma;)V

    .line 50150
    :goto_4
    if-eqz v0, :cond_4

    .line 50151
    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Lxv;->onSuccess(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    move v1, v4

    .line 50075
    goto/16 :goto_2

    :cond_f
    move v1, v4

    .line 50092
    goto/16 :goto_3

    .line 50090
    :catch_0
    move-exception v1

    .line 50091
    :goto_5
    const-string/jumbo v3, "MailSendController"

    invoke-static {v3, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_10
    move v1, v4

    goto/16 :goto_3

    .line 50109
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1

    .line 50143
    :cond_11
    const-string/jumbo v1, "MailSendController"

    const-string/jumbo v2, "[FATAL ERROR] im interface not found"

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 50147
    :cond_12
    invoke-static {}, Lacs;->a()Lacs;

    move-result-object v1

    invoke-interface {v7}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2, v3}, Lacs;->a(Lagz;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AddressModel;)V

    goto :goto_4

    .line 50154
    :cond_13
    invoke-static {v6}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v1

    invoke-interface {v1, v9, v0}, Lcom/alibaba/alimei/sdk/api/MailApi;->sendMail(Lagz;Lxv;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 50090
    :catch_1
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    goto :goto_5
.end method

.method public l()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4943
    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aR:Z

    .line 4944
    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aQ:Z

    .line 4945
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x2

    const/16 v8, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 692
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 12570
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->s:Landroid/content/Intent;

    if-nez v3, :cond_0

    .line 12571
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 12573
    if-eqz v3, :cond_5

    .line 12574
    const-string/jumbo v4, "key_intent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->s:Landroid/content/Intent;

    .line 12582
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->s:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 12583
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->s:Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 12585
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->s:Landroid/content/Intent;

    .line 12616
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->s:Landroid/content/Intent;

    if-eqz v3, :cond_6

    .line 12617
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->s:Landroid/content/Intent;

    const-string/jumbo v4, "account_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    .line 12621
    :goto_1
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 12622
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    .line 14246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v4

    .line 12622
    invoke-interface {v4}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 15246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v3

    .line 12623
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/alibaba/alimei/framework/account/AccountApi;->setDefaultAccount(Ljava/lang/String;Lxv;)V

    .line 12627
    :cond_2
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v3}, Lafw;->b(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/FolderApi;

    move-result-object v4

    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v5, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$1;

    invoke-direct {v5, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$1;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    const-class v6, Lxv;

    .line 12640
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 12627
    invoke-interface {v3, v5, v6, v7}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxv;

    invoke-interface {v4, v3}, Lcom/alibaba/alimei/sdk/api/FolderApi;->queryInboxFolder(Lxv;)V

    .line 696
    :cond_3
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 697
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 17730
    :cond_4
    :goto_2
    return-void

    .line 12576
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 12577
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->s:Landroid/content/Intent;

    goto/16 :goto_0

    .line 13246
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v3

    .line 12619
    invoke-interface {v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    goto :goto_1

    .line 700
    :cond_7
    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$c;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$c;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ac:Landroid/os/Handler;

    .line 702
    if-nez v2, :cond_b

    .line 704
    .local v0, "action":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->F()Z

    move-result v3

    if-nez v3, :cond_4

    .line 709
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 15831
    sget-object v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->S:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    .line 15832
    if-eqz v3, :cond_1b

    .line 15833
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    .line 15834
    sget-object v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$47;->a:[I

    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 15863
    :cond_8
    :goto_4
    const-string/jumbo v3, "MailComposeFragment"

    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v5, "compostType: "

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15865
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    if-eqz v3, :cond_9

    .line 15866
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->NewMail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v3, v4, :cond_1d

    .line 15867
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bb:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_1c

    .line 15868
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bb:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    if-eq v3, v9, :cond_1c

    .line 15871
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bb:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->a(Ljava/lang/String;)V

    .line 15876
    :goto_5
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    invoke-interface {v3, v10}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->b(I)V

    .line 716
    :cond_9
    :goto_6
    const-string/jumbo v3, "draft_message"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, "draftMessage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 718
    iput-boolean v9, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->t:Z

    .line 721
    :cond_a
    invoke-direct {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Ljava/lang/String;)V

    .line 17728
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v3}, Lafh;->f(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 17729
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m()V

    goto/16 :goto_2

    .line 702
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "draftMessage":Ljava/lang/String;
    :cond_b
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 15907
    .restart local v0    # "action":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v3, "key_addresses"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 15908
    if-eqz v3, :cond_c

    .line 15909
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 15910
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16721
    invoke-direct {p0, v4, v10, v10}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;ZZ)V

    .line 15914
    :cond_c
    if-nez v3, :cond_12

    .line 15915
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a()V

    .line 15924
    :goto_7
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 15925
    if-eqz v3, :cond_f

    .line 15926
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 15927
    const-string/jumbo v4, "msg_entity_list"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 15928
    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    .line 15929
    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->d(Ljava/util/List;)V

    .line 15931
    :cond_d
    const-string/jumbo v4, "mail_content_html"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15932
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 15933
    invoke-direct {p0, v4, v9}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/lang/String;Z)V

    .line 15935
    :cond_e
    const-string/jumbo v4, "mail_content_txt"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15936
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 15937
    invoke-static {v3}, Lafh;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v9}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/lang/String;Z)V

    .line 15940
    :cond_f
    const-string/jumbo v3, "key_psmailuri"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 15941
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Landroid/content/Intent;)V

    .line 15944
    :cond_10
    const-string/jumbo v3, "mail_message_list"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 17065
    iput-boolean v9, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bd:Z

    .line 17066
    const-string/jumbo v3, "conversation"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/Conversation;

    .line 17067
    const-string/jumbo v4, "mail_message_list"

    .line 17068
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 17071
    new-instance v6, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$48;

    invoke-direct {v6, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$48;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    .line 17086
    if-eqz v3, :cond_11

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 17087
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bi:Lcom/alibaba/wukong/im/Conversation;

    .line 17088
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/wukong/im/Message;

    iput-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bj:Lcom/alibaba/wukong/im/Message;

    .line 17091
    :cond_11
    new-instance v5, Laeq;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v5, v7, v6, v10}, Laeq;-><init>(Landroid/app/Activity;Laeq$a;I)V

    iput-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bc:Laeq;

    .line 17092
    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bc:Laeq;

    invoke-virtual {v5, v3, v4}, Laeq;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;)V

    goto/16 :goto_4

    .line 15917
    :cond_12
    const-string/jumbo v3, "mail_subject"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15918
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 15919
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e(Ljava/lang/String;)V

    .line 15921
    :cond_13
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_7

    .line 15948
    :cond_14
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 17121
    :pswitch_1
    const-string/jumbo v3, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 17122
    if-eqz v3, :cond_15

    .line 17123
    invoke-direct {p0, v3, v9}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a([Ljava/lang/String;Z)V

    .line 17125
    :cond_15
    const-string/jumbo v3, "android.intent.extra.CC"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 17126
    if-eqz v3, :cond_16

    .line 17127
    invoke-direct {p0, v3, v9}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b([Ljava/lang/String;Z)V

    .line 17129
    :cond_16
    const-string/jumbo v3, "android.intent.extra.BCC"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 17130
    if-eqz v3, :cond_17

    .line 17131
    invoke-direct {p0, v3, v9}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c([Ljava/lang/String;Z)V

    .line 17133
    :cond_17
    const-string/jumbo v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17134
    if-eqz v3, :cond_18

    .line 17135
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->e(Ljava/lang/String;)V

    .line 17138
    :cond_18
    const-string/jumbo v3, "calendar_item_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bf:Ljava/lang/String;

    .line 17140
    const-string/jumbo v3, "MailComposeFragment"

    new-array v4, v11, [Ljava/lang/String;

    const-string/jumbo v5, "handleSystemOrAppShareAction calendarItemId: "

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bf:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17142
    const-string/jumbo v3, "android.intent.extra.HTML_TEXT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17143
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 17154
    invoke-static {v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17155
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17157
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 17158
    const-string/jumbo v6, "<br>"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17159
    const-string/jumbo v6, "<br>"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17160
    const-string/jumbo v6, "<br>"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17161
    const-string/jumbo v6, "<br>"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17162
    const-string/jumbo v6, "<br>"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17163
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 17164
    invoke-virtual {v5, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17165
    const-string/jumbo v4, "<br>"

    invoke-virtual {v5, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17166
    const-string/jumbo v4, "<br>"

    invoke-virtual {v5, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17169
    :cond_19
    invoke-virtual {v5, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 17171
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->g(Ljava/lang/String;)V

    .line 17145
    iput-boolean v9, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aS:Z

    .line 17146
    const-string/jumbo v3, "MailComposeFragment"

    const-string/jumbo v4, "handleSystemOrAppShareAction isTriggledEditQuote = true"

    invoke-static {v3, v4}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17149
    :cond_1a
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 15842
    :pswitch_2
    sget-object v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReply:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-direct {p0, v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Landroid/content/Intent;Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;)V

    goto/16 :goto_4

    .line 15845
    :pswitch_3
    sget-object v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReplyAll:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-direct {p0, v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Landroid/content/Intent;Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;)V

    goto/16 :goto_4

    .line 17178
    :pswitch_4
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->at:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17179
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->au:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 17180
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aE:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17181
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aF:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 17182
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aH:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17183
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aI:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 17184
    invoke-direct {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 17558
    :pswitch_5
    const-string/jumbo v3, "local_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 17559
    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_8

    .line 17560
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;

    invoke-direct {v6, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$51;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    const-class v7, Lxv;

    .line 17595
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 17560
    invoke-interface {v3, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxv;

    .line 17596
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v6}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v6

    invoke-interface {v6, v4, v5, v3}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDraft(JLxv;)V

    goto/16 :goto_4

    .line 15854
    :pswitch_6
    sget-object v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueForward:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    invoke-direct {p0, v2, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Landroid/content/Intent;Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;)V

    goto/16 :goto_4

    .line 15860
    :cond_1b
    sget-object v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->NewMail:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    goto/16 :goto_4

    .line 15874
    :cond_1c
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    sget v4, Laxo$i;->compose_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 15877
    :cond_1d
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReply:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-eq v3, v4, :cond_1e

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReplyAll:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v3, v4, :cond_21

    .line 15878
    :cond_1e
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bb:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v3, :cond_20

    .line 15879
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bb:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    if-eq v3, v9, :cond_20

    .line 15881
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bb:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v3

    if-ne v3, v11, :cond_1f

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueReplyAll:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v3, v4, :cond_1f

    .line 15882
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bb:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v4}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->a(Ljava/lang/String;)V

    .line 15889
    :goto_8
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    invoke-interface {v3, v9}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->b(I)V

    goto/16 :goto_6

    .line 15884
    :cond_1f
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    sget v4, Laxo$i;->compose_reply_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->a(Ljava/lang/String;)V

    goto :goto_8

    .line 15887
    :cond_20
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    sget v4, Laxo$i;->compose_reply_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->a(Ljava/lang/String;)V

    goto :goto_8

    .line 15890
    :cond_21
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueForward:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v3, v4, :cond_22

    .line 15891
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    sget v4, Laxo$i;->compose_forward_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->a(Ljava/lang/String;)V

    .line 15892
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    invoke-interface {v3, v9}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->b(I)V

    goto/16 :goto_6

    .line 15893
    :cond_22
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueEditDraft:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v3, v4, :cond_23

    .line 15894
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    sget v4, Laxo$i;->compose_draft_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->a(Ljava/lang/String;)V

    .line 15895
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    invoke-interface {v3, v10}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->b(I)V

    goto/16 :goto_6

    .line 15897
    :cond_23
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    sget v4, Laxo$i;->compose_title:I

    invoke-virtual {p0, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->a(Ljava/lang/String;)V

    .line 15898
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    invoke-interface {v3, v10}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->b(I)V

    goto/16 :goto_6

    .line 17733
    .restart local v1    # "draftMessage":Ljava/lang/String;
    :cond_24
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v4, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$23;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$23;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    const-class v5, Lxv;

    .line 17749
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 17733
    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxv;

    .line 17751
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v4}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v4

    .line 17752
    if-eqz v4, :cond_4

    .line 17753
    invoke-interface {v4, v3}, Lcom/alibaba/alimei/contact/api/ContactApi;->getUserSelfContactFromLocal(Lxv;)V

    goto/16 :goto_2

    .line 15834
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3826
    sparse-switch p1, :sswitch_data_0

    .line 3841
    if-ne p2, v4, :cond_0

    .line 3842
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3843
    .local v2, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    packed-switch p1, :pswitch_data_0

    .line 37664
    .end local v2    # "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_0
    :goto_0
    return-void

    .line 3830
    :sswitch_0
    iput-boolean v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ab:Z

    .line 37648
    if-ne p2, v4, :cond_0

    if-eqz p3, :cond_0

    .line 37652
    const-string/jumbo v3, "PACKED_ADDRESSES_STRING"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 37653
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 37657
    iput-boolean v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->t:Z

    .line 37658
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 37721
    :pswitch_0
    invoke-direct {p0, v3, v5, v6}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;ZZ)V

    goto :goto_0

    .line 37763
    :pswitch_1
    invoke-direct {p0, v3, v5, v6}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Ljava/util/List;ZZ)V

    goto :goto_0

    .line 37812
    :pswitch_2
    invoke-direct {p0, v3, v5, v6}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Ljava/util/List;ZZ)V

    goto :goto_0

    .line 38681
    :sswitch_1
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v5, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueForward:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    if-eqz v4, :cond_1

    .line 38682
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aN:Lcom/alibaba/alimei/sdk/model/MailDetailModel;

    iget-object v3, v3, Lcom/alibaba/alimei/sdk/model/MailDetailModel;->serverId:Ljava/lang/String;

    move-object v4, v3

    .line 38687
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 39246
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v3

    .line 38691
    invoke-interface {v3}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v5

    .line 38692
    const-string/jumbo v3, "EVENTBUTLER"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v6, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$30;

    invoke-direct {v6, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$30;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    const-class v7, Lxv;

    .line 38714
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    .line 38692
    invoke-interface {v3, v6, v7, v8}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lxv;

    .line 38715
    invoke-static {v5}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailAttachments(Ljava/lang/String;Lxv;)V

    goto :goto_0

    .line 38683
    :cond_1
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->x:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    sget-object v5, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;->ValueEditDraft:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$ComposeTypeValue;

    if-ne v4, v5, :cond_b

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    if-eqz v4, :cond_b

    .line 38684
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-object v3, v3, Lagz;->c:Ljava/lang/String;

    move-object v4, v3

    goto :goto_1

    .line 39746
    :sswitch_2
    if-ne p2, v4, :cond_0

    .line 39747
    if-eqz p3, :cond_0

    .line 39748
    const-string/jumbo v4, "mail_separated_send"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 39749
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v4, v4, Lagz;->z:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, v7, :cond_4

    move v4, v5

    .line 39750
    :goto_2
    iget-object v8, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v8, Lagz;->z:Ljava/lang/Boolean;

    .line 39752
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->t()V

    .line 39753
    if-eqz v4, :cond_2

    .line 39754
    invoke-direct {p0, v7}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c(Z)V

    .line 39757
    :cond_2
    const-string/jumbo v4, "mail_timing_send"

    invoke-virtual {p3, v4, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 39758
    const-string/jumbo v4, "mail_emergency"

    invoke-virtual {p3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 39759
    iget-object v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    .line 40373
    if-eqz v4, :cond_5

    :goto_3
    iput v5, v6, Lagz;->a:I

    .line 39760
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->p()V

    .line 39761
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    if-eqz v4, :cond_3

    .line 39762
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->r:Lagz;

    iget-object v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget v5, v5, Lagz;->a:I

    iput v5, v4, Lagz;->a:I

    .line 39764
    :cond_3
    cmp-long v4, v8, v10

    if-lez v4, :cond_7

    .line 39765
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 39766
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    .line 41039
    const-string/jumbo v5, "yyyy/MM/dd HH:mm:ss Z"

    .line 41043
    if-nez v3, :cond_6

    .line 41044
    const-string/jumbo v3, ""

    .line 39766
    :goto_4
    iput-object v3, v4, Lagz;->A:Ljava/lang/String;

    .line 39770
    :goto_5
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    if-eqz v3, :cond_0

    .line 39771
    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iget-object v4, v4, Lagz;->A:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$b;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v4, v6

    .line 39749
    goto :goto_2

    .line 40373
    :cond_5
    const/4 v5, 0x3

    goto :goto_3

    .line 41047
    :cond_6
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 41048
    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 39768
    :cond_7
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->q:Lagz;

    iput-object v3, v4, Lagz;->A:Ljava/lang/String;

    goto :goto_5

    .line 3845
    .restart local v2    # "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :pswitch_3
    const-string/jumbo v4, "camera_file_path"

    .line 3846
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3847
    .local v0, "cameraFilePath":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 3848
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->Z:Ljava/io/File;

    .line 3850
    :cond_8
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->Z:Ljava/io/File;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->Z:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3851
    iput-boolean v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->t:Z

    .line 3852
    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->Z:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3853
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;)V

    .line 3854
    iput-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->Z:Ljava/io/File;

    goto/16 :goto_0

    .line 3855
    :cond_9
    if-eqz p3, :cond_0

    .line 3856
    iput-boolean v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->t:Z

    .line 3857
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3858
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 3865
    .end local v0    # "cameraFilePath":Ljava/lang/String;
    :pswitch_4
    if-eqz p3, :cond_0

    .line 3868
    iput-boolean v5, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->t:Z

    .line 3869
    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3870
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v1, :cond_a

    .line 3871
    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 3873
    :cond_a
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3874
    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v2    # "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_b
    move-object v4, v3

    goto/16 :goto_1

    .line 3826
    .line 3843
    .line 37658
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x2711 -> :sswitch_0
        0x2712 -> :sswitch_0
        0x2713 -> :sswitch_0
        0x271a -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2711
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v3, 0x2713

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 4190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 44481
    sget v2, Laxo$f;->iv_to_picker:I

    if-ne v0, v2, :cond_1

    .line 44482
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a()V

    .line 44483
    const/16 v0, 0x2711

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(I)V

    move v0, v1

    .line 4190
    :goto_0
    if-eqz v0, :cond_6

    .line 4207
    :cond_0
    :goto_1
    return-void

    .line 44485
    :cond_1
    sget v2, Laxo$f;->iv_separate_to_picker:I

    if-ne v0, v2, :cond_2

    .line 44486
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a()V

    .line 44487
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(I)V

    move v0, v1

    .line 44488
    goto :goto_0

    .line 44489
    :cond_2
    sget v2, Laxo$f;->iv_cc_picker:I

    if-ne v0, v2, :cond_3

    .line 44490
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a()V

    .line 44491
    const/16 v0, 0x2712

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(I)V

    move v0, v1

    .line 44492
    goto :goto_0

    .line 44493
    :cond_3
    sget v2, Laxo$f;->iv_bcc_picker:I

    if-ne v0, v2, :cond_4

    .line 44494
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a()V

    .line 44495
    invoke-direct {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(I)V

    move v0, v1

    .line 44496
    goto :goto_0

    .line 44497
    :cond_4
    sget v2, Laxo$f;->quoted_text:I

    if-ne v0, v2, :cond_5

    .line 44498
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44499
    sget v2, Laxo$i;->mail_compose_quoted_text_edit_dialog_content:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 44500
    sget v2, Laxo$b;->alm_cmail_edit_quote:I

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$39;

    invoke-direct {v3, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$39;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 44508
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 44509
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 44510
    const-string/jumbo v0, "MailComposeFragment"

    const-string/jumbo v2, "show dialog for edit quote!!!"

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v0, v6

    .line 44512
    goto :goto_0

    .line 4193
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Laxo$f;->hint_cc_bcc:I

    if-ne v0, v2, :cond_7

    .line 4194
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v()V

    .line 4195
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a()V

    goto :goto_1

    .line 4196
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Laxo$f;->from_hint_layout:I

    if-ne v0, v2, :cond_9

    .line 45242
    const-string/jumbo v0, "mail_duoyu_ChooseSender"

    invoke-static {v0}, Lafe;->a(Ljava/lang/String;)V

    .line 46210
    new-instance v3, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;-><init>(Landroid/content/Context;)V

    .line 46211
    new-instance v0, Lcng;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-direct {v0, v2, v6, v4}, Lcng;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;->a(Lcng;Z)V

    .line 46213
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 46214
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 46215
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46216
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46218
    new-array v0, v1, [I

    aput v6, v0, v6

    .line 46219
    new-instance v6, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46220
    sget v7, Laxo$i;->cmail_choose_sender:I

    invoke-virtual {v6, v7}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 46221
    const/4 v7, -0x1

    new-instance v8, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;

    invoke-direct {v8, p0, v0, v3, v6}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$35;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;[ILcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V

    invoke-virtual {v6, v3, v7, v8}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 46245
    invoke-virtual {v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 46247
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$36;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$36;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    .line 47173
    iput-object v0, v6, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 46257
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v0}, Lafh;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 46258
    const-string/jumbo v0, "MailComposeFragment"

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4199
    :goto_2
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aC:Landroid/widget/TextView;

    sget v1, Laxo$i;->icon_up:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 46262
    :cond_8
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$37;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/tools/DingtalkMenuAdapter;Ljava/util/List;Ljava/util/List;)V

    const-class v1, Lxv;

    .line 46302
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 46262
    invoke-interface {v6, v0, v1, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxv;

    .line 46305
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->w:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/alimei/contact/ContactSDK;->getContactApi(Ljava/lang/String;)Lcom/alibaba/alimei/contact/api/ContactApi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alibaba/alimei/contact/api/ContactApi;->getUserSelfContactFromLocal(Lxv;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 46306
    :catch_0
    move-exception v0

    .line 46308
    const-string/jumbo v1, "refreshAttachmentFromLocal.getUserFromLocal"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4200
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxo$f;->ll_to:I

    if-ne v0, v1, :cond_a

    .line 4201
    sget v0, Laxo$f;->to_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto/16 :goto_1

    .line 4202
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxo$f;->ll_cc:I

    if-ne v0, v1, :cond_b

    .line 4203
    sget v0, Laxo$f;->cc_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto/16 :goto_1

    .line 4204
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Laxo$f;->ll_bcc:I

    if-ne v0, v1, :cond_0

    .line 4205
    sget v0, Laxo$f;->bcc_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 653
    invoke-super {p0, p1}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 655
    new-instance v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$12;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$12;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ba:Lyb;

    .line 6085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    .line 679
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ba:Lyb;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "basic_AttachmentDownload"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lya;->a(Lyb;[Ljava/lang/String;)V

    .line 680
    return-void
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
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 685
    sget v1, Laxo$g;->alm_mail_compose:I

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 6840
    .local v0, "rootView":Landroid/view/View;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 6841
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 6843
    sget v1, Laxo$f;->tips_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ar:Landroid/view/View;

    .line 6844
    sget v1, Laxo$f;->compose_scrollview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->as:Lcom/alibaba/alimei/mail/widget/ComposeScrollView;

    .line 6845
    sget v1, Laxo$f;->ll_to:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->at:Landroid/widget/LinearLayout;

    .line 6846
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->at:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6847
    sget v1, Laxo$f;->divider_to:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->au:Landroid/view/View;

    .line 6848
    sget v1, Laxo$f;->hint_to:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->av:Landroid/view/View;

    .line 6849
    sget v1, Laxo$f;->to_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 6850
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setDropDownWidth(I)V

    .line 6851
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Z)V

    .line 6852
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bl:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setReciepientEditorFocusListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;)V

    .line 6853
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->B:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setOnReciepientChangedListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;)V

    .line 6854
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->C:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setOnBeforeTextChangeListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;)V

    .line 6855
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    sget v3, Laxo$i;->mail_receiver:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setLabel(Ljava/lang/String;)V

    .line 6856
    sget v1, Laxo$f;->rl_to_disable_edit:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aw:Landroid/widget/RelativeLayout;

    .line 6857
    sget v1, Laxo$f;->tv_mail_to_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ax:Landroid/widget/TextView;

    .line 6859
    sget v1, Laxo$f;->from_hint_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 6860
    sget v1, Laxo$f;->hint_cc_bcc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ay:Landroid/widget/TextView;

    .line 6861
    sget v1, Laxo$f;->hint_from:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aB:Landroid/widget/TextView;

    .line 6862
    sget v1, Laxo$f;->sender_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aC:Landroid/widget/TextView;

    .line 6863
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6864
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ay:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6865
    sget v1, Laxo$f;->container_cc_bcc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->az:Landroid/view/View;

    .line 6866
    sget v1, Laxo$f;->ll_separate_to:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aA:Landroid/view/View;

    .line 6868
    sget v1, Laxo$f;->ll_cc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aE:Landroid/widget/LinearLayout;

    .line 6869
    sget v1, Laxo$f;->divider_cc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aF:Landroid/view/View;

    .line 6870
    sget v1, Laxo$f;->hint_cc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aG:Landroid/view/View;

    .line 6871
    sget v1, Laxo$f;->cc_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 6872
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setDropDownWidth(I)V

    .line 6873
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Z)V

    .line 6874
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bl:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setReciepientEditorFocusListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;)V

    .line 6875
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->B:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setOnReciepientChangedListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;)V

    .line 6876
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->C:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setOnBeforeTextChangeListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;)V

    .line 6877
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    sget v3, Laxo$i;->alm_cmail_recipeint_type_cc:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setLabel(Ljava/lang/String;)V

    .line 6878
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aE:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6880
    sget v1, Laxo$f;->ll_bcc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aH:Landroid/widget/LinearLayout;

    .line 6881
    sget v1, Laxo$f;->divider_bcc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aI:Landroid/view/View;

    .line 6882
    sget v1, Laxo$f;->hint_bcc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aJ:Landroid/view/View;

    .line 6883
    sget v1, Laxo$f;->bcc_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 6884
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setDropDownWidth(I)V

    .line 6885
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Z)V

    .line 6886
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bl:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setReciepientEditorFocusListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;)V

    .line 6887
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->B:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setOnReciepientChangedListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;)V

    .line 6888
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->C:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setOnBeforeTextChangeListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;)V

    .line 6889
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    sget v3, Laxo$i;->alm_cmail_recipeint_type_bcc:I

    invoke-virtual {p0, v3}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setLabel(Ljava/lang/String;)V

    .line 6890
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aH:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6892
    sget v1, Laxo$f;->separate_to_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 6893
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setDropDownWidth(I)V

    .line 6894
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->a(Z)V

    .line 6895
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bl:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setReciepientEditorFocusListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$e;)V

    .line 6896
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->B:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setOnReciepientChangedListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$b;)V

    .line 6897
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->C:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setOnBeforeTextChangeListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$c;)V

    .line 6898
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$7;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$7;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->setOnReciepientAddListener(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$a;)V

    .line 6906
    sget v1, Laxo$f;->iv_to_picker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->an:Landroid/view/View;

    .line 6907
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->an:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6908
    sget v1, Laxo$f;->iv_cc_picker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ap:Landroid/view/View;

    .line 6909
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ap:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6910
    sget v1, Laxo$f;->iv_bcc_picker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aq:Landroid/view/View;

    .line 6911
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aq:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6912
    sget v1, Laxo$f;->iv_separate_to_picker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ao:Landroid/view/View;

    .line 6913
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ao:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6915
    sget v1, Laxo$f;->subject:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i:Landroid/widget/EditText;

    .line 6916
    sget v1, Laxo$f;->urgent_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ai:Landroid/view/View;

    .line 6917
    invoke-static {}, Lacq;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6918
    sget v1, Laxo$f;->body_rich_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lafk;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    .line 6919
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6920
    sget v1, Laxo$f;->body_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 6921
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6928
    :goto_0
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->A:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 6929
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->A:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 6931
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->i:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->y:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6932
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    instance-of v1, v1, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;

    if-eqz v1, :cond_3

    .line 6933
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    check-cast v1, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->z:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/mail/widget/GuardAtEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7000
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Laxo$f;->attachment_panel:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aj:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    .line 7001
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aj:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    invoke-virtual {v1, p0}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setOnAttachmentLoadListener(Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel$b;)V

    .line 7002
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aj:Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;

    invoke-virtual {v1, v4}, Lcom/alibaba/alimei/cmail/widget/AttachmentHorizontalListPanel;->setForMailCompose(Z)V

    .line 7003
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Laxo$f;->attachment_toggle:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->N:Landroid/view/View;

    .line 7004
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->N:Landroid/view/View;

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$11;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$11;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7010
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Laxo$f;->attachment_toggle_count:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->O:Landroid/widget/TextView;

    .line 7011
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->s()V

    .line 7014
    sget v1, Laxo$f;->quoted_text_area_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ak:Landroid/view/ViewStub;

    .line 7016
    invoke-virtual {p0, v5}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->b(Z)V

    .line 7017
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->u:Lajo;

    invoke-virtual {p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->a(Lajo;)V

    .line 7018
    sget v1, Laxo$f;->tips_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$13;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$13;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7090
    invoke-static {}, Lafj;->a()Lafj;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v1, v2}, Lafj;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 7091
    invoke-static {}, Lafj;->a()Lafj;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v1, v2}, Lafj;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 7092
    invoke-static {}, Lafj;->a()Lafj;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    invoke-virtual {v1, v2}, Lafj;->a(Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;)V

    .line 7093
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    if-eqz v1, :cond_1

    .line 7094
    invoke-static {}, Lafj;->a()Lafj;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->v:Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    sget v3, Laxo$f;->drag_container:I

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/mail/widget/DragContainer;

    .line 7132
    if-eqz v1, :cond_1

    .line 7135
    iput-object v1, v2, Lafj;->f:Lcom/alibaba/alimei/mail/widget/DragContainer;

    .line 7136
    iget-object v1, v2, Lafj;->f:Lcom/alibaba/alimei/mail/widget/DragContainer;

    new-instance v3, Lafj$2;

    invoke-direct {v3, v2}, Lafj$2;-><init>(Lafj;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/alimei/mail/widget/DragContainer;->post(Ljava/lang/Runnable;)Z

    .line 7096
    :cond_1
    invoke-static {}, Lafj;->a()Lafj;

    move-result-object v1

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$16;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$16;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    .line 7450
    iput-object v2, v1, Lafj;->g:Lafj$a;

    .line 8066
    new-instance v1, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$15;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$15;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    .line 8083
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->k:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 8821
    iput-object v1, v2, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->c:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;

    .line 8084
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->m:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 9821
    iput-object v1, v2, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->c:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;

    .line 8085
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 10821
    iput-object v1, v2, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->c:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;

    .line 8086
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->l:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;

    .line 11821
    iput-object v1, v2, Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel;->c:Lcom/alibaba/alimei/mail/widget/RecipientsAddressPanel$d;

    .line 687
    return-object v0

    .line 6923
    :cond_2
    sget v1, Laxo$f;->body_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lafk;

    iput-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    .line 6924
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6925
    sget v1, Laxo$f;->body_rich_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 6926
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 6934
    :cond_3
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    instance-of v1, v1, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    if-eqz v1, :cond_0

    .line 6935
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    check-cast v1, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    .line 6936
    sget v2, Laxo$i;->dt_mail_input_content:I

    invoke-virtual {p0, v2}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->setPlaceholder(Ljava/lang/String;)V

    .line 6937
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bk:Lcom/alibaba/alimei/cmail/richeditor/RichEditor$c;

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->setOnTextChangeListener(Lcom/alibaba/alimei/cmail/richeditor/RichEditor$c;)V

    .line 6938
    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$8;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/cmail/richeditor/RichEditor;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->setOnCaretYChangeListener(Lcom/alibaba/alimei/cmail/richeditor/RichEditor$b;)V

    .line 6974
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->as:Lcom/alibaba/alimei/mail/widget/ComposeScrollView;

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$9;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$9;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/cmail/richeditor/RichEditor;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/mail/widget/ComposeScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 6986
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    check-cast v2, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;

    new-instance v3, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$10;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$10;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;Lcom/alibaba/alimei/cmail/richeditor/RichEditor;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/alimei/cmail/richeditor/RichEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1717
    .line 25629
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bm:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 25630
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 25631
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25632
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 25633
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 25634
    if-eqz v0, :cond_0

    .line 25635
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 25638
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bm:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1719
    invoke-static {}, Lafj;->a()Lafj;

    invoke-static {}, Lafj;->f()V

    .line 1721
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ba:Lyb;

    if-eqz v0, :cond_1

    .line 26085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v0

    .line 1722
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ba:Lyb;

    invoke-interface {v0, v1}, Lya;->a(Lyb;)V

    .line 1723
    iput-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ba:Lyb;

    .line 1726
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->o:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;

    if-eqz v0, :cond_2

    .line 1727
    iget-object v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->X:Ljava/lang/Object;

    monitor-enter v1

    .line 1728
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->o:Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;

    .line 26400
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$a;->b:Z

    .line 1729
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->X:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1730
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1733
    :cond_2
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aR:Z

    .line 1734
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->aQ:Z

    .line 1735
    iput-boolean v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->t:Z

    .line 1738
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->Y:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 1739
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1741
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v0, :cond_3

    .line 1742
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->destroy()V

    .line 1744
    :cond_3
    iput-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    .line 1746
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bc:Laeq;

    if-eqz v0, :cond_4

    .line 1747
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bc:Laeq;

    invoke-virtual {v0}, Laeq;->a()V

    .line 1750
    :cond_4
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ar:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1751
    iput-object v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->ar:Landroid/view/View;

    .line 1753
    :cond_5
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    if-eqz v0, :cond_6

    .line 1754
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->j:Lafk;

    invoke-interface {v0}, Lafk;->destroy()V

    .line 1756
    :cond_6
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onDestroy()V

    .line 1757
    return-void

    .line 1730
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 819
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onPause()V

    .line 820
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->onPause()V

    .line 822
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->am:Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cmail/widget/mail/TitleBarWebView;->pauseTimers()V

    .line 825
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->bd:Z

    if-eqz v0, :cond_1

    .line 826
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->c()Z

    .line 828
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 805
    invoke-super {p0}, Lcom/alibaba/alimei/mail/fragment/MailBaseFragment;->onResume()V

    .line 806
    invoke-direct {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->n()V

    .line 807
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v6, 0x3e9

    const/4 v5, 0x1

    const/16 v4, 0x3eb

    const/16 v3, 0x3ea

    const/16 v2, 0x3e8

    .line 5221
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 5264
    iput v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->T:I

    .line 5268
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 5224
    :pswitch_0
    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->T:I

    if-ne v1, v2, :cond_0

    .line 5225
    iput v6, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->T:I

    goto :goto_0

    .line 5227
    :cond_0
    iput v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->T:I

    goto :goto_0

    .line 5232
    :pswitch_1
    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->T:I

    if-eq v1, v4, :cond_1

    .line 5233
    iput v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->T:I

    .line 5237
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5238
    .local v0, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    sget v1, Laxo$i;->mail_compose_quoted_text_edit_dialog_content:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5239
    sget v1, Laxo$b;->alm_cmail_edit_quote:I

    new-instance v2, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$46;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment$46;-><init>(Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 5247
    invoke-virtual {v0, v5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    .line 5248
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 5251
    .end local v0    # "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    :cond_1
    iput v2, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->T:I

    goto :goto_0

    .line 5256
    :pswitch_2
    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->T:I

    if-eq v1, v6, :cond_2

    iget v1, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->T:I

    if-ne v1, v4, :cond_3

    .line 5257
    :cond_2
    iput v4, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->T:I

    goto :goto_0

    .line 5259
    :cond_3
    iput v3, p0, Lcom/alibaba/alimei/mail/fragment/MailComposeFragment;->T:I

    goto :goto_0

    .line 5221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 772
    const/4 v0, 0x0

    return v0
.end method

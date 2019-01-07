.class final Lcom/alibaba/alimei/mail/activity/MailComposeActivity$a;
.super Ljava/lang/Object;
.source "MailComposeActivity.java"

# interfaces
.implements Lbyx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/alimei/mail/activity/MailComposeActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:[Ljava/lang/String;

.field private c:I


# direct methods
.method private constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "target"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 752
    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$a;->b:[Ljava/lang/String;

    .line 753
    iput p3, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$a;->c:I

    .line 754
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;[Ljava/lang/String;IB)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
    .param p2, "x1"    # [Ljava/lang/String;
    .param p3, "x2"    # I

    .prologue
    .line 743
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/MailComposeActivity;[Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 758
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .line 759
    .local v0, "target":Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 760
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$a;->b:[Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$a;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 762
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 766
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity;

    .line 767
    .local v0, "target":Lcom/alibaba/alimei/mail/activity/MailComposeActivity;
    if-eqz v0, :cond_0

    .line 768
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailComposeActivity$a;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Lbyy;->b(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 770
    :cond_0
    return-void
.end method

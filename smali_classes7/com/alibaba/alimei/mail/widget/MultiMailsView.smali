.class public Lcom/alibaba/alimei/mail/widget/MultiMailsView;
.super Landroid/widget/LinearLayout;
.source "MultiMailsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/mail/widget/MultiMailsView$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/sdk/model/AccountStatusModel;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/alimei/mail/adapter/MailFilterDropMenuButton;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/MultiMailsView;->c:Z

    .line 250
    new-instance v0, Lcom/alibaba/alimei/mail/widget/MultiMailsView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/MultiMailsView$1;-><init>(Lcom/alibaba/alimei/mail/widget/MultiMailsView;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MultiMailsView;->d:Landroid/view/View$OnClickListener;

    .line 57
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/MultiMailsView;->a(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/MultiMailsView;->c:Z

    .line 250
    new-instance v0, Lcom/alibaba/alimei/mail/widget/MultiMailsView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/MultiMailsView$1;-><init>(Lcom/alibaba/alimei/mail/widget/MultiMailsView;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MultiMailsView;->d:Landroid/view/View$OnClickListener;

    .line 62
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/MultiMailsView;->a(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/alimei/mail/widget/MultiMailsView;->c:Z

    .line 250
    new-instance v0, Lcom/alibaba/alimei/mail/widget/MultiMailsView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/alimei/mail/widget/MultiMailsView$1;-><init>(Lcom/alibaba/alimei/mail/widget/MultiMailsView;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MultiMailsView;->d:Landroid/view/View$OnClickListener;

    .line 67
    invoke-direct {p0, p1}, Lcom/alibaba/alimei/mail/widget/MultiMailsView;->a(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 71
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Laxo$g;->cmail_multi_mails_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MultiMailsView;->a:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MultiMailsView;->b:Ljava/util/HashMap;

    .line 74
    return-void
.end method

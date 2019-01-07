.class public final Lcaq;
.super Ljava/lang/Object;
.source "FestivalRedPacketsReplyHolder.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/app/Activity;

.field c:Lcom/alibaba/wukong/im/Conversation;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .param p3, "rootView"    # Landroid/view/View;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcaq;->b:Landroid/app/Activity;

    .line 34
    iput-object p2, p0, Lcaq;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 35
    iput-object p3, p0, Lcaq;->d:Landroid/view/View;

    .line 1041
    iget-object v0, p0, Lcaq;->d:Landroid/view/View;

    sget v1, Lcaj$d;->ll_click:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcaq;->e:Landroid/widget/LinearLayout;

    .line 1042
    iget-object v0, p0, Lcaq;->d:Landroid/view/View;

    sget v1, Lcaj$d;->tv_result_reply:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcaq;->a:Landroid/widget/TextView;

    .line 1046
    iget-object v0, p0, Lcaq;->e:Landroid/widget/LinearLayout;

    new-instance v1, Lcaq$1;

    invoke-direct {v1, p0}, Lcaq$1;-><init>(Lcaq;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "reply"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcaq;->a:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcok;->a()Lcok;

    move-result-object v1

    iget-object v2, p0, Lcaq;->b:Landroid/app/Activity;

    invoke-virtual {v1, v2, p1}, Lcok;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    .line 65
    .local v0, "spannableString":Landroid/text/SpannableString;
    if-eqz v0, :cond_1

    .line 66
    iget-object v1, p0, Lcaq;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v1, p0, Lcaq;->a:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

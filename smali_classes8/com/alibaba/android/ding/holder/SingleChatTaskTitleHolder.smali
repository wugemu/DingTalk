.class public Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder;
.super Lbit;
.source "SingleChatTaskTitleHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lbit;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder;->a:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 30
    iget-object v1, p0, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laxp$g;->ding_item_single_chat_task_title:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "rootView":Landroid/view/View;
    sget v1, Laxp$f;->tv_title_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder;->b:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 32
    sget v1, Laxp$f;->tv_left_person:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder;->c:Landroid/widget/TextView;

    .line 33
    sget v1, Laxp$f;->tv_right_person:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder;->d:Landroid/widget/TextView;

    .line 34
    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 39
    instance-of v1, p1, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder$a;

    if-nez v1, :cond_0

    .line 52
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 43
    check-cast v0, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder$a;

    .line 1069
    .local v0, "title":Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder$a;
    iget-boolean v1, v0, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder$a;->b:Z

    .line 45
    if-eqz v1, :cond_1

    .line 46
    iget-object v1, p0, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder;->c:Landroid/widget/TextView;

    sget v2, Laxp$i;->ding_txt_sender_me:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 47
    iget-object v1, p0, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder;->d:Landroid/widget/TextView;

    .line 2065
    iget-object v2, v0, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder$a;->a:Ljava/lang/CharSequence;

    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder;->c:Landroid/widget/TextView;

    .line 3065
    iget-object v2, v0, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder$a;->a:Ljava/lang/CharSequence;

    .line 49
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/alibaba/android/ding/holder/SingleChatTaskTitleHolder;->d:Landroid/widget/TextView;

    sget v2, Laxp$i;->ding_txt_sender_me:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

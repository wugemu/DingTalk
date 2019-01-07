.class final Lbyc;
.super Ljava/lang/Object;
.source "LiveSessionViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/content/Context;

.field h:Lcom/alibaba/doraemon/image/ImageMagician;

.field i:Lbyb;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lbyc;->g:Landroid/content/Context;

    .line 52
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lbyc;->h:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbtp$f;->live_session_item_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbyc;->a:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lbyc;->a:Landroid/view/View;

    sget v1, Lbtp$e;->iv_cover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbyc;->b:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lbyc;->a:Landroid/view/View;

    sget v1, Lbtp$e;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbyc;->c:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lbyc;->a:Landroid/view/View;

    sget v1, Lbtp$e;->tv_anchor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbyc;->d:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lbyc;->a:Landroid/view/View;

    sget v1, Lbtp$e;->tv_info:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbyc;->e:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lbyc;->a:Landroid/view/View;

    sget v1, Lbtp$e;->tv_link_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbyc;->f:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lbyc;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method static synthetic a(Lbyc;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lbyc;

    .prologue
    .line 37
    iget-object v0, p0, Lbyc;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lbyc;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbyc;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lbyc;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;
    .locals 8
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 122
    if-eqz p1, :cond_0

    iget-object v3, p0, Lbyc;->i:Lbyb;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lbyc;->i:Lbyb;

    iget-object v3, v3, Lbyb;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    :cond_0
    const/4 v3, 0x0

    .line 138
    :goto_0
    return-object v3

    .line 126
    :cond_1
    const/4 v1, 0x0

    .line 127
    .local v1, "groupNick":Ljava/lang/String;
    const-class v3, Lcom/alibaba/wukong/im/GroupNickService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/GroupNickService;

    iget-object v4, p0, Lbyc;->i:Lbyb;

    iget-object v4, v4, Lbyb;->c:Ljava/lang/String;

    iget-object v5, p0, Lbyc;->i:Lbyb;

    iget-object v5, v5, Lbyb;->a:Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/livebase/model/LivePlayObject;->anchor:J

    const/4 v5, 0x1

    invoke-interface {v3, v4, v6, v7, v5}, Lcom/alibaba/wukong/im/GroupNickService;->getGroupNickSync(Ljava/lang/String;JZ)Lcom/alibaba/wukong/im/GroupNickObject;

    move-result-object v2

    .line 129
    .local v2, "groupNickObject":Lcom/alibaba/wukong/im/GroupNickObject;
    if-eqz v2, :cond_2

    .line 130
    invoke-virtual {v2}, Lcom/alibaba/wukong/im/GroupNickObject;->getGroupNick()Ljava/lang/String;

    move-result-object v1

    .line 133
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 134
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 135
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 136
    const-string/jumbo v3, "("

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 138
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 143
    iget-object v0, p0, Lbyc;->i:Lbyb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbyc;->i:Lbyb;

    iget-object v0, v0, Lbyb;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lbyc;->g:Landroid/content/Context;

    iget-object v2, p0, Lbyc;->i:Lbyb;

    iget-object v2, v2, Lbyb;->c:Ljava/lang/String;

    new-instance v3, Lbyc$2;

    invoke-direct {v3, p0}, Lbyc$2;-><init>(Lbyc;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

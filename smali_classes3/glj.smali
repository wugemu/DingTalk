.class public abstract Lglj;
.super Ljava/lang/Object;
.source "SpaceLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lglj$c;,
        Lglj$b;,
        Lglj$a;,
        Lglj$d;
    }
.end annotation


# instance fields
.field protected a:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    return-void
.end method

.method protected static a(Lcom/alibaba/wukong/im/Conversation;)Lgkl;
    .locals 6
    .param p0, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 101
    :goto_0
    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lgkl;

    invoke-direct {v0}, Lgkl;-><init>()V

    .line 91
    .local v0, "aclMember":Lgkl;
    invoke-interface {p0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "conversationId":Ljava/lang/String;
    invoke-static {v1}, Lgpt;->c(Ljava/lang/String;)Z

    move-result v2

    .line 93
    .local v2, "isSingleChat":Z
    if-eqz v2, :cond_1

    .line 95
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-static {v1, v3}, Lgpt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lgkl;->a:Ljava/lang/String;

    .line 99
    :goto_1
    if-eqz v2, :cond_2

    const/4 v3, 0x2

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lgkl;->b:Ljava/lang/Integer;

    .line 100
    invoke-static {p0}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lgkl;->c:Ljava/lang/Long;

    goto :goto_0

    .line 97
    :cond_1
    iput-object v1, v0, Lgkl;->a:Ljava/lang/String;

    goto :goto_1

    .line 99
    :cond_2
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private a(I)V
    .locals 1
    .param p1, "stringResId"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lglj;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lglj;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lglj;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-lez p1, :cond_1

    .end local p1    # "stringResId":I
    :goto_0
    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog(I)V

    .line 78
    :cond_0
    return-void

    .line 76
    .restart local p1    # "stringResId":I
    :cond_1
    sget p1, Lfzs$h;->loading:I

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 67
    sget v0, Lfzs$h;->dt_cspace_sending:I

    invoke-direct {p0, v0}, Lglj;->a(I)V

    .line 68
    return-void
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 71
    sget v0, Lfzs$h;->loading:I

    invoke-direct {p0, v0}, Lglj;->a(I)V

    .line 72
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lglj;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lglj;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lglj;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 84
    :cond_0
    return-void
.end method

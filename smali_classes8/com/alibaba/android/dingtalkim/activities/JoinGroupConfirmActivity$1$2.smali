.class final Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;
.super Lcmi;
.source "JoinGroupConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v5, 0x8

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->g(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 222
    const-string/jumbo v0, "im"

    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "addGroupMember onException code:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " reason:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, " qrcode:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    .line 224
    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->d(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, " groupId:"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->e(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v3, " cid:"

    aput-object v3, v2, v5

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->f(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 223
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v0, "4013071"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->d(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->i(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->j(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)V

    .line 232
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->h(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 230
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 210
    .line 1214
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->g(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1215
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->a(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1$2;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;->h(Lcom/alibaba/android/dingtalkim/activities/JoinGroupConfirmActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 210
    return-void
.end method

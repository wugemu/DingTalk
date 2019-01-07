.class final Lazw$1;
.super Lckm$a;
.source "DingCommentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lckm$a",
        "<",
        "Lcom/alibaba/android/ding/base/objects/CommentObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lazw;


# direct methods
.method constructor <init>(Lazw;)V
    .locals 0
    .param p1, "this$0"    # Lazw;

    .prologue
    .line 76
    iput-object p1, p0, Lazw$1;->a:Lazw;

    invoke-direct {p0}, Lckm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 76
    check-cast p1, Lcom/alibaba/android/ding/base/objects/CommentObject;

    .line 1079
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingDetailActivityV2]onCommentChanged."

    aput-object v2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1080
    if-eqz p1, :cond_1

    .line 1081
    iget-object v0, p0, Lazw$1;->a:Lazw;

    invoke-static {v0}, Lazw;->a(Lazw;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lazw$1;->a:Lazw;

    invoke-static {v0}, Lazw;->a(Lazw;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1082
    iget-object v0, p0, Lazw$1;->a:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    invoke-interface {v0}, Lazv$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    iget-object v0, p0, Lazw$1;->a:Lazw;

    invoke-static {v0}, Lazw;->c(Lazw;)Lbhm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lazw$1;->a:Lazw;

    .line 1084
    invoke-static {v0}, Lazw;->c(Lazw;)Lbhm;

    move-result-object v0

    .line 1135
    iget-boolean v0, v0, Lbhm;->b:Z

    .line 1084
    if-nez v0, :cond_0

    .line 1085
    iget-object v0, p0, Lazw$1;->a:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->ALL_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    invoke-interface {v0, p1, v1}, Lazv$b;->a(Lcom/alibaba/android/ding/base/objects/CommentObject;Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;)V

    .line 1087
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/ding/base/objects/CommentObject;->k:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->NORMAL:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lazw$1;->a:Lazw;

    .line 1088
    invoke-static {v0}, Lazw;->d(Lazw;)Lbhm;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lazw$1;->a:Lazw;

    .line 1089
    invoke-static {v0}, Lazw;->d(Lazw;)Lbhm;

    move-result-object v0

    .line 2135
    iget-boolean v0, v0, Lbhm;->b:Z

    .line 1089
    if-nez v0, :cond_1

    .line 1090
    iget-object v0, p0, Lazw$1;->a:Lazw;

    invoke-static {v0}, Lazw;->b(Lazw;)Lazv$b;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;->USER_COMMENT:Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;

    invoke-interface {v0, p1, v1}, Lazv$b;->a(Lcom/alibaba/android/ding/base/objects/CommentObject;Lcom/alibaba/android/ding/adapter/CommentAdapter$TYPE;)V

    .line 76
    :cond_1
    return-void
.end method

.class public final Lbif;
.super Lbia;
.source "CommentSystemHolder.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0}, Lbia;-><init>()V

    .line 31
    iput-object p1, p0, Lbif;->e:Landroid/app/Activity;

    .line 32
    if-eqz p2, :cond_0

    .line 33
    sget v0, Laxp$f;->comment_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbif;->a:Landroid/widget/TextView;

    .line 34
    sget v0, Laxp$f;->comment_text_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbif;->b:Landroid/widget/TextView;

    .line 35
    sget v0, Laxp$f;->divider_line:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbif;->c:Landroid/view/View;

    .line 36
    sget v0, Laxp$f;->comment_text_notice:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbif;->d:Landroid/widget/TextView;

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ZLcom/alibaba/android/ding/base/objects/CommentObject;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 6
    .param p1, "isLastPosition"    # Z
    .param p2, "commentObject"    # Lcom/alibaba/android/ding/base/objects/CommentObject;
    .param p3, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 42
    .line 1049
    iget-object v0, p0, Lbif;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1050
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1054
    if-nez p2, :cond_3

    .line 1055
    iget-object v0, p0, Lbif;->a:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    :goto_1
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->k:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;->SYSTEM:Lcom/alibaba/android/ding/base/objects/CommentObject$COMMENT_TYPE;

    if-eq v0, v1, :cond_4

    .line 1064
    :cond_0
    iget-object v0, p0, Lbif;->b:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    :goto_2
    if-eqz p2, :cond_1

    .line 1083
    iget-object v1, p0, Lbif;->d:Landroid/widget/TextView;

    .line 1261
    iget-object v0, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->r:Ljava/lang/String;

    .line 1083
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1084
    iget-object v0, p0, Lbif;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lbif;->e:Landroid/app/Activity;

    sget v3, Laxp$i;->dt_ding_comment_notice_prefix:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 2261
    iget-object v5, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->r:Ljava/lang/String;

    .line 1084
    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_1
    return-void

    .line 1050
    :cond_2
    iget-object v1, p0, Lbif;->e:Landroid/app/Activity;

    const/high16 v3, 0x424c0000    # 51.0f

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    goto :goto_0

    .line 1058
    :cond_3
    iget-object v0, p0, Lbif;->a:Landroid/widget/TextView;

    iget-wide v4, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->d:J

    invoke-static {v4, v5}, Lbkb;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1067
    :cond_4
    iget-object v0, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    instance-of v0, v0, Layz;

    if-nez v0, :cond_5

    .line 1068
    iget-object v0, p0, Lbif;->b:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1071
    :cond_5
    iget-object v0, p2, Lcom/alibaba/android/ding/base/objects/CommentObject;->e:Lcom/alibaba/android/ding/base/objects/CommentContent;

    check-cast v0, Layz;

    iget-object v0, v0, Layz;->a:Ljava/lang/String;

    .line 1072
    if-nez v0, :cond_6

    .line 1073
    iget-object v0, p0, Lbif;->b:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1076
    :cond_6
    iget-object v1, p0, Lbif;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    move v0, v2

    .line 1083
    goto :goto_3
.end method

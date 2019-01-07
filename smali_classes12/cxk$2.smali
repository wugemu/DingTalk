.class final Lcxk$2;
.super Ljava/lang/Object;
.source "SessionTextItemHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcxk;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/text/SpannableStringBuilder;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Lcxk;


# direct methods
.method constructor <init>(Lcxk;Landroid/text/SpannableStringBuilder;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcxk;

    .prologue
    .line 705
    iput-object p1, p0, Lcxk$2;->f:Lcxk;

    iput-object p2, p0, Lcxk$2;->a:Landroid/text/SpannableStringBuilder;

    iput-object p3, p0, Lcxk$2;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iput-object p4, p0, Lcxk$2;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcxk$2;->d:Z

    iput-boolean p6, p0, Lcxk$2;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 705
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1709
    iget-object v3, p0, Lcxk$2;->f:Lcxk;

    iget-object v4, p0, Lcxk$2;->a:Landroid/text/SpannableStringBuilder;

    .line 2631
    if-eqz p1, :cond_0

    if-nez v4, :cond_1

    .line 1710
    :cond_0
    :goto_0
    iget-object v0, p0, Lcxk$2;->f:Lcxk;

    iget-object v1, p0, Lcxk$2;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, p0, Lcxk$2;->a:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcxk$2;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcxk$2;->d:Z

    iget-boolean v5, p0, Lcxk$2;->e:Z

    invoke-static/range {v0 .. v5}, Lcxk;->a(Lcxk;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    .line 705
    return-void

    .line 2634
    :cond_1
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 2635
    if-gez v0, :cond_2

    move v0, v1

    .line 2639
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ad()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    move v2, v1

    .line 2640
    :goto_1
    if-eqz v2, :cond_4

    .line 2641
    iget-object v1, v3, Lcxk;->E:Ljava/lang/String;

    .line 2645
    :goto_2
    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2646
    if-eqz v2, :cond_5

    sget-object v2, Lcxk;->F:Landroid/text/style/ForegroundColorSpan;

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v3, 0x21

    invoke-virtual {v4, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    move v2, v1

    .line 2639
    goto :goto_1

    .line 2643
    :cond_4
    iget-object v1, v3, Lcxk;->D:Ljava/lang/String;

    goto :goto_2

    .line 2646
    :cond_5
    sget-object v2, Lcxk;->G:Landroid/text/style/ForegroundColorSpan;

    goto :goto_3
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 721
    iget-object v0, p0, Lcxk$2;->f:Lcxk;

    iget-object v1, p0, Lcxk$2;->b:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, p0, Lcxk$2;->a:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcxk$2;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcxk$2;->d:Z

    iget-boolean v5, p0, Lcxk$2;->e:Z

    invoke-static/range {v0 .. v5}, Lcxk;->a(Lcxk;Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;Landroid/text/SpannableStringBuilder;Ljava/lang/String;ZZ)V

    .line 722
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 716
    return-void
.end method

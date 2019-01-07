.class final Lcxk$5;
.super Ljava/lang/Object;
.source "SessionTextItemHolder.java"

# interfaces
.implements Ldht$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/wukong/im/Message;

.field final synthetic d:Landroid/text/SpannableStringBuilder;

.field final synthetic e:Lcxk;


# direct methods
.method constructor <init>(Lcxk;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;Landroid/text/SpannableStringBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcxk;

    .prologue
    .line 906
    iput-object p1, p0, Lcxk$5;->e:Lcxk;

    iput-object p2, p0, Lcxk$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcxk$5;->b:Ljava/lang/String;

    iput-object p4, p0, Lcxk$5;->c:Lcom/alibaba/wukong/im/Message;

    iput-object p5, p0, Lcxk$5;->d:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lckl;)V
    .locals 6
    .param p1, "nameWrapper"    # Lckl;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 909
    iget-object v0, p0, Lcxk$5;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxk$5;->a:Ljava/lang/String;

    iget-object v1, p0, Lcxk$5;->e:Lcxk;

    iget-object v1, v1, Lcxk;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lckl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcxk$5;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcxk$5;->b:Ljava/lang/String;

    .line 1039
    iget-object v1, p1, Lckl;->d:Ljava/lang/String;

    .line 915
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 919
    :cond_2
    iget-object v0, p0, Lcxk$5;->c:Lcom/alibaba/wukong/im/Message;

    invoke-static {v0}, Ldkc;->v(Lcom/alibaba/wukong/im/Message;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 920
    iget-object v0, p0, Lcxk$5;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->dt_message_recall_message_file_format:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 2039
    iget-object v4, p1, Lckl;->d:Ljava/lang/String;

    .line 920
    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 924
    :goto_1
    iget-object v0, p0, Lcxk$5;->e:Lcxk;

    iget-object v0, v0, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    iget-object v1, p0, Lcxk$5;->d:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 922
    :cond_3
    iget-object v0, p0, Lcxk$5;->d:Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lctk$i;->msg_recall:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 3039
    iget-object v4, p1, Lckl;->d:Ljava/lang/String;

    .line 922
    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 931
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "NameEvent"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "getNameEvent failed code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return-void
.end method

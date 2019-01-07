.class final Lcxk$1$1$1;
.super Ljava/lang/Object;
.source "SessionTextItemHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcxk$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

.field final synthetic b:Lcxk$1$1;


# direct methods
.method constructor <init>(Lcxk$1$1;Lcom/alibaba/doraemon/performance/DDStringBuilder;)V
    .locals 0
    .param p1, "this$2"    # Lcxk$1$1;

    .prologue
    .line 403
    iput-object p1, p0, Lcxk$1$1$1;->b:Lcxk$1$1;

    iput-object p2, p0, Lcxk$1$1$1;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 406
    iget-object v1, p0, Lcxk$1$1$1;->a:Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "nickName":Ljava/lang/String;
    iget-object v1, p0, Lcxk$1$1$1;->b:Lcxk$1$1;

    iget-object v1, v1, Lcxk$1$1;->b:Lcxk$1;

    iget-object v1, v1, Lcxk$1;->d:Lcxk;

    iget-object v1, v1, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcxk$1$1$1;->b:Lcxk$1$1;

    iget-object v1, v1, Lcxk$1$1;->b:Lcxk$1;

    iget-object v1, v1, Lcxk$1;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    iget-object v1, p0, Lcxk$1$1$1;->b:Lcxk$1$1;

    iget-object v1, v1, Lcxk$1$1;->b:Lcxk$1;

    iget-object v1, v1, Lcxk$1;->d:Lcxk;

    iget-object v1, v1, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 408
    invoke-static {}, Ldyx;->a()Ldyx;

    move-result-object v1

    iget-object v2, p0, Lcxk$1$1$1;->b:Lcxk$1$1;

    iget-object v2, v2, Lcxk$1$1;->b:Lcxk$1;

    iget-object v2, v2, Lcxk$1;->c:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    .line 1042
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1043
    iget-object v1, v1, Ldyx;->a:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_0
    iget-object v1, p0, Lcxk$1$1$1;->b:Lcxk$1$1;

    iget-object v1, v1, Lcxk$1$1;->b:Lcxk$1;

    iget-object v1, v1, Lcxk$1;->d:Lcxk;

    iget-object v1, v1, Lcxk;->I:Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/AutoTranslateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    return-void
.end method

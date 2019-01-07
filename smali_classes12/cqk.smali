.class public final Lcqk;
.super Landroid/text/style/ClickableSpan;
.source "RimeURLSpan.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcqk;->c:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcqk;->a:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcqk;->b:Ljava/lang/ref/WeakReference;

    .line 28
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    instance-of v3, p1, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 34
    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;

    .line 1143
    .local v1, "textView":Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;
    iget-boolean v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->a:Z

    .line 35
    if-eqz v3, :cond_1

    .line 57
    .end local v1    # "textView":Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;
    :cond_0
    :goto_0
    return-void

    .line 2135
    .restart local v1    # "textView":Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;->b:Z

    .line 42
    .end local v1    # "textView":Lcom/alibaba/android/dingtalkbase/widgets/LaiwangSpanFixTextView;
    :cond_2
    iget-object v3, p0, Lcqk;->a:Ljava/lang/String;

    iput-object v3, p0, Lcqk;->c:Ljava/lang/String;

    .line 44
    :try_start_0
    iget-object v3, p0, Lcqk;->a:Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcqk;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_1
    iget-object v3, p0, Lcqk;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 50
    .local v2, "tmpActivity":Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 52
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    .line 3060
    iget-object v3, v3, Lcid;->a:Lcqo;

    .line 52
    if-eqz v3, :cond_0

    .line 53
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    .line 4060
    iget-object v3, v3, Lcid;->a:Lcqo;

    .line 53
    iget-object v4, p0, Lcqk;->a:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lcqo;->onClick(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    .end local v2    # "tmpActivity":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 63
    return-void
.end method

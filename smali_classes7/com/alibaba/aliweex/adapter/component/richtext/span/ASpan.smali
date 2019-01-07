.class public Lcom/alibaba/aliweex/adapter/component/richtext/span/ASpan;
.super Landroid/text/style/ClickableSpan;
.source "ASpan.java"


# instance fields
.field private mInstanceId:Ljava/lang/String;

.field private mURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ASpan;->mInstanceId:Ljava/lang/String;

    .line 219
    iput-object p2, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ASpan;->mURL:Ljava/lang/String;

    .line 220
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ASpan;->mInstanceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/aliweex/adapter/component/richtext/span/ASpan;->mURL:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/taobao/weex/utils/ATagUtil;->onClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 233
    return-void
.end method

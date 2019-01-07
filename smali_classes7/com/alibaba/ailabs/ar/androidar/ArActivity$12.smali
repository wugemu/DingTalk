.class final Lcom/alibaba/ailabs/ar/androidar/ArActivity$12;
.super Ljava/lang/Object;
.source "ArActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/ar/androidar/ArActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/ar/androidar/ArActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$12;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string/jumbo v2, "dingtalk://dingtalkclient/page/link?url=https://survey.alibaba.com/survey/AgBN0EDOQ"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 201
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 202
    iget-object v2, p0, Lcom/alibaba/ailabs/ar/androidar/ArActivity$12;->a:Lcom/alibaba/ailabs/ar/androidar/ArActivity;

    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/ar/androidar/ArActivity;->startActivity(Landroid/content/Intent;)V

    .line 203
    return-void
.end method

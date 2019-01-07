.class final Lcom/alibaba/android/rimet/utils/UrlUtils$32$1;
.super Ljava/lang/Object;
.source "UrlUtils.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/utils/UrlUtils$32;->onException(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/utils/UrlUtils$32;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/utils/UrlUtils$32;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/utils/UrlUtils$32;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$32$1;->a:Lcom/alibaba/android/rimet/utils/UrlUtils$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 707
    const-string/jumbo v0, "to_page"

    const-string/jumbo v1, "to_session"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 709
    return-object p1
.end method

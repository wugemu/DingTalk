.class final Lcom/alibaba/android/rimet/utils/UrlUtils$25$1;
.super Ljava/lang/Object;
.source "UrlUtils.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/utils/UrlUtils$25;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/utils/UrlUtils$25;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/utils/UrlUtils$25;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/utils/UrlUtils$25;

    .prologue
    .line 2127
    iput-object p1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$25$1;->a:Lcom/alibaba/android/rimet/utils/UrlUtils$25;

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
    .line 2130
    const-string/jumbo v0, "intent_key_robot_text"

    iget-object v1, p0, Lcom/alibaba/android/rimet/utils/UrlUtils$25$1;->a:Lcom/alibaba/android/rimet/utils/UrlUtils$25;

    iget-object v1, v1, Lcom/alibaba/android/rimet/utils/UrlUtils$25;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2131
    return-object p1
.end method

.class final Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1$1;->c:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1;

    iput-object p2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 151
    sget-object v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onIntentRewrite :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 155
    const/high16 v1, 0x4000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    return-object p1
.end method

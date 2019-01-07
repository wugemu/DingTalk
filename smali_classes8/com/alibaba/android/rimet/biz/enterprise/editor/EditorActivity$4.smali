.class final Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$4;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$4;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 306
    const-string/jumbo v0, "completed_back_to_target_action"

    sget-object v1, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string/jumbo v0, "album_choose_num"

    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity$4;->a:Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;->a(Lcom/alibaba/android/rimet/biz/enterprise/editor/EditorActivity;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x9

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    return-object p1
.end method

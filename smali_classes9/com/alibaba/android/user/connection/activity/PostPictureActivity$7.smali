.class final Lcom/alibaba/android/user/connection/activity/PostPictureActivity$7;
.super Ljava/lang/Object;
.source "PostPictureActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/connection/activity/PostPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

.field final synthetic b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/connection/activity/PostPictureActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$7;->b:Lcom/alibaba/android/user/connection/activity/PostPictureActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$7;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

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
    .line 529
    const-string/jumbo v0, "extra_post"

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/PostPictureActivity$7;->a:Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 530
    return-object p1
.end method

.class final Lewb$6;
.super Ljava/lang/Object;
.source "Navigation.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewb;->a(Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;)V
    .locals 0

    .prologue
    .line 889
    iput-object p1, p0, Lewb$6;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lewb$6;->b:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 892
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 893
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 894
    const/high16 v0, 0x800000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 896
    iget-object v0, p0, Lewb$6;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lewb$6;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 899
    :cond_0
    const-string/jumbo v0, "conf_video_from_page"

    iget-object v1, p0, Lewb$6;->b:Lcom/alibaba/android/teleconf/data/VideoConfInviteObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 900
    return-object p1
.end method

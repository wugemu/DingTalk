.class final Lfzu$41;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Landroid/content/Context;Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)V
    .locals 0

    .prologue
    .line 3277
    iput-object p1, p0, Lfzu$41;->a:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 3280
    const-string/jumbo v0, "intent_key_link_share_model"

    iget-object v1, p0, Lfzu$41;->a:Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3281
    return-object p1
.end method

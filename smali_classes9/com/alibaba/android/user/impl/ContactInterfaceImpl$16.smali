.class final Lcom/alibaba/android/user/impl/ContactInterfaceImpl$16;
.super Ljava/lang/Object;
.source "ContactInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/impl/ContactInterfaceImpl;->f(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/impl/ContactInterfaceImpl;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    .prologue
    .line 5361
    iput-object p1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$16;->b:Lcom/alibaba/android/user/impl/ContactInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$16;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 5364
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;-><init>()V

    .line 5365
    .local v0, "contentObject":Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$16;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "share_url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->shareUrl:Ljava/lang/String;

    .line 5366
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$16;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "share_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->content:Ljava/lang/String;

    .line 5367
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$16;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "share_pic_url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->mediaId:Ljava/lang/String;

    .line 5368
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$16;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "share_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->title:Ljava/lang/String;

    .line 5369
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$16;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "share_source_icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->shareFromIcon:Ljava/lang/String;

    .line 5370
    iget-object v1, p0, Lcom/alibaba/android/user/impl/ContactInterfaceImpl$16;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "share_source_text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;->shareFromText:Ljava/lang/String;

    .line 5371
    const-string/jumbo v1, "circle_extra_link"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 5372
    return-object p1
.end method

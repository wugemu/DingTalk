.class final Lfjl$8;
.super Ljava/lang/Object;
.source "UserNavigatorImpl.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfjl;->a(ILcom/alibaba/android/user/model/IconFontParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/user/model/IconFontParams;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Landroid/content/Intent;

.field final synthetic i:Z

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Lfjl;


# direct methods
.method constructor <init>(Lfjl;ILcom/alibaba/android/user/model/IconFontParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfjl;

    .prologue
    .line 161
    iput-object p1, p0, Lfjl$8;->k:Lfjl;

    iput p2, p0, Lfjl$8;->a:I

    iput-object p3, p0, Lfjl$8;->b:Lcom/alibaba/android/user/model/IconFontParams;

    iput-object p4, p0, Lfjl$8;->c:Ljava/lang/String;

    iput-object p5, p0, Lfjl$8;->d:Ljava/lang/String;

    iput-object p6, p0, Lfjl$8;->e:Ljava/lang/String;

    iput-object p7, p0, Lfjl$8;->f:Ljava/lang/String;

    iput-object p8, p0, Lfjl$8;->g:Ljava/lang/String;

    iput-object p9, p0, Lfjl$8;->h:Landroid/content/Intent;

    iput-boolean p10, p0, Lfjl$8;->i:Z

    iput-object p11, p0, Lfjl$8;->j:Ljava/lang/String;

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
    .line 164
    const-string/jumbo v0, "icon_resource_id"

    iget v1, p0, Lfjl$8;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const-string/jumbo v0, "icon_font"

    iget-object v1, p0, Lfjl$8;->b:Lcom/alibaba/android/user/model/IconFontParams;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 166
    const-string/jumbo v0, "action_title"

    iget-object v1, p0, Lfjl$8;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string/jumbo v0, "action_content"

    iget-object v1, p0, Lfjl$8;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string/jumbo v0, "action_hint"

    iget-object v1, p0, Lfjl$8;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string/jumbo v0, "next_action"

    iget-object v1, p0, Lfjl$8;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string/jumbo v0, "action_scheme"

    iget-object v1, p0, Lfjl$8;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string/jumbo v0, "action_params"

    iget-object v1, p0, Lfjl$8;->h:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 172
    const-string/jumbo v0, "support_back"

    iget-boolean v1, p0, Lfjl$8;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    const-string/jumbo v0, "back_action_scheme"

    iget-object v1, p0, Lfjl$8;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    return-object p1
.end method

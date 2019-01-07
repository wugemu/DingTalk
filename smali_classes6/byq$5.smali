.class final Lbyq$5;
.super Ljava/lang/Object;
.source "StartLiveUtils.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbyq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbxf;


# direct methods
.method constructor <init>(Ljava/lang/String;Lbxf;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lbyq$5;->a:Ljava/lang/String;

    iput-object p2, p0, Lbyq$5;->b:Lbxf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 204
    const-string/jumbo v0, "cid"

    iget-object v1, p0, Lbyq$5;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string/jumbo v0, "intent_key_live_info_object"

    iget-object v1, p0, Lbyq$5;->b:Lbxf;

    iget-object v1, v1, Lbxf;->a:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 206
    const-string/jumbo v0, "intent_extra_is_enable_hw_code"

    iget-object v1, p0, Lbyq$5;->b:Lbxf;

    iget-boolean v1, v1, Lbxf;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    const-string/jumbo v0, "intent_extra_is_enable_hd"

    iget-object v1, p0, Lbyq$5;->b:Lbxf;

    iget-boolean v1, v1, Lbxf;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    const-string/jumbo v0, "intent_extra_is_enable_hd_beauty"

    iget-object v1, p0, Lbyq$5;->b:Lbxf;

    iget-boolean v1, v1, Lbxf;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    const-string/jumbo v0, "intent_extra_linkmic_on"

    iget-object v1, p0, Lbyq$5;->b:Lbxf;

    iget-boolean v1, v1, Lbxf;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    return-object p1
.end method

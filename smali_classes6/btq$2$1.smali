.class final Lbtq$2$1;
.super Ljava/lang/Object;
.source "AnchorManager.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtq$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbtq$2;


# direct methods
.method constructor <init>(Lbtq$2;)V
    .locals 0
    .param p1, "this$1"    # Lbtq$2;

    .prologue
    .line 137
    iput-object p1, p0, Lbtq$2$1;->a:Lbtq$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 140
    iget-object v1, p0, Lbtq$2$1;->a:Lbtq$2;

    iget-object v1, v1, Lbtq$2;->b:Lbtq;

    invoke-static {v1}, Lbtq;->c(Lbtq;)Ljjx;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbtq$2$1;->a:Lbtq$2;

    iget-object v1, v1, Lbtq$2;->b:Lbtq;

    invoke-static {v1}, Lbtq;->c(Lbtq;)Ljjx;

    move-result-object v1

    invoke-virtual {v1}, Ljjx;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 141
    .local v0, "isBeautyOn":Z
    :goto_0
    const-string/jumbo v1, "intent_extra_is_face_beauty_open"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    const-string/jumbo v1, "intent_key_live_info_object"

    iget-object v2, p0, Lbtq$2$1;->a:Lbtq$2;

    iget-object v2, v2, Lbtq$2;->b:Lbtq;

    invoke-static {v2}, Lbtq;->d(Lbtq;)Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 143
    const/high16 v1, 0x34000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    return-object p1

    .line 140
    .end local v0    # "isBeautyOn":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

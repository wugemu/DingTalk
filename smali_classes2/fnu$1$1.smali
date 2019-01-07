.class final Lfnu$1$1;
.super Ljava/lang/Object;
.source "LabelSettingAdapter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfnu$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfnu$1;


# direct methods
.method constructor <init>(Lfnu$1;)V
    .locals 0
    .param p1, "this$1"    # Lfnu$1;

    .prologue
    .line 88
    iput-object p1, p0, Lfnu$1$1;->a:Lfnu$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 91
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lfnu$1$1;->a:Lfnu$1;

    iget-object v1, v1, Lfnu$1;->b:Lfnu;

    invoke-static {v1}, Lfnu;->a(Lfnu;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 92
    const-string/jumbo v0, "intent_key_label_group"

    iget-object v1, p0, Lfnu$1$1;->a:Lfnu$1;

    iget-object v1, v1, Lfnu$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 93
    return-object p1
.end method

.class final Lfmm$3;
.super Ljava/lang/Object;
.source "AddCustomerMenuDialog.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfmm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfmm;


# direct methods
.method constructor <init>(Lfmm;)V
    .locals 0
    .param p1, "this$0"    # Lfmm;

    .prologue
    .line 161
    iput-object p1, p0, Lfmm$3;->a:Lfmm;

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
    const-string/jumbo v0, "corp_id"

    iget-object v1, p0, Lfmm$3;->a:Lfmm;

    invoke-static {v1}, Lfmm;->d(Lfmm;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    return-object p1
.end method

.class final Lfuq$1;
.super Ljava/lang/Object;
.source "CertificationTask.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfuq;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

.field final synthetic b:Lfuq;


# direct methods
.method constructor <init>(Lfuq;Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;)V
    .locals 0
    .param p1, "this$0"    # Lfuq;

    .prologue
    .line 75
    iput-object p1, p0, Lfuq$1;->b:Lfuq;

    iput-object p2, p0, Lfuq$1;->a:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

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
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;>;"
    iget-object v1, p0, Lfuq$1;->a:Lcom/alibaba/android/dingtalk/userbase/certify/CertifyTask$TakeMode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    const-string/jumbo v1, "intent_key_rp_take_photo_modes"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 81
    const-string/jumbo v1, "intent_key_menu_seed"

    iget-object v2, p0, Lfuq$1;->b:Lfuq;

    iget-wide v2, v2, Lfuq;->b:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 82
    return-object p1
.end method

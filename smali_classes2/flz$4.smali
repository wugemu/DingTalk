.class final Lflz$4;
.super Ljava/lang/Object;
.source "UserNavigator.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflz;->a(Landroid/app/Activity;Lcom/alibaba/android/user/model/SWPersonObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/model/SWPersonObject;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/model/SWPersonObject;Z)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lflz$4;->a:Lcom/alibaba/android/user/model/SWPersonObject;

    iput-boolean p2, p0, Lflz$4;->b:Z

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
    .line 382
    const-string/jumbo v0, "intent_key_sw_person_data"

    iget-object v1, p0, Lflz$4;->a:Lcom/alibaba/android/user/model/SWPersonObject;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 383
    const-string/jumbo v0, "intent_key_mine_new_version"

    iget-boolean v1, p0, Lflz$4;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    return-object p1
.end method

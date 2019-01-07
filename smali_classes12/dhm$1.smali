.class final Ldhm$1;
.super Ljava/lang/Object;
.source "SecretChatDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldhm;-><init>(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldhm;


# direct methods
.method constructor <init>(Ldhm;)V
    .locals 0
    .param p1, "this$0"    # Ldhm;

    .prologue
    .line 43
    iput-object p1, p0, Ldhm$1;->a:Ldhm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    iget-object v0, p0, Ldhm$1;->a:Ldhm;

    .line 1017
    iget-object v0, v0, Ldhm;->a:Ldhm$a;

    .line 46
    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Ldhm$1;->a:Ldhm;

    .line 2017
    iget-object v0, v0, Ldhm;->a:Ldhm$a;

    .line 47
    const-string/jumbo v1, "single_receive_boss_msg"

    invoke-interface {v0, v1}, Ldhm$a;->b(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method

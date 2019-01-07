.class final Lfcd$2$1;
.super Ljava/lang/Object;
.source "VideoPoster.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcd$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lfcd$2;


# direct methods
.method constructor <init>(Lfcd$2;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lfcd$2;

    .prologue
    .line 161
    iput-object p1, p0, Lfcd$2$1;->b:Lfcd$2;

    iput-object p2, p0, Lfcd$2$1;->a:Ljava/util/ArrayList;

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
    const-string/jumbo v0, "circle_pick_photo_result"

    iget-object v1, p0, Lfcd$2$1;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 165
    return-object p1
.end method

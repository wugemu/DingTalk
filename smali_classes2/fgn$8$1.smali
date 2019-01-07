.class final Lfgn$8$1;
.super Ljava/lang/Object;
.source "JoinGroupRequestAdapter.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfgn$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfgn$8;


# direct methods
.method constructor <init>(Lfgn$8;)V
    .locals 0
    .param p1, "this$1"    # Lfgn$8;

    .prologue
    .line 326
    iput-object p1, p0, Lfgn$8$1;->a:Lfgn$8;

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
    .line 329
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lfgn$8$1;->a:Lfgn$8;

    iget-object v1, v1, Lfgn$8;->a:Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;

    iget-object v1, v1, Lcom/alibaba/wukong/idl/im/models/FetchJoinGroupValidationModel;->applyId:Ljava/lang/Long;

    invoke-static {v1}, Lieb;->a(Ljava/lang/Long;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 330
    return-object p1
.end method

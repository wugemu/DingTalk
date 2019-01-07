.class final Lbws$1;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbws;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbws;


# direct methods
.method constructor <init>(Lbws;)V
    .locals 0
    .param p1, "this$0"    # Lbws;

    .prologue
    .line 290
    iput-object p1, p0, Lbws$1;->a:Lbws;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 293
    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v1

    .line 1043
    iget-object v0, v1, Lbwr;->c:Ljava/lang/String;

    .line 294
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Lcom/taobao/taolive/sdk/utils/DingTalkUtils;->jumpToConversation(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lbws$1;->a:Lbws;

    invoke-virtual {v1}, Lbws;->e()V

    .line 296
    return-void
.end method

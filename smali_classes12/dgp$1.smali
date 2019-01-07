.class final Ldgp$1;
.super Ljava/lang/Object;
.source "ChatDetailNamecardViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldgp;->a(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldgp;


# direct methods
.method constructor <init>(Ldgp;)V
    .locals 0
    .param p1, "this$0"    # Ldgp;

    .prologue
    .line 42
    iput-object p1, p0, Ldgp$1;->a:Ldgp;

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
    .line 45
    iget-object v1, p0, Ldgp$1;->a:Ldgp;

    iget-object v1, v1, Ldgp;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    if-nez v1, :cond_0

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Ldgp$1;->a:Ldgp;

    iget-object v1, v1, Ldgp;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v1, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    .line 49
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    iget-object v1, p0, Ldgp$1;->a:Ldgp;

    invoke-static {v1, v0}, Ldgp;->a(Ldgp;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0
.end method

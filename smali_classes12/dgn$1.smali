.class final Ldgn$1;
.super Ljava/lang/Object;
.source "ChatDetailImageViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldgn;->a(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ldgn;


# direct methods
.method constructor <init>(Ldgn;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Ldgn;

    .prologue
    .line 179
    iput-object p1, p0, Ldgn$1;->d:Ldgn;

    iput-object p2, p0, Ldgn$1;->a:Ljava/lang/String;

    iput-object p3, p0, Ldgn$1;->b:Ljava/lang/String;

    iput-boolean p4, p0, Ldgn$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    iget-object v2, p0, Ldgn$1;->d:Ldgn;

    iget-object v2, v2, Ldgn;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v0, v2, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    .line 183
    .local v0, "message":Lcom/alibaba/wukong/im/Message;
    invoke-static {v0}, Ldrp;->c(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v1

    .line 184
    .local v1, "photoObject":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    iget-object v2, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v3, "e_id"

    .line 185
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Ldgn$1;->d:Ldgn;

    iget-object v3, p0, Ldgn$1;->a:Ljava/lang/String;

    iget-object v4, p0, Ldgn$1;->b:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Ldgn;->a(Ldgn;Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-boolean v2, p0, Ldgn$1;->c:Z

    if-eqz v2, :cond_1

    .line 190
    iget-object v2, p0, Ldgn$1;->d:Ldgn;

    invoke-virtual {v2, v1, v0}, Ldgn;->a(Lcom/alibaba/laiwang/photokit/browser/PhotoObject;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object v2, p0, Ldgn$1;->d:Ldgn;

    invoke-static {v2, v0}, Ldgn;->a(Ldgn;Lcom/alibaba/wukong/im/Message;)V

    goto :goto_0
.end method

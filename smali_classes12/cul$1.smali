.class final Lcul$1;
.super Ljava/lang/Object;
.source "ConversationLinksAdapter.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/comment/CommentView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcul;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lcul$a;

.field final synthetic c:Lcul;


# direct methods
.method constructor <init>(Lcul;Lcom/alibaba/wukong/im/Message;Lcul$a;)V
    .locals 0
    .param p1, "this$0"    # Lcul;

    .prologue
    .line 141
    iput-object p1, p0, Lcul$1;->c:Lcul;

    iput-object p2, p0, Lcul$1;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Lcul$1;->b:Lcul$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 144
    iget-object v0, p0, Lcul$1;->c:Lcul;

    invoke-static {v0}, Lcul;->a(Lcul;)Lcul$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcul$1;->c:Lcul;

    invoke-static {v0}, Lcul;->a(Lcul;)Lcul$b;

    move-result-object v0

    iget-object v1, p0, Lcul$1;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v2, p0, Lcul$1;->b:Lcul$a;

    iget-object v2, v2, Lcul$a;->j:Lcts$c;

    invoke-interface {v0, v1, v2}, Lcul$b;->a(Lcom/alibaba/wukong/im/Message;Lcts$c;)V

    .line 147
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    iget-object v0, p0, Lcul$1;->c:Lcul;

    invoke-static {v0}, Lcul;->a(Lcul;)Lcul$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcul$1;->c:Lcul;

    invoke-static {v0}, Lcul;->a(Lcul;)Lcul$b;

    move-result-object v0

    iget-object v1, p0, Lcul$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0, v1}, Lcul$b;->b(Lcom/alibaba/wukong/im/Message;)V

    .line 154
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    iget-object v0, p0, Lcul$1;->c:Lcul;

    invoke-static {v0}, Lcul;->a(Lcul;)Lcul$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcul$1;->c:Lcul;

    invoke-static {v0}, Lcul;->a(Lcul;)Lcul$b;

    move-result-object v0

    iget-object v1, p0, Lcul$1;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v2, p0, Lcul$1;->b:Lcul$a;

    iget-object v2, v2, Lcul$a;->j:Lcts$c;

    invoke-interface {v0, v1, v2}, Lcul$b;->b(Lcom/alibaba/wukong/im/Message;Lcts$c;)V

    .line 161
    :cond_0
    return-void
.end method

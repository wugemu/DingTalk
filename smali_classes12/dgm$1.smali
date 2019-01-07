.class final Ldgm$1;
.super Ljava/lang/Object;
.source "ChatDetailEncryptImageViewHolder.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldgm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/AbsListView;

.field final synthetic d:Lhcg$a;

.field final synthetic e:Ldgm;


# direct methods
.method constructor <init>(Ldgm;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;Landroid/widget/AbsListView;Lhcg$a;)V
    .locals 0
    .param p1, "this$0"    # Ldgm;

    .prologue
    .line 106
    iput-object p1, p0, Ldgm$1;->e:Ldgm;

    iput-object p2, p0, Ldgm$1;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Ldgm$1;->b:Ljava/lang/String;

    iput-object p4, p0, Ldgm$1;->c:Landroid/widget/AbsListView;

    iput-object p5, p0, Ldgm$1;->d:Lhcg$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 119
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 106
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 1109
    iget-object v0, p0, Ldgm$1;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v1, p0, Ldgm$1;->e:Ldgm;

    iget-object v1, v1, Ldgm;->b:Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/chatlistdetail/viewmodel/ChatDetailModel;->message:Lcom/alibaba/wukong/im/Message;

    if-ne v0, v1, :cond_0

    .line 1110
    iget-object v0, p0, Ldgm$1;->e:Ldgm;

    iget-object v0, v0, Ldgm;->d:Landroid/app/Activity;

    iget-object v1, p0, Ldgm$1;->e:Ldgm;

    invoke-static {v1}, Ldgm;->a(Ldgm;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Ldgm$1;->b:Ljava/lang/String;

    iget-object v4, p0, Ldgm$1;->e:Ldgm;

    .line 1111
    invoke-static {v4}, Ldgm;->b(Ldgm;)Lcom/alibaba/doraemon/image/ImageMagician;

    move-result-object v4

    iget-object v5, p0, Ldgm$1;->c:Landroid/widget/AbsListView;

    iget-object v6, p0, Ldgm$1;->d:Lhcg$a;

    .line 1110
    invoke-static/range {v0 .. v6}, Lhcg;->b(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    .line 1112
    iget-object v0, p0, Ldgm$1;->e:Ldgm;

    invoke-static {v0}, Ldgm;->a(Ldgm;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Ldgm$1;->e:Ldgm;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_0
    return-void
.end method

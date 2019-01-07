.class final Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;
.super Ljava/lang/Object;
.source "ShareDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->b(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldiz;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ldiz;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->a:Ldiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 758
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_im_no_menu_link_msg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 759
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->i(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldkc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->a:Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->i(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->k(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->j(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Ldiz;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 773
    :goto_0
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->l(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->a:Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->i(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->k(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->l(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)[B

    move-result-object v4

    .line 1770
    invoke-static {v4}, Ldiz;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Ldiz;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->a:Ldiz;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->i(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->k(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->d(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "https://static.dingtalk.com/media/lALPBbCc1cHuh2xgYA_96_96.png"

    invoke-virtual/range {v0 .. v5}, Ldiz;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 768
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->a:Ldiz;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ldiz;)V

    goto :goto_0

    .line 771
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->b:Lcom/alibaba/android/dingtalkim/models/ShareDelegate;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/models/ShareDelegate$9;->a:Ldiz;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkim/models/ShareDelegate;->a(Lcom/alibaba/android/dingtalkim/models/ShareDelegate;Ldiz;)V

    goto :goto_0
.end method

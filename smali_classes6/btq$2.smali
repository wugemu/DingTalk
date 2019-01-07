.class final Lbtq$2;
.super Ljava/lang/Object;
.source "AnchorManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtq;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lbtq;


# direct methods
.method constructor <init>(Lbtq;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lbtq;

    .prologue
    .line 129
    iput-object p1, p0, Lbtq$2;->b:Lbtq;

    iput-object p2, p0, Lbtq$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 132
    iget-object v0, p0, Lbtq$2;->b:Lbtq;

    invoke-static {v0}, Lbtq;->a(Lbtq;)Lbtt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbtq$2;->b:Lbtq;

    invoke-static {v0}, Lbtq;->a(Lbtq;)Lbtt;

    move-result-object v0

    .line 1040
    iget-boolean v0, v0, Lbtt;->b:Z

    .line 132
    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lbtq$2;->b:Lbtq;

    invoke-static {v0}, Lbtq;->a(Lbtq;)Lbtt;

    move-result-object v0

    .line 1044
    iget-object v0, v0, Lbtt;->c:Ljava/lang/String;

    .line 133
    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lbtq$2;->b:Lbtq;

    invoke-virtual {v0}, Lbtq;->e()V

    .line 149
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lbtq$2;->b:Lbtq;

    invoke-virtual {v0}, Lbtq;->d()V

    .line 137
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v0

    iget-object v1, p0, Lbtq$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lbtq$2;->b:Lbtq;

    invoke-static {v2}, Lbtq;->b(Lbtq;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbtq$2$1;

    invoke-direct {v3, p0}, Lbtq$2$1;-><init>(Lbtq$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->b(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method

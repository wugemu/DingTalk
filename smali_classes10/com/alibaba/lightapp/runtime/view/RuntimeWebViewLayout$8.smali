.class final Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;
.super Ljava/lang/Object;
.source "RuntimeWebViewLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    .prologue
    .line 783
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 786
    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->b(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lhdo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 788
    .local v4, "domain":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    sget-object v6, Lhri;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 793
    .local v3, "disableHost":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 797
    .end local v3    # "disableHost":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lhfo;->a()Lhfo;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;->a:Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;->b(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lhfo;->a(Ljava/lang/String;)Lhfo$b;

    move-result-object v5

    .line 801
    .local v5, "tempMicroAppInfo":Lhfo$b;
    iget-object v0, v5, Lhfo$b;->b:Ljava/lang/String;

    .line 802
    .local v0, "appId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 803
    .local v2, "appType":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 804
    iget-object v0, v5, Lhfo$b;->a:Ljava/lang/String;

    .line 805
    const/4 v2, 0x2

    .line 807
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 810
    invoke-static {}, Lhhx;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0, v2}, Lhhx;->a(Ljava/lang/String;Ljava/lang/String;I)Lhin;

    move-result-object v1

    .line 811
    .local v1, "appStatementModel":Lhin;
    if-eqz v1, :cond_0

    iget-object v6, v1, Lhin;->f:Ljava/lang/Boolean;

    invoke-static {v6}, Lhdo;->a(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 812
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8$1;

    invoke-direct {v7, p0, v1}, Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8$1;-><init>(Lcom/alibaba/lightapp/runtime/view/RuntimeWebViewLayout$8;Lhin;)V

    invoke-virtual {v6, v7}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

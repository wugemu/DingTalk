.class final Lbxo$5;
.super Lbyi$a;
.source "AnchorPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbxo;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxo;


# direct methods
.method constructor <init>(Lbxo;)V
    .locals 0
    .param p1, "this$0"    # Lbxo;

    .prologue
    .line 153
    iput-object p1, p0, Lbxo$5;->a:Lbxo;

    invoke-direct {p0}, Lbyi$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 153
    .line 1157
    iget-object v0, p0, Lbxo$5;->a:Lbxo;

    .line 2059
    iget-object v0, v0, Lbxo;->a:Lbxn$b;

    .line 1157
    invoke-interface {v0}, Lbxn$b;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1160
    iget-object v0, p0, Lbxo$5;->a:Lbxo;

    .line 3059
    iget-object v0, v0, Lbxo;->a:Lbxn$b;

    .line 1160
    invoke-interface {v0}, Lbxn$b;->g()Ljjx;

    move-result-object v0

    .line 1161
    if-eqz v0, :cond_0

    .line 1162
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v1

    .line 3086
    iget-object v1, v1, Lbtq;->f:Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;

    .line 1163
    if-eqz v1, :cond_0

    .line 1164
    iget-object v2, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->liveUuid:Ljava/lang/String;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/livebase/model/LiveInfoObject;->inputStreamUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljjx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    :cond_0
    iget-object v0, p0, Lbxo$5;->a:Lbxo;

    .line 4059
    iget-object v0, v0, Lbxo;->a:Lbxn$b;

    .line 1167
    invoke-interface {v0}, Lbxn$b;->i()V

    .line 153
    :cond_1
    return-void
.end method

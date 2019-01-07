.class final Lbae$1;
.super Ljava/lang/Object;
.source "EditEventActivityPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbae;


# direct methods
.method constructor <init>(Lbae;)V
    .locals 0
    .param p1, "this$0"    # Lbae;

    .prologue
    .line 184
    iput-object p1, p0, Lbae$1;->a:Lbae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 184
    check-cast p1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1187
    if-nez p1, :cond_0

    .line 1188
    const-string/jumbo v0, "[CreateEvent]retrieve ding failed"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "ding is not meeting"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object v0, p0, Lbae$1;->a:Lbae;

    iget-object v0, v0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    .line 1190
    :goto_0
    return-void

    .line 1192
    :cond_0
    iget-object v0, p0, Lbae$1;->a:Lbae;

    .line 2058
    iput-object p1, v0, Lbae;->t:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 1193
    iget-object v0, p0, Lbae$1;->a:Lbae;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 2109
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1193
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->E()J

    move-result-wide v4

    .line 3211
    invoke-static {}, Lbhi;->a()Lbhi;

    move-result-object v1

    new-instance v6, Lbae$2;

    invoke-direct {v6, v0, v2, v3}, Lbae$2;-><init>(Lbae;J)V

    const-class v7, Lcom/alibaba/wukong/Callback;

    iget-object v0, v0, Lbae;->a:Lbac$b;

    .line 3233
    invoke-interface {v0}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v0

    .line 3211
    invoke-static {v6, v7, v0}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/wukong/Callback;

    invoke-virtual/range {v1 .. v6}, Lbhi;->a(JJLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string/jumbo v0, "[CreateEvent]retrieve ding failed"

    invoke-static {v0, p1, p2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lbae$1;->a:Lbae;

    iget-object v0, v0, Lbae;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->e()V

    .line 205
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 198
    return-void
.end method

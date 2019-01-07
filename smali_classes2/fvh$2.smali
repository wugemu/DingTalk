.class final Lfvh$2;
.super Ljava/lang/Object;
.source "RobotProfilePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfvh;
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
        "Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfvh;


# direct methods
.method constructor <init>(Lfvh;)V
    .locals 0
    .param p1, "this$0"    # Lfvh;

    .prologue
    .line 130
    iput-object p1, p0, Lfvh$2;->a:Lfvh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 130
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    .line 5133
    iget-object v0, p0, Lfvh$2;->a:Lfvh;

    .line 6031
    iget-object v0, v0, Lfvh;->a:Lfvg$b;

    .line 5133
    invoke-interface {v0}, Lfvg$b;->H_()V

    .line 5134
    iget-object v0, p0, Lfvh$2;->a:Lfvh;

    .line 7031
    const/4 v1, 0x0

    iput-boolean v1, v0, Lfvh;->c:Z

    .line 5135
    iget-object v0, p0, Lfvh$2;->a:Lfvh;

    invoke-static {p1}, Lfvf;->a(Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;)Lfvf;

    move-result-object v1

    .line 8031
    iput-object v1, v0, Lfvh;->b:Lfvf;

    .line 5136
    iget-object v0, p0, Lfvh$2;->a:Lfvh;

    .line 9031
    iget-object v0, v0, Lfvh;->a:Lfvg$b;

    .line 5136
    iget-object v1, p0, Lfvh$2;->a:Lfvh;

    .line 10031
    iget-object v1, v1, Lfvh;->b:Lfvf;

    .line 5136
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->v()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lfvg$b;->a(Lfvf;Z)V

    .line 130
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 146
    iget-object v0, p0, Lfvh$2;->a:Lfvh;

    .line 1031
    iget-object v0, v0, Lfvh;->a:Lfvg$b;

    .line 146
    invoke-interface {v0}, Lfvg$b;->H_()V

    .line 147
    iget-object v0, p0, Lfvh$2;->a:Lfvh;

    .line 2031
    iget-object v0, v0, Lfvh;->a:Lfvg$b;

    .line 147
    invoke-interface {v0, p1, p2}, Lfvg$b;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lfvh$2;->a:Lfvh;

    .line 3031
    const/4 v1, 0x0

    iput-boolean v1, v0, Lfvh;->c:Z

    .line 149
    iget-object v0, p0, Lfvh$2;->a:Lfvh;

    .line 4031
    iget-object v0, v0, Lfvh;->a:Lfvg$b;

    .line 149
    iget-object v1, p0, Lfvh$2;->a:Lfvh;

    .line 5031
    iget-object v1, v1, Lfvh;->b:Lfvf;

    .line 149
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->v()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lfvg$b;->a(Lfvf;Z)V

    .line 150
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 142
    return-void
.end method

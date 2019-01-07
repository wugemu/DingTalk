.class final Ldrr$1;
.super Ljava/lang/Object;
.source "MessagePickMenuPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldrr;->a()V
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldrr;


# direct methods
.method constructor <init>(Ldrr;)V
    .locals 0
    .param p1, "this$0"    # Ldrr;

    .prologue
    .line 79
    iput-object p1, p0, Ldrr$1;->a:Ldrr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 92
    sget v0, Lctk$i;->message_more_forward_failure:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 93
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 79
    .line 1082
    iget-object v0, p0, Ldrr$1;->a:Ldrr;

    .line 2033
    iget-object v0, v0, Ldrr;->a:Ldru;

    .line 1082
    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Ldrr$1;->a:Ldrr;

    .line 3033
    iget-object v0, v0, Ldrr;->a:Ldru;

    .line 1083
    invoke-virtual {v0}, Ldru;->d()V

    .line 1084
    iget-object v0, p0, Ldrr$1;->a:Ldrr;

    .line 4033
    iget-object v0, v0, Ldrr;->a:Ldru;

    .line 4079
    iget-object v0, v0, Ldru;->a:Landroid/app/Activity;

    .line 1084
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Ldrr$1;->a:Ldrr;

    .line 5033
    iget-object v0, v0, Ldrr;->a:Ldru;

    .line 5079
    iget-object v0, v0, Ldru;->a:Landroid/app/Activity;

    .line 1085
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 79
    :cond_0
    return-void
.end method

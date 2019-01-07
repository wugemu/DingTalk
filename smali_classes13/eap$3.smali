.class final Leap$3;
.super Ljava/lang/Object;
.source "ConversationSettingPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leap;->a(Z)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Leap;


# direct methods
.method constructor <init>(Leap;Z)V
    .locals 0
    .param p1, "this$0"    # Leap;

    .prologue
    .line 171
    iput-object p1, p0, Leap$3;->b:Leap;

    iput-boolean p2, p0, Leap$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "erroCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Leap$3;->b:Leap;

    .line 1034
    iget-object v3, v0, Leap;->b:Leao$b;

    .line 179
    iget-boolean v0, p0, Leap$3;->a:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Leao$b;->b(Z)V

    .line 180
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 181
    const-string/jumbo v0, "im"

    const-string/jumbo v3, "ConversationSettingPresenter"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "update at all type failed and errorCode:"

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " and erorrMsg: "

    aput-object v2, v4, v1

    const/4 v1, 0x3

    aput-object p2, v4, v1

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void

    :cond_0
    move v0, v2

    .line 179
    goto :goto_0
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

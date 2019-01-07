.class final Lbag$34;
.super Ljava/lang/Object;
.source "DingDetailPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbag;
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
        "Lbfm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbag;


# direct methods
.method constructor <init>(Lbag;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbag;

    .prologue
    .line 1113
    iput-object p1, p0, Lbag$34;->b:Lbag;

    iput-object p2, p0, Lbag$34;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 1113
    check-cast p1, Lbfm;

    .line 2116
    iget-object v0, p0, Lbag$34;->b:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->e()V

    .line 2117
    if-nez p1, :cond_0

    .line 2118
    const-string/jumbo v0, "[DingDetailPresenter]retrieveOriginRepeatMeeting"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "getDingDetailRetData is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    const-string/jumbo v0, "-1"

    sget v1, Laxp$i;->unknown_error:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    :goto_0
    return-void

    .line 3039
    :cond_0
    iget-object v0, p1, Lbfm;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2122
    if-nez v0, :cond_1

    .line 2123
    const-string/jumbo v0, "[DingDetailPresenter]retrieveOriginRepeatMeeting"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, "getDingDetailRetData.ding is null"

    invoke-static {v0, v1, v2}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2124
    const-string/jumbo v0, "-1"

    sget v1, Laxp$i;->unknown_error:I

    invoke-static {v1}, Leda;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2127
    :cond_1
    iget-object v0, p0, Lbag$34;->b:Lbag;

    .line 4039
    iget-object v1, p1, Lbfm;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2127
    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lbag$34;->a:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lbag;->a(Lbag;Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1136
    iget-object v0, p0, Lbag$34;->b:Lbag;

    invoke-static {v0}, Lbag;->a(Lbag;)Lbaf$b;

    move-result-object v0

    invoke-interface {v0}, Lbaf$b;->e()V

    .line 1137
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 1132
    return-void
.end method

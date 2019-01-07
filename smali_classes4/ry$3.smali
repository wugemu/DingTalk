.class final Lry$3;
.super Ljava/lang/Object;
.source "ChoosePeopleFromMailHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lry;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lry;


# direct methods
.method constructor <init>(Lry;I)V
    .locals 0
    .param p1, "this$0"    # Lry;

    .prologue
    .line 168
    iput-object p1, p0, Lry$3;->b:Lry;

    iput p2, p0, Lry$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 168
    check-cast p1, Ljava/util/List;

    .line 1171
    iget-object v0, p0, Lry$3;->b:Lry;

    invoke-static {v0}, Lry;->c(Lry;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1172
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 1175
    :cond_1
    iget-object v0, p0, Lry$3;->b:Lry;

    invoke-static {v0}, Lry;->d(Lry;)V

    .line 1176
    iget-object v0, p0, Lry$3;->b:Lry;

    iget v1, p0, Lry$3;->a:I

    invoke-static {v0, v1, p1}, Lry;->a(Lry;ILjava/util/List;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string/jumbo v0, "CommonAccountPushDispatcher"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lry$3;->b:Lry;

    invoke-static {v0}, Lry;->c(Lry;)Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    move-result-object v0

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lry$3;->b:Lry;

    invoke-static {v0}, Lry;->d(Lry;)V

    .line 190
    sget v0, Laxo$i;->alm_cmail_status_code_network:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 181
    return-void
.end method

.class final Lbkv$18$1;
.super Ljava/lang/Object;
.source "FloatDisplayAsyncObjectBuilder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkv$18;->a(Lcma;)V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Lbkv$18;


# direct methods
.method constructor <init>(Lbkv$18;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbkv$18;

    .prologue
    .line 250
    iput-object p1, p0, Lbkv$18$1;->b:Lbkv$18;

    iput-object p2, p0, Lbkv$18$1;->a:Lcma;

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
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 250
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1253
    if-eqz p1, :cond_1

    .line 1256
    invoke-static {p1}, Lbkv;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ljava/lang/String;

    move-result-object v1

    .line 1257
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1258
    const-string/jumbo v0, ""

    .line 1259
    iget-object v3, p0, Lbkv$18$1;->b:Lbkv$18;

    iget v3, v3, Lbkv$18;->b:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 1260
    sget v0, Laxp$i;->dt_ding_urge_to_check:I

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v5

    iget-object v1, p0, Lbkv$18$1;->b:Lbkv$18;

    iget-object v1, v1, Lbkv$18;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->M(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1268
    :cond_0
    :goto_0
    iget-object v1, p0, Lbkv$18$1;->a:Lcma;

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 250
    :cond_1
    return-void

    .line 1261
    :cond_2
    iget-object v3, p0, Lbkv$18$1;->b:Lbkv$18;

    iget v3, v3, Lbkv$18;->b:I

    if-ne v3, v7, :cond_3

    .line 1262
    sget v0, Laxp$i;->dt_ding_urge_to_finish:I

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v5

    iget-object v1, p0, Lbkv$18$1;->b:Lbkv$18;

    iget-object v1, v1, Lbkv$18;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v1}, Lbkh;->M(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1263
    :cond_3
    iget-object v3, p0, Lbkv$18$1;->b:Lbkv$18;

    iget v3, v3, Lbkv$18;->b:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_4

    .line 1264
    sget v0, Laxp$i;->dt_common_remind:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1265
    :cond_4
    iget-object v3, p0, Lbkv$18$1;->b:Lbkv$18;

    iget v3, v3, Lbkv$18;->b:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 1266
    sget v0, Laxp$i;->dt_ding_sender_mark_receiver_to_unfinish:I

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lbkv$18$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lbkv$18$1;->a:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onProgress(Ljava/lang/Object;I)V

    .line 274
    return-void
.end method

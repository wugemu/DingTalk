.class final Lelg$6;
.super Ljava/lang/Object;
.source "InvitationListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lelg;->a(Landroid/app/Activity;Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lelg;


# direct methods
.method constructor <init>(Lelg;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lelg;

    .prologue
    .line 356
    iput-object p1, p0, Lelg$6;->d:Lelg;

    iput-object p2, p0, Lelg$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lelg$6;->b:Ljava/lang/String;

    iput-object p4, p0, Lelg$6;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    .line 360
    iget-object v3, p0, Lelg$6;->d:Lelg;

    invoke-static {v3}, Lelg;->f(Lelg;)V

    .line 361
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 362
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "qrcode_key"

    iget-object v4, p0, Lelg$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :try_start_0
    new-instance v2, Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;-><init>()V

    .line 365
    .local v2, "object":Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;
    const/4 v3, 0x1

    iput v3, v2, Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;->type:I

    .line 366
    iget-object v3, p0, Lelg$6;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;->dest:I

    .line 367
    const-string/jumbo v3, "intent_key_add_group_biz_object"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v2    # "object":Lcom/alibaba/android/dingtalkim/base/model/AddGroupBizObject;
    :goto_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v3

    iget-object v4, p0, Lelg$6;->c:Landroid/app/Activity;

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 373
    return-void

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "share"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Format AddGroupBizObject Exception="

    aput-object v7, v5, v6

    .line 370
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

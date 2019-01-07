.class final Lelw$1;
.super Lcpq;
.source "WuKongSwitchProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lelw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcpq",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lelw;


# direct methods
.method constructor <init>(Lelw;)V
    .locals 0
    .param p1, "this$0"    # Lelw;

    .prologue
    .line 19
    iput-object p1, p0, Lelw$1;->a:Lelw;

    invoke-direct {p0}, Lcpq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 1022
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v1

    const-string/jumbo v2, "f_im_conv_handle_entrance"

    .line 1083
    invoke-virtual {v1, v2, v0}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 1022
    if-eqz v1, :cond_0

    .line 1023
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "im_entrance_conversation_check_enable"

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1022
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 19
    return-object v0

    .line 1023
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

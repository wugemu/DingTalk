.class final Lcom/alibaba/android/ding/widget/ReceiverSelector$3;
.super Ljava/lang/Object;
.source "ReceiverSelector.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/ReceiverSelector;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/ReceiverSelector;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/ReceiverSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/ReceiverSelector;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$3;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 318
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 308
    check-cast p1, Ljava/lang/Boolean;

    .line 1311
    if-eqz p1, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/ReceiverSelector$3;->a:Lcom/alibaba/android/ding/widget/ReceiverSelector;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/ding/widget/ReceiverSelector;->a(Lcom/alibaba/android/ding/widget/ReceiverSelector;Z)Z

    .line 308
    :cond_0
    return-void
.end method

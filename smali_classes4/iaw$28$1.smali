.class final Liaw$28$1;
.super Ljava/lang/Object;
.source "ConversationServiceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liaw$28;
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
.field final synthetic a:I

.field final synthetic b:Liaw$28;


# direct methods
.method constructor <init>(Liaw$28;I)V
    .locals 0
    .param p1, "this$1"    # Liaw$28;

    .prologue
    .line 1653
    iput-object p1, p0, Liaw$28$1;->b:Liaw$28;

    iput p2, p0, Liaw$28$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1663
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1653
    .line 2668
    iget-object v0, p0, Liaw$28$1;->b:Liaw$28;

    iget-object v0, v0, Liaw$28;->a:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 2669
    iget-object v0, p0, Liaw$28$1;->b:Liaw$28;

    iget-object v0, v0, Liaw$28;->a:Lcom/alibaba/wukong/Callback;

    const/4 v1, 0x0

    iget v2, p0, Liaw$28$1;->a:I

    add-int/2addr v2, p2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 1653
    :cond_0
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1653
    return-void
.end method

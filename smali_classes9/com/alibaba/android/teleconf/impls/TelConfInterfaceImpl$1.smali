.class final Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$1;
.super Ljava/lang/Object;
.source "TelConfInterfaceImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a(Landroid/app/Activity;Ljava/lang/String;)V
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
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$1;->b:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .prologue
    .line 177
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 167
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1170
    if-eqz p1, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$1;->b:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$1;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 167
    :cond_0
    return-void
.end method

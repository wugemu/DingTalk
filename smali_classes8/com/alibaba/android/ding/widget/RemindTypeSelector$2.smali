.class final Lcom/alibaba/android/ding/widget/RemindTypeSelector$2;
.super Ljava/lang/Object;
.source "RemindTypeSelector.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/RemindTypeSelector;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/RemindTypeSelector;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/RemindTypeSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector$2;->a:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 258
    check-cast p1, Ljava/lang/Boolean;

    .line 1261
    const-string/jumbo v0, "pref_key_is_support_call"

    .line 2022
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 1261
    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1262
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/RemindTypeSelector$2;->a:Lcom/alibaba/android/ding/widget/RemindTypeSelector;

    invoke-virtual {v0}, Lcom/alibaba/android/ding/widget/RemindTypeSelector;->a()V

    .line 258
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 272
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[checkIfSupportCall] onException code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 268
    return-void
.end method

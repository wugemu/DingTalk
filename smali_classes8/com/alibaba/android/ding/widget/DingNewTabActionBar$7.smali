.class final Lcom/alibaba/android/ding/widget/DingNewTabActionBar$7;
.super Ljava/lang/Object;
.source "DingNewTabActionBar.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingNewTabActionBar;
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
.field final synthetic a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    .prologue
    .line 685
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$7;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 694
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DingNewTabActionBar] hideAliMailRedDot isAliMailLoginSuccess onException code="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ",reason="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 685
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 685
    check-cast p1, Ljava/lang/Boolean;

    .line 2022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1689
    iget-object v1, p0, Lcom/alibaba/android/ding/widget/DingNewTabActionBar$7;->a:Lcom/alibaba/android/ding/widget/DingNewTabActionBar;

    invoke-static {v1, v0}, Lcom/alibaba/android/ding/widget/DingNewTabActionBar;->c(Lcom/alibaba/android/ding/widget/DingNewTabActionBar;Z)V

    .line 685
    return-void
.end method

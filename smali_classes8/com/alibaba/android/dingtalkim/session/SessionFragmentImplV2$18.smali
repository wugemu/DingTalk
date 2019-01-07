.class final Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$18;
.super Ljava/lang/Object;
.source "SessionFragmentImplV2.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    .prologue
    .line 901
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$18;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 901
    check-cast p1, Ljava/lang/Boolean;

    .line 2022
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    .line 1905
    if-eqz v0, :cond_0

    .line 1909
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2$18;->a:Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;->d(Lcom/alibaba/android/dingtalkim/session/SessionFragmentImplV2;)Ldze;

    move-result-object v0

    sget-object v1, Lcom/alibaba/android/dingtalkim/session/header/Header;->CONTACT_MATCH_GUIDE:Lcom/alibaba/android/dingtalkim/session/header/Header;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ldze;->a(Lcom/alibaba/android/dingtalkim/session/header/Header;Ljava/lang/Object;)V

    .line 901
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 920
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 915
    return-void
.end method

.class final Lfrb$6$1;
.super Ljava/lang/Object;
.source "LoginUtils.java"

# interfaces
.implements Lcom/ali/user/open/ucc/UccDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfrb$6;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfrb$6;


# direct methods
.method constructor <init>(Lfrb$6;)V
    .locals 0
    .param p1, "this$0"    # Lfrb$6;

    .prologue
    .line 531
    iput-object p1, p0, Lfrb$6$1;->a:Lfrb$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUserToken(Ljava/lang/String;Lcom/ali/user/open/core/callback/MemberCallback;)V
    .locals 3
    .param p1, "site"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ali/user/open/core/callback/MemberCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 534
    .local p2, "memberCallback":Lcom/ali/user/open/core/callback/MemberCallback;, "Lcom/ali/user/open/core/callback/MemberCallback<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 557
    :goto_0
    return-void

    .line 538
    :cond_0
    new-instance v0, Lfrb$6$1$1;

    invoke-direct {v0, p0, p2}, Lfrb$6$1$1;-><init>(Lfrb$6$1;Lcom/ali/user/open/core/callback/MemberCallback;)V

    .line 555
    .local v0, "getUserTokenListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v1, Lcma;

    iget-object v2, p0, Lfrb$6$1;->a:Lfrb$6;

    iget-object v2, v2, Lfrb$6;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "getUserTokenListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    check-cast v0, Lcma;

    .line 556
    .restart local v0    # "getUserTokenListener":Lcma;, "Lcma<Ljava/lang/String;>;"
    invoke-static {}, Lfbe;->a()Lfbe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfbe;->a(Lcma;)V

    goto :goto_0
.end method

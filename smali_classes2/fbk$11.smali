.class public final Lfbk$11;
.super Ljava/lang/Object;
.source "UserProfileRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/idl/services/UserIService;

.field final synthetic b:Lcgk;

.field final synthetic c:Lcmg;

.field final synthetic d:Lfbk;


# direct methods
.method public constructor <init>(Lfbk;Lcom/alibaba/android/user/idl/services/UserIService;Lcgk;Lcmg;)V
    .locals 0
    .param p1, "this$0"    # Lfbk;

    .prologue
    .line 80
    iput-object p1, p0, Lfbk$11;->d:Lfbk;

    iput-object p2, p0, Lfbk$11;->a:Lcom/alibaba/android/user/idl/services/UserIService;

    iput-object p3, p0, Lfbk$11;->b:Lcgk;

    iput-object p4, p0, Lfbk$11;->c:Lcmg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 83
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->g()V

    .line 84
    iget-object v0, p0, Lfbk$11;->a:Lcom/alibaba/android/user/idl/services/UserIService;

    iget-object v1, p0, Lfbk$11;->b:Lcgk;

    iget-object v2, p0, Lfbk$11;->c:Lcmg;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/android/user/idl/services/UserIService;->updateUserProfile(Lcgk;Liyv;)V

    .line 85
    return-void
.end method

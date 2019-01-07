.class public final Lfbk$3;
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
.field final synthetic a:Lcom/alibaba/android/user/idl/services/UserMixIService;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcmg;

.field final synthetic e:Lfbk;


# direct methods
.method public constructor <init>(Lfbk;Lcom/alibaba/android/user/idl/services/UserMixIService;Ljava/lang/String;Ljava/lang/String;Lcmg;)V
    .locals 0
    .param p1, "this$0"    # Lfbk;

    .prologue
    .line 471
    iput-object p1, p0, Lfbk$3;->e:Lfbk;

    iput-object p2, p0, Lfbk$3;->a:Lcom/alibaba/android/user/idl/services/UserMixIService;

    iput-object p3, p0, Lfbk$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lfbk$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lfbk$3;->d:Lcmg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 474
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->g()V

    .line 475
    iget-object v0, p0, Lfbk$3;->a:Lcom/alibaba/android/user/idl/services/UserMixIService;

    iget-object v1, p0, Lfbk$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lfbk$3;->c:Ljava/lang/String;

    iget-object v3, p0, Lfbk$3;->d:Lcmg;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/android/user/idl/services/UserMixIService;->searchUserProfileByMobile(Ljava/lang/String;Ljava/lang/String;Liyv;)V

    .line 476
    return-void
.end method

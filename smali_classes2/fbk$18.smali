.class final Lfbk$18;
.super Ljava/lang/Object;
.source "UserProfileRPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfbk;->a(Ljava/lang/Long;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lon;

.field final synthetic b:Lfbk;


# direct methods
.method constructor <init>(Lfbk;Lon;)V
    .locals 0
    .param p1, "this$0"    # Lfbk;

    .prologue
    .line 188
    iput-object p1, p0, Lfbk$18;->b:Lfbk;

    iput-object p2, p0, Lfbk$18;->a:Lon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 191
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/internal/IMContextEngine;->g()V

    .line 192
    iget-object v0, p0, Lfbk$18;->b:Lfbk;

    iget-object v1, p0, Lfbk$18;->a:Lon;

    invoke-virtual {v0, v1}, Lfbk;->a(Lon;)V

    .line 193
    return-void
.end method
